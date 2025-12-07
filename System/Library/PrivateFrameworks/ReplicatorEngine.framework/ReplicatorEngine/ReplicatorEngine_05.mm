uint64_t sub_1DEE98CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_beginAccess();
    v11 = *(a4 + 672);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    LOBYTE(v12) = sub_1DEF01E3C(v12, v13, v11);

    v10 = v12 ^ 1;
    return v10 & 1;
  }

  v8 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 8))(v15, ObjectType, v8);
  swift_unknownObjectRelease();
  if (LOBYTE(v15[0]) == (a3 & 1))
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

void *sub_1DEE98D98(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v50 - v3;
  v4 = type metadata accessor for ZoneVersion(0);
  v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v50 - v10;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v61 = (v56 + 672);
  swift_beginAccess();
  swift_beginAccess();
  if (v11)
  {
    v12 = 0;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    v60 = a1 & 0xC000000000000001;
    v51 = a1;
    v58 = a1 + 32;
    v13 = MEMORY[0x1E69E7CC8];
    v57 = v11;
    while (1)
    {
      while (1)
      {
        if (v60)
        {
          v14 = MEMORY[0x1E12CB6E0](v12, v51);
          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v12 >= *(v59 + 16))
          {
            goto LABEL_37;
          }

          v14 = *(v58 + 8 * v12);

          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v11 = sub_1DEF8DE68();
            goto LABEL_3;
          }
        }

        v16 = *v61;
        if (*(*v61 + 16))
        {
          break;
        }

LABEL_20:
        v62 = v12;
        sub_1DEE29594(v56 + 192, v64);
        v26 = v65;
        v27 = v66;
        __swift_project_boxed_opaque_existential_1(v64, v65);
        v28 = type metadata accessor for PairingRelationship(0);
        v29 = v55;
        (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
        v30 = *(v27 + 8);
        v31 = *(v30 + 16);

        v33 = v54;
        v31(v32, v29, v26, v30);
        sub_1DEE171B4(v29, &qword_1ECDE3C18, &unk_1DEF94D20);
        sub_1DEEAB218(v33, v6, type metadata accessor for ZoneVersion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v13;
        a1 = v13;
        v35 = sub_1DEEAF20C(v14);
        v37 = v13[2];
        v38 = (v36 & 1) == 0;
        v15 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v15)
        {
          goto LABEL_38;
        }

        v40 = v36;
        if (v13[3] >= v39)
        {
          v12 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a1 = &v63;
            v48 = v35;
            sub_1DEEB8A3C();
            v35 = v48;
          }
        }

        else
        {
          sub_1DEEB3A30(v39, isUniquelyReferenced_nonNull_native);
          a1 = v63;
          v35 = sub_1DEEAF20C(v14);
          v12 = v62;
          if ((v40 & 1) != (v41 & 1))
          {
            type metadata accessor for Zone.ID();
            result = sub_1DEF8E6E8();
            __break(1u);
            return result;
          }
        }

        v42 = v57;
        v13 = v63;
        if (v40)
        {
          sub_1DEE1B474(v6, *(v63 + 56) + *(v53 + 72) * v35, type metadata accessor for ZoneVersion);
        }

        else
        {
          *(v63 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          *(v13[6] + 8 * v35) = v14;
          sub_1DEEAB218(v6, v13[7] + *(v53 + 72) * v35, type metadata accessor for ZoneVersion);

          v43 = v13[2];
          v15 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v15)
          {
            goto LABEL_39;
          }

          v13[2] = v44;
        }

        __swift_destroy_boxed_opaque_existential_1(v64);
        if (v12 == v42)
        {
          return v13;
        }
      }

      v17 = v6;
      v18 = v14[4];
      v19 = v14[5];
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v20 = sub_1DEF8E7F8();
      v21 = -1 << *(v16 + 32);
      v22 = v20 & ~v21;
      if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
LABEL_19:

        v6 = v17;
        goto LABEL_20;
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v16 + 48) + 16 * v22);
        v25 = *v24 == v18 && v24[1] == v19;
        if (v25 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v45 = sub_1DEF8D3F8();
      v46 = v52;
      (*(*(v45 - 8) + 56))(v52, 1, 1, v45);

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v64[0] = v13;
      a1 = v64;
      sub_1DEF3EC54(v46, v14, v47);

      v13 = v64[0];
      v6 = v17;
      if (v12 == v57)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

BOOL sub_1DEE993C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 672);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  LOBYTE(v6) = sub_1DEF01E3C(v7, v6, v5);

  return (v6 & 1) == 0;
}

uint64_t sub_1DEE9943C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for PairingRelationship(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  MetadataStoring.pairingRelationship(relationshipID:)(a2, v11, *(v12 + 8), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1DEE171B4(v6, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1DEEAB218(v6, v10, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v14 = &v10[*(v7 + 20)];
    if (v14[21])
    {
      sub_1DEEAC064(*v14, v14[1]);
    }

    return sub_1DEE273A0(v10, type metadata accessor for PairingRelationship);
  }
}

uint64_t sub_1DEE99638(uint64_t a1)
{
  v2 = v1;
  v34[0] = a1;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 232);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v10 = *(v4 + 104);
  v10(v7, v9, v3, v5);
  v11 = v8;
  v12 = sub_1DEF8D7B8();
  v13 = *(v4 + 8);
  (v13)(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  *v7 = v11;
  (v10)(v7, v9, v3);
  v14 = sub_1DEF8D7B8();
  (v13)(v7, v3);
  if ((v14 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1DEF8DE68();
    v23 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, v35);
  v16 = v36;
  v15 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v17 = (*(*(*(v15 + 8) + 8) + 24))(v16);
  MEMORY[0x1EEE9AC00](v17);
  v34[-2] = v34[0];
  v19 = sub_1DEEA4C70(v18, sub_1DEEACA50, &v34[-4]);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v13 = sub_1DEE5844C(v19, sub_1DEF415BC, sub_1DEF41428, &qword_1ECDE3DE0, &unk_1DEF91700);

  sub_1DEE29594(v2 + 192, v35);
  v20 = v36;
  v21 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  (*(*(v21 + 16) + 136))(v13, v20);
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  if (v13 >> 62)
  {
    goto LABEL_25;
  }

  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
  }

LABEL_5:
  if (v23 >= 1)
  {
    swift_beginAccess();
    v24 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1E12CB6E0](v24, v13);
      }

      else
      {
        v25 = *(v13 + 8 * v24 + 32);
      }

      v26 = *(v25 + 32);
      v27 = *(v2 + 240);
      if ((v27 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v27 + 16))
      {

        v30 = sub_1DEEAF20C(v26);
        if ((v31 & 1) == 0)
        {

          goto LABEL_8;
        }

        v29 = *(*(v27 + 56) + 8 * v30);

        if (v29)
        {
          goto LABEL_19;
        }
      }

LABEL_8:
      ++v24;

      if (v23 == v24)
      {
      }
    }

    v28 = sub_1DEF8E0B8();

    if (v28)
    {
      v34[1] = v28;
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v29 = v34[2];

      if (!v29)
      {
        goto LABEL_8;
      }

LABEL_19:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v29 + 24);
        ObjectType = swift_getObjectType();
        (*(v32 + 48))(v25, ObjectType, v32);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE99AC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v132 - v4;
  v6 = type metadata accessor for PairingRelationship(0);
  v158 = *(v6 - 8);
  v159 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v146 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v132 - v9;
  v11 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v136 = (&v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v132 - v14;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v156);
  v137 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v148 = &v132 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v132 - v19;
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 232);
  *v25 = v26;
  v27 = *(v22 + 104);
  v142 = *MEMORY[0x1E69E8020];
  v141 = v22 + 104;
  v140 = v27;
  v27(v25, v23);
  v139 = v26;
  LOBYTE(v26) = sub_1DEF8D7B8();
  v28 = *(v22 + 8);
  v143 = v25;
  v145 = v21;
  v144 = v22 + 8;
  v138 = v28;
  v28(v25, v21);
  if ((v26 & 1) == 0)
  {
    goto LABEL_54;
  }

  v147 = a1;
  v149 = v10;
  v150 = v5;
  swift_beginAccess();
  v151 = v1;
  sub_1DEE29594(v1 + 192, &v161);
  v30 = v162;
  v29 = v163;
  __swift_project_boxed_opaque_existential_1(&v161, v162);
  v31 = (*(*(*(v29 + 8) + 8) + 32))(v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  v157 = v31;

  v37 = 0;
  v152 = MEMORY[0x1E69E7CC8];
  v38 = &qword_1DEF93400;
  v39 = v148;
  v153 = v32;
  *&v154 = v36;
LABEL_5:
  v40 = v37;
  if (!v35)
  {
    goto LABEL_7;
  }

  do
  {
    v41 = v38;
    v37 = v40;
LABEL_11:
    v42 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v43 = v42 | (v37 << 6);
    v44 = v157;
    v45 = *(v157 + 48);
    v46 = sub_1DEF8D3F8();
    v47 = *(v46 - 8);
    (*(v47 + 16))(v20, v45 + *(v47 + 72) * v43, v46);
    v48 = *(v44 + 56) + *(v158 + 72) * v43;
    v49 = v20;
    v50 = v156;
    sub_1DEEACA70(v48, v49 + *(v156 + 48), type metadata accessor for PairingRelationship);
    sub_1DEE17214(v49, v39, &unk_1ECDE4350, v41);
    v51 = v39 + *(v50 + 48);
    v52 = v155;
    sub_1DEEACA70(v51 + *(v159 + 20), v155, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v51, type metadata accessor for PairingRelationship);
    v53 = v39;
    v55 = *(v52 + 160);
    v54 = *(v52 + 168);

    sub_1DEE273A0(v52, type metadata accessor for DeviceDescriptor);
    if (v54)
    {
      v56 = *(v47 + 8);
      v132 = v46;
      v57 = v46;
      v58 = v56;
      v56(v53, v57);
      v135 = v49;
      v59 = v137;
      sub_1DEE17214(v49, v137, &unk_1ECDE4350, v41);
      v60 = v59 + *(v156 + 48);
      v61 = v136;
      sub_1DEEACA70(v60 + *(v159 + 20), v136, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v60, type metadata accessor for PairingRelationship);
      v62 = v61[1];
      v134 = *v61;

      sub_1DEE273A0(v61, type metadata accessor for DeviceDescriptor);
      v63 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v63;
      v65 = sub_1DEE13224(v55, v54);
      v66 = *(v63 + 16);
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_56;
      }

      v38 = v41;
      v69 = v62;
      if (*(v63 + 24) < v68)
      {
        v70 = v64;
        sub_1DEEB3DA4(v68, isUniquelyReferenced_nonNull_native);
        v71 = sub_1DEE13224(v55, v54);
        v73 = v72 & 1;
        v74 = v70;
        v75 = (v70 & 1) == v73;
        v20 = v135;
        if (!v75)
        {
          goto LABEL_58;
        }

        v65 = v71;
        if ((v74 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        v76 = v65;

        v152 = v160;
        v77 = (*(v160 + 56) + 16 * v76);
        *v77 = v134;
        v77[1] = v69;

        sub_1DEE171B4(v20, &unk_1ECDE4350, v38);
LABEL_26:
        v39 = v148;
        v32 = v153;
        v36 = v154;
        v58(v137, v132);
        goto LABEL_5;
      }

      v20 = v135;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v64)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v152 = v65;
        isUniquelyReferenced_nonNull_native = v64;
        sub_1DEEB8C78();
        v65 = v152;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v78 = v160;
      *(v160 + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v79 = (v78[6] + 16 * v65);
      *v79 = v55;
      v79[1] = v54;
      v80 = (v78[7] + 16 * v65);
      *v80 = v134;
      v80[1] = v69;
      sub_1DEE171B4(v20, &unk_1ECDE4350, v38);
      v81 = v78[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_57;
      }

      v152 = v78;
      v78[2] = v83;
      goto LABEL_26;
    }

    sub_1DEE171B4(v49, &unk_1ECDE4350, v41);
    (*(v47 + 8))(v53, v46);
    v40 = v37;
    v39 = v53;
    v20 = v49;
    v32 = v153;
    v36 = v154;
    v38 = v41;
  }

  while (v35);
  while (1)
  {
LABEL_7:
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v37 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v37);
    ++v40;
    if (v35)
    {
      v41 = v38;
      goto LABEL_11;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v161);
  v84 = v152;
  v85 = sub_1DEE58C2C(v152);
  v86 = sub_1DEEA3AD8(v85);

  v88 = sub_1DEEA3AD8(v87);

  if (*(v88 + 16) <= *(v86 + 16) >> 3)
  {
    v161 = v86;
    sub_1DEEC8D64(v88);

    v89 = v161;
  }

  else
  {
    v89 = sub_1DEEC9A18(v88, v86);
  }

  v91 = v151;
  v92 = 0;
  v93 = v89 + 56;
  v94 = 1 << *(v89 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & *(v89 + 56);
  v97 = (v94 + 63) >> 6;
  v156 = v158 + 48;
  *&v90 = 136446466;
  v154 = v90;
  v157 = v89;
  while (v96)
  {
    v98 = v96;
LABEL_40:
    v96 = (v98 - 1) & v98;
    if (*(v84 + 16))
    {
      v100 = (*(v89 + 48) + ((v92 << 10) | (16 * __clz(__rbit64(v98)))));
      v102 = *v100;
      v101 = v100[1];

      v103 = sub_1DEE13224(v102, v101);
      if (v104)
      {
        v155 = v102;
        v158 = v96;
        v105 = (*(v84 + 56) + 16 * v103);
        v106 = *v105;
        v107 = v105[1];
        sub_1DEE29594(v91 + 192, &v161);
        v108 = v162;
        v109 = v163;
        __swift_project_boxed_opaque_existential_1(&v161, v162);
        v110 = *(v109 + 8);

        v111 = v150;
        MetadataStoring.pairingRelationship(remoteDeviceID:)(v106, v107, v108, v110, v150);

        if ((*v156)(v111, 1, v159) == 1)
        {

          sub_1DEE171B4(v111, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(&v161);
          v91 = v151;
          v84 = v152;
          v89 = v157;
          v96 = v158;
        }

        else
        {
          v112 = v149;
          sub_1DEEAB218(v111, v149, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v161);
          v113 = v146;
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v114 = sub_1DEF8D508();
          __swift_project_value_buffer(v114, qword_1ECDF6028);
          sub_1DEEACA70(v112, v113, type metadata accessor for PairingRelationship);

          v115 = sub_1DEF8D4D8();
          v116 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v161 = v153;
            *v117 = v154;
            sub_1DEF8D3F8();
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v118 = sub_1DEF8E2E8();
            v120 = v119;
            sub_1DEE273A0(v113, type metadata accessor for PairingRelationship);
            v121 = sub_1DEE12A5C(v118, v120, &v161);

            *(v117 + 4) = v121;
            *(v117 + 12) = 2082;
            v122 = sub_1DEE12A5C(v155, v101, &v161);

            *(v117 + 14) = v122;
            _os_log_impl(&dword_1DEE0F000, v115, v116, "Deleting relationship %{public}s due to removed persona %{public}s", v117, 0x16u);
            v123 = v153;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v123, -1, -1);
            MEMORY[0x1E12CCD70](v117, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v113, type metadata accessor for PairingRelationship);
          }

          v89 = v157;
          v124 = v143;
          v125 = v139;
          *v143 = v139;
          v126 = v145;
          v140(v124, v142, v145);
          v127 = v125;
          LOBYTE(v125) = sub_1DEF8D7B8();
          v138(v124, v126);
          v91 = v151;
          if ((v125 & 1) == 0)
          {
            goto LABEL_55;
          }

          v128 = v149;
          sub_1DEE67760(v149);
          sub_1DEE29594(v91 + 192, &v161);
          v129 = v162;
          v130 = v163;
          __swift_project_boxed_opaque_existential_1(&v161, v162);
          (*(*(v130 + 16) + 120))(v128, v129);
          sub_1DEE273A0(v128, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v161);
          v84 = v152;
          v96 = v158;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v99 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v99 >= v97)
    {
    }

    v98 = *(v93 + 8 * v99);
    ++v92;
    if (v98)
    {
      v92 = v99;
      goto LABEL_40;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEE9A924(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v4 < 0)
    {
      sub_1DEE99AC0(v2);
    }

    else if (v4)
    {
      sub_1DEEAC064(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DEE9A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEEACA70(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v11, type metadata accessor for Record.ID.Ownership);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    return 0;
  }

  (*(v6 + 32))(v8, v11, v5);
  v12 = sub_1DEF8D3A8();
  (*(v6 + 8))(v8, v5);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) & 1;
  }
}

uint64_t sub_1DEE9ABCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1DEF8DF28();
  v7 = 0;
  v8 = 0xE000000000000000;
  MEMORY[0x1E12CB180](0x617461646174656DLL, 0xEF203A65726F7453);
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CE8, &qword_1DEF915F0);
  sub_1DEF8E008();
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = MEMORY[0x1E12CB180](59, 0xE100000000000000);
  v5 = v8;
  *a2 = v7;
  a2[1] = v5;
  return result;
}

unint64_t sub_1DEE9AD1C()
{
  v3 = v0;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  isEscapingClosureAtFileLocation = v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 232);
  *isEscapingClosureAtFileLocation = v9;
  (*(v5 + 104))(isEscapingClosureAtFileLocation, *MEMORY[0x1E69E8018], v4, v6);
  v122 = v9;
  isUniquelyReferenced_nonNull_native = sub_1DEF8D7B8();
  (*(v5 + 8))(isEscapingClosureAtFileLocation, v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    v85 = sub_1DEF8DE68();
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, &v130);
  v12 = v132;
  v11 = v133;
  __swift_project_boxed_opaque_existential_1(&v130, v132);
  v13 = (*(*(*(v11 + 1) + 8) + 24))(v12);
  v2 = v13;
  v121 = v3;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8E038() | 0x8000000000000000;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = -1 << *(v13 + 32);
    v14 = v13 + 64;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v13 + 64);
    __swift_destroy_boxed_opaque_existential_1(&v130);
  }

  isEscapingClosureAtFileLocation = 0;
  v118[1] = v15;
  isUniquelyReferenced_nonNull_native = (v15 + 64) >> 6;
  v124 = &v131;
  v20 = MEMORY[0x1E69E7CC8];
  v123 = isUniquelyReferenced_nonNull_native;
  v119 = v14;
  v120 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v21 = isEscapingClosureAtFileLocation;
    v22 = v16;
    v23 = isEscapingClosureAtFileLocation;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v22 = *(v14 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_16;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_16:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v2 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
      goto LABEL_37;
    }

LABEL_20:

    v31 = MEMORY[0x1E12CC160](v30);
    v32 = *(v25 + 32);
    v33 = v20[2];
    v34 = 0uLL;
    v127 = v31;
    v128 = v24;
    if (v33)
    {
      v35 = sub_1DEEAF20C(v32);
      v34 = 0uLL;
      v36 = 0uLL;
      if (v37)
      {
        v38 = (v20[7] + 32 * v35);
        v34 = *v38;
        v36 = v38[1];
      }
    }

    else
    {
      v36 = 0uLL;
    }

    v137 = v34;
    v138 = v36;
    v39 = swift_allocObject();
    v2 = v121;
    v39[2] = v121;
    v39[3] = v32;
    v39[4] = &v137;
    v39[5] = v25;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1DEEAC020;
    *(v40 + 24) = v39;
    v133 = sub_1DEE46D40;
    v134 = v40;
    *&v130 = MEMORY[0x1E69E9820];
    *(&v130 + 1) = 1107296256;
    v131 = sub_1DEE134F4;
    v132 = &block_descriptor_776;
    v41 = _Block_copy(&v130);
    inited = v25;
    isUniquelyReferenced_nonNull_native = v134;

    v129 = v32;

    dispatch_sync(v122, v41);
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_74;
    }

    sub_1DEE29594(v2 + 192, &v130);
    v42 = v132;
    isUniquelyReferenced_nonNull_native = v133;
    __swift_project_boxed_opaque_existential_1(&v130, v132);
    (*(*(*(isUniquelyReferenced_nonNull_native + 8) + 8) + 56))(inited, v42);
    i = inited;
    if (v43)
    {
      __swift_destroy_boxed_opaque_existential_1(&v130);
      isEscapingClosureAtFileLocation = sub_1DEF8D9C8();

      v44 = v138 + isEscapingClosureAtFileLocation;
      if (__OFADD__(v138, isEscapingClosureAtFileLocation))
      {
        goto LABEL_75;
      }

      *&v138 = v138 + isEscapingClosureAtFileLocation;
      inited = *(&v137 + 1);
      v2 = v137;
      v125 = *(&v138 + 1);
      v45 = v129;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v130 = v20;
      isEscapingClosureAtFileLocation = sub_1DEEAF20C(v45);
      v47 = v20;
      v48 = v20[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_76;
      }

      v51 = v46;
      if (v47[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB7FFC();
        }
      }

      else
      {
        sub_1DEEB2628(v50, isUniquelyReferenced_nonNull_native);
        v52 = sub_1DEEAF20C(v129);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_85;
        }

        isEscapingClosureAtFileLocation = v52;
      }

      isUniquelyReferenced_nonNull_native = v123;
      v54 = v130;
      if (v51)
      {
        v55 = (*(v130 + 56) + 32 * isEscapingClosureAtFileLocation);
        *v55 = v2;
        v55[1] = inited;
        v56 = v125;
        v55[2] = v44;
        v55[3] = v56;

        v20 = v54;
      }

      else
      {
        *(v130 + 8 * (isEscapingClosureAtFileLocation >> 6) + 64) |= 1 << isEscapingClosureAtFileLocation;
        *(v54[6] + 8 * isEscapingClosureAtFileLocation) = v129;
        v57 = (v54[7] + 32 * isEscapingClosureAtFileLocation);
        *v57 = v2;
        v57[1] = inited;
        v58 = v125;
        v57[2] = v44;
        v57[3] = v58;
        v59 = v54[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_77;
        }

        v20 = v54;
        v54[2] = v61;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v130);

      isUniquelyReferenced_nonNull_native = v123;
    }

    v14 = v119;
    v2 = v120;
    objc_autoreleasePoolPop(v127);

    isEscapingClosureAtFileLocation = v23;
    v16 = v128;
  }

  v26 = sub_1DEF8E0D8();
  if (v26)
  {
    v28 = v27;
    *&v137 = v26;
    type metadata accessor for Record.ID(0);
    swift_dynamicCast();
    v29 = v130;
    *&v137 = v28;
    type metadata accessor for RecordMetadata(0);
    v25 = v29;
    swift_dynamicCast();
    v23 = isEscapingClosureAtFileLocation;
    v24 = v16;
    if (v25)
    {
      goto LABEL_20;
    }
  }

LABEL_37:
  sub_1DEE2774C(v2);
  v62 = sub_1DEEA31A8(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = (v20 + 8);
  v63 = 1 << *(v20 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v20[8];
  v2 = (v63 + 63) >> 6;
  v123 = v20;

  inited = 0;
  for (i = v62; v65; i = v136)
  {
    v66 = inited;
    v67 = v123;
LABEL_46:
    v68 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v69 = v68 | (v66 << 6);
    v70 = *(*(v67 + 48) + 8 * v69);
    v71 = (*(v67 + 56) + 32 * v69);
    v73 = *v71;
    v72 = v71[1];
    v75 = v71[2];
    v74 = v71[3];
    v124 = v72;
    v125 = v75;
    v127 = v74;
    v76 = v70[5];
    *&v130 = v70[4];
    *(&v130 + 1) = v76;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v70[2], v70[3]);
    v128 = *(&v130 + 1);
    v129 = v130;
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_1DEF8DF28();

    *&v130 = 0x203A746E756F63;
    *(&v130 + 1) = 0xE700000000000000;
    *&v137 = v73;
    v77 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v77);

    MEMORY[0x1E12CB180](0x203A6469203BLL, 0xE600000000000000);
    *&v137 = v124;
    v78 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v78);

    MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xED0000203A646920);
    *&v137 = v125;
    v79 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v79);

    MEMORY[0x1E12CB180](0x203A61746164203BLL, 0xE800000000000000);
    *&v137 = v127;
    v80 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v80);

    v132 = MEMORY[0x1E69E6158];
    sub_1DEE117C0(&v130, &v137);
    v81 = i;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v81;
    isEscapingClosureAtFileLocation = v128;
    sub_1DEF3E5B0(&v137, v129, v128, v82);

    v62 = v136;
  }

  v67 = v123;
  while (1)
  {
    v66 = inited + 1;
    if (__OFADD__(inited, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v66 >= v2)
    {
      break;
    }

    v65 = *(isUniquelyReferenced_nonNull_native + 8 * v66);
    ++inited;
    if (v65)
    {
      inited = v66;
      goto LABEL_46;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB0, &unk_1DEF916C0);
  sub_1DEF8DD18();
  isUniquelyReferenced_nonNull_native = *(&v130 + 1);
  v83 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF90FD0;
  *(inited + 32) = 0x617461646174654DLL;
  isEscapingClosureAtFileLocation = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC0, &unk_1DEF916D0);
  *(inited + 48) = v62;
  *(inited + 72) = v84;
  strcpy((inited + 80), "EnabledZones");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v2 = v83;
  if (v83 >> 62)
  {
    goto LABEL_79;
  }

  v85 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
  v129 = isUniquelyReferenced_nonNull_native;
  v124 = isEscapingClosureAtFileLocation;
  v125 = inited;
  if (!v85)
  {

    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_61;
  }

  v136 = MEMORY[0x1E69E7CC0];

  sub_1DEEC7E08(0, v85 & ~(v85 >> 63), 0);
  if (v85 < 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    type metadata accessor for Zone.ID();
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v86 = 0;
  v87 = v136;
  v88 = v2;
  v127 = v2;
  v128 = v2 & 0xC000000000000001;
  do
  {
    v89 = v85;
    if (v128)
    {
      v90 = MEMORY[0x1E12CB6E0](v86, v88);
    }

    else
    {
      v90 = v88[v86 + 4];
    }

    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    v91 = v90[2];
    v92 = v91[5];
    *&v137 = v91[4];
    *(&v137 + 1) = v92;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v91[2], v91[3]);
    MEMORY[0x1E12CB180](v137, *(&v137 + 1));

    MEMORY[0x1E12CB180](8250, 0xE200000000000000);
    v93 = v90[3];
    v94 = v90[4];
    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    sub_1DEF8DF28();

    *&v137 = 0x3A746E6572727563;
    *(&v137 + 1) = 0xE900000000000020;
    v135 = v93;
    v95 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v95);

    MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
    v135 = v94;
    v96 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v96);

    MEMORY[0x1E12CB180](v137, *(&v137 + 1));

    v97 = v130;
    v136 = v87;
    v99 = *(v87 + 16);
    v98 = *(v87 + 24);
    if (v99 >= v98 >> 1)
    {
      sub_1DEEC7E08((v98 > 1), v99 + 1, 1);
      v87 = v136;
    }

    ++v86;
    *(v87 + 16) = v99 + 1;
    *(v87 + 16 * v99 + 32) = v97;
    v85 = v89;
    v88 = v127;
  }

  while (v89 != v86);

  inited = v125;
  isUniquelyReferenced_nonNull_native = v129;
LABEL_61:
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  *(inited + 96) = v87;
  *(inited + 120) = v100;
  strcpy((inited + 128), "DisabledZones");
  *(inited + 142) = -4864;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    v101 = sub_1DEF8DE68();
    if (!v101)
    {
      goto LABEL_81;
    }

LABEL_63:
    v136 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v101 & ~(v101 >> 63), 0);
    if ((v101 & 0x8000000000000000) == 0)
    {
      v102 = 0;
      v103 = v136;
      v104 = isUniquelyReferenced_nonNull_native;
      v127 = v100;
      v128 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      do
      {
        v105 = v101;
        if (v128)
        {
          v106 = MEMORY[0x1E12CB6E0](v102, v104);
        }

        else
        {
          v106 = v104[v102 + 4];
        }

        *&v130 = 0;
        *(&v130 + 1) = 0xE000000000000000;
        v107 = v106[2];
        v108 = v107[5];
        *&v137 = v107[4];
        *(&v137 + 1) = v108;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v107[2], v107[3]);
        MEMORY[0x1E12CB180](v137, *(&v137 + 1));

        MEMORY[0x1E12CB180](8250, 0xE200000000000000);
        v109 = v106[3];
        v110 = v106[4];
        *&v137 = 0;
        *(&v137 + 1) = 0xE000000000000000;
        sub_1DEF8DF28();

        *&v137 = 0x3A746E6572727563;
        *(&v137 + 1) = 0xE900000000000020;
        v135 = v109;
        v111 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v111);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v135 = v110;
        v112 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v112);

        MEMORY[0x1E12CB180](v137, *(&v137 + 1));

        v113 = v130;
        v136 = v103;
        v115 = *(v103 + 16);
        v114 = *(v103 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1DEEC7E08((v114 > 1), v115 + 1, 1);
          v103 = v136;
        }

        ++v102;
        *(v103 + 16) = v115 + 1;
        *(v103 + 16 * v115 + 32) = v113;
        v101 = v105;
        v104 = v129;
      }

      while (v105 != v102);

      inited = v125;
      v100 = v127;
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  v101 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v101)
  {
    goto LABEL_63;
  }

LABEL_81:

  v103 = MEMORY[0x1E69E7CC0];
LABEL_82:
  *(inited + 168) = v100;
  *(inited + 144) = v103;
  v116 = sub_1DEEA31A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  swift_arrayDestroy();

  return v116;
}

uint64_t sub_1DEE9BCB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 240);

  v9 = sub_1DEF718FC(a2, v8);

  if (v9)
  {
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        v13 = (*(v11 + 64))(a4, ObjectType, v11);
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = sub_1DEF8D9C8();

        v15 = 0;
      }

      v16 = a3[1];
      v17 = __OFADD__(v16, v13);
      v18 = v16 + v13;
      if (!v17)
      {
        a3[1] = v18;
        v19 = a3[3];
        v17 = __OFADD__(v19, v15);
        v20 = v19 + v15;
        if (!v17)
        {
          a3[3] = v20;
          return result;
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1DEE9BDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 232);
  *v7 = v8;
  v9 = *MEMORY[0x1E69E8020];
  v24 = *(v4 + 104);
  v24(v7, v9, v3, v5);
  v23 = v8;
  v10 = sub_1DEF8D7B8();
  v11 = *(v4 + 8);
  result = v11(v7, v3);
  if (v10)
  {
    swift_beginAccess();

    sub_1DEEA59EC(v13, a1);
    v15 = v14;

    v16 = v25;
    *v25 = v15;
    v17 = v24;
    *v7 = v23;
    v17(v7, v9, v3);
    v18 = sub_1DEF8D7B8();
    result = v11(v7, v3);
    if (v18)
    {

      sub_1DEEA8D44(v19, a1);
      v21 = v20;

      v16[1] = v21;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DEE9BFF0()
{
  v1 = v0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v117 = &v109 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v116 = &v109 - v6;
  v112 = type metadata accessor for PairingRelationship(0);
  v128 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v126 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v109 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v109 - v15;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 232);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8018], v16, v18);
  v22 = v21;
  v23 = sub_1DEF8D7B8();
  result = (*(v17 + 8))(v20, v16);
  if ((v23 & 1) == 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, &v130);
  v26 = v131;
  v25 = v132;
  __swift_project_boxed_opaque_existential_1(&v130, v131);
  v27 = (*(*(*(v25 + 8) + 8) + 32))(v26);
  v28 = *(v27 + 16);
  v120 = v1;
  if (v28)
  {
    v129 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v28, 0);
    v127 = v129;
    v29 = v27 + 64;
    result = sub_1DEF8DE18();
    v30 = result;
    v31 = 0;
    v110 = v27 + 72;
    v113 = v28;
    v114 = v27 + 64;
    do
    {
      if (v30 < 0 || v30 >= 1 << *(v27 + 32))
      {
        goto LABEL_67;
      }

      v33 = v30 >> 6;
      if ((*(v29 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_68;
      }

      v124 = 1 << v30;
      v122 = v31;
      v123 = *(v27 + 36);
      v34 = v119;
      v35 = *(v119 + 48);
      v36 = *(v27 + 48);
      v37 = sub_1DEF8D3F8();
      v38 = *(v37 - 8);
      v39 = v116;
      (*(v38 + 16))(v116, v36 + *(v38 + 72) * v30, v37);
      v40 = *(v27 + 56);
      v125 = *(v128 + 72);
      sub_1DEEACA70(v40 + v125 * v30, &v39[v35], type metadata accessor for PairingRelationship);
      v41 = v117;
      (*(v38 + 32))(v117, v39, v37);
      sub_1DEEAB218(&v39[v35], v41 + *(v34 + 48), type metadata accessor for PairingRelationship);
      v42 = v118;
      sub_1DEE1BA88(v41, v118, &unk_1ECDE4350, &qword_1DEF93400);
      v43 = *(v34 + 48);
      v44 = v115;
      sub_1DEEAB218(v42 + v43, v115, type metadata accessor for PairingRelationship);
      (*(v38 + 8))(v42, v37);
      v45 = v127;
      v129 = v127;
      v47 = *(v127 + 16);
      v46 = *(v127 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1DEEC7DA4((v46 > 1), v47 + 1, 1);
        v45 = v129;
      }

      *(v45 + 16) = v47 + 1;
      v48 = *(v128 + 80);
      v127 = v45;
      result = sub_1DEEAB218(v44, v45 + ((v48 + 32) & ~v48) + v47 * v125, type metadata accessor for PairingRelationship);
      v32 = 1 << *(v27 + 32);
      if (v30 >= v32)
      {
        goto LABEL_69;
      }

      v29 = v114;
      v49 = *(v114 + 8 * v33);
      if ((v49 & v124) == 0)
      {
        goto LABEL_70;
      }

      if (v123 != *(v27 + 36))
      {
        goto LABEL_71;
      }

      v50 = v49 & (-2 << (v30 & 0x3F));
      if (v50)
      {
        v32 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
        v1 = v120;
      }

      else
      {
        v51 = v33 << 6;
        v52 = v33 + 1;
        v53 = (v110 + 8 * v33);
        v1 = v120;
        while (v52 < (v32 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            result = sub_1DEE2F804(v30, v123, 0);
            v32 = __clz(__rbit64(v54)) + v51;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v30, v123, 0);
      }

LABEL_5:
      v31 = v122 + 1;
      v30 = v32;
    }

    while (v122 + 1 != v113);

    v56 = v112;
    v57 = v127;
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
    v56 = v112;
  }

  result = __swift_destroy_boxed_opaque_existential_1(&v130);
  v58 = *(v57 + 16);
  v59 = v128;
  v60 = v109;
  if (!v58)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v77 = MEMORY[0x1E69E7CC0];
LABEL_51:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF91020;
    *(inited + 32) = 0x646572696150;
    v128 = inited + 32;
    *(inited + 40) = 0xE600000000000000;
    v89 = sub_1DEE9CD88(v87, v1);

    v90 = *(v89 + 2);
    if (v90)
    {
      v130 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v90, 0);
      v91 = v130;
      v127 = v89;
      v92 = (v89 + 40);
      do
      {
        v94 = *(v92 - 1);
        v93 = *v92;
        v130 = v91;
        v95 = *(v91 + 16);
        v96 = *(v91 + 24);

        if (v95 >= v96 >> 1)
        {
          sub_1DEEC7E08((v96 > 1), v95 + 1, 1);
          v91 = v130;
        }

        *(v91 + 16) = v95 + 1;
        v97 = v91 + 16 * v95;
        *(v97 + 32) = v94;
        *(v97 + 40) = v93;
        v92 += 2;
        --v90;
      }

      while (v90);

      v1 = v120;
    }

    else
    {

      v91 = MEMORY[0x1E69E7CC0];
    }

    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    *(inited + 48) = v91;
    *(inited + 72) = v98;
    *(inited + 80) = 0x6465726961706E55;
    *(inited + 88) = 0xE800000000000000;
    v99 = sub_1DEE9CD88(v77, v1);

    v100 = *(v99 + 2);
    if (v100)
    {
      v127 = v98;
      v130 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v100, 0);
      v101 = v130;
      v102 = (v99 + 40);
      do
      {
        v104 = *(v102 - 1);
        v103 = *v102;
        v130 = v101;
        v106 = *(v101 + 16);
        v105 = *(v101 + 24);

        if (v106 >= v105 >> 1)
        {
          sub_1DEEC7E08((v105 > 1), v106 + 1, 1);
          v101 = v130;
        }

        *(v101 + 16) = v106 + 1;
        v107 = v101 + 16 * v106;
        *(v107 + 32) = v104;
        *(v107 + 40) = v103;
        v102 += 2;
        --v100;
      }

      while (v100);

      v98 = v127;
    }

    else
    {

      v101 = MEMORY[0x1E69E7CC0];
    }

    *(inited + 120) = v98;
    *(inited + 96) = v101;
    v108 = sub_1DEEA31A8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
    swift_arrayDestroy();
    return v108;
  }

  v61 = 0;
  v127 = MEMORY[0x1E69E7CC0];
  v62 = v57;
  while (v61 < *(v57 + 16))
  {
    v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v64 = *(v59 + 72);
    sub_1DEEACA70(v57 + v63 + v64 * v61, v60, type metadata accessor for PairingRelationship);
    v65 = (v60 + *(v56 + 32));
    v66 = *v65;
    v67 = v65[1];
    if (v67 >= 2)
    {
      if (v67 == 2)
      {
        sub_1DEE4F8D4(v66, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        sub_1DEEAB218(v60, v111, type metadata accessor for PairingRelationship);
        v70 = v127;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7DA4(0, *(v70 + 16) + 1, 1);
          v56 = v112;
          v70 = v130;
        }

        v73 = *(v70 + 16);
        v72 = *(v70 + 24);
        v74 = v70;
        if (v73 >= v72 >> 1)
        {
          sub_1DEEC7DA4((v72 > 1), v73 + 1, 1);
          v56 = v112;
          v74 = v130;
        }

        *(v74 + 16) = v73 + 1;
        v127 = v74;
        result = sub_1DEEAB218(v111, v74 + v63 + v73 * v64, type metadata accessor for PairingRelationship);
        v57 = v62;
        v60 = v109;
        goto LABEL_25;
      }

      if (v67 != 3)
      {
        v68 = *v65;
        v69 = v65[1];

        v67 = v69;
        v56 = v112;
        v66 = v68;
        v59 = v128;
      }
    }

    sub_1DEE4F8D4(v66, v67);
    sub_1DEE4F8D4(0, 2uLL);
    result = sub_1DEE273A0(v60, type metadata accessor for PairingRelationship);
LABEL_25:
    if (v58 == ++v61)
    {
      v75 = 0;
      v76 = v57 + v63;
      v77 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v75 >= *(v57 + 16))
        {
          goto LABEL_72;
        }

        v78 = v126;
        sub_1DEEACA70(v76, v126, type metadata accessor for PairingRelationship);
        v79 = (v78 + *(v56 + 32));
        v80 = *v79;
        v81 = v79[1];
        if (v81 < 2)
        {
          goto LABEL_44;
        }

        if (v81 != 2)
        {
          break;
        }

        sub_1DEE4F8D4(v80, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        result = sub_1DEE273A0(v126, type metadata accessor for PairingRelationship);
LABEL_38:
        ++v75;
        v76 += v64;
        if (v58 == v75)
        {
          v1 = v120;
          v87 = v127;
          goto LABEL_51;
        }
      }

      if (v81 != 3)
      {
        v82 = *v79;
        v83 = v79[1];

        v81 = v83;
        v56 = v112;
        v80 = v82;
      }

LABEL_44:
      sub_1DEE4F8D4(v80, v81);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEEAB218(v126, v121, type metadata accessor for PairingRelationship);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v77;
      if ((v84 & 1) == 0)
      {
        sub_1DEEC7DA4(0, *(v77 + 16) + 1, 1);
        v56 = v112;
        v77 = v130;
      }

      v86 = *(v77 + 16);
      v85 = *(v77 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1DEEC7DA4((v85 > 1), v86 + 1, 1);
        v56 = v112;
        v77 = v130;
      }

      *(v77 + 16) = v86 + 1;
      result = sub_1DEEAB218(v121, v77 + v63 + v86 * v64, type metadata accessor for PairingRelationship);
      v57 = v62;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

char *sub_1DEE9CD88(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(type metadata accessor for PairingRelationship(0) - 8);
    sub_1DEE9CE6C(&v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4++, a2);
  }

  return v8;
}

uint64_t sub_1DEE9CE6C(char **a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ZoneVersion(0);
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, &v85);
  v17 = v87;
  v18 = v88;
  __swift_project_boxed_opaque_existential_1(&v85, v87);
  v19 = *(*(v18 + 8) + 24);
  v71 = a2;
  v20 = v19(a2, v17);
  __swift_destroy_boxed_opaque_existential_1(&v85);
  v21 = 0;
  v23 = v20 + 64;
  v22 = *(v20 + 64);
  v24 = 1 << *(v20 + 32);
  v85 = 0;
  v86 = 0xE000000000000000;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v22;
  v27 = (v24 + 63) >> 6;
  v77 = v20;
  v78 = (v6 + 48);
  v72 = (v6 + 8);
  v73 = (v6 + 32);
  v80 = v5;
  while (1)
  {
    if (!v26)
    {
      if (v27 <= v21 + 1)
      {
        v30 = v21 + 1;
      }

      else
      {
        v30 = v27;
      }

      v31 = v30 - 1;
      v32 = v89;
      while (1)
      {
        v29 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v29 >= v27)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v54 - 8) + 56))(v32, 1, 1, v54);
          v26 = 0;
          v21 = v31;
          goto LABEL_17;
        }

        v26 = *(v23 + 8 * v29);
        v21 = (v21 + 1);
        if (v26)
        {
          v21 = v29;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v29 = v21;
LABEL_16:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v29 << 6);
    v35 = *(*(v77 + 48) + 8 * v34);
    v36 = v75;
    sub_1DEEACA70(*(v77 + 56) + *(v76 + 72) * v34, v75, type metadata accessor for ZoneVersion);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    v38 = *(v37 + 48);
    v39 = v89;
    *v89 = v35;
    v40 = v36;
    v32 = v39;
    sub_1DEEAB218(v40, v39 + v38, type metadata accessor for ZoneVersion);
    (*(*(v37 - 8) + 56))(v32, 0, 1, v37);

LABEL_17:
    sub_1DEE1BA88(v32, v16, &qword_1ECDE3D10, &qword_1DEF91620);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    if ((*(*(v41 - 8) + 48))(v16, 1, v41) == 1)
    {
      break;
    }

    v42 = *v16;
    v43 = &v16[*(v41 + 48)];
    v44 = v79;
    sub_1DEEAB218(v43, v79, type metadata accessor for ZoneVersion);
    v45 = v80;
    if ((*v78)(v44, 1, v80) == 1)
    {
      v46 = 0xE500000000000000;
      v47 = 0x7974706D65;
    }

    else
    {
      v48 = v44;
      v49 = v74;
      (*v73)(v74, v48, v45);
      v50 = sub_1DEF8D398();
      v51 = v45;
      v47 = v50;
      v46 = v52;
      (*v72)(v49, v51);
    }

    v53 = v85 & 0xFFFFFFFFFFFFLL;
    if ((v86 & 0x2000000000000000) != 0)
    {
      v53 = HIBYTE(v86) & 0xF;
    }

    if (v53)
    {
      MEMORY[0x1E12CB180](32, 0xE100000000000000);
    }

    v28 = v42[5];
    v83 = v42[4];
    v84 = v28;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v42[2], v42[3]);
    MEMORY[0x1E12CB180](8250, 0xE200000000000000);
    MEMORY[0x1E12CB180](v47, v46);

    MEMORY[0x1E12CB180](59, 0xE100000000000000);
    MEMORY[0x1E12CB180](v83, v84);
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  sub_1DEF8DF28();
  sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v55 = v71;
  v56 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v56);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  v57 = (v55 + *(type metadata accessor for PairingRelationship(0) + 32));
  v58 = v57[1];
  if (v58 > 1)
  {
    v21 = v70;
    if (v58 != 2)
    {
      if (v58 == 3)
      {
        v59 = 0xE800000000000000;
        v60 = 0x6576697463616E69;
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v59 = 0xE600000000000000;
    v60 = 0x646572696170;
  }

  else
  {
    v21 = v70;
    if (v58)
    {
      if (v58 == 1)
      {
        v59 = 0xE700000000000000;
        v60 = 0x676E6972696170;
        goto LABEL_36;
      }

LABEL_33:
      v61 = *v57;
      v81 = 0x6E6974617267696DLL;
      v82 = 0xEA00000000002867;
      MEMORY[0x1E12CB180](v61);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      v60 = v81;
      v59 = v82;
      goto LABEL_36;
    }

    v59 = 0xEA00000000006465;
    v60 = 0x6375646F72746E69;
  }

LABEL_36:
  MEMORY[0x1E12CB180](v60, v59);

  MEMORY[0x1E12CB180](0x65746F6D6572203BLL, 0xEA0000000000203ALL);
  v62 = DeviceDescriptor.shortDescription.getter();
  MEMORY[0x1E12CB180](v62);

  MEMORY[0x1E12CB180](0x696D6F636E69203BLL, 0xEC000000203A676ELL);
  sub_1DEF8D378();
  sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v63 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v63);

  MEMORY[0x1E12CB180](0x696F6774756F203BLL, 0xEC000000203A676ELL);
  v64 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v64);

  MEMORY[0x1E12CB180](0x6F6973726576203BLL, 0xEC000000203A736ELL);
  MEMORY[0x1E12CB180](v85, v86);

  v23 = v83;
  v26 = v84;
  v16 = *v21;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_37;
  }

LABEL_41:
  result = sub_1DEF3805C(0, *(v16 + 2) + 1, 1, v16);
  v16 = result;
LABEL_37:
  v67 = *(v16 + 2);
  v66 = *(v16 + 3);
  if (v67 >= v66 >> 1)
  {
    result = sub_1DEF3805C((v66 > 1), v67 + 1, 1, v16);
    v16 = result;
  }

  *(v16 + 2) = v67 + 1;
  v68 = &v16[16 * v67];
  *(v68 + 4) = v23;
  *(v68 + 5) = v26;
  *v21 = v16;
  return result;
}

unint64_t sub_1DEE9D7B0()
{
  v2 = v0;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 232);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3, v5);
  inited = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_33;
  }

  if (*(v2 + 137))
  {
    v63 = 1701736270;
    v64 = 0xE400000000000000;
  }

  else
  {
    v10 = *(v2 + 136);
    v59 = sub_1DEF8DBA8();
    v60 = v11;
    MEMORY[0x1E12CB180](120, 0xE100000000000000);
    v12 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v12);

    MEMORY[0x1E12CB180](64, 0xE100000000000000);
    v13 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v13);

    v63 = v59;
    v64 = v60;
    if ((v10 & 1) == 0)
    {
      v59 = 114;
      v60 = 0xE100000000000000;
      v14 = sub_1DEF8DBA8();
      MEMORY[0x1E12CB180](v14);

      MEMORY[0x1E12CB180](v59, v60);
    }
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v59);
  v16 = v61;
  v15 = v62;
  __swift_project_boxed_opaque_existential_1(&v59, v61);
  LOBYTE(v15) = (*(*(*(v15 + 8) + 8) + 40))(v16);
  __swift_destroy_boxed_opaque_existential_1(&v59);
  if (v15)
  {
    sub_1DEE29594(v2 + 192, &v59);
    v18 = v61;
    v17 = v62;
    __swift_project_boxed_opaque_existential_1(&v59, v61);
    v19 = (*(*(*(v17 + 8) + 8) + 48))(v18);
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v20 = sub_1DEE586BC(v19);

    v59 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590, MEMORY[0x1E69E6310]);
    v56 = sub_1DEF8D8D8();
    v57 = v21;
  }

  else
  {
    v56 = 0x64656C6261736944;
    v57 = 0xE800000000000000;
  }

  v22 = sub_1DEEAEE94(1u);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0x6E776F6E6B6E75;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  v26 = sub_1DEEAEE94(2u);
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0x6E776F6E6B6E75;
  }

  v52 = v28;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DD0, &qword_1DEF916E0);
  sub_1DEF8DD18();
  v53 = v59;
  v54 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
  inited = swift_initStackObject();
  *(inited + 4) = 0x656369766544;
  v55 = inited + 32;
  *(inited + 1) = xmmword_1DEF91030;
  *(inited + 5) = 0xE600000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1DEF8DF28();
  v30 = sub_1DEEAEE94(0);
  if (v31)
  {
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v35 = [v34 hostName];
    v32 = sub_1DEF8D948();
    v33 = v36;
  }

  MEMORY[0x1E12CB180](v32, v33);

  MEMORY[0x1E12CB180](10272, 0xE200000000000000);
  MEMORY[0x1E12CB180](v24, v25);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  MEMORY[0x1E12CB180](v52, v29);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  if (*(v2 + 256))
  {
    v37 = *(v2 + 248);
    v38 = *(v2 + 256);
  }

  else
  {
    v39 = *(v2 + 184);
    ObjectType = swift_getObjectType();
    v41 = (*(v39 + 16))(ObjectType, v39);
    if (v42)
    {
      v37 = v41;
    }

    else
    {
      v37 = 0xD000000000000016;
    }

    if (v42)
    {
      v38 = v42;
    }

    else
    {
      v38 = 0x80000001DEF9BCA0;
    }
  }

  v1 = 0xD000000000000011;
  v2 = 0xEB00000000203A6DLL;

  MEMORY[0x1E12CB180](v37, v38);

  MEMORY[0x1E12CB180](0x6E65727275632820, 0xEB00000000203A74);
  if (qword_1ED786060 != -1)
  {
    goto LABEL_35;
  }

LABEL_33:
  v58 = xmmword_1ED786068;
  v43 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v43);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, v2);
  v58 = *(&xmmword_1ED786068 + 1);
  v44 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v44);

  MEMORY[0x1E12CB180](2112297, 0xE300000000000000);
  MEMORY[0x1E12CB180](v63, v64);

  v45 = v60;
  v46 = MEMORY[0x1E69E6158];
  *(inited + 6) = v59;
  *(inited + 7) = v45;
  *(inited + 9) = v46;
  *(inited + 10) = 0x73694C776F6C6C41;
  *(inited + 11) = 0xE900000000000074;
  v47 = v57;
  *(inited + 12) = v56;
  *(inited + 13) = v47;
  *(inited + 15) = v46;
  *(inited + 16) = 0x64656C62616E45;
  *(inited + 17) = 0xE700000000000000;
  v48 = MEMORY[0x1E69E6370];
  inited[144] = v53;
  *(inited + 21) = v48;
  *(inited + 22) = v1;
  *(inited + 23) = 0x80000001DEF9C1F0;
  *(inited + 27) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  *(inited + 24) = v54;
  v49 = sub_1DEEA31A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  swift_arrayDestroy();
  return v49;
}

uint64_t sub_1DEE9DF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 624);
  swift_beginAccess();

  v4 = sub_1DEE58E70(v3);

  *(a2 + 8) = v4;
  return result;
}

unint64_t sub_1DEE9DFA0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 232);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8018], v1, v3);
  v6;
  v7 = sub_1DEF8D7B8();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DD8, &qword_1DEF916E8);
    sub_1DEF8DD18();
    v10 = v56;
    v9 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF91020;
    *(inited + 32) = 0xD000000000000013;
    v47[1] = inited + 32;
    *(inited + 40) = 0x80000001DEF9C210;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v49 = inited;
    v48 = v9;
    if (v12)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v12, 0);
      v14 = v55;
      v50 = "EnabledMessageTypes";
      v47[0] = v10;
      v15 = (v10 + 72);
      do
      {
        v16 = *(v15 - 5);
        v17 = *(v15 - 4);
        v18 = *(v15 - 3);
        v19 = *(v15 - 2);
        v20 = *(v15 - 1);
        v51 = *v15;
        v56 = 0;
        v57 = 0xE000000000000000;

        sub_1DEF8DF28();
        MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1DEF8DF28();

        v53 = 540697705;
        v54 = 0xE400000000000000;
        MEMORY[0x1E12CB180](v16, v17);
        MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1E12CB180](v18, v19);
        MEMORY[0x1E12CB180](v53, v54);

        MEMORY[0x1E12CB180](0xD000000000000013, v50 | 0x8000000000000000);
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1DEF8DF28();

        v53 = 0x3A746E6572727563;
        v54 = 0xE900000000000020;
        v52 = v20;
        v21 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v21);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v52 = v51;
        v22 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v22);

        MEMORY[0x1E12CB180](v53, v54);

        v23 = v56;
        v24 = v57;
        v55 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DEEC7E08((v25 > 1), v26 + 1, 1);
          v14 = v55;
        }

        v15 += 6;
        *(v14 + 16) = v26 + 1;
        v27 = v14 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        --v12;
      }

      while (v12);

      v28 = v49;
      v9 = v48;
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = inited;

      v14 = MEMORY[0x1E69E7CC0];
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    v30 = v29;
    v28[6] = v14;
    v28[9] = v29;
    v28[10] = 0xD000000000000014;
    v28[11] = 0x80000001DEF9C250;
    v31 = *(v9 + 16);
    if (v31)
    {
      v47[0] = v29;
      v55 = v13;
      sub_1DEEC7E08(0, v31, 0);
      v32 = v55;
      v50 = "EnabledMessageTypes";
      v33 = (v9 + 72);
      do
      {
        v34 = *(v33 - 5);
        v35 = *(v33 - 4);
        v36 = *(v33 - 3);
        v37 = *(v33 - 2);
        v38 = *(v33 - 1);
        v51 = *v33;
        v56 = 0;
        v57 = 0xE000000000000000;

        sub_1DEF8DF28();
        MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1DEF8DF28();

        v53 = 540697705;
        v54 = 0xE400000000000000;
        MEMORY[0x1E12CB180](v34, v35);
        MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1E12CB180](v36, v37);
        MEMORY[0x1E12CB180](v53, v54);

        MEMORY[0x1E12CB180](0xD000000000000013, v50 | 0x8000000000000000);
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1DEF8DF28();

        v53 = 0x3A746E6572727563;
        v54 = 0xE900000000000020;
        v52 = v38;
        v39 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v39);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v52 = v51;
        v40 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v40);

        MEMORY[0x1E12CB180](v53, v54);

        v41 = v56;
        v42 = v57;
        v55 = v32;
        v44 = *(v32 + 16);
        v43 = *(v32 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1DEEC7E08((v43 > 1), v44 + 1, 1);
          v32 = v55;
        }

        v33 += 6;
        *(v32 + 16) = v44 + 1;
        v45 = v32 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        --v31;
      }

      while (v31);

      v28 = v49;
      v30 = v47[0];
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v28[15] = v30;
    v28[12] = v32;
    v46 = sub_1DEEA31A8(v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
    swift_arrayDestroy();
    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE9E78C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 232);
  *v8 = v9;
  v10 = *MEMORY[0x1E69E8020];
  v11 = *MEMORY[0x1E69E8020];
  v25 = *(v5 + 104);
  v25(v8, v11, v4, v6);
  v23 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  v24 = *(v5 + 8);
  result = v24(v8, v4);
  if (v9)
  {
    swift_beginAccess();

    v14 = sub_1DEEA4880(v13, a1, sub_1DEEA5DF0, sub_1DEEA5DF0);
    HIDWORD(v22) = v10;
    v15 = a2;
    v16 = v14;

    v17 = sub_1DEE581C8(v16);
    v18 = v15;

    *v15 = v17;
    *v8 = v23;
    (v25)(v8, HIDWORD(v22), v4);
    LOBYTE(v15) = sub_1DEF8D7B8();
    result = v24(v8, v4);
    if (v15)
    {

      v20 = sub_1DEEA4880(v19, a1, sub_1DEEAC52C, sub_1DEEAC52C);

      v21 = sub_1DEE581C8(v20);

      v18[1] = v21;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Replicator.captureState()()
{
  Replicator.captureState(identifier:)(0, 0xE000000000000000);
  v0 = sub_1DEF8D858();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_1DEE9EAA8(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - v5);
  sub_1DEE17214(a1, &v9 - v5, &qword_1ECDE3D20, &unk_1DEF91630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    v8 = v7;
    a2(v7, 1);
  }

  else
  {
    a2(0, 0);
    sub_1DEE171B4(v6, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

void *sub_1DEE9EBC8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
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
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1DEEA0F68(v12, v7, v5, a3);
  result = MEMORY[0x1E12CCD70](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1DEE9ED38(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1DEEA0EE0(v9, v6, v4, v3);
      MEMORY[0x1E12CCD70](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEE9F9D4(v8, v6, v4, v3);
  if (v2)
  {
    swift_willThrow();
  }
}

void *sub_1DEE9EEA4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
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
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1DEEA0FF0(v12, v7, v5, a3);
  result = MEMORY[0x1E12CCD70](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1DEE9F014(unint64_t *a1, uint64_t a2, void *a3)
{
  v49 = a2;
  v50 = a1;
  v4 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v48 - v9;
  v10 = type metadata accessor for PairingRelationship(0);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DEF8D3F8();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v15 = 0;
  v61 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v55 = v12 + 16;
  v56 = v12;
  v53 = (v12 + 8);
  v54 = v22;
  v67 = v7;
  while (v21)
  {
    v25 = __clz(__rbit64(v21));
    v62 = (v21 - 1) & v21;
LABEL_12:
    v28 = v25 | (v15 << 6);
    v29 = v61;
    v30 = *(v56 + 16);
    v32 = v63;
    v31 = v64;
    v30(v63, v61[6] + *(v56 + 72) * v28, v64, v13);
    v33 = v29[7];
    v34 = *(v57 + 72);
    v52 = v28;
    v35 = v33 + v34 * v28;
    v36 = v65;
    sub_1DEEACA70(v35, v65, type metadata accessor for PairingRelationship);
    v37 = v66;
    (v30)(v66, v32, v31);
    v38 = v59;
    sub_1DEEACA70(v36, v37 + *(v59 + 48), type metadata accessor for PairingRelationship);
    v39 = v67;
    sub_1DEE17214(v37, v67, &unk_1ECDE4350, &qword_1DEF93400);
    v40 = v39 + *(v38 + 48);
    v41 = v60;
    sub_1DEEACA70(v40 + *(v58 + 20), v60, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v40, type metadata accessor for PairingRelationship);
    v42 = *(v41 + 32);
    v43 = *(v41 + 40);
    sub_1DEE273A0(v41, type metadata accessor for DeviceDescriptor);
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v44 = xmmword_1ED786068;
    sub_1DEE171B4(v66, &unk_1ECDE4350, &qword_1DEF93400);
    if (v42 < *(&v44 + 1))
    {
      v23 = *v53;
      v24 = v64;
      (*v53)(v67, v64);
      sub_1DEE273A0(v65, type metadata accessor for PairingRelationship);
      v23(v63, v24);
      v22 = v54;
      v21 = v62;
    }

    else
    {
      v45 = *v53;
      v46 = v64;
      (*v53)(v67, v64);
      sub_1DEE273A0(v65, type metadata accessor for PairingRelationship);
      v45(v63, v46);
      v22 = v54;
      v21 = v62;
      if (v44 >= v43)
      {
        *(v50 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v51++, 1))
        {
          goto LABEL_21;
        }
      }
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      sub_1DEEC6068(v50, v49, v51, v61);
      return;
    }

    v27 = v17[v15];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v62 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1DEE9F55C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v4 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v40 - v8;
  v9 = type metadata accessor for PairingRelationship(0);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DEF8D3F8();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  v14 = 0;
  v59 = a3;
  v15 = *(a3 + 64);
  v45 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v43 = 0;
  v44 = (v16 + 63) >> 6;
  v47 = v11 + 8;
  v48 = v11 + 16;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v60 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v59;
    v24 = v49;
    v25 = v50;
    v26 = *(v50 + 16);
    v27 = v51;
    v26(v49, v59[6] + *(v50 + 72) * v22, v51, v12);
    v28 = v23[7];
    v29 = *(v53 + 72);
    v46 = v22;
    v30 = v28 + v29 * v22;
    v31 = v52;
    sub_1DEEACA70(v30, v52, type metadata accessor for PairingRelationship);
    v32 = v55;
    (v26)(v55, v24, v27);
    v33 = v57;
    sub_1DEEACA70(v31, &v32[*(v57 + 48)], type metadata accessor for PairingRelationship);
    v34 = v32;
    v35 = v56;
    sub_1DEE1BA88(v34, v56, &unk_1ECDE4350, &qword_1DEF93400);
    v36 = v35 + *(v33 + 48);
    v37 = v58;
    sub_1DEEACA70(v36 + *(v54 + 20), v58, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v36, type metadata accessor for PairingRelationship);
    LODWORD(v36) = *(v37 + 48);
    sub_1DEE273A0(v37, type metadata accessor for DeviceDescriptor);
    v38 = *(v25 + 8);
    v38(v35, v27);
    sub_1DEE273A0(v31, type metadata accessor for PairingRelationship);
    v38(v24, v27);
    v18 = v60;
    if (v36 == 4)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6068(v42, v41, v43, v59);
        return;
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v44)
    {
      goto LABEL_15;
    }

    v21 = *(v45 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v60 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEE9F9D4(unint64_t *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v56 = a2;
  v57 = a1;
  v63 = a4;
  v5 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v72);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v73 = type metadata accessor for PairingRelationship(0);
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DEF8D3F8();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v76);
  v75 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v18 = 0;
  v71 = a3;
  v19 = a3;
  v20 = v13;
  v23 = v19[8];
  v22 = v19 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v66 = v15 + 16;
  v67 = v27;
  v68 = v22;
  v69 = v15;
  v59 = v13;
  v60 = v10;
  v65 = (v15 + 8);
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v74 = (v26 - 1) & v26;
LABEL_12:
    v31 = v28 | (v18 << 6);
    v32 = v71;
    v33 = *(v69 + 16);
    v35 = v75;
    v34 = v76;
    v33(v75, v71[6] + *(v69 + 72) * v31, v76, v16);
    v36 = v32[7];
    v37 = *(v70 + 72);
    v64 = v31;
    v38 = v36 + v37 * v31;
    v39 = v77;
    sub_1DEEACA70(v38, v77, type metadata accessor for PairingRelationship);
    (v33)(v20, v35, v34);
    v40 = v72;
    sub_1DEEACA70(v39, v20 + *(v72 + 48), type metadata accessor for PairingRelationship);
    sub_1DEE17214(v20, v10, &unk_1ECDE4350, &qword_1DEF93400);
    v41 = &v10[*(v40 + 48)];
    v42 = (v41 + *(v73 + 32));
    v43 = *v42;
    v44 = v42[1];
    sub_1DEE4F8C0(*v42, v44);
    sub_1DEE273A0(v41, type metadata accessor for PairingRelationship);
    if (v44)
    {
      sub_1DEE4F8C0(v43, v44);
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v46 = v65;
    sub_1DEE4F8D4(v43, v45);
    sub_1DEE4F8D4(0, 0);
    sub_1DEE4F8D4(v43, v45);
    v47 = *v46;
    v48 = v76;
    (*v46)(v10, v76);
    if (v44)
    {
      v49 = v20;
      v50 = v61;
      sub_1DEE1BA88(v49, v61, &unk_1ECDE4350, &qword_1DEF93400);
      v51 = v50 + *(v72 + 48);
      v52 = v62;
      sub_1DEEACA70(v51 + *(v73 + 20), v62, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v51, type metadata accessor for PairingRelationship);
      LODWORD(v51) = *(v52 + 48);
      v10 = v60;
      sub_1DEE273A0(v52, type metadata accessor for DeviceDescriptor);
      v53 = v50;
      v20 = v59;
      v47(v53, v48);
      sub_1DEE273A0(v77, type metadata accessor for PairingRelationship);
      v47(v75, v48);
      v27 = v67;
      v22 = v68;
      v26 = v74;
      if (v51 == v63)
      {
        *(v57 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
LABEL_20:
          sub_1DEEC6068(v57, v56, v58, v71);
          return;
        }
      }
    }

    else
    {
      sub_1DEE171B4(v20, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE273A0(v77, type metadata accessor for PairingRelationship);
      v47(v75, v48);
      v27 = v67;
      v22 = v68;
      v26 = v74;
    }
  }

  v29 = v18;
  while (1)
  {
    v18 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v18 >= v27)
    {
      goto LABEL_20;
    }

    v30 = v22[v18];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v74 = (v30 - 1) & v30;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DEE9FFA8(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for PairingRelationship(0);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DEF8D3F8();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v56);
  v59 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v15 = 0;
  v55 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v50 = v17;
  v51 = v12;
  v47 = (v12 + 8);
  v48 = v12 + 16;
  v49 = v22;
  v46 = v5;
  while (1)
  {
    v23 = v56;
    v24 = v59;
    if (!v21)
    {
      break;
    }

    v25 = __clz(__rbit64(v21));
    v57 = (v21 - 1) & v21;
LABEL_11:
    v58 = v25 | (v15 << 6);
    v28 = v55;
    v29 = v58;
    v30 = *(v51 + 16);
    v30(v59, v55[6] + *(v51 + 72) * v58, v56, v13);
    v31 = v28[7] + *(v52 + 72) * v29;
    v32 = v11;
    sub_1DEEACA70(v31, v11, type metadata accessor for PairingRelationship);
    (v30)(v8, v24, v23);
    v33 = v54;
    sub_1DEEACA70(v11, &v8[*(v54 + 48)], type metadata accessor for PairingRelationship);
    v34 = v46;
    sub_1DEE17214(v8, v46, &unk_1ECDE4350, &qword_1DEF93400);
    v35 = v34 + *(v33 + 48);
    v36 = (v35 + *(v53 + 32));
    v37 = *v36;
    v38 = v36[1];
    sub_1DEE4F8C0(*v36, v38);
    sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
    if (v38 == 2)
    {
      sub_1DEE4F8D4(v37, 2uLL);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v37, 2uLL);
      sub_1DEE171B4(v8, &unk_1ECDE4350, &qword_1DEF93400);
      v40 = *v47;
      (*v47)(v34, v23);
      sub_1DEE273A0(v32, type metadata accessor for PairingRelationship);
      v40(v59, v23);
      v21 = v57;
      *(v44 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v41 = __OFADD__(v45++, 1);
      v11 = v32;
      v22 = v49;
      v17 = v50;
      if (v41)
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v44, v43, v45, v55);
        return;
      }
    }

    else
    {
      sub_1DEE4F8C0(v37, v38);
      sub_1DEE4F8D4(v37, v38);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v37, v38);
      sub_1DEE171B4(v8, &unk_1ECDE4350, &qword_1DEF93400);
      v39 = *v47;
      (*v47)(v34, v23);
      sub_1DEE273A0(v32, type metadata accessor for PairingRelationship);
      v39(v59, v23);
      v11 = v32;
      v22 = v49;
      v17 = v50;
      v21 = v57;
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_16;
    }

    v27 = v17[v15];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v57 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEA048C(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v42 - v6;
  v7 = type metadata accessor for PairingRelationship(0);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D3F8();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v15 = 0;
  v56 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v11 + 16;
  v50 = v22;
  v51 = v11;
  v47 = (v11 + 8);
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v57 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = v56;
    v28 = *(v51 + 16);
    v28(v14, v56[6] + *(v51 + 72) * v26, v10, v12);
    v29 = v27[7];
    v30 = *(v52 + 72);
    v46 = v26;
    sub_1DEEACA70(v29 + v30 * v26, v9, type metadata accessor for PairingRelationship);
    v31 = v54;
    (v28)(v54, v14, v10);
    v32 = v55;
    sub_1DEEACA70(v9, &v31[*(v55 + 48)], type metadata accessor for PairingRelationship);
    v33 = v31;
    v34 = v48;
    sub_1DEE1BA88(v33, v48, &unk_1ECDE4350, &qword_1DEF93400);
    v35 = v34 + *(v32 + 48);
    v36 = (v35 + *(v53 + 32));
    v37 = *v36;
    v38 = v36[1];
    sub_1DEE4F8C0(*v36, v38);
    sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
    if ((v38 | 2) == 2)
    {
      v39 = *v47;
      (*v47)(v34, v10);
      sub_1DEE273A0(v9, type metadata accessor for PairingRelationship);
      v39(v14, v10);
      v22 = v50;
      v21 = v57;
    }

    else
    {
      sub_1DEE4F8D4(v37, v38);
      v40 = *v47;
      (*v47)(v34, v10);
      sub_1DEE273A0(v9, type metadata accessor for PairingRelationship);
      v40(v14, v10);
      *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v41 = __OFADD__(v45++, 1);
      v22 = v50;
      v21 = v57;
      if (v41)
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v44, v43, v45, v56);
        return;
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_16;
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v57 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEA08F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v41 - v7;
  v8 = type metadata accessor for Record.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v41 - v14;
  v15 = 0;
  v57 = a3;
  v16 = *(a3 + 64);
  v44 = 0;
  v45 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v53 = (v5 + 56);
  v46 = (v5 + 32);
  v49 = (v5 + 8);
  v50 = (v5 + 48);
  v21 = (v5 + 48);
  v55 = v20;
  v56 = v12;
  v58 = v4;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v60 = (v19 - 1) & v19;
LABEL_13:
    v28 = v25 | (v15 << 6);
    v29 = *(v57 + 56);
    v30 = *(*(v57 + 48) + 8 * v28);
    v52 = v28;
    v61 = *(v29 + 8 * v28);
    v63 = v30;
    v31 = v59;
    sub_1DEEACA70(v30 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v59, type metadata accessor for Record.ID.Ownership);
    (*v53)(v12, 1, 1, v4);
    v32 = *(v54 + 48);
    v33 = v62;
    sub_1DEEACA70(v31, v62, type metadata accessor for Record.ID.Ownership);
    sub_1DEEACA70(v12, v33 + v32, type metadata accessor for Record.ID.Ownership);
    v34 = *v21;
    if ((*v21)(v33, 1, v4) == 1)
    {

      sub_1DEE273A0(v12, type metadata accessor for Record.ID.Ownership);
      sub_1DEE273A0(v31, type metadata accessor for Record.ID.Ownership);
      v22 = v62;
      v4 = v58;
      v23 = v34(v62 + v32, 1, v58);
      v24 = v22;
      if (v23 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    v35 = v62;
    v36 = v48;
    sub_1DEEACA70(v62, v48, type metadata accessor for Record.ID.Ownership);
    if (v34(v35 + v32, 1, v58) == 1)
    {

      sub_1DEE273A0(v12, type metadata accessor for Record.ID.Ownership);
      sub_1DEE273A0(v59, type metadata accessor for Record.ID.Ownership);
      v4 = v58;
      (*v49)(v36, v58);
      v24 = v62;
      v21 = v50;
LABEL_18:
      sub_1DEE171B4(v24, &unk_1ECDE40F0, &unk_1DEF91C20);
      goto LABEL_19;
    }

    v37 = v47;
    v24 = v62;
    v38 = v58;
    (*v46)(v47, v62 + v32, v58);

    v51 = sub_1DEF8D3A8();
    v39 = *v49;
    (*v49)(v37, v38);
    sub_1DEE273A0(v12, type metadata accessor for Record.ID.Ownership);
    sub_1DEE273A0(v59, type metadata accessor for Record.ID.Ownership);
    v39(v36, v38);
    v4 = v38;
    v21 = v50;
    if (v51)
    {
LABEL_5:
      sub_1DEE273A0(v24, type metadata accessor for Record.ID.Ownership);

      v20 = v55;
      v12 = v56;
      v19 = v60;
    }

    else
    {
      sub_1DEE273A0(v24, type metadata accessor for Record.ID.Ownership);
LABEL_19:

      *(v43 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      v40 = __OFADD__(v44++, 1);
      v20 = v55;
      v12 = v56;
      v19 = v60;
      if (v40)
      {
        __break(1u);
LABEL_22:
        sub_1DEEC64F8(v43, v42, v44, v57);
        return;
      }
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_22;
    }

    v27 = *(v45 + 8 * v15);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v60 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1DEEA0EE0(void *result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEE9F9D4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1DEEA0F68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DEEA0FF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DEEA1078(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_1DEEA111C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1DEEA4E50(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1DEEA11C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    v12 = sub_1DEEA542C(result, a2, a3, a4, a5, a6);

    return v12;
  }

  return result;
}

void *sub_1DEEA1260(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEEAA558(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1DEEA12F0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DEF06EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1DEEA13A4(v5);
  *a1 = v3;
}

void sub_1DEEA13A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DEF8E2D8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEEA1748(v8, v9, a1, v4);
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
    sub_1DEEA14E8(0, v2, 1, a1);
  }
}

void sub_1DEEA14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v33 = -v18;
    v34 = v17;
    v20 = a1 - a3;
    v27 = v18;
    v21 = v17 + v18 * a3;
LABEL_4:
    v31 = v19;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    v22 = v19;
    while (1)
    {
      sub_1DEE17214(v21, v16, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE17214(v22, v12, &unk_1ECDE4350, &qword_1DEF93400);
      v23 = sub_1DEE92068(v16, v12);
      sub_1DEE171B4(v12, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE171B4(v16, &unk_1ECDE4350, &qword_1DEF93400);
      if (v4)
      {
        break;
      }

      if (v23)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v24 = v35;
        sub_1DEE1BA88(v21, v35, &unk_1ECDE4350, &qword_1DEF93400);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DEE1BA88(v24, v22, &unk_1ECDE4350, &qword_1DEF93400);
        v22 += v33;
        v21 += v33;
        if (!__CFADD__(v20++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v19 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1DEEA1748(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v125 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v9 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v116 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v136 = (&v116 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v123 = (&v116 - v25);
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v125;
    if (*v125)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_105;
    }

    goto LABEL_145;
  }

  v121 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v130 = v15;
  v128 = v23;
  v134 = v24;
  v126 = a3;
  v120 = v9;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v30 >= v26)
    {
      v44 = v30;
    }

    else
    {
      v137 = v26;
      v131 = v6;
      v31 = *a3;
      v32 = v29;
      v33 = *(v9 + 72);
      v5 = *a3 + v33 * v30;
      v34 = v123;
      sub_1DEE17214(v5, v123, &unk_1ECDE4350, &qword_1DEF93400);
      v35 = v124;
      sub_1DEE17214(v31 + v33 * v32, v124, &unk_1ECDE4350, &qword_1DEF93400);
      v36 = v131;
      LODWORD(v135) = sub_1DEE92068(v34, v35);
      v131 = v36;
      if (v36)
      {
        sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v34, &unk_1ECDE4350, &qword_1DEF93400);

        return;
      }

      sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE171B4(v34, &unk_1ECDE4350, &qword_1DEF93400);
      v122 = v32;
      v37 = v32 + 2;
      v38 = v31 + v33 * v37;
      v6 = v131;
      v39 = v33;
      v138 = v33;
      v133 = v28;
      while (1)
      {
        v40 = v136;
        if (v137 == v37)
        {
          break;
        }

        sub_1DEE17214(v38, v136, &unk_1ECDE4350, &qword_1DEF93400);
        v41 = v134;
        sub_1DEE17214(v5, v134, &unk_1ECDE4350, &qword_1DEF93400);
        v42 = sub_1DEE92068(v40, v41);
        if (v6)
        {
          sub_1DEE171B4(v41, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v40, &unk_1ECDE4350, &qword_1DEF93400);

          return;
        }

        v43 = v42;
        sub_1DEE171B4(v41, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v40, &unk_1ECDE4350, &qword_1DEF93400);
        ++v37;
        v39 = v138;
        v38 += v138;
        v5 += v138;
        v6 = 0;
        v28 = v133;
        if ((v135 ^ v43))
        {
          v44 = v37 - 1;
          goto LABEL_12;
        }
      }

      v44 = v137;
LABEL_12:
      v15 = v130;
      v29 = v122;
      if ((v135 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v44 < v122)
      {
        goto LABEL_139;
      }

      if (v122 < v44)
      {
        v45 = v39 * (v44 - 1);
        v46 = v44 * v39;
        v137 = v44;
        v47 = v44;
        v48 = v122;
        v49 = v122 * v39;
        do
        {
          if (v48 != --v47)
          {
            v131 = v6;
            v50 = *v126;
            if (!*v126)
            {
              goto LABEL_143;
            }

            v5 = v50 + v49;
            sub_1DEE1BA88(v50 + v49, v127, &unk_1ECDE4350, &qword_1DEF93400);
            if (v49 < v45 || v5 >= v50 + v46)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DEE1BA88(v127, v50 + v45, &unk_1ECDE4350, &qword_1DEF93400);
            v6 = v131;
            v39 = v138;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        a3 = v126;
        v9 = v120;
        v15 = v130;
        v29 = v122;
        v44 = v137;
      }

      else
      {
LABEL_25:
        a3 = v126;
        v9 = v120;
      }
    }

    v51 = a3[1];
    if (v44 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v29))
    {
      goto LABEL_135;
    }

    if (v44 - v29 >= v121)
    {
LABEL_36:
      v5 = v44;
      if (v44 < v29)
      {
        goto LABEL_134;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v121))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v29 + v121 >= v51)
    {
      v52 = a3[1];
    }

    else
    {
      v52 = v29 + v121;
    }

    if (v52 < v29)
    {
      goto LABEL_138;
    }

    if (v44 == v52)
    {
      goto LABEL_36;
    }

    v100 = *a3;
    v101 = *(v9 + 72);
    v102 = *a3 + v101 * (v44 - 1);
    v135 = -v101;
    v122 = v29;
    v103 = v29 - v44;
    v138 = v100;
    v116 = v101;
    v104 = v100 + v44 * v101;
    v131 = v52;
    do
    {
      v137 = v44;
      v117 = v104;
      v105 = v104;
      v118 = v103;
      v119 = v102;
      while (1)
      {
        v106 = v128;
        sub_1DEE17214(v105, v128, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE17214(v102, v15, &unk_1ECDE4350, &qword_1DEF93400);
        v107 = sub_1DEE92068(v106, v15);
        v108 = v15;
        if (v6)
        {
          sub_1DEE171B4(v15, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v106, &unk_1ECDE4350, &qword_1DEF93400);
LABEL_116:

          return;
        }

        v109 = v107;
        sub_1DEE171B4(v108, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v106, &unk_1ECDE4350, &qword_1DEF93400);
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v138)
        {
          goto LABEL_141;
        }

        v110 = v129;
        sub_1DEE1BA88(v105, v129, &unk_1ECDE4350, &qword_1DEF93400);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DEE1BA88(v110, v102, &unk_1ECDE4350, &qword_1DEF93400);
        v102 += v135;
        v105 += v135;
        v111 = __CFADD__(v103++, 1);
        v15 = v130;
        if (v111)
        {
          goto LABEL_99;
        }
      }

      v15 = v130;
LABEL_99:
      v44 = v137 + 1;
      v102 = v119 + v116;
      v103 = v118 - 1;
      v104 = v117 + v116;
      v5 = v131;
    }

    while (v137 + 1 != v131);
    a3 = v126;
    v9 = v120;
    v29 = v122;
    if (v131 < v122)
    {
      goto LABEL_134;
    }

LABEL_37:
    v53 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DEF06DBC(0, *(v28 + 2) + 1, 1, v28);
    }

    v55 = *(v28 + 2);
    v54 = *(v28 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v28 = sub_1DEF06DBC((v54 > 1), v55 + 1, 1, v28);
    }

    *(v28 + 2) = v56;
    v57 = &v28[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v5;
    v131 = v5;
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_144;
    }

    if (v55)
    {
      break;
    }

    v6 = v53;
LABEL_88:
    v26 = a3[1];
    v15 = v130;
    v27 = v131;
    if (v131 >= v26)
    {
      goto LABEL_103;
    }
  }

  v6 = v53;
  while (1)
  {
    v58 = v56 - 1;
    if (v56 >= 4)
    {
      v63 = &v28[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = &v28[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = &v28[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_133;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v56 == 3)
    {
      v59 = *(v28 + 4);
      v60 = *(v28 + 5);
      v69 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      v62 = v69;
LABEL_57:
      if (v62)
      {
        goto LABEL_123;
      }

      v75 = &v28[16 * v56];
      v77 = *v75;
      v76 = *(v75 + 1);
      v78 = __OFSUB__(v76, v77);
      v79 = v76 - v77;
      v80 = v78;
      if (v78)
      {
        goto LABEL_126;
      }

      v81 = &v28[16 * v58 + 32];
      v83 = *v81;
      v82 = *(v81 + 1);
      v69 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v69)
      {
        goto LABEL_129;
      }

      if (__OFADD__(v79, v84))
      {
        goto LABEL_130;
      }

      if (v79 + v84 >= v61)
      {
        if (v61 < v84)
        {
          v58 = v56 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v85 = &v28[16 * v56];
    v87 = *v85;
    v86 = *(v85 + 1);
    v69 = __OFSUB__(v86, v87);
    v79 = v86 - v87;
    v80 = v69;
LABEL_71:
    if (v80)
    {
      goto LABEL_125;
    }

    v88 = &v28[16 * v58];
    v90 = *(v88 + 4);
    v89 = *(v88 + 5);
    v69 = __OFSUB__(v89, v90);
    v91 = v89 - v90;
    if (v69)
    {
      goto LABEL_128;
    }

    if (v91 < v79)
    {
      goto LABEL_88;
    }

LABEL_78:
    v96 = v58 - 1;
    if (v58 - 1 >= v56)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_140;
    }

    v97 = *&v28[16 * v96 + 32];
    v98 = *&v28[16 * v58 + 40];
    sub_1DEEA2200(*a3 + *(v9 + 72) * v97, *a3 + *(v9 + 72) * *&v28[16 * v58 + 32], *a3 + *(v9 + 72) * v98, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v98 < v97)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DEF06BB8(v28);
    }

    if (v96 >= *(v28 + 2))
    {
      goto LABEL_120;
    }

    v99 = &v28[16 * v96];
    *(v99 + 4) = v97;
    *(v99 + 5) = v98;
    v139 = v28;
    sub_1DEF06B2C(v58);
    v28 = v139;
    v56 = *(v139 + 2);
    if (v56 <= 1)
    {
      goto LABEL_88;
    }
  }

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
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  v28 = sub_1DEF06BB8(v28);
LABEL_105:
  v139 = v28;
  v112 = *(v28 + 2);
  if (v112 < 2)
  {
    goto LABEL_116;
  }

  while (*a3)
  {
    v113 = *&v28[16 * v112];
    v114 = *&v28[16 * v112 + 24];
    sub_1DEEA2200(*a3 + *(v9 + 72) * v113, *a3 + *(v9 + 72) * *&v28[16 * v112 + 16], *a3 + *(v9 + 72) * v114, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v114 < v113)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DEF06BB8(v28);
    }

    if (v112 - 2 >= *(v28 + 2))
    {
      goto LABEL_132;
    }

    v115 = &v28[16 * v112];
    *v115 = v113;
    *(v115 + 1) = v114;
    v139 = v28;
    sub_1DEF06B2C(v112 - 1);
    v28 = v139;
    v112 = *(v139 + 2);
    if (v112 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_1DEEA2200(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v71);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v62 - v18);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v22 = a2;
  v23 = a1;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v25 = (a2 - a1) / v21;
    v76 = a1;
    v26 = a4;
    v75 = a4;
    if (v25 < v24 / v21)
    {
      v27 = v25 * v21;
      if (a4 < v23 || v23 + v27 <= a4)
      {
        v28 = v23;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v23)
        {
          goto LABEL_17;
        }

        v28 = v23;
        swift_arrayInitWithTakeBackToFront();
      }

      v23 = v28;
      v26 = a4;
      v22 = a2;
LABEL_17:
      v72 = v4;
      v70 = v26 + v27;
      v74 = v26 + v27;
      if (v27 >= 1 && v22 < a3)
      {
        v68 = v15;
        v69 = v19;
        v67 = a3;
        while (1)
        {
          v73 = v23;
          v33 = v21;
          v34 = v22;
          v35 = v69;
          sub_1DEE17214(v22, v69, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE17214(v26, v15, &unk_1ECDE4350, &qword_1DEF93400);
          v36 = v72;
          v37 = sub_1DEE92068(v35, v15);
          v72 = v36;
          if (v36)
          {
            sub_1DEE171B4(v15, &unk_1ECDE4350, &qword_1DEF93400);
            sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);
            goto LABEL_65;
          }

          v38 = v37;
          sub_1DEE171B4(v15, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);
          if ((v38 & 1) == 0)
          {
            v21 = v33;
            v40 = v26;
            v26 += v33;
            v39 = v73;
            if (v73 < v40 || v73 >= v26)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v73;
            }

            else if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
              v39 = v73;
            }

            v75 = v26;
            v22 = v34;
            goto LABEL_37;
          }

          v21 = v33;
          v39 = v73;
          if (v73 < v34 || v73 >= v34 + v33)
          {
            break;
          }

          if (v73 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v39 = v73;
          }

          v22 = v34 + v33;
LABEL_37:
          v23 = v39 + v21;
          v76 = v23;
          if (v26 < v70)
          {
            v15 = v68;
            if (v22 < v67)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v29 = v24 / v21 * v21;
    v69 = v17;
    if (a4 < v22 || v22 + v29 <= a4)
    {
      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v22)
      {
LABEL_42:
        v41 = v26 + v29;
        if (v29 < 1)
        {
LABEL_60:
          v72 = v5;
          v76 = v22;
          v74 = v41;
          goto LABEL_65;
        }

        v42 = -v21;
        v43 = &unk_1ECDE4350;
        v44 = v26 + v29;
        v45 = &qword_1DEF93400;
        v65 = v26;
        v73 = v23;
        v68 = -v21;
LABEL_44:
        v63 = v41;
        v46 = v22 + v42;
        v66 = v22 + v42;
        v67 = v22;
        while (1)
        {
          if (v22 <= v23)
          {
            v72 = v5;
            v76 = v22;
            v74 = v63;
            goto LABEL_65;
          }

          v47 = a3;
          v64 = v41;
          v49 = v68;
          v48 = v69;
          v70 = v44;
          v50 = v44 + v68;
          v51 = v5;
          v52 = v43;
          v53 = v45;
          sub_1DEE17214(v44 + v68, v69, v43, v45);
          sub_1DEE17214(v46, v11, v52, v53);
          v54 = sub_1DEE92068(v48, v11);
          v55 = v11;
          if (v51)
          {
            break;
          }

          v56 = v54;
          a3 = v47 + v49;
          v57 = v55;
          sub_1DEE171B4(v55, v52, v53);
          sub_1DEE171B4(v48, v52, v53);
          if (v56)
          {
            v72 = 0;
            if (v47 < v67 || a3 >= v67)
            {
              v61 = v66;
              swift_arrayInitWithTakeFrontToBack();
              v11 = v57;
              v22 = v61;
              v23 = v73;
            }

            else
            {
              v11 = v57;
              v22 = v66;
              v23 = v73;
              if (v47 != v67)
              {
                v59 = v66;
                v60 = v73;
                swift_arrayInitWithTakeBackToFront();
                v23 = v60;
                v22 = v59;
              }
            }

            v41 = v64;
            v44 = v70;
            v42 = v68;
            v43 = v52;
            v45 = v53;
            v5 = v72;
            if (v70 <= v65)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v41 = v50;
          if (v47 < v70 || a3 >= v70)
          {
            swift_arrayInitWithTakeFrontToBack();
            v41 = v50;
            v11 = v57;
            v23 = v73;
          }

          else
          {
            v11 = v57;
            v23 = v73;
            if (v47 != v70)
            {
              v58 = v73;
              swift_arrayInitWithTakeBackToFront();
              v23 = v58;
              v41 = v50;
            }
          }

          v44 = v41;
          v46 = v66;
          v43 = v52;
          v45 = v53;
          v5 = 0;
          v22 = v67;
          if (v50 <= v65)
          {
            goto LABEL_60;
          }
        }

        sub_1DEE171B4(v11, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v48, &unk_1ECDE4350, &qword_1DEF93400);
        v76 = v67;
        v74 = v64;
LABEL_65:
        sub_1DEF06BCC(&v76, &v75, &v74);
        return;
      }

      v30 = v22;
      v31 = v23;
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v31;
    v26 = a4;
    v22 = v30;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

void *sub_1DEEA28CC(uint64_t a1, __int128 *a2, void *a3)
{
  a3[5] = type metadata accessor for Replicator();
  a3[6] = &protocol witness table for Replicator;
  a3[2] = a1;
  a3[12] = 0;
  a3[13] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E00, &unk_1DEF91720);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DEF91030;
  v7 = *MEMORY[0x1E69B3678];
  v8 = *MEMORY[0x1E69B3688];
  *(v6 + 32) = *MEMORY[0x1E69B3678];
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x1E69B3660];
  v10 = *MEMORY[0x1E69B3668];
  *(v6 + 48) = *MEMORY[0x1E69B3660];
  *(v6 + 56) = v10;
  a3[14] = v6;
  sub_1DEE2F1AC(a2, (a3 + 7));
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  return a3;
}

uint64_t sub_1DEEA29AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1DEEA29E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D78, &qword_1DEF91688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3D78, &qword_1DEF91688);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DEE13224(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ZoneVersion(0);
      result = sub_1DEEAB218(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ZoneVersion);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DEEA2BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D48, &qword_1DEF91660);
    v3 = sub_1DEF8E148();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1DEEAF2E8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

void *sub_1DEEA2CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D40, &qword_1DEF91658);
  v3 = sub_1DEF8E148();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1DEEAF2E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1DEEAF2E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DEEA2DE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_1DEF8E148();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1DEE17214(v16, v12, a2, v27);
      result = sub_1DEEAF350(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_1DEF8D3F8();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_1DEEA2FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CC8, &unk_1DEF915D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD0, &unk_1DEF91C00);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3CC8, &unk_1DEF915D0);
      v11 = *v5;
      result = sub_1DEEAF20C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1DEF8D3F8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DEEA31A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v13, &qword_1ECDE3DC8, &unk_1DEF9AFF0);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEE117C0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1DEEA32D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CB8, &qword_1DEF915B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3CB8, &qword_1DEF915B0);
      v11 = *v5;
      result = sub_1DEEAF20C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ZoneVersion(0);
      result = sub_1DEEAB218(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ZoneVersion);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DEEA34BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF0, &qword_1DEF915F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3CF0, &qword_1DEF915F8);
      v11 = *v5;
      result = sub_1DEEAF3E8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_1DEF8D3F8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DEEA36A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD8, &qword_1DEF915E0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v11, &qword_1ECDE3CE0, &qword_1DEF915E8);
      v5 = v11;
      result = sub_1DEEAF718(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DEE117C0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1DEEA37CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C78, &qword_1DEF91570);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v13, &qword_1ECDE3C80, &qword_1DEF91578);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEEA8734(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

unint64_t sub_1DEEA3900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C88, &qword_1DEF91580);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
    v7 = sub_1DEF8E148();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1DEE17214(v9, v5, &qword_1ECDE3C88, &qword_1DEF91580);
      result = sub_1DEEAF7AC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
      result = sub_1DEEAB218(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t sub_1DEEA3AD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12CB3B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DEF38588(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DEEA3B70(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1E12CB3B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1DEF386D8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1DEEA3D0C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1DEF8DE68();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for Zone.ID();
  v5 = sub_1DEE2BAF8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID, &protocol conformance descriptor for Zone.ID);
  result = MEMORY[0x1E12CB3B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12CB6E0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1DEF389B8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1DEF8DE68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DEEA3E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEACAE0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for DeviceType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DEF38C28(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DEEA3F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEA86E0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for NetworkBrowser.MonitoredPersona, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_1DEF39434(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1DEEA3F9C(uint64_t a1)
{
  v2 = type metadata accessor for PairingRelationship(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1DEE2BAF8(&qword_1ECDE3110, type metadata accessor for PairingRelationship, &protocol conformance descriptor for PairingRelationship);
  result = MEMORY[0x1E12CB3B0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1DEEACA70(v12, v5, type metadata accessor for PairingRelationship);
      sub_1DEF395BC(v8, v5);
      sub_1DEE273A0(v8, type metadata accessor for PairingRelationship);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

void sub_1DEEA412C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v61 = a4;
  v49[0] = a2;
  v50 = a1;
  v5 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v59);
  v68 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v49 - v9;
  v10 = type metadata accessor for PairingRelationship(0);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D3F8();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v66 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v63 = 0;
  v18 = 0;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v53 = v15 + 16;
  v54 = v15;
  v51 = (v15 + 8);
  v52 = v25;
  v56 = v12;
  v55 = v14;
  while (v24)
  {
    v27 = __clz(__rbit64(v24));
    v65 = (v24 - 1) & v24;
LABEL_13:
    v30 = v27 | (v18 << 6);
    v31 = v62;
    v32 = *(v54 + 16);
    v33 = v66;
    v32(v66, v62[6] + *(v54 + 72) * v30, v13, v16);
    v34 = v31[7];
    v35 = *(v57 + 72);
    v64 = v30;
    sub_1DEEACA70(v34 + v35 * v30, v12, type metadata accessor for PairingRelationship);
    v36 = v67;
    (v32)(v67, v33, v13);
    v37 = v59;
    sub_1DEEACA70(v12, v36 + *(v59 + 48), type metadata accessor for PairingRelationship);
    v38 = *(v61 + 520);
    v39 = v68;
    sub_1DEE17214(v36, v68, &unk_1ECDE4350, &qword_1DEF93400);
    v40 = v39 + *(v37 + 48);
    v41 = v60;
    sub_1DEEACA70(v40 + *(v58 + 20), v60, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v40, type metadata accessor for PairingRelationship);
    v42 = *(v41 + 48);
    sub_1DEE273A0(v41, type metadata accessor for DeviceDescriptor);
    if (*(v38 + 16) && (sub_1DEF8E7A8(), MEMORY[0x1E12CBF90](v42), v43 = sub_1DEF8E7F8(), v44 = -1 << *(v38 + 32), v45 = v43 & ~v44, ((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
    {
      v46 = ~v44;
      while (*(*(v38 + 48) + v45) != v42)
      {
        v45 = (v45 + 1) & v46;
        if (((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1DEE171B4(v67, &unk_1ECDE4350, &qword_1DEF93400);
      v26 = *v51;
      v13 = v55;
      (*v51)(v68, v55);
      v12 = v56;
      sub_1DEE273A0(v56, type metadata accessor for PairingRelationship);
      v26(v66, v13);
      v25 = v52;
      v24 = v65;
    }

    else
    {
LABEL_18:
      sub_1DEE171B4(v67, &unk_1ECDE4350, &qword_1DEF93400);
      v47 = *v51;
      v13 = v55;
      (*v51)(v68, v55);
      v12 = v56;
      sub_1DEE273A0(v56, type metadata accessor for PairingRelationship);
      v47(v66, v13);
      *(v50 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      v48 = __OFADD__(v63++, 1);
      v25 = v52;
      v24 = v65;
      if (v48)
      {
        __break(1u);
LABEL_21:
        sub_1DEEC6068(v50, v49[0], v63, v62);
        return;
      }
    }
  }

  v28 = v18;
  while (1)
  {
    v18 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      goto LABEL_21;
    }

    v29 = v20[v18];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v65 = (v29 - 1) & v29;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1DEEA4718(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(*(a3 + 48) + 8 * v16) + 32);
    if (a4[2] != v17[2] || a4[3] != v17[3])
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    result = a4[4];
    if (result != v17[4] || a4[5] != v17[5])
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return sub_1DEEC64F8(v22, a2, v6, a3);
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

    if (v7 >= v12)
    {
      return sub_1DEEC64F8(v22, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DEEA4880(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v15 = sub_1DEEA1078(v17, v12, a1, a2, a4);
      MEMORY[0x1E12CCD70](v17, -1, -1);

      return v15;
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  bzero(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v18 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

  return v15;
}

void *sub_1DEEA4A50(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v12 = MEMORY[0x1E69E7CC8];
    v4 = sub_1DEF8E038();

    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Record.ID(0);
      v3 = MEMORY[0x1E69E7CC8];
      do
      {
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        if (!v11)
        {
          break;
        }

        v5 = *(v11 + 32);
        v6 = a2[2] == v5[2] && a2[3] == v5[3];
        if (v6 || (sub_1DEF8E4E8()) && (a2[4] == v5[4] ? (v7 = a2[5] == v5[5]) : (v7 = 0), v7 || (sub_1DEF8E4E8()))
        {
          v8 = v3[2];
          if (v3[3] <= v8)
          {
            sub_1DEEB1864(v8 + 1, 1);
          }

          v3 = v12;
          sub_1DEF41EC0();
        }

        else
        {
        }
      }

      while (sub_1DEF8E0D8());
    }

    sub_1DEE2774C(v4 | 0x8000000000000000);
  }

  else
  {

    v3 = sub_1DEEA4880(a1, a2, sub_1DEEA4718, sub_1DEEA4718);
  }

  return v3;
}

void *sub_1DEEA4C70(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v14 = MEMORY[0x1E69E7CC8];
    v5 = sub_1DEF8E038();
    v6 = sub_1DEF8E0D8();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for Record.ID(0);
      v8 = v7;
      do
      {
        v12 = v8;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata(0);
        swift_dynamicCast();
        if (!v13)
        {
          break;
        }

        v9 = a2(v13, v12);

        if (v9)
        {
          v10 = v4[2];
          if (v4[3] <= v10)
          {
            sub_1DEEB1864(v10 + 1, 1);
          }

          v4 = v14;
          sub_1DEF41EC0();
        }

        else
        {
        }

        v8 = sub_1DEF8E0D8();
      }

      while (v8);
    }

    sub_1DEE2774C(v5 | 0x8000000000000000);
  }

  else
  {
    v4 = sub_1DEEA55A0(a1, a2, a3, sub_1DEEC64F8);
  }

  return v4;
}

uint64_t sub_1DEEA4E50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(*(a3 + 48) + 8 * v18);
    result = *(v19 + 32);
    if (result != a4 || *(v19 + 40) != a5)
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return sub_1DEEC6904(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_1DEEC6904(v23, a2, v8, a3);
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1DEEA111C(v14, v9, a1, a2, a3);
      MEMORY[0x1E12CCD70](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1DEEA4E50(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

uint64_t sub_1DEEA5168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CC8];
    v26 = MEMORY[0x1E69E7CC8];
    v6 = sub_1DEF8E038();

    v7 = sub_1DEF8E0D8();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for Zone.ID();
      v9 = v8;
      do
      {
        v25 = v9;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        if (!v24)
        {
          break;
        }

        v16 = *(v24 + 32) == a2 && *(v24 + 40) == a3;
        if (v16 || (sub_1DEF8E4E8() & 1) != 0)
        {
          v17 = *(v5 + 16);
          if (*(v5 + 24) <= v17)
          {
            sub_1DEEB20C0(v17 + 1, 1);
          }

          v5 = v26;
          sub_1DEF8E7A8();
          sub_1DEF8D9B8();
          sub_1DEF8D9B8();
          result = sub_1DEF8E7F8();
          v11 = v26 + 64;
          v12 = -1 << *(v26 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v26 + 64 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v26 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v18 = 0;
            v19 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v19 && (v18 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v20 = v14 == v19;
              if (v14 == v19)
              {
                v14 = 0;
              }

              v18 |= v20;
              v21 = *(v11 + 8 * v14);
            }

            while (v21 == -1);
            v15 = __clz(__rbit64(~v21)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v26 + 48) + 8 * v15) = v24;
          *(*(v26 + 56) + 8 * v15) = v25;
          ++*(v26 + 16);
        }

        else
        {
        }

        v9 = sub_1DEF8E0D8();
      }

      while (v9);
    }

    sub_1DEE2774C(v6 | 0x8000000000000000);

    return v5;
  }

  else
  {

    v23 = sub_1DEEA4F9C(a1, a2, a3);

    return v23;
  }
}

uint64_t sub_1DEEA542C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = *(*(a3 + 56) + 8 * v15);

    v18 = a4(v16, v17);

    if (v18)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return a6(v22, a2, v23, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return a6(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DEEA55A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v12 = v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_1DEEA542C(v12, v10, v8, a2, a3, a4);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v14 = swift_slowAlloc();
  v15 = sub_1DEEA11C0(v14, v10, v8, a2, a3, a4);
  result = MEMORY[0x1E12CCD70](v14, -1, -1);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1DEEA572C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v23 = MEMORY[0x1E69E7CC8];
    v5 = sub_1DEF8E038();
    v6 = sub_1DEF8E0D8();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for Zone.ID();
      v8 = v7;
      do
      {
        v22 = v8;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        if (!v21)
        {
          break;
        }

        v9 = a2(v21, v22);

        if (v9)
        {
          v10 = v4[2];
          if (v4[3] <= v10)
          {
            sub_1DEEB20C0(v10 + 1, 1);
          }

          v4 = v23;
          sub_1DEF8E7A8();
          sub_1DEF8D9B8();
          sub_1DEF8D9B8();
          result = sub_1DEF8E7F8();
          v12 = v23 + 64;
          v13 = -1 << *(v23 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v23 + 48) + 8 * v16) = v21;
          *(*(v23 + 56) + 8 * v16) = v22;
          ++*(v23 + 16);
        }

        else
        {
        }

        v8 = sub_1DEF8E0D8();
      }

      while (v8);
    }

    sub_1DEE2774C(v5 | 0x8000000000000000);
  }

  else
  {
    v4 = sub_1DEEA55A0(a1, a2, a3, sub_1DEEC6904);
  }

  return v4;
}

void sub_1DEEA59EC(unint64_t a1, uint64_t a2)
{
  v45 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v41 = (a2 + 672);
  v38 = v3;
  v39 = v6;
  v40 = v11;
LABEL_8:
  v12 = v10;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1DEF8E0D8() || (type metadata accessor for Zone.ID(), swift_dynamicCast(), v19 = v44[0], type metadata accessor for Replicator.WeakSource(), v17 = v19, swift_dynamicCast(), v18 = v44[0], v10 = v12, v15 = v5, !v17))
    {
LABEL_35:
      sub_1DEE2774C(v6);
      return;
    }

LABEL_19:
    swift_beginAccess();
    v20 = *v41;
    v42 = v15;
    v43 = v18;
    if (!*(*v41 + 16))
    {
      goto LABEL_29;
    }

    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
    v23 = v17;
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v24 = sub_1DEF8E7F8();
    v25 = -1 << *(v20 + 32);
    v26 = v24 & ~v25;
    if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
LABEL_28:

      v3 = v38;
      v6 = v39;
      v11 = v40;
      v17 = v23;
      v18 = v43;
LABEL_29:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = *(v18 + 24);
        ObjectType = swift_getObjectType();
        v33 = v17;
        v34 = *(v31 + 16);

        v34(v44, ObjectType, v31);
        v17 = v33;
        swift_unknownObjectRelease();
        v35 = v44[0];
        Strong = v44[1];
      }

      else
      {

        v35 = 0;
      }

      type metadata accessor for Zone();
      v36 = swift_allocObject();
      v36[2] = v17;
      v36[3] = v35;
      v36[4] = Strong;

      MEMORY[0x1E12CB260](v37);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DEF8DAF8();
      }

      sub_1DEF8DB18();
      v5 = v42;
      goto LABEL_8;
    }

    v27 = ~v25;
    while (1)
    {
      v28 = (*(v20 + 48) + 16 * v26);
      v29 = *v28 == v21 && v28[1] == v22;
      if (v29 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v12 = v10;
    v5 = v15;
    v3 = v38;
    v6 = v39;
    v11 = v40;
  }

  v13 = v12;
  v14 = v5;
  v10 = v12;
  if (v5)
  {
LABEL_15:
    v15 = (v14 - 1) & v14;
    v16 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);

    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_35;
    }

    v14 = *(v3 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1DEEA5DF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v28 = (a4 + 672);
  swift_beginAccess();
  v7 = 0;
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  while (2)
  {
    v27 = v7;
    while (1)
    {
      if (!v6)
      {
        v11 = v8;
        while (1)
        {
          v8 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v8 >= v9)
          {
            goto LABEL_27;
          }

          v12 = *(v25 + 8 * v8);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v6 = (v12 - 1) & v12;
            goto LABEL_14;
          }
        }

        __break(1u);
        return;
      }

      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_14:
      v13 = v10 | (v8 << 6);
      v14 = *v28;
      if (!*(*v28 + 16))
      {
        break;
      }

      v29 = v10 | (v8 << 6);
      v15 = *(a3 + 56) + 48 * v13;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v18 = sub_1DEF8E7F8();
      v19 = -1 << *(v14 + 32);
      v20 = v18 & ~v19;
      if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
LABEL_23:

        v9 = (v4 + 63) >> 6;
        v13 = v29;
        break;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(v14 + 48) + 16 * v20);
        v23 = *v22 == v16 && v22[1] == v17;
        if (v23 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v9 = (v4 + 63) >> 6;
    }

    *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v7 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_27:
  sub_1DEEC663C(a1, a2, v27, a3);
}

uint64_t sub_1DEEA615C()
{
  v1 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1DEE5D938(v0 + v2, v4, v6, v7);
}

uint64_t sub_1DEEA6318(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v10 = *(v1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = sub_1DEE6BA78(v3, &v10, &v8);
  return a1(v6);
}

uint64_t sub_1DEEA63A8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = v4;
  v5 = sub_1DEE6C510(v3, &v7);
  return a1(v5);
}

void sub_1DEEA6428(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v73 = a2;
  v74 = a1;
  v6 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_1DEF8D378();
  v8 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v67 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v92);
  v83 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v67 - v16;
  v91 = type metadata accessor for PairingRelationship(0);
  v89 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91);
  v95 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D3F8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v72 = a4;
  swift_beginAccess();
  v75 = 0;
  v27 = 0;
  v82 = (v24 + 63) >> 6;
  v87 = v19 + 16;
  v88 = v19;
  v78 = (v8 + 16);
  v77 = (v8 + 8);
  v86 = (v19 + 8);
  v76 = v22;
  while (v26)
  {
    v28 = __clz(__rbit64(v26));
    v93 = (v26 - 1) & v26;
LABEL_12:
    v31 = v28 | (v27 << 6);
    v32 = v90;
    v33 = *(v88 + 16);
    v34 = v94;
    v33(v94, v90[6] + *(v88 + 72) * v31, v18);
    v35 = v32[7];
    v36 = *(v89 + 72);
    v84 = v31;
    v37 = v95;
    sub_1DEEACA70(v35 + v36 * v31, v95, type metadata accessor for PairingRelationship);
    v38 = v100;
    v39 = v34;
    v40 = v18;
    v33(v100, v39, v18);
    v41 = v92;
    sub_1DEEACA70(v37, v38 + *(v92 + 48), type metadata accessor for PairingRelationship);
    v42 = v96;
    sub_1DEE17214(v38, v96, &unk_1ECDE4350, &qword_1DEF93400);
    v43 = v42 + *(v41 + 48);
    v44 = (v43 + v91[8]);
    v46 = *v44;
    v45 = v44[1];
    sub_1DEE4F8C0(*v44, v45);
    sub_1DEE273A0(v43, type metadata accessor for PairingRelationship);
    if (v45)
    {
      sub_1DEE4F8C0(v46, v45);
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    v48 = v86;
    sub_1DEE4F8D4(v46, v47);
    sub_1DEE4F8D4(0, 0);
    sub_1DEE4F8D4(v46, v47);
    v49 = *v48;
    v50 = v40;
    (*v48)(v96, v40);
    if (v45 || (v51 = v83, sub_1DEE17214(v100, v83, &unk_1ECDE4350, &qword_1DEF93400), v52 = v51 + *(v92 + 48), v53 = *v78, v54 = v52 + v91[6], v85 = v49, v55 = v80, v56 = v81, v53(v80, v54, v81), sub_1DEE273A0(v52, type metadata accessor for PairingRelationship), v57 = v79, sub_1DEF8D2E8(), v58 = *v77, (*v77)(v55, v56), v85(v51, v50), sub_1DEF8D348(), LOBYTE(v51) = sub_1DEF8D308(), v59 = v55, v49 = v85, v58(v59, v56), v58(v57, v56), v22 = v76, (v51 & 1) == 0))
    {
      sub_1DEE171B4(v100, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE273A0(v95, type metadata accessor for PairingRelationship);
      v49(v94, v50);
      v18 = v50;
      v26 = v93;
    }

    else
    {
      sub_1DEE29594(v72 + 344, &v97);
      v70 = v98;
      v69 = v99;
      v67 = __swift_project_boxed_opaque_existential_1(&v97, v98);
      v60 = v83;
      sub_1DEE17214(v100, v83, &unk_1ECDE4350, &qword_1DEF93400);
      v61 = v49;
      v62 = v60 + *(v92 + 48);
      v63 = v71;
      sub_1DEEACA70(v62 + v91[5], v71, type metadata accessor for DeviceDescriptor);
      v68 = type metadata accessor for PairingRelationship;
      sub_1DEE273A0(v62, type metadata accessor for PairingRelationship);
      v64 = *v63;
      v65 = v63[1];

      sub_1DEE273A0(v63, type metadata accessor for DeviceDescriptor);
      LOBYTE(v64) = (*(v69 + 56))(v64, v65, v70);

      sub_1DEE171B4(v100, &unk_1ECDE4350, &qword_1DEF93400);
      v61(v60, v50);
      __swift_destroy_boxed_opaque_existential_1(&v97);
      sub_1DEE273A0(v95, v68);
      v61(v94, v50);
      v18 = v50;
      v26 = v93;
      if ((v64 & 1) == 0)
      {
        *(v74 + ((v84 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v84;
        if (__OFADD__(v75++, 1))
        {
          __break(1u);
LABEL_21:
          sub_1DEEC6068(v74, v73, v75, v90);
          return;
        }
      }
    }
  }

  v29 = v27;
  while (1)
  {
    v27 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v27 >= v82)
    {
      goto LABEL_21;
    }

    v30 = v22[v27];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v93 = (v30 - 1) & v30;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1DEEA6CF8(uint64_t a1, unint64_t a2, uint64_t *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v63 = a1;
  v61 = sub_1DEF8D698();
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DEF8D6D8();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v56 = a4;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = a3[29];
  *v16 = v18;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v55 = a5;

  v19 = v18;
  LOBYTE(a5) = sub_1DEF8D7B8();
  (*(v14 + 8))(v16, v13);
  if (a5)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v57 = v9;
  v20 = sub_1DEF8D508();
  __swift_project_value_buffer(v20, qword_1ECDF6028);

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  v23 = os_log_type_enabled(v21, v22);
  v62 = v19;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v66 = v25;
    *v24 = 136446210;
    v26 = v63;
    *(v24 + 4) = sub_1DEE12A5C(v63, a2, &v66);
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Pairing with device: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12CCD70](v25, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  else
  {

    v26 = v63;
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  sub_1DEE8E124(a3, v26, a2, &v66, sub_1DEEAC938, v17, aBlock);
  v27 = aBlock[0];
  if (LOBYTE(aBlock[0]) != 8)
  {
    sub_1DEE46550(v66, *(&v66 + 1), v67, *(&v67 + 1));
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1DEEAC938;
    *(v36 + 24) = v17;
    *(v36 + 32) = v27;
    aBlock[4] = sub_1DEEACFE8;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_807;
    v37 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v64 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800, MEMORY[0x1E69E6328]);
    v38 = v59;
    v39 = v61;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v12, v38, v37);
    _Block_release(v37);
    (*(v57 + 8))(v38, v39);
    (*(v58 + 8))(v12, v60);
    goto LABEL_10;
  }

  v28 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v30 = *(&v68 + 1);
    v29 = v69;
    v32 = *(&v67 + 1);
    v31 = v68;
    v33 = v67;
    v34 = v66;
    v63 = v17;
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = v34;
    *(v35 + 32) = v28;
    *(v35 + 40) = v33;
    *(v35 + 48) = v32;
    *(v35 + 56) = v31;
    *(v35 + 57) = aBlock[0];
    *(v35 + 60) = *(aBlock + 3);
    *(v35 + 64) = v30;
    *(v35 + 72) = v29;

    sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v62, sub_1DEEACF94, v35, 0.0);
LABEL_10:
  }

  v41 = sub_1DEF8D4D8();
  v42 = sub_1DEF8DC98();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315394;
    v45 = a3[32];
    if (v45)
    {
      v46 = a3[31];
      v47 = v45;
    }

    else
    {
      v48 = a3[23];
      ObjectType = swift_getObjectType();
      v50 = (*(v48 + 16))(ObjectType, v48);
      if (v51)
      {
        v46 = v50;
      }

      else
      {
        v46 = 0xD000000000000016;
      }

      if (v51)
      {
        v47 = v51;
      }

      else
      {
        v47 = 0x80000001DEF9BCA0;
      }
    }

    v52 = sub_1DEE12A5C(v46, v47, aBlock);

    *(v43 + 4) = v52;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_1DEE12A5C(v63, a2, aBlock);
    _os_log_impl(&dword_1DEE0F000, v41, v42, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v44, -1, -1);
    MEMORY[0x1E12CCD70](v43, -1, -1);
  }

  sub_1DEEAA8E8();
  v53 = swift_allocError();
  *v54 = 1;
  v56(v53, 1);
}

uint64_t sub_1DEEA7504(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v27 = a3;
  v7 = type metadata accessor for PairingRelationship(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a2[29];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);

  v19 = v18;
  LOBYTE(v18) = sub_1DEF8D7B8();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), v28);
    v21 = v29;
    v22 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v23 = *a1;
    v24 = a1[1];
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*a1, v24, v21, *(v22 + 8), v12);
    LODWORD(v21) = (*(v8 + 48))(v12, 1, v7);
    sub_1DEE171B4(v12, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v28);
    if (v21 == 1)
    {
      v28[0] = 0;
      v28[1] = 0;
      v25 = v26;
      sub_1DEE5F828(a1, v28, 0, 1, v26);
      sub_1DEE273A0(v25, type metadata accessor for PairingRelationship);
    }

    sub_1DEEA6CF8(v23, v24, a2, v27, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEA7808(uint64_t a1)
{
  v3 = type metadata accessor for Message(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(v1 + 232);
  sub_1DEEACA70(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_1DEEAB218(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Message);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DEEABEF8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_759;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEA7A18(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for PairingRelationship(0);
  if (*(a2 + *(result + 20) + 32) > 7uLL)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = a1 + 40;
      do
      {
        v12 = v11 + 16 * v10;
        for (i = v10; ; ++i)
        {
          if (i >= v9)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }

          sub_1DEEAA9E4();

          v14 = sub_1DEF8DC38();
          if (v14[2] == 2)
          {
            break;
          }

          v12 += 16;
          if (v10 == v9)
          {
            return v6;
          }
        }

        v15 = v14[4];
        v16 = v14[5];
        v17 = v14[6];
        v18 = v14[7];
        v19 = v14;

        v20 = MEMORY[0x1E12CB150](v15, v16, v17, v18);

        if (v19[2] < 2uLL)
        {
          goto LABEL_21;
        }

        v21 = v19[8];
        v22 = v19[9];
        v23 = v19[10];
        v24 = v19[11];
        v26 = v23;
        v27 = v21;

        MEMORY[0x1E12CB150](v27, v22, v26, v24);

        type metadata accessor for Zone.ID.Pool();
        sub_1DEF4A4A0(v20);

        MEMORY[0x1E12CB260](v25);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DEF8DAF8();
        }

        result = sub_1DEF8DB18();
        v6 = v29;
        v11 = a1 + 40;
      }

      while (v10 != v9);
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      type metadata accessor for Zone.ID.Pool();
      v7 = a1 + 40;
      do
      {
        v8 = *(v7 - 8);

        sub_1DEF4A4A0(v8);

        sub_1DEF8DFB8();
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        v7 += 16;
        --v5;
      }

      while (v5);
      return v28;
    }
  }

  return v6;
}

uint64_t sub_1DEEA7D34(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DEF8D1E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Message(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v19 = *(v2 + 232);
  sub_1DEEACA70(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  (*(v6 + 16))(v8, a2, v5);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = (v11 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_1DEEAB218(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for Message);
  (*(v6 + 32))(v14 + v13, v8, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DEEA8AC0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_481;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16ReplicatorEngine0A0C11syncService_25availableDevicesDidChangeyAA13SyncServicing_p_SaySSGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 232);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEA89D8;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_461;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t keypath_get_181Tm@<X0>(_BYTE *a3@<X8>)
{
  result = sub_1DEF8DD18();
  *a3 = v5;
  return result;
}

uint64_t sub_1DEEA84FC(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEA8584()
{
  result = qword_1ECDE3C50;
  if (!qword_1ECDE3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C50);
  }

  return result;
}

unint64_t sub_1DEEA85DC()
{
  result = qword_1ECDE3C58;
  if (!qword_1ECDE3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C58);
  }

  return result;
}

unint64_t sub_1DEEA8634()
{
  result = qword_1ECDE3C60;
  if (!qword_1ECDE3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C60);
  }

  return result;
}

unint64_t sub_1DEEA868C()
{
  result = qword_1ECDE3C68;
  if (!qword_1ECDE3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C68);
  }

  return result;
}

unint64_t sub_1DEEA86E0()
{
  result = qword_1ECDE3C70;
  if (!qword_1ECDE3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C70);
  }

  return result;
}

_OWORD *sub_1DEEA8734(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1DEEA8774()
{
  result = qword_1ECDE3CA0;
  if (!qword_1ECDE3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3CA0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1DEEA8818(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DEE1BFF4(result, a2);
  }

  return result;
}

uint64_t sub_1DEEA882C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEA889C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DEEA88B0(uint64_t (*a1)(uint64_t))
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v2 = sub_1DEE6E9BC(&v6, &v4);
  return a1(v2);
}

uint64_t objectdestroy_170Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1DEEA8990@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DEE5D178(*(v1 + 24));
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_1DEEA89D8()
{
  if (*(*(v0 + 32) + 176) == *(v0 + 16))
  {
    sub_1DEE56A48(7);
  }
}

void sub_1DEEA8A18(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1DEEA8A74(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v4 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1DEEA8AC0()
{
  v1 = *(type metadata accessor for Message(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1DEF8D1E8() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1DEE7056C(v5, v0 + v2, v6);
}

uint64_t objectdestroy_492Tm()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DEEA8D44(unint64_t a1, uint64_t a2)
{
  v41 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v38 = (a2 + 672);
  v35 = v11;
  v36 = v6;
  v37 = v3;
LABEL_8:
  v12 = v10;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_1DEF8E0D8() || (type metadata accessor for Zone.ID(), swift_dynamicCast(), v17 = v40[0], type metadata accessor for Replicator.WeakSource(), swift_dynamicCast(), v18 = v40[0], v10 = v12, v15 = v5, !v17))
      {
LABEL_35:
        sub_1DEE2774C(v6);
        return;
      }

      goto LABEL_18;
    }

    v13 = v12;
    v14 = v5;
    v10 = v12;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v15 = (v14 - 1) & v14;
    v16 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);

    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_18:
    swift_beginAccess();
    v19 = *v38;
    if (*(*v38 + 16))
    {
      v39 = v15;
      v20 = *(v17 + 32);
      v21 = *(v17 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v22 = sub_1DEF8E7F8();
      v23 = -1 << *(v19 + 32);
      v24 = v22 & ~v23;
      if ((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v19 + 48) + 16 * v24);
          v27 = *v26 == v20 && v26[1] == v21;
          if (v27 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v29 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v31 = *(v29 + 16);

          v31(v40, ObjectType, v29);
          swift_unknownObjectRelease();
          v32 = v40[0];
          Strong = v40[1];
        }

        else
        {

          v32 = 0;
        }

        v6 = v36;
        v3 = v37;
        v11 = v35;
        type metadata accessor for Zone();
        v33 = swift_allocObject();
        v33[2] = v17;
        v33[3] = v32;
        v33[4] = Strong;

        MEMORY[0x1E12CB260](v34);
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DEF8DAF8();
        }

        sub_1DEF8DB18();
        v5 = v39;
        goto LABEL_8;
      }

LABEL_27:

      v12 = v10;
      v5 = v15;
      v6 = v36;
      v3 = v37;
      v11 = v35;
    }

    else
    {

      v12 = v10;
      v5 = v15;
    }
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_35;
    }

    v14 = *(v3 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_1DEEA9148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion(0);
  v106 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v97 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  MEMORY[0x1EEE9AC00](v107);
  v100 = (&v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v97 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v97 - v22);
  v24 = a1 + 64;
  v25 = *(a2 + 32);
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v104 = a1;
  v105 = a1 + 64;
  if (v25 > 7)
  {

    v65 = 0;
    v32 = MEMORY[0x1E69E7CC8];
    v98 = v29;
    while (v28)
    {
      v108 = v32;
LABEL_39:
      v67 = __clz(__rbit64(v28)) | (v65 << 6);
      v68 = *(a1 + 56);
      v69 = *(*(a1 + 48) + 8 * v67);
      v70 = v107;
      v101 = *(v106 + 72);
      v71 = v102;
      sub_1DEEACA70(v68 + v101 * v67, v102 + *(v107 + 48), type metadata accessor for ZoneVersion);
      *v71 = v69;
      v72 = v99;
      sub_1DEE17214(v71, v99, &qword_1ECDE3D18, &qword_1DEF91628);
      v73 = *(v70 + 48);
      v75 = *(*v72 + 16);
      v74 = *(*v72 + 24);

      v109 = v75;
      v110 = v74;
      sub_1DEE273A0(v72 + v73, type metadata accessor for ZoneVersion);
      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      sub_1DEE17214(v71, v72, &qword_1ECDE3D18, &qword_1DEF91628);
      v76 = *(v70 + 48);
      v77 = *(*v72 + 32);
      v78 = *(*v72 + 40);

      MEMORY[0x1E12CB180](v77, v78);

      sub_1DEE273A0(v72 + v76, type metadata accessor for ZoneVersion);
      v80 = v109;
      v79 = v110;
      v81 = v100;
      sub_1DEE17214(v71, v100, &qword_1ECDE3D18, &qword_1DEF91628);

      sub_1DEEAB218(v81 + *(v70 + 48), v103, type metadata accessor for ZoneVersion);
      v82 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v82;
      v85 = sub_1DEE13224(v80, v79);
      v86 = v82[2];
      v87 = (v84 & 1) == 0;
      v88 = v86 + v87;
      if (__OFADD__(v86, v87))
      {
        goto LABEL_51;
      }

      v89 = v84;
      if (v82[3] >= v88)
      {
        v29 = v98;
        v24 = v105;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB87E4();
        }
      }

      else
      {
        sub_1DEEB36B8(v88, isUniquelyReferenced_nonNull_native);
        v90 = sub_1DEE13224(v80, v79);
        v29 = v98;
        v24 = v105;
        if ((v89 & 1) != (v91 & 1))
        {
          goto LABEL_55;
        }

        v85 = v90;
      }

      v92 = v101;
      v32 = v109;
      if (v89)
      {
        sub_1DEE1B474(v103, v109[7] + v85 * v101, type metadata accessor for ZoneVersion);
      }

      else
      {
        v109[(v85 >> 6) + 8] |= 1 << v85;
        v93 = (v32[6] + 16 * v85);
        *v93 = v80;
        v93[1] = v79;
        sub_1DEEAB218(v103, v32[7] + v85 * v92, type metadata accessor for ZoneVersion);
        v94 = v32[2];
        v63 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v63)
        {
          goto LABEL_52;
        }

        v32[2] = v95;
      }

      v28 &= v28 - 1;
      sub_1DEE171B4(v102, &qword_1ECDE3D18, &qword_1DEF91628);
      a1 = v104;
    }

    while (1)
    {
      v66 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v66 >= v29)
      {
LABEL_48:

        return v32;
      }

      v28 = *(v24 + 8 * v66);
      ++v65;
      if (v28)
      {
        v108 = v32;
        v65 = v66;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v99 = v20;
    v100 = v21;
    v101 = v8;
    v103 = 0x80000001DEF9C1B0;

    v30 = 0;
    v108 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v31 = v30;
      if (!v28)
      {
        break;
      }

      while (1)
      {
        v30 = v31;
LABEL_11:
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v34 = v33 | (v30 << 6);
        v35 = *(a1 + 56);
        v36 = *(*(a1 + 48) + 8 * v34);
        v37 = v107;
        v102 = *(v106 + 72);
        sub_1DEEACA70(v35 + v102 * v34, v23 + *(v107 + 48), type metadata accessor for ZoneVersion);
        *v23 = v36;
        v38 = v23;
        sub_1DEE17214(v23, v18, &qword_1ECDE3D18, &qword_1DEF91628);
        v39 = *(v37 + 48);
        v41 = *(*v18 + 32);
        v40 = *(*v18 + 40);

        if (v41 == 0xD000000000000011 && v103 == v40)
        {
          break;
        }

        v43 = sub_1DEF8E4E8();

        sub_1DEE273A0(&v18[v39], type metadata accessor for ZoneVersion);
        if (v43)
        {
          goto LABEL_19;
        }

        v23 = v38;
        sub_1DEE171B4(v38, &qword_1ECDE3D18, &qword_1DEF91628);
        v31 = v30;
        a1 = v104;
        v24 = v105;
        if (!v28)
        {
          goto LABEL_7;
        }
      }

      sub_1DEE273A0(&v18[v39], type metadata accessor for ZoneVersion);
LABEL_19:
      v23 = v38;
      v44 = v100;
      sub_1DEE17214(v38, v100, &qword_1ECDE3D18, &qword_1DEF91628);
      v45 = *v44;
      v46 = *(v45 + 16);
      v47 = *(v45 + 24);

      v48 = v99;
      sub_1DEE17214(v23, v99, &qword_1ECDE3D18, &qword_1DEF91628);

      sub_1DEEAB218(v48 + *(v107 + 48), v101, type metadata accessor for ZoneVersion);
      v49 = v108;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v49;
      v97 = v46;
      v98 = v47;
      v52 = sub_1DEE13224(v46, v47);
      v53 = v49[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_53;
      }

      v56 = v51;
      v24 = v105;
      if (v49[3] >= v55)
      {
        if ((v50 & 1) == 0)
        {
          sub_1DEEB87E4();
        }
      }

      else
      {
        sub_1DEEB36B8(v55, v50);
        v57 = sub_1DEE13224(v97, v98);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_55;
        }

        v52 = v57;
      }

      if (v56)
      {

        v59 = v109;
        sub_1DEE1B474(v101, v109[7] + v52 * v102, type metadata accessor for ZoneVersion);
        sub_1DEE171B4(v23, &qword_1ECDE3D18, &qword_1DEF91628);
      }

      else
      {
        v59 = v109;
        v109[(v52 >> 6) + 8] |= 1 << v52;
        v60 = (v59[6] + 16 * v52);
        v61 = v98;
        *v60 = v97;
        v60[1] = v61;
        sub_1DEEAB218(v101, v59[7] + v52 * v102, type metadata accessor for ZoneVersion);
        sub_1DEE171B4(v23, &qword_1ECDE3D18, &qword_1DEF91628);
        v62 = v59[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_54;
        }

        v59[2] = v64;
      }

      a1 = v104;
      v108 = v59;
      sub_1DEE273A0(v100 + *(v107 + 48), type metadata accessor for ZoneVersion);
    }

LABEL_7:
    v32 = v108;
    while (1)
    {
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        goto LABEL_48;
      }

      v28 = *(v24 + 8 * v30);
      ++v31;
      if (v28)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEA9A9C(void *a1, char a2)
{
  v5 = *(type metadata accessor for ReplicatorMessage.Handshake.Request(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DEE7EA84(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v9, (v2 + v10), *(v2 + ((v10 + 63) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 63) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DEEA9BF8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    a1 = 0;
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

void sub_1DEEA9C34()
{
  v1 = *(type metadata accessor for ReplicatorMessage.Handshake.Request(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DEE7EFD0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), v0 + v5, v0 + v6, *(v0 + ((v6 + 63) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 63) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void *sub_1DEEA9D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion(0);
  v87 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v80 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
  MEMORY[0x1EEE9AC00](v89);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v80 - v15);
  v17 = *(a2 + 32);
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v88 = a1;

  v84 = v22;
  v85 = a1 + 64;
  if (v17 <= 7)
  {
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC8];
    v82 = "publishPairingRelationships";
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_46;
          }

          if (v25 >= v22)
          {
            goto LABEL_44;
          }

          v21 = *(v18 + 8 * v25);
          ++v23;
          if (v21)
          {
            v23 = v25;
            break;
          }
        }
      }

      v26 = __clz(__rbit64(v21)) | (v23 << 6);
      v27 = v89;
      v28 = (*(v88 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v87 + 72);
      sub_1DEEACA70(*(v88 + 56) + v31 * v26, v16 + *(v89 + 48), type metadata accessor for ZoneVersion);
      *v16 = v29;
      v16[1] = v30;
      type metadata accessor for Zone.ID.Pool();

      v32 = sub_1DEF4A4A0(v29);
      v33 = v83;
      sub_1DEE17214(v16, v83, &qword_1ECDE3D60, &qword_1DEF91678);

      sub_1DEEAB218(v33 + *(v27 + 48), v86, type metadata accessor for ZoneVersion);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v24;
      v36 = sub_1DEEAF20C(v32);
      v37 = v24[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_47;
      }

      v40 = v35;
      if (v24[3] >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v92;
          if (v35)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1DEEB8A3C();
          v24 = v92;
          if (v40)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1DEEB3A30(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_1DEEAF20C(v32);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_52;
        }

        v36 = v41;
        v24 = v92;
        if (v40)
        {
LABEL_5:
          sub_1DEE1B474(v86, v24[7] + v36 * v31, type metadata accessor for ZoneVersion);

          goto LABEL_6;
        }
      }

      v24[(v36 >> 6) + 8] |= 1 << v36;
      *(v24[6] + 8 * v36) = v32;
      sub_1DEEAB218(v86, v24[7] + v36 * v31, type metadata accessor for ZoneVersion);
      v43 = v24[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_50;
      }

      v24[2] = v45;
LABEL_6:
      v21 &= v21 - 1;
      sub_1DEE171B4(v16, &qword_1ECDE3D60, &qword_1DEF91678);
      v22 = v84;
      v18 = v85;
    }
  }

  v46 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  v82 = v11;
  while (v21)
  {
LABEL_31:
    v48 = __clz(__rbit64(v21)) | (v46 << 6);
    v49 = *(v88 + 56);
    v50 = (*(v88 + 48) + 16 * v48);
    v52 = *v50;
    v51 = v50[1];
    v86 = *(v87 + 72);
    sub_1DEEACA70(v49 + v86 * v48, &v11[*(v89 + 48)], type metadata accessor for ZoneVersion);
    *v11 = v52;
    *(v11 + 1) = v51;
    v92 = v52;
    v93 = v51;
    v90 = 14906;
    v91 = 0xE200000000000000;
    sub_1DEEAA9E4();

    v53 = sub_1DEF8DC38();
    if (v53[2] == 2)
    {
      v54 = v53[4];
      v55 = v53[5];
      v56 = v53[6];
      v57 = v53[7];
      v58 = v53;

      v59 = MEMORY[0x1E12CB150](v54, v55, v56, v57);

      if (v58[2] < 2uLL)
      {
        goto LABEL_48;
      }

      v60 = v58[8];
      v61 = v58[9];
      v63 = v58[10];
      v62 = v58[11];

      MEMORY[0x1E12CB150](v60, v61, v63, v62);

      type metadata accessor for Zone.ID.Pool();
      v64 = sub_1DEF4A4A0(v59);

      v65 = v80;
      sub_1DEE17214(v82, v80, &qword_1ECDE3D60, &qword_1DEF91678);

      v66 = v81;
      sub_1DEEAB218(v65 + *(v89 + 48), v81, type metadata accessor for ZoneVersion);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v24;
      v69 = sub_1DEEAF20C(v64);
      v70 = v24[2];
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_49;
      }

      v73 = v68;
      if (v24[3] >= v72)
      {
        if ((v67 & 1) == 0)
        {
          sub_1DEEB8A3C();
        }
      }

      else
      {
        sub_1DEEB3A30(v72, v67);
        v74 = sub_1DEEAF20C(v64);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_52;
        }

        v69 = v74;
      }

      v76 = v86;
      v24 = v92;
      if (v73)
      {
        sub_1DEE1B474(v66, v92[7] + v69 * v86, type metadata accessor for ZoneVersion);
      }

      else
      {
        v92[(v69 >> 6) + 8] |= 1 << v69;
        *(v24[6] + 8 * v69) = v64;
        sub_1DEEAB218(v66, v24[7] + v69 * v76, type metadata accessor for ZoneVersion);
        v77 = v24[2];
        v44 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v44)
        {
          goto LABEL_51;
        }

        v24[2] = v78;
      }

      v22 = v84;
      v18 = v85;
      v11 = v82;
    }

    else
    {
    }

    v21 &= v21 - 1;
    sub_1DEE171B4(v11, &qword_1ECDE3D60, &qword_1DEF91678);
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v22)
    {
LABEL_44:

      return v24;
    }

    v21 = *(v18 + 8 * v47);
    ++v46;
    if (v21)
    {
      v46 = v47;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

void sub_1DEEAA558(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
{
  v23 = a2;
  v27 = a4;
  v24 = a1;
  v5 = type metadata accessor for ZoneVersion(0);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v8 = 0;
  v28 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    sub_1DEEACA70(v28[7] + *(v26 + 72) * v19, v7, type metadata accessor for ZoneVersion);

    v21 = v27(v20, v7);
    sub_1DEE273A0(v7, type metadata accessor for ZoneVersion);

    if (v21)
    {
      *(v24 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6DAC(v24, v23, v25, v28);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEAA768(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1DEEA1260(v9, v6, v4, a2);
      MEMORY[0x1E12CCD70](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEEAA558(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

unint64_t sub_1DEEAA8E8()
{
  result = qword_1ECDE3D28;
  if (!qword_1ECDE3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3D28);
  }

  return result;
}

unint64_t sub_1DEEAA9E4()
{
  result = qword_1ECDE3D70;
  if (!qword_1ECDE3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3D70);
  }

  return result;
}

uint64_t objectdestroy_538Tm()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v11 = *(*(v1 - 8) + 64);

  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v10 = *(v5 + 8);
  v10(v0 + v3, v4);
  if (*(v0 + v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v3 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v6 + v8, 1, v4))
  {
    v10(v6 + v8, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEEAAD34(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for PairingRelationship(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v14 = *(v4 + 16);
  v15 = v4 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return a4(a1, a2 & 1, v14, v4 + v8, v4 + v11, v15);
}

uint64_t sub_1DEEAAF18(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PairingRelationship(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = v2 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a2(v10, v11, v12, v2 + v4, v2 + v7, v13);
}

uint64_t sub_1DEEAB070(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1DEE1BFF4(a2, a3);
  }

  return result;
}

uint64_t sub_1DEEAB0B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1DEE1BFA0(a2, a3);
  }

  return result;
}

uint64_t sub_1DEEAB100(void *a1, char a2)
{
  v5 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingRelationship(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 16);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1DEE8D35C(a1, a2 & 1, v10, v2 + v6, v2 + v9, v12, v13);
}

uint64_t sub_1DEEAB218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEAB280()
{
  v1 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PairingRelationship(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DEE8D698(v6, v7, v8, v0 + v2, v0 + v5, v9);
}

uint64_t objectdestroy_579Tm()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v11 = *(*(v1 - 8) + 64);

  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v10 = *(v5 + 8);
  v10(v0 + v3, v4);
  if (*(v0 + v3 + *(v1 + 20) + 8) >= 4uLL)
  {
  }

  v6 = v0 + v3 + *(v1 + 24);

  v7 = *(v6 + 120);
  if (v7 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v6 + 112), v7);
  }

  v8 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v5 + 48))(v6 + v8, 1, v4))
  {
    v10(v6 + v8, v4);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEEAB5CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v7, v3 + v6, v8);
}

uint64_t sub_1DEEAB6B0(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2 & 1, v8, v9);
}

uint64_t objectdestroy_603Tm()
{
  v1 = v0;
  v2 = (type metadata accessor for SessionManager.Session(0) - 8);
  v26 = *(*v2 + 80);
  v3 = (v26 + 24) & ~v26;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v25 = *(*(v5 - 8) + 80);
  v27 = (v3 + v4 + v25) & ~v25;
  v6 = *(*(v5 - 8) + 64);
  v21 = type metadata accessor for PairingRelationship(0);
  v23 = *(*(v21 - 1) + 80);
  v28 = (v27 + v6 + v23) & ~v23;
  v24 = *(*(v21 - 1) + 64);

  v7 = v1 + v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v11 = v2[9];
  v12 = sub_1DEF8D378();
  v13 = (*(v12 - 8) + 8);
  v14 = v7 + v11;
  v15 = v1;
  v22 = *v13;
  (*v13)(v14, v12);
  v10(v1 + v27, v8);
  if (*(v1 + v27 + *(v5 + 20) + 8) >= 4uLL)
  {
  }

  v16 = v1 + v28;
  v10(v1 + v28, v8);
  v17 = v1 + v28 + v21[5];

  v18 = *(v17 + 120);
  if (v18 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v17 + 112), v18);
  }

  v19 = *(type metadata accessor for DeviceDescriptor(0) + 60);
  if (!(*(v9 + 48))(v17 + v19, 1, v8))
  {
    v10(v17 + v19, v8);
  }

  v22(v16 + v21[6], v12);
  v22(v16 + v21[7], v12);
  if (*(v16 + v21[8] + 8) >= 4uLL)
  {
  }

  v22(v16 + v21[9], v12);

  return MEMORY[0x1EEE6BDD0](v15, v28 + v24, v26 | v25 | v23 | 7);
}

uint64_t sub_1DEEABBE8(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SessionManager.Session(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingRelationship(0) - 8);
  v9 = *(v1 + 16);
  v10 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v9, v1 + v3, v1 + v6, v10);
}

uint64_t objectdestroy_505Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

void sub_1DEEABDF0()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  sub_1DEEF22F4(v2, v3, v4);
}

uint64_t objectdestroy_737Tm()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEABF24(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_167Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DEEAC064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for PairingRelationship(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v13;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 232);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v36);
  v22 = v37;
  v21 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a1, a2, v22, *(v21 + 8), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DEE171B4(v8, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v3 = v35;
  sub_1DEEAB218(v8, v35, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6028);
  v25 = v34;
  sub_1DEEACA70(v3, v34, type metadata accessor for PairingRelationship);
  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 136446210;
    sub_1DEF8D3F8();
    sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = sub_1DEF8E2E8();
    v32 = v31;
    sub_1DEE273A0(v25, type metadata accessor for PairingRelationship);
    v33 = sub_1DEE12A5C(v30, v32, v36);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1DEE0F000, v26, v27, "Relationship has become unavailable: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12CCD70](v29, -1, -1);
    MEMORY[0x1E12CCD70](v28, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v25, type metadata accessor for PairingRelationship);
  }

  sub_1DEE99638(v3);
  return sub_1DEE273A0(v3, type metadata accessor for PairingRelationship);
}

void sub_1DEEAC52C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v29 = (a4 + 672);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_6:
  v27 = v8;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v14 = *v29;
    if (*(*v29 + 16))
    {
      v26 = v11 | (v9 << 6);
      v15 = *(a3 + 56) + 48 * v26;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v18 = sub_1DEF8E7F8();
      v19 = -1 << *(v14 + 32);
      v20 = v18 & ~v19;
      if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(v14 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v17;
          if (v23 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        *(a1 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v8 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_26;
        }

        goto LABEL_6;
      }

LABEL_23:
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      sub_1DEEC663C(a1, a2, v27, a3);
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t objectdestroy_34Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t objectdestroy_134Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

double sub_1DEEAC894(unint64_t a1)
{
  if (a1 >= 4)
  {
  }

  return result;
}

unint64_t sub_1DEEAC8A4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1DEEAC8B4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for PairingRelationship(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1DEE8E940(a1, a2, v6, v7);
}

uint64_t objectdestroy_124Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 48));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1DEEAC9C8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v9[1] = v3;
  v9[2] = *(v1 + 56);
  v10 = *(v1 + 72);
  v8 = xmmword_1DEF91000;
  v6 = 0;
  v7 = 0;
  v4 = sub_1DEE76BD8(v9, &v8, &v6);
  return a1(v4);
}

uint64_t sub_1DEEACA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEEACAE0()
{
  result = qword_1ECDE35D0;
  if (!qword_1ECDE35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35D0);
  }

  return result;
}

uint64_t sub_1DEEACB34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEEACB54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}