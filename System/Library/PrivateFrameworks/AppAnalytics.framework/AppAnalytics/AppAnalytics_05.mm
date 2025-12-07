id BridgedUserDataConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserDataConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B69ECA38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1B69F7488(MEMORY[0x1E69E7CC0]);
  v75 = ObjectType;
  v76 = v5;
  v74 = a3;
  v71 = a4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_1B6AB9E20() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v12 = ~v15;
    v11 = a1 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a1 + 64);
    v14 = a1;
  }

  v18 = 0;
  v19 = (v12 + 64) >> 6;
  v78 = v14;
  v79 = v11;
  v77 = v19;
  while ((v14 & 0x8000000000000000) == 0)
  {
    v20 = v18;
    v21 = v13;
    v22 = v18;
    if (!v13)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_41;
        }

        v21 = *(v11 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
LABEL_48:
      v52 = qword_1EB95C320;
      v51 = *algn_1EB95C328;
      v54 = qword_1EB95C330;
      v53 = qword_1EB95C338;

      v55 = a5;
      if (a5)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_15:
    v23 = (v21 - 1) & v21;
    v24 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v25 = *(*(v14 + 56) + v24);
    v26 = *(*(v14 + 48) + v24);
    v27 = v25;
    if (!v26)
    {
      goto LABEL_41;
    }

LABEL_19:
    v30 = *&v26[OBJC_IVAR___AAIDSessionKind_kind];
    v80 = v23;
    if (v30 <= 1)
    {
      if (!v30)
      {
        v31 = 0;
        goto LABEL_30;
      }

      if (v30 != 1)
      {
LABEL_64:
        *&v95 = *&v26[OBJC_IVAR___AAIDSessionKind_kind];
        sub_1B6ABA160();
        __break(1u);
LABEL_65:
        sub_1B6ABA190();
        __break(1u);
        goto LABEL_66;
      }

LABEL_27:
      v31 = 0;
      goto LABEL_30;
    }

    if (v30 == 2)
    {
      goto LABEL_27;
    }

    if (v30 != 3)
    {
      goto LABEL_64;
    }

    if (*&v26[OBJC_IVAR___AAIDSessionKind_name + 8])
    {
      v31 = *&v26[OBJC_IVAR___AAIDSessionKind_name];
      v30 = *&v26[OBJC_IVAR___AAIDSessionKind_name + 8];
    }

    else
    {
      v31 = 0;
      v30 = 0xE000000000000000;
    }

LABEL_30:
    sub_1B69E12F0(v27 + OBJC_IVAR___AAUserIDConfiguration_configuration, &v95);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = v10;
    v34 = sub_1B69DA824(v31, v30);
    v35 = v10[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_61;
    }

    v38 = v33;
    if (v10[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v33)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B69DE5F8();
        if (v38)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1B69DB5AC(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_1B69DA824(v31, v30);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_65;
      }

      v34 = v39;
      if (v38)
      {
LABEL_8:
        sub_1B69C2E8C(v31, v30);
        v10 = v84;
        sub_1B69EDCA0(&v95, *(v84 + 56) + 48 * v34);

        goto LABEL_9;
      }
    }

    v10 = v84;
    *(v84 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (v10[6] + 16 * v34);
    *v41 = v31;
    v41[1] = v30;
    v42 = (v10[7] + 48 * v34);
    v44 = v96;
    v43 = v97;
    *v42 = v95;
    v42[1] = v44;
    v42[2] = v43;

    v45 = v10[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_62;
    }

    v10[2] = v47;
LABEL_9:
    v18 = v22;
    v11 = v79;
    v13 = v80;
    v19 = v77;
    v14 = v78;
  }

  if (sub_1B6AB9E30())
  {
    v29 = v28;
    type metadata accessor for BridgedIDSessionKind();
    swift_dynamicCast();
    v26 = v95;
    *&v84 = v29;
    type metadata accessor for BridgedUserIDConfiguration();
    swift_dynamicCast();
    v27 = v95;
    v22 = v18;
    v23 = v13;
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  sub_1B69EDB24(v14);

  if (a2)
  {
    v48 = &off_1F2E75710;
    v49 = &type metadata for ProxyUserStartDateStorage;
    v50 = a2;
  }

  else
  {
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v94[1] = 0;
    v94[2] = 0;
  }

  v94[0] = v50;
  v94[3] = v49;
  v94[4] = v48;
  if (!v71)
  {
    v59 = qword_1EB95A9C8;
    swift_unknownObjectRetain();
    if (v59 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  v52 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  v51 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 8);
  v54 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 16);
  v53 = *(v71 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 24);

  swift_unknownObjectRetain();
  v55 = a5;
  if (a5)
  {
LABEL_46:
    v56 = &off_1F2E7B720;
    v57 = &type metadata for ProxyStorefrontProvider;
    v58 = v55;
    goto LABEL_50;
  }

LABEL_49:
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v93[1] = 0;
  v93[2] = 0;
LABEL_50:
  v93[0] = v58;
  v93[3] = v57;
  v93[4] = v56;
  v60 = v10[2];
  swift_unknownObjectRetain();
  if (v60 && (v61 = sub_1B69DA824(0, 0), (v62 & 1) != 0))
  {
    sub_1B69E12F0(v10[7] + 48 * v61, &v95);
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
  }

  sub_1B69EDB2C(&v95);
  *&v84 = v10;
  sub_1B69EDBD8(v94, &v82, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
  if (v83)
  {
    sub_1B6980E70(&v82, &v95);
  }

  else
  {
    *(&v96 + 1) = &type metadata for DefaultStartDateStorage;
    *&v97 = &protocol witness table for DefaultStartDateStorage;
    v63 = swift_allocObject();
    *&v95 = v63;
    *(v63 + 40) = &type metadata for DefaultKeyValueStore;
    *(v63 + 48) = &off_1F2E74C50;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    v64 = [objc_opt_self() standardUserDefaults];
    *(v63 + 56) = 0xD00000000000001BLL;
    *(v63 + 64) = 0x80000001B6AC9070;
    *(v63 + 88) = 2;
    *(v63 + 72) = 2;
    *(v63 + 80) = v64;
    if (v83)
    {
      sub_1B69A0A44(&v82, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    }
  }

  sub_1B6980E70(&v95, &v84 + 8);
  *&v87 = v52;
  *(&v87 + 1) = v51;
  *&v88 = v54;
  *(&v88 + 1) = v53;
  v92 = 0uLL;
  *(&v91 + 1) = v74;
  sub_1B69EDBD8(v93, &v82, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
  if (v83)
  {
    sub_1B69A0A44(v93, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
    sub_1B69A0A44(v94, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    sub_1B6980E70(&v82, &v95);
    sub_1B6980E70(&v95, &v89);
    v65 = v89;
    v101 = v90;
    v102 = v91;
    v103 = v92;
    v97 = v86;
    v98 = v87;
    v99 = v88;
    v100 = v89;
    v66 = v85;
    v95 = v84;
    v96 = v85;
    v67 = &v76[OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration];
    v68 = v91;
    *(v67 + 6) = v90;
    *(v67 + 7) = v68;
    *(v67 + 8) = v103;
    v69 = v98;
    *(v67 + 2) = v97;
    *(v67 + 3) = v69;
    *(v67 + 4) = v99;
    *(v67 + 5) = v65;
    *v67 = v95;
    *(v67 + 1) = v66;
    v81.receiver = v76;
    v81.super_class = v75;
    return objc_msgSendSuper2(&v81, sel_init);
  }

LABEL_66:
  sub_1B69A0A44(&v82, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

id sub_1B69ED228(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_1B69F7488(MEMORY[0x1E69E7CC0]);
  v73 = ObjectType;
  v74 = v4;
  v70 = a3;
  v71 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = sub_1B6AB9E20() | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v11 = ~v14;
    v10 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(a1 + 64);
    v13 = a1;
  }

  v17 = 0;
  v18 = (v11 + 64) >> 6;
  v76 = v13;
  v77 = v10;
  v75 = v18;
  while ((v13 & 0x8000000000000000) == 0)
  {
    v19 = v17;
    v20 = v12;
    v21 = v17;
    if (!v12)
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_41;
        }

        v20 = *(v10 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      swift_once();
LABEL_48:
      v51 = qword_1EB95C320;
      v50 = *algn_1EB95C328;
      v53 = qword_1EB95C330;
      v52 = qword_1EB95C338;

      v54 = a4;
      if (a4)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = (v21 << 9) | (8 * __clz(__rbit64(v20)));
    v24 = *(*(v13 + 56) + v23);
    v25 = *(*(v13 + 48) + v23);
    v26 = v24;
    if (!v25)
    {
      goto LABEL_41;
    }

LABEL_19:
    v29 = *&v25[OBJC_IVAR___AAIDSessionKind_kind];
    v78 = v22;
    if (v29 <= 1)
    {
      if (!v29)
      {
        v30 = 0;
        goto LABEL_30;
      }

      if (v29 != 1)
      {
LABEL_64:
        *&v93 = *&v25[OBJC_IVAR___AAIDSessionKind_kind];
        sub_1B6ABA160();
        __break(1u);
LABEL_65:
        sub_1B6ABA190();
        __break(1u);
        goto LABEL_66;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_30;
    }

    if (v29 == 2)
    {
      goto LABEL_27;
    }

    if (v29 != 3)
    {
      goto LABEL_64;
    }

    if (*&v25[OBJC_IVAR___AAIDSessionKind_name + 8])
    {
      v30 = *&v25[OBJC_IVAR___AAIDSessionKind_name];
      v29 = *&v25[OBJC_IVAR___AAIDSessionKind_name + 8];
    }

    else
    {
      v30 = 0;
      v29 = 0xE000000000000000;
    }

LABEL_30:
    sub_1B69E12F0(v26 + OBJC_IVAR___AAUserIDConfiguration_configuration, &v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82 = v9;
    v33 = sub_1B69DA824(v30, v29);
    v34 = v9[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_61;
    }

    v37 = v32;
    if (v9[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B69DE5F8();
        if (v37)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1B69DB5AC(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_1B69DA824(v30, v29);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_65;
      }

      v33 = v38;
      if (v37)
      {
LABEL_8:
        sub_1B69C2E8C(v30, v29);
        v9 = v82;
        sub_1B69EDCA0(&v93, *(v82 + 56) + 48 * v33);

        goto LABEL_9;
      }
    }

    v9 = v82;
    *(v82 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v40 = (v9[6] + 16 * v33);
    *v40 = v30;
    v40[1] = v29;
    v41 = (v9[7] + 48 * v33);
    v43 = v94;
    v42 = v95;
    *v41 = v93;
    v41[1] = v43;
    v41[2] = v42;

    v44 = v9[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_62;
    }

    v9[2] = v46;
LABEL_9:
    v17 = v21;
    v10 = v77;
    v12 = v78;
    v18 = v75;
    v13 = v76;
  }

  if (sub_1B6AB9E30())
  {
    v28 = v27;
    type metadata accessor for BridgedIDSessionKind();
    swift_dynamicCast();
    v25 = v93;
    *&v82 = v28;
    type metadata accessor for BridgedUserIDConfiguration();
    swift_dynamicCast();
    v26 = v93;
    v21 = v17;
    v22 = v12;
    if (v25)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  sub_1B69EDB24(v13);

  if (v71)
  {
    v47 = &off_1F2E75710;
    v48 = &type metadata for ProxyUserStartDateStorage;
    v49 = v71;
  }

  else
  {
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v92[1] = 0;
    v92[2] = 0;
  }

  v92[0] = v49;
  v92[3] = v48;
  v92[4] = v47;
  if (!v70)
  {
    v58 = qword_1EB95A9C8;
    swift_unknownObjectRetain();
    if (v58 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_63;
  }

  v51 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  v50 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 8);
  v53 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 16);
  v52 = *(v70 + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 24);

  swift_unknownObjectRetain();
  v54 = a4;
  if (a4)
  {
LABEL_46:
    v55 = &off_1F2E7B720;
    v56 = &type metadata for ProxyStorefrontProvider;
    v57 = v54;
    goto LABEL_50;
  }

LABEL_49:
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v91[1] = 0;
  v91[2] = 0;
LABEL_50:
  v91[0] = v57;
  v91[3] = v56;
  v91[4] = v55;
  v59 = v9[2];
  swift_unknownObjectRetain();
  if (v59 && (v60 = sub_1B69DA824(0, 0), (v61 & 1) != 0))
  {
    sub_1B69E12F0(v9[7] + 48 * v60, &v93);
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
  }

  sub_1B69EDB2C(&v93);
  *&v82 = v9;
  sub_1B69EDBD8(v92, &v80, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
  if (v81)
  {
    sub_1B6980E70(&v80, &v93);
  }

  else
  {
    *(&v94 + 1) = &type metadata for DefaultStartDateStorage;
    *&v95 = &protocol witness table for DefaultStartDateStorage;
    v62 = swift_allocObject();
    *&v93 = v62;
    *(v62 + 40) = &type metadata for DefaultKeyValueStore;
    *(v62 + 48) = &off_1F2E74C50;
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v63 = [objc_opt_self() standardUserDefaults];
    *(v62 + 56) = 0xD00000000000001BLL;
    *(v62 + 64) = 0x80000001B6AC9070;
    *(v62 + 88) = 2;
    *(v62 + 72) = 2;
    *(v62 + 80) = v63;
    if (v81)
    {
      sub_1B69A0A44(&v80, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    }
  }

  sub_1B6980E70(&v93, &v82 + 8);
  *&v85 = v51;
  *(&v85 + 1) = v50;
  *&v86 = v53;
  *(&v86 + 1) = v52;
  v90 = 0uLL;
  *(&v89 + 1) = 100;
  sub_1B69EDBD8(v91, &v80, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
  if (v81)
  {
    sub_1B69A0A44(v91, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
    sub_1B69A0A44(v92, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    sub_1B6980E70(&v80, &v93);
    sub_1B6980E70(&v93, &v87);
    v64 = v87;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v95 = v84;
    v96 = v85;
    v97 = v86;
    v98 = v87;
    v65 = v83;
    v93 = v82;
    v94 = v83;
    v66 = &v74[OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration];
    v67 = v89;
    *(v66 + 6) = v88;
    *(v66 + 7) = v67;
    *(v66 + 8) = v101;
    v68 = v96;
    *(v66 + 2) = v95;
    *(v66 + 3) = v68;
    *(v66 + 4) = v97;
    *(v66 + 5) = v64;
    *v66 = v93;
    *(v66 + 1) = v65;
    v79.receiver = v74;
    v79.super_class = v73;
    return objc_msgSendSuper2(&v79, sel_init);
  }

LABEL_66:
  sub_1B69A0A44(&v80, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

unint64_t sub_1B69EDA78(uint64_t a1, uint64_t a2)
{
  result = qword_1EB95AF50;
  if (!qword_1EB95AF50)
  {
    type metadata accessor for BridgedIDSessionKind();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AF50);
  }

  return result;
}

uint64_t sub_1B69EDB2C(uint64_t a1)
{
  sub_1B69EDB88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B69EDB88()
{
  if (!qword_1EB95AF58)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AF58);
    }
  }
}

uint64_t sub_1B69EDBD8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B69EDC48(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B69EDC48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B697ED90(255, a3, a4);
    v5 = sub_1B6AB9B30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69EDD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for SnapshotEvent.MissingData(255, a3, a4, a4);
  sub_1B6AB95D0();

  swift_getWitnessTable();
  v8 = sub_1B6AB9490();

  *a5 = (v8 & 1) == 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  return result;
}

uint64_t sub_1B69EDE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69EDE3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B69EDE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B69EDEDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
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

uint64_t sub_1B69EDF38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B69EDFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a3, v11);
  v12 = sub_1B6AB9680();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B69D0D00(v11);
  }

  else
  {
    sub_1B6AB9670();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B6AB95E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B6AB9350() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B69D0D00(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B69D0D00(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B69EE268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a3, v11);
  v12 = sub_1B6AB9680();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B69D0D00(v11);
  }

  else
  {
    sub_1B6AB9670();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B6AB95E0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_1B6AB9350() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1B69F2738(0, &qword_1EB95B1C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B69D0D00(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B69D0D00(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1B69F2738(0, &qword_1EB95B1C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B69EE634()
{
  v6 = &type metadata for DisabledKeyValueStore;
  v7 = &off_1F2E74C88;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = objc_allocWithZone(type metadata accessor for TrackingConsent());
  sub_1B69F2528(v5, v4);
  v2 = sub_1B69F1338(v4, v0, 2, v1);
  result = sub_1B69F2560(v5);
  qword_1EB967220 = v2;
  return result;
}

BOOL TrackingConsent.hasConsented.getter()
{
  v1 = *(v0 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

char *TrackingConsent.__allocating_init(keychainAccessGroup:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v11[3] = &type metadata for DefaultKeyValueStore;
  v11[4] = &off_1F2E74C50;
  v11[0] = a1;
  v11[1] = a2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = objc_allocWithZone(v2);
  sub_1B69EE930(v11, v10);
  v8 = sub_1B69F15D4(v10, v6, 2, v7);
  sub_1B69F1870(v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

char *TrackingConsent.init(keychainAccessGroup:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10[3] = &type metadata for DefaultKeyValueStore;
  v10[4] = &off_1F2E74C50;
  v10[0] = a1;
  v10[1] = a2;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = objc_allocWithZone(ObjectType);
  sub_1B69EE930(v10, v9);
  v7 = sub_1B69F15D4(v9, v5, 2, v6);
  sub_1B69F1870(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

char *TrackingConsent.__allocating_init(keychainAccessGroup:initialPermission:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return TrackingConsent.init(keychainAccessGroup:initialPermission:)(a1, a2, v4);
}

char *TrackingConsent.init(keychainAccessGroup:initialPermission:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = &type metadata for DefaultKeyValueStore;
  v12[4] = &off_1F2E74C50;
  v12[0] = a1;
  v12[1] = a2;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = objc_allocWithZone(ObjectType);
  sub_1B69EE930(v12, v11);
  v9 = sub_1B69F15D4(v11, v7, (a3 & 1) == 0, v8);
  sub_1B69F1870(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

char *TrackingConsent.__allocating_init(keychainAccessGroup:initialPermission:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v10[3] = &type metadata for DefaultKeyValueStore;
  v10[4] = &off_1F2E74C50;
  v10[0] = a1;
  v10[1] = a2;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = objc_allocWithZone(v3);
  sub_1B69EE930(v10, v9);
  v7 = sub_1B69F15D4(v9, v5, v4, v6);
  sub_1B69F1870(v10);
  return v7;
}

void sub_1B69EEC4C(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 8))(&v22, v7, v8);
  v9 = v22;
  if (v22 == 3)
  {
    sub_1B69EEE80(v5, &v22 + 1);
    v9 = BYTE1(v22);
  }

  v10 = sub_1B6AB92B0();
  [a4 setBool:v9 == 0 forKey:v10];

  *a1 = v9;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6AB8F90();
  __swift_project_value_buffer(v11, qword_1EDBCFDA8);
  v12 = sub_1B6AB8F80();
  v13 = sub_1B6AB98D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = " not yet decided";
    v17 = 0xD00000000000001BLL;
    if (v9 != 1)
    {
      v17 = 0xD000000000000020;
      v16 = "ed (tracking consent granted)";
    }

    if (v9)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0xD000000000000018;
    }

    if (v9)
    {
      v19 = v16;
    }

    else
    {
      v19 = "Tracking consent disallowed";
    }

    v20 = sub_1B698F63C(v18, v19 | 0x8000000000000000, &v21);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1B697C000, v12, v13, "Tracking consent initialized with value: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8C99550](v15, -1, -1);
    MEMORY[0x1B8C99550](v14, -1, -1);
  }
}

void sub_1B69EEE80(char a1@<W0>, _BYTE *a2@<X8>)
{
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6AB8F90();
  __swift_project_value_buffer(v4, qword_1EDBCFDA8);
  v5 = sub_1B6AB8F80();
  v6 = sub_1B6AB98D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xD000000000000018;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD00000000000001BLL;
      }

      else
      {
        v7 = 0xD000000000000020;
      }

      if (a1 == 1)
      {
        v10 = " not yet decided";
      }

      else
      {
        v10 = "ed (tracking consent granted)";
      }
    }

    else
    {
      v10 = "Tracking consent disallowed";
    }

    v11 = sub_1B698F63C(v7, v10 | 0x8000000000000000, &v12);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_1B697C000, v5, v6, "No consent found in keychain, defaulting to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8C99550](v9, -1, -1);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  *a2 = a1;
}

uint64_t sub_1B69EF01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = MEMORY[0x1E69E6370];
  sub_1B69F2738(0, &qword_1EB95B1A8, MEMORY[0x1E69E6370], MEMORY[0x1E69E8688]);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  sub_1B69F2738(0, &qword_1EB95B1B0, v6, MEMORY[0x1E69E8658]);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  sub_1B69F2738(0, &qword_1EB95B1B8, v6, MEMORY[0x1E69E8698]);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69EF1FC, 0, 0);
}

uint64_t sub_1B69EF1FC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = 0xD000000000000026;
  v5[4] = 0x80000001B6AC9100;
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  sub_1B6AB9700();

  sub_1B6AB96E0();
  swift_beginAccess();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1B69EF388;
  v7 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v7);
}

uint64_t sub_1B69EF388()
{

  return MEMORY[0x1EEE6DFA0](sub_1B69EF484, 0, 0);
}

uint64_t sub_1B69EF484()
{
  v16 = v0;
  v1 = *(v0 + 136);
  if (v1 == 2 || (sub_1B6AB9730() & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 104);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v3 = (v1 & 1) == 0;
    v4 = *(Strong + OBJC_IVAR___AATrackingConsent_consented);
    v5 = Strong;

    os_unfair_lock_lock((v4 + 20));
    *(v4 + 16) = v3;
    os_unfair_lock_unlock((v4 + 20));

    v6 = *&v5[OBJC_IVAR___AATrackingConsent_storage + 24];
    v7 = *&v5[OBJC_IVAR___AATrackingConsent_storage + 32];
    __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR___AATrackingConsent_storage], v6);
    v15 = v3;
    (*(v7 + 16))(&v15, v6, v7);

    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_1B69EF388;
    v9 = *(v0 + 56);

    return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v9);
  }
}

id TrackingConsent.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB9680();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *&v0[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask];
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v8 = sub_1B69F18A0();
  v9 = swift_allocObject();
  v9[2] = inited;
  v9[3] = v8;
  v9[4] = v6;

  sub_1B69EE268(0, 0, v4, &unk_1B6ABDF68, v9);

  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t sub_1B69EF7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69F18A0();
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B69EF874, v6, v5);
}

uint64_t sub_1B69EF874()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_1B6AB9710();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1B69EFB70(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    *a1 = 0;
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v3 = sub_1B6AB8F90();
    __swift_project_value_buffer(v3, qword_1EDBCFDA8);
    v4 = sub_1B6AB8F80();
    v5 = sub_1B6AB9900();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B697C000, v4, v5, "Tracking consent has been allowed", v6, 2u);
      MEMORY[0x1B8C99550](v6, -1, -1);
    }

    if (*(a2 + OBJC_IVAR___AATrackingConsent_consentEnforcement))
    {
      v7 = *(a2 + OBJC_IVAR___AATrackingConsent_userDefaults);
      v8 = sub_1B6AB92B0();
      [v7 setBool:1 forKey:v8];
    }

    else
    {
      dispatch_group_leave(*(a2 + OBJC_IVAR___AATrackingConsent_accessGroup));
    }
  }
}

Swift::Void __swiftcall TrackingConsent.deny()()
{
  v1 = *(v0 + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  sub_1B69F19C8((v1 + 16));
  os_unfair_lock_unlock((v1 + 20));
}

void sub_1B69EFD98(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 1;
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v3 = sub_1B6AB8F90();
    __swift_project_value_buffer(v3, qword_1EDBCFDA8);
    v4 = sub_1B6AB8F80();
    v5 = sub_1B6AB9900();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B697C000, v4, v5, "Tracking consent has been denied", v6, 2u);
      MEMORY[0x1B8C99550](v6, -1, -1);
    }

    if (*(a2 + OBJC_IVAR___AATrackingConsent_consentEnforcement))
    {
      v7 = *(a2 + OBJC_IVAR___AATrackingConsent_userDefaults);
      v8 = sub_1B6AB92B0();
      [v7 setBool:0 forKey:v8];
    }

    else
    {
      dispatch_group_enter(*(a2 + OBJC_IVAR___AATrackingConsent_accessGroup));
    }
  }
}

uint64_t sub_1B69EFF80()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = *(v2 + 8);
  v4 = sub_1B69F23CC();
  v5 = sub_1B69F2420();
  v6 = sub_1B69F2474();
  return v3(0xD000000000000026, 0x80000001B6AC9100, 1, &type metadata for TrackingConsent.TrackingPermission, v4, v5, v6, v1, v2);
}

uint64_t sub_1B69F0058(char *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v10 = v2;
  v5 = *(v4 + 16);
  v6 = sub_1B69F23CC();
  v7 = sub_1B69F2420();
  v8 = sub_1B69F2474();
  return v5(&v10, 0xD000000000000026, 0x80000001B6AC9100, 1, &type metadata for TrackingConsent.TrackingPermission, v6, v7, v8, v3, v4);
}

unint64_t TrackingConsent.TrackingPermission.debugDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

unint64_t TrackingConsent.TrackingPermission.description.getter()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1B69F01E8(uint64_t a1)
{
  v2 = sub_1B69F1A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0224(uint64_t a1)
{
  v2 = sub_1B69F1A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F0260()
{
  v1 = 0x776F6C6C61736964;
  if (*v0 != 1)
  {
    v1 = 0x6564696365646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465776F6C6C61;
  }
}

uint64_t sub_1B69F02C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B69F22A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B69F02EC(uint64_t a1)
{
  v2 = sub_1B69F1AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0328(uint64_t a1)
{
  v2 = sub_1B69F1AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F0364(uint64_t a1)
{
  v2 = sub_1B69F1A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F03A0(uint64_t a1)
{
  v2 = sub_1B69F1A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F03DC(uint64_t a1)
{
  v2 = sub_1B69F19E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F0418(uint64_t a1)
{
  v2 = sub_1B69F19E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackingConsent.TrackingPermission.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1B69F1B34(0, &qword_1EB95B098, sub_1B69F19E4, &type metadata for TrackingConsent.TrackingPermission.UndecidedCodingKeys, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  sub_1B69F1B34(0, &qword_1EB95B0A8, sub_1B69F1A38, &type metadata for TrackingConsent.TrackingPermission.DisallowedCodingKeys, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  sub_1B69F1B34(0, &qword_1EB95B0B8, sub_1B69F1A8C, &type metadata for TrackingConsent.TrackingPermission.AllowedCodingKeys, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1B69F1B34(0, &qword_1EB95B0C8, sub_1B69F1AE0, &type metadata for TrackingConsent.TrackingPermission.CodingKeys, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F1AE0();
  sub_1B6ABA2D0();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      sub_1B69F1A38();
      v17 = v25;
      v18 = v31;
      sub_1B6AB9FD0();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    sub_1B69F19E4();
    v10 = v28;
    v20 = v31;
    sub_1B6AB9FD0();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    sub_1B69F1A8C();
    v20 = v31;
    sub_1B6AB9FD0();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

uint64_t TrackingConsent.TrackingPermission.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t TrackingConsent.TrackingPermission.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B69F1B34(0, &qword_1EB95B0D8, sub_1B69F19E4, &type metadata for TrackingConsent.TrackingPermission.UndecidedCodingKeys, MEMORY[0x1E69E6F48]);
  v39 = v4;
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - v5;
  sub_1B69F1B34(0, &qword_1EB95B0E0, sub_1B69F1A38, &type metadata for TrackingConsent.TrackingPermission.DisallowedCodingKeys, v3);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v33 - v7;
  sub_1B69F1B34(0, &qword_1EB95B0E8, sub_1B69F1A8C, &type metadata for TrackingConsent.TrackingPermission.AllowedCodingKeys, v3);
  v9 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  sub_1B69F1B34(0, &qword_1EB95B0F0, sub_1B69F1AE0, &type metadata for TrackingConsent.TrackingPermission.CodingKeys, v3);
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F1AE0();
  v16 = v44;
  sub_1B6ABA2A0();
  if (v16)
  {
    goto LABEL_2;
  }

  v34 = v9;
  v18 = v41;
  v19 = v42;
  v44 = a1;
  v20 = sub_1B6AB9FB0();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_1B6AB9D10();
    swift_allocError();
    v26 = v25;
    sub_1B69F1B9C(0);
    *v26 = &type metadata for TrackingConsent.TrackingPermission;
    sub_1B6AB9F20();
    sub_1B6AB9CF0();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v43 + 8))(v15, v13);
    swift_unknownObjectRelease();
LABEL_10:
    v17 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  if (!*(v20 + 32))
  {
    v45 = 0;
    sub_1B69F1A8C();
    sub_1B6AB9F10();
    v31 = v43;
    (*(v35 + 8))(v11, v34);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v30 = v40;
LABEL_22:
    *v30 = v22;
    goto LABEL_10;
  }

  v35 = 0;
  v28 = v43;
  if (v22 == 1)
  {
    v46 = 1;
    sub_1B69F1A38();
    v29 = v35;
    sub_1B6AB9F10();
    v30 = v40;
    if (v29)
    {
      goto LABEL_18;
    }

    (*(v37 + 8))(v18, v38);
    (*(v28 + 8))(v15, v13);
    goto LABEL_21;
  }

  v47 = 2;
  sub_1B69F19E4();
  v32 = v35;
  sub_1B6AB9F10();
  v30 = v40;
  if (!v32)
  {
    (*(v36 + 8))(v19, v39);
    (*(v28 + 8))(v15, v13);
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

LABEL_18:
  (*(v28 + 8))(v15, v13);
  swift_unknownObjectRelease();
  a1 = v44;
LABEL_2:
  v17 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1B69F0F14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B69F0F58()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

unint64_t sub_1B69F0FE0()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1B69F1038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B69F1130(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B69F1224;

  return v5(v2 + 32);
}

uint64_t sub_1B69F1224()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

char *sub_1B69F1338(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31[3] = &type metadata for TrackingConsent.DisabledStorage;
  v31[4] = &off_1F2E75510;
  v12 = swift_allocObject();
  v31[0] = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = OBJC_IVAR___AATrackingConsent_accessGroup;
  *&a4[v14] = dispatch_group_create();
  v15 = OBJC_IVAR___AATrackingConsent_consented;
  sub_1B69F24C8(0);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  v17 = (v16 + 20);
  *(v16 + 16) = 2;
  v18 = (v16 + 16);
  *&a4[v15] = v16;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = 0;
  sub_1B6982544(v31, &a4[OBJC_IVAR___AATrackingConsent_storage]);
  a4[OBJC_IVAR___AATrackingConsent_consentEnforcement] = 1;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaults] = a2;
  v27 = v31;
  v28 = a3;
  v29 = a2;

  v19 = a2;
  os_unfair_lock_lock(v17);
  sub_1B69F2590(v18);
  os_unfair_lock_unlock(v17);

  v30.receiver = a4;
  v30.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = sub_1B6AB9680();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v22;
  v24 = v20;
  *&v24[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = sub_1B69EDFB0(0, 0, v11, &unk_1B6ABE568, v23);

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

char *sub_1B69F15D4(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31[3] = &type metadata for TrackingConsent.TrackingConsentStorage;
  v31[4] = &off_1F2E752E8;
  v12 = swift_allocObject();
  v31[0] = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = OBJC_IVAR___AATrackingConsent_accessGroup;
  *&a4[v14] = dispatch_group_create();
  v15 = OBJC_IVAR___AATrackingConsent_consented;
  sub_1B69F24C8(0);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  v17 = (v16 + 20);
  *(v16 + 16) = 2;
  v18 = (v16 + 16);
  *&a4[v15] = v16;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = 0;
  sub_1B6982544(v31, &a4[OBJC_IVAR___AATrackingConsent_storage]);
  a4[OBJC_IVAR___AATrackingConsent_consentEnforcement] = 1;
  *&a4[OBJC_IVAR___AATrackingConsent_userDefaults] = a2;
  v27 = v31;
  v28 = a3;
  v29 = a2;

  v19 = a2;
  os_unfair_lock_lock(v17);
  sub_1B69F2A2C(v18);
  os_unfair_lock_unlock(v17);

  v30.receiver = a4;
  v30.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = sub_1B6AB9680();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v22;
  v24 = v20;
  *&v24[OBJC_IVAR___AATrackingConsent_userDefaultsObservationTask] = sub_1B69EDFB0(0, 0, v11, &unk_1B6ABE5A0, v23);

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

unint64_t sub_1B69F18A0()
{
  result = qword_1EDBC7F20;
  if (!qword_1EDBC7F20)
  {
    type metadata accessor for AnalyticsActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC7F20);
  }

  return result;
}

uint64_t sub_1B69F18F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B69EF7DC(a1, v4, v5, v6);
}

unint64_t sub_1B69F19E4()
{
  result = qword_1EB95B0A0;
  if (!qword_1EB95B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0A0);
  }

  return result;
}

unint64_t sub_1B69F1A38()
{
  result = qword_1EB95B0B0;
  if (!qword_1EB95B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0B0);
  }

  return result;
}

unint64_t sub_1B69F1A8C()
{
  result = qword_1EB95B0C0;
  if (!qword_1EB95B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0C0);
  }

  return result;
}

unint64_t sub_1B69F1AE0()
{
  result = qword_1EB95B0D0;
  if (!qword_1EB95B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B0D0);
  }

  return result;
}

void sub_1B69F1B34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1B69F1B9C(uint64_t a1)
{
  if (!qword_1EB95B0F8)
  {
    sub_1B69F1C0C();
    sub_1B6AB9D00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B0F8);
    }
  }
}

unint64_t sub_1B69F1C0C()
{
  result = qword_1EB95B100;
  if (!qword_1EB95B100)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB95B100);
  }

  return result;
}

unint64_t sub_1B69F1C5C()
{
  result = qword_1EB95B108;
  if (!qword_1EB95B108)
  {
    sub_1B69F2738(255, &qword_1EB95B110, &type metadata for TrackingConsent.TrackingPermission, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B108);
  }

  return result;
}

unint64_t sub_1B69F1CDC()
{
  result = qword_1EB95B118;
  if (!qword_1EB95B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackingConsent.AccessGroupConsentEnforcement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackingConsent.AccessGroupConsentEnforcement(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1B69F1F38()
{
  result = qword_1EB95B138;
  if (!qword_1EB95B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B138);
  }

  return result;
}

unint64_t sub_1B69F1F90()
{
  result = qword_1EB95B140;
  if (!qword_1EB95B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B140);
  }

  return result;
}

unint64_t sub_1B69F1FE8()
{
  result = qword_1EB95B148;
  if (!qword_1EB95B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B148);
  }

  return result;
}

unint64_t sub_1B69F2040()
{
  result = qword_1EB95B150;
  if (!qword_1EB95B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B150);
  }

  return result;
}

unint64_t sub_1B69F2098()
{
  result = qword_1EB95B158;
  if (!qword_1EB95B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B158);
  }

  return result;
}

unint64_t sub_1B69F20F0()
{
  result = qword_1EB95B160;
  if (!qword_1EB95B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B160);
  }

  return result;
}

unint64_t sub_1B69F2148()
{
  result = qword_1EB95B168;
  if (!qword_1EB95B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B168);
  }

  return result;
}

unint64_t sub_1B69F21A0()
{
  result = qword_1EB95B170;
  if (!qword_1EB95B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B170);
  }

  return result;
}

unint64_t sub_1B69F21F8()
{
  result = qword_1EB95B178;
  if (!qword_1EB95B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B178);
  }

  return result;
}

unint64_t sub_1B69F2250()
{
  result = qword_1EB95B180;
  if (!qword_1EB95B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B180);
  }

  return result;
}

uint64_t sub_1B69F22A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C61736964 && a2 == 0xEA00000000006465 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564696365646E75 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1B69F23CC()
{
  result = qword_1EB95B188;
  if (!qword_1EB95B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B188);
  }

  return result;
}

unint64_t sub_1B69F2420()
{
  result = qword_1EB95B190;
  if (!qword_1EB95B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B190);
  }

  return result;
}

unint64_t sub_1B69F2474()
{
  result = qword_1EB95B198;
  if (!qword_1EB95B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B198);
  }

  return result;
}

void sub_1B69F24C8(uint64_t a1)
{
  if (!qword_1EB95B1A0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95B1A0);
    }
  }
}

uint64_t sub_1B69F25B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69EF01C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B69F2680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B69D1460;

  return sub_1B69F1130(a1, v4);
}

void sub_1B69F2738(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B69F2788(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B69AD75C;

  return sub_1B69F1130(a1, v4);
}

uint64_t objectdestroy_41Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69F2888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69AD75C;

  return sub_1B69EF01C(a1, v4, v5, v7, v6);
}

uint64_t sub_1B69F2948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69F2990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t BridgedEventPropertyRequirement.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B69F2A78()
{
  result = qword_1EB95B1C8[0];
  if (!qword_1EB95B1C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95B1C8);
  }

  return result;
}

unint64_t *sub_1B69F2ACC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B69F2AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B69F2C28;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B69F2C28(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1B69F2D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B69F2D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B69F2DD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6AB9EF0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69F2E2C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B69F2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F2EC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B69F2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F2FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B69F3014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B69F2DD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B69F3044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B69F2E2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B69F3078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B69F2DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B69F30A0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1B69F3778();
  *a2 = result;
  return result;
}

uint64_t sub_1B69F30CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B69F3120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SessionData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for SessionData.Keys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = sub_1B6ABA060();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2D0();
  v15 = 0;
  v11 = v13[3];
  sub_1B6ABA000();
  if (!v11)
  {
    v14 = 1;
    sub_1B6ABA040();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t SessionData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v28 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionData.Keys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = sub_1B6AB9FC0();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v25 - v11;
  v32 = a3;
  v14 = type metadata accessor for SessionData(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v25 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_1B6ABA2A0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = a1;
  v26 = v14;
  v18 = v30;
  v19 = v31;
  v36 = 0;
  v20 = v16;
  *v16 = sub_1B6AB9F50();
  v16[1] = v21;
  v25 = v21;
  v35 = 1;
  sub_1B6AB9F90();
  (*(v18 + 8))(v12, v33);
  v22 = v26;
  (*(v28 + 32))(v16 + *(v26 + 36), v19, a2);
  v23 = v27;
  (*(v27 + 16))(v29, v20, v22);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return (*(v23 + 8))(v20, v22);
}

id BridgedUserStartDateStorageType.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, char a2)
{
  v3 = v2;
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B6AB8D20();
  v8[0] = 0;
  LODWORD(v3) = [v3 storeUserStartDate:v5 isDiagnosticSubmissionAllowed:a2 & 1 error:v8];

  if (v3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_1B6AB8A70();

  return swift_willThrow();
}

uint64_t BridgedUserStartDateStorageType.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = [v2 userStartDateWithIsDiagnosticSubmissionAllowed_];
  if (v4)
  {
    v5 = v4;
    sub_1B6AB8D80();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B6AB8DB0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void sub_1B69F390C(uint64_t a1, char a2, char a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B6AB8D20();
  v17[0] = 0;
  LODWORD(a4) = [a4 storeUserStartDate:v7 isDiagnosticSubmissionAllowed:a2 & 1 isTrackingConsentAllowed:a3 & 1 error:v17];

  if (a4)
  {
    v8 = v17[0];
    return;
  }

  v9 = v17[0];
  v10 = sub_1B6AB8A70();

  swift_willThrow();
  v11 = sub_1B6AB8A60();
  if (![v11 code])
  {
    goto LABEL_8;
  }

  v12 = [v11 domain];
  v13 = sub_1B6AB92E0();
  v15 = v14;

  if (v13 == 0xD00000000000001CLL && 0x80000001B6AC9360 == v15)
  {

LABEL_8:

    return;
  }

  v16 = sub_1B6ABA0F0();

  if (v16)
  {
    goto LABEL_8;
  }

  swift_willThrow();
}

uint64_t sub_1B69F3AF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [*v2 userStartDateWithIsDiagnosticSubmissionAllowed:a1 & 1 isTrackingConsentAllowed:1];
  if (v5)
  {
    v6 = v5;
    sub_1B6AB8D80();

    v4 = 0;
  }

  v7 = sub_1B6AB8DB0();
  return (*(*(v7 - 8) + 56))(a2, v4, 1, v7);
}

uint64_t sub_1B69F3BA8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = [*v3 userStartDateWithIsDiagnosticSubmissionAllowed:a1 & 1 isTrackingConsentAllowed:a2 & 1];
  if (v5)
  {
    v6 = v5;
    sub_1B6AB8D80();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1B6AB8DB0();
  return (*(*(v8 - 8) + 56))(a3, v7, 1, v8);
}

uint64_t sub_1B69F3C88()
{
  v1 = [*v0 taskDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B6AB92E0();

  return v3;
}

void sub_1B69F3CF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setTaskDescription_];
}

void (*sub_1B69F3D60(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[2] = *v1;
  v4 = [v3 taskDescription];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B6AB92E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_1B69F3DE8;
}

void sub_1B69F3DE8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1B6AB92B0();
    }

    else
    {
      v4 = 0;
    }

    [a1[2] setTaskDescription_];
  }

  else if (v3)
  {
    v4 = sub_1B6AB92B0();

    [a1[2] setTaskDescription_];
  }

  else
  {
    v4 = 0;
    [a1[2] setTaskDescription_];
  }
}

uint64_t sub_1B69F3ECC()
{
  [*(v0 + 16) finishTasksAndInvalidate];

  return swift_deallocClassInstance();
}

void sub_1B69F3F14(unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(v6 + 16);
  v12 = sub_1B6AB87A0();
  if (a3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1B6AB8C60();
  }

  v16[4] = a4;
  v16[5] = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B69D1A0C;
  v16[3] = &block_descriptor_2;
  v14 = _Block_copy(v16);

  v15 = [v11 uploadTaskWithRequest:v12 fromData:v13 completionHandler:v14];
  _Block_release(v14);

  a6[3] = &type metadata for ProxyURLSessionUploadTask;
  a6[4] = &off_1F2E757A8;
  *a6 = v15;
}

uint64_t MigrationUserIDStorage.init(accessGroup:legacyStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1B6982544(a3, (a4 + 5));
  a4[3] = &type metadata for DefaultUserIDStorage;
  a4[4] = &protocol witness table for DefaultUserIDStorage;
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 40) = &type metadata for DefaultKeyValueStore;
  *(v8 + 48) = &off_1F2E74C50;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = [objc_opt_self() standardUserDefaults];
  *(v8 + 56) = 0xD000000000000017;
  *(v8 + 64) = 0x80000001B6AC94D0;
  *(v8 + 88) = 2;
  *(v8 + 72) = 2;
  *(v8 + 80) = v9;

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t MigrationUserIDStorage.init(accessGroup:legacyStorage:syncRequirements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a4;
  sub_1B6982544(a3, (a5 + 5));
  a5[3] = &type metadata for DefaultUserIDStorage;
  a5[4] = &protocol witness table for DefaultUserIDStorage;
  v10 = swift_allocObject();
  *a5 = v10;
  *(v10 + 40) = &type metadata for DefaultKeyValueStore;
  *(v10 + 48) = &off_1F2E74C50;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = [objc_opt_self() standardUserDefaults];
  *(v10 + 56) = 0xD000000000000017;
  *(v10 + 64) = 0x80000001B6AC94D0;
  *(v10 + 88) = 2;
  *(v10 + 72) = v9;
  *(v10 + 80) = v11;

  return __swift_destroy_boxed_opaque_existential_1(a3);
}

uint64_t MigrationUserIDStorage.init(newStorage:legacyStorage:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B6980E70(a1, a3);

  return sub_1B6980E70(a2, a3 + 40);
}

uint64_t MigrationUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B6AB8DB0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LegacyStoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a2[1];
  v18 = v4[3];
  v17 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v18);
  v30 = v15;
  v31 = v16;
  v19 = *(v17 + 16);
  v28 = a1;
  v29 = a3;
  v20 = v32;
  result = v19(a1, &v30, a3, 1, v18, v17);
  if (!v20)
  {
    v22 = v4[8];
    v23 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v22);
    v24 = v26;
    sub_1B69F4778(v28, v26);
    v25 = v27;
    sub_1B6AB8D90();
    sub_1B69E935C(v24, v25, v14);
    v30 = v15;
    v31 = v16;
    (*(v23 + 16))(v14, &v30, v29 & 1, v22, v23);
    return sub_1B69F50F4(v14, type metadata accessor for LegacyStoredUserIDComponents);
  }

  return result;
}

uint64_t MigrationUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v31 = a4;
  v9 = sub_1B6AB8DB0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegacyStoredUserIDComponents(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = a2[1];
  v20 = v5[3];
  v19 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v20);
  v32 = v17;
  v33 = v18;
  v21 = *(v19 + 16);
  v29 = a1;
  v30 = a3;
  v22 = v34;
  result = v21(a1, &v32, a3, v31, v20, v19);
  if (!v22)
  {
    v24 = v5[8];
    v25 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v24);
    sub_1B69F4778(v29, v13);
    v26 = v28;
    sub_1B6AB8D90();
    sub_1B69E935C(v13, v26, v16);
    v32 = v17;
    v33 = v18;
    (*(v25 + 16))(v16, &v32, v30 & 1, v24, v25);
    return sub_1B69F50F4(v16, type metadata accessor for LegacyStoredUserIDComponents);
  }

  return result;
}

uint64_t sub_1B69F4778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredUserIDComponents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MigrationUserIDStorage.userIDComponents(for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a3;
  v60 = a4;
  v8 = type metadata accessor for StoredUserIDComponents(0);
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69F4E64(0, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v54 - v13;
  sub_1B69F4E64(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v23 = *a1;
  v22 = a1[1];
  v24 = v5[3];
  v25 = v5[4];
  v59 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v24);
  v66 = v23;
  v67 = v22;
  v26 = v65;
  result = (*(v25 + 32))(&v66, a2, v69, v24, v25);
  if (!v26)
  {
    v55 = v22;
    v56 = v23;
    v68 = a2;
    v54 = v19;
    v29 = v61;
    v28 = v62;
    v65 = 0;
    v30 = v63;
    v31 = v64;
    v32 = *(v63 + 48);
    if (v32(v21, 1, v64) != 1)
    {
      v46 = v60;
      sub_1B69F5090(v21, v60);
      return (*(v30 + 56))(v46, 0, 1, v31);
    }

    sub_1B69F4EB8(v21, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v33 = sub_1B6AB8F90();
    v63 = __swift_project_value_buffer(v33, qword_1EDBCFD80);
    v34 = sub_1B6AB8F80();
    v35 = sub_1B6AB98D0();
    v36 = v28;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1B697C000, v34, v35, "No ID components found in AA storage, checking legacy storage...", v37, 2u);
      MEMORY[0x1B8C99550](v37, -1, -1);
    }

    v38 = v59[8];
    v39 = v59[9];
    __swift_project_boxed_opaque_existential_1(v59 + 5, v38);
    v41 = v55;
    v40 = v56;
    v66 = v56;
    v67 = v55;
    v42 = v65;
    result = (*(v39 + 8))(&v66, v68 & 1, v38, v39);
    if (!v42)
    {
      v65 = 0;
      sub_1B69F4FA4(v29, v36, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
      v43 = v54;
      sub_1B6AA9BB0(v36, v54);
      v44 = v58;
      sub_1B69F4FA4(v43, v58, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
      if (v32(v44, 1, v64) == 1)
      {
        sub_1B69F4EB8(v29, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        sub_1B69F4EB8(v44, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
        v45 = v60;
      }

      else
      {
        v47 = v57;
        sub_1B69F5090(v44, v57);
        v49 = v59[3];
        v48 = v59[4];
        __swift_project_boxed_opaque_existential_1(v59, v49);
        v66 = v40;
        v67 = v41;
        v50 = v65;
        (*(v48 + 16))(v47, &v66, v68 & 1, v69 & 1, v49, v48);
        v65 = v50;
        if (v50)
        {
          sub_1B69F50F4(v47, type metadata accessor for StoredUserIDComponents);
          sub_1B69F4EB8(v54, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
          return sub_1B69F4EB8(v29, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        }

        v51 = sub_1B6AB8F80();
        v52 = sub_1B6AB98D0();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1B697C000, v51, v52, "ID components found in legacy storage, successfully migrated to AA storage.", v53, 2u);
          MEMORY[0x1B8C99550](v53, -1, -1);
        }

        sub_1B69F50F4(v47, type metadata accessor for StoredUserIDComponents);
        sub_1B69F4EB8(v29, &qword_1EB95B250, type metadata accessor for LegacyStoredUserIDComponents);
        v45 = v60;
        v43 = v54;
      }

      return sub_1B69F5010(v43, v45);
    }
  }

  return result;
}

void sub_1B69F4E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69F4EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69F4E64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69F4FA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B69F4E64(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B69F5010(uint64_t a1, uint64_t a2)
{
  sub_1B69F4E64(0, qword_1EB95B258, type metadata accessor for StoredUserIDComponents);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69F5090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredUserIDComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69F50F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B69F5170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69F51B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t UserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v14 = *a4;
  v15 = a4[1];
  v17 = a4[2];
  v16 = a4[3];
  if (*(a1 + 16) && (v18 = sub_1B69DA824(0, 0), (v19 & 1) != 0))
  {
    sub_1B69E12F0(*(a1 + 56) + 48 * v18, &v26);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
  }

  sub_1B69EDB2C(&v26);
  *a8 = a1;
  sub_1B69EDBD8(a2, &v24, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
  if (v25)
  {
    sub_1B6980E70(&v24, &v26);
  }

  else
  {
    *(&v27 + 1) = &type metadata for DefaultStartDateStorage;
    *&v28 = &protocol witness table for DefaultStartDateStorage;
    v20 = swift_allocObject();
    *&v26 = v20;
    *(v20 + 40) = &type metadata for DefaultKeyValueStore;
    *(v20 + 48) = &off_1F2E74C50;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = [objc_opt_self() standardUserDefaults];
    *(v20 + 56) = 0xD00000000000001BLL;
    *(v20 + 64) = 0x80000001B6AC9070;
    *(v20 + 88) = 2;
    *(v20 + 72) = 2;
    *(v20 + 80) = v21;
    if (v25)
    {
      sub_1B69A0A44(&v24, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    }
  }

  sub_1B6980E70(&v26, (a8 + 1));
  a8[6] = v14;
  a8[7] = v15;
  a8[8] = v17;
  a8[9] = v16;
  a8[15] = a3;
  a8[16] = a6;
  a8[17] = a7;
  sub_1B69EDBD8(a5, &v24, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
  if (v25)
  {
    sub_1B69A0A44(a5, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
    sub_1B69A0A44(a2, &qword_1EB95AF60, &qword_1EB95AF68, &protocol descriptor for UserStartDateStorageType);
    sub_1B6980E70(&v24, &v26);
    return sub_1B6980E70(&v26, (a8 + 10));
  }

  else
  {
    sub_1B69A0A44(&v24, &qword_1EB95AF70, qword_1EB95AF78, &protocol descriptor for StorefrontProviderType);
    result = sub_1B6AB9E40();
    __break(1u);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DateVIeghr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B69F5518(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B69F558C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = sub_1B6AB9B30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 16);
  v15 = v3;
  v16 = *(a1 + 40);
  v17 = v8;
  type metadata accessor for CombineLatestStorage(0, &v14);
  v10 = *(a1 + 68);
  v9 = *(a1 + 72);
  v11 = *(v3 - 8);
  (*(v11 + 16))(v7, v1 + v9, v3);
  (*(v11 + 56))(v7, 0, 1, v3);
  v12 = sub_1B69D06F0(v1, v1 + v10, v7);
  (*(v5 + 8))(v7, v4);
  return sub_1B69F5718(v12);
}

uint64_t sub_1B69F5718(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v5[0] = *(*a1 + 80);
  v5[1] = v3;
  v5[2] = *(v2 + 112);
  type metadata accessor for AsyncCombineLatest3Sequence.Iterator.InternalClass(0, v5);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B69F5790(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B69F57C4()
{

  sub_1B69C8DF0();

  return v0;
}

uint64_t sub_1B69F5808()
{
  sub_1B69F57C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1B69F585C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B69F5904(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1B69F5BBC(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1B69F5F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69F5F94(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B69F6038(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getAssociatedTypeWitness();
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedTypeWitness();
  v2[7] = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[8] = TupleTypeMetadata3;
  v4 = sub_1B6AB9B30();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(TupleTypeMetadata3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69F6284, 0, 0);
}

uint64_t sub_1B69F6284()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1B69F6320;
  v2 = *(v0 + 88);

  return sub_1B69C9014(v2);
}

uint64_t sub_1B69F6320()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B69F6890;
  }

  else
  {
    v2 = sub_1B69F6434;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B69F6434()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[2];
    (*(v0[10] + 8))(v1, v0[9]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v4, 1, 1, TupleTypeMetadata3);
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[13];
    v9 = v0[5];
    v32 = v0[14];
    v35 = v0[6];
    v10 = v0[4];
    v28 = v0[2];
    (*(v2 + 32))(v6, v1, v3);
    v26 = swift_getTupleTypeMetadata3();
    v30 = *(v26 + 48);
    v11 = *(v2 + 16);
    v11(v7, v6, v3);
    v27 = *(v10 - 8);
    (*(v27 + 32))(v28, v7, v10);
    v11(v32, v6, v3);
    v25 = *(v9 - 8);
    (*(v25 + 32))(v28 + v30, v32 + *(v3 + 48), v9);
    v11(v8, v6, v3);
    v12 = *(v35 - 8);
    v31 = *(v3 + 64);
    v33 = v8;
    result = (*(v12 + 48))(v8 + v31, 1);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v29 = v0[15];
    v14 = v0[13];
    v23 = v0[7];
    v24 = v0[14];
    v15 = v0[6];
    v36 = v0[5];
    v16 = v0[2];
    v17 = *(v26 + 64);
    v18 = *(v3 + 48);
    v22 = v0[4];
    (*(v0[12] + 8))(v0[16], v0[8]);
    (*(v12 + 32))(v16 + v17, v33 + v31, v15);
    (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
    v34 = *(v25 + 8);
    v34(v14 + v18, v36);
    v19 = *(v27 + 8);
    v19(v14, v22);
    v20 = *(*(v23 - 8) + 8);
    v20(v24 + v31, v23);
    v19(v24, v22);
    v20(v29 + v31, v23);
    v34(v29 + v18, v36);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B69F6890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B69F6924(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69F6944, 0, 0);
}

uint64_t sub_1B69F6944()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B69F69E0;
  v2 = *(v0 + 16);

  return sub_1B69F6038(v2);
}

uint64_t sub_1B69F69E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B69F6AD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B69AD75C;

  return sub_1B69F6924(a1);
}

uint64_t sub_1B69F6B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_1B69F6CC0;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_1B69F6CC0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t sub_1B69F6E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B69F558C(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1B69F6E78()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69F6EE0(uint64_t a1)
{
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t sub_1B69F6F30()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69F6F94(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B6ABA0F0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B6ABA0F0();
    }
  }

  return result;
}

void *SessionGroupManager.__allocating_init(accessQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v2[4] = sub_1B6987D80(v3);
  v2[2] = a1;
  return v2;
}

void *SessionGroupManager.init(accessQueue:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v1[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v1[4] = sub_1B6987D80(v3);
  v1[2] = a1;
  return v1;
}

uint64_t SessionGroupManager.deinit()
{

  return v0;
}

uint64_t SessionGroupManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B69F7164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBC9B88, MEMORY[0x1E69E7360]);
    v3 = sub_1B6AB9E90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B6993940(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1B69F7264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E0B1C(0);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v13, sub_1B69D6438);
      v5 = v13;
      result = sub_1B69DA770(v13);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      v9 = v15;
      *v8 = v14;
      v8[1] = v9;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1B69F7378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E0A7C(0);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v11, sub_1B69D5350);
      v5 = v11;
      result = sub_1B69DA770(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B69979CC(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1B69F7488(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69C1208(0, &qword_1EB95AE18, sub_1B69811C4, &type metadata for Session.Kind, &type metadata for UserIDConfiguration);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7CCC(v4, v13, &qword_1EB95B3F8, &type metadata for Session.Kind, &type metadata for UserIDConfiguration);
      result = sub_1B69DA824(*&v13[0], *(&v13[0] + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v13[0];
      v7 = (v3[7] + 48 * result);
      v8 = v13[1];
      v9 = v13[3];
      v7[1] = v13[2];
      v7[2] = v9;
      *v7 = v8;
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

uint64_t sub_1B69F760C(uint64_t a1, int a2)
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

uint64_t sub_1B69F7654(uint64_t result, int a2, int a3)
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

unint64_t sub_1B69F76A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EB95ADC0, MEMORY[0x1E69E69B8]);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7CCC(v4, &v16, &qword_1EB95B3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E69B8]);
      v5 = v16;
      v6 = v17;
      result = sub_1B6993940(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1B69F77E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69E1100(0);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7F74(v4, &v17, sub_1B69F7BC0);
      v5 = v17;
      v6 = v18;
      result = sub_1B6993940(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 56 * result;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      *(v10 + 48) = v22;
      *(v10 + 16) = v12;
      *(v10 + 32) = v13;
      *v10 = v11;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 72;
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

unint64_t sub_1B69F791C(uint64_t a1)
{
  sub_1B69F7AF4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
    v8 = sub_1B6AB9E90();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1B69F7F74(v10, v6, sub_1B69F7AF4);
      result = sub_1B69DA824(*v6, *(v6 + 1));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for UserIDComponents(0);
      result = sub_1B69F7B5C(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_1B69F7AF4(uint64_t a1)
{
  if (!qword_1EB95B3E0)
  {
    type metadata accessor for UserIDComponents(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B3E0);
    }
  }
}

uint64_t sub_1B69F7B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserIDComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B69F7BC0(uint64_t a1)
{
  if (!qword_1EB95B3E8)
  {
    sub_1B69F7C44(255, &qword_1EB95ADF8, sub_1B697E288);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B3E8);
    }
  }
}

void sub_1B69F7C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B69809F4(255, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B69F7CCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B69F7FDC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B69F7D3C(uint64_t a1)
{
  if (!qword_1EB95ADC8)
  {
    sub_1B69E1084(255);
    v1 = sub_1B6AB9EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95ADC8);
    }
  }
}

void sub_1B69F7DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B69F7E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69F7E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    sub_1B69F7E1C(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B69F7F10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1B69F7F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B69F7FDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1B69F8074()
{
  result = qword_1EB95B400;
  if (!qword_1EB95B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B400);
  }

  return result;
}

unint64_t sub_1B69F80CC()
{
  result = qword_1EB95B408;
  if (!qword_1EB95B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B408);
  }

  return result;
}

unint64_t sub_1B69F8124()
{
  result = qword_1EB95B410;
  if (!qword_1EB95B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B410);
  }

  return result;
}

unint64_t sub_1B69F817C()
{
  result = qword_1EB95B418;
  if (!qword_1EB95B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequirements(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequirements(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B69F822C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      return 0x7972746572;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else if (a3 == 2)
  {
    return 0x64656C696166;
  }

  else if (a3 == 3)
  {
    v3 = ContentType.description.getter(a1);
    MEMORY[0x1B8C97BE0](v3);

    return 0x696F70646E456F6ELL;
  }

  else
  {
    if (a1 ^ 1 | a2)
    {
      v5 = 0x656E6F646E616261;
    }

    else
    {
      v5 = 0x656E696C66666FLL;
    }

    if (a1 | a2)
    {
      return v5;
    }

    else
    {
      return 0x64656C6261736964;
    }
  }
}

uint64_t sub_1B69F8378(uint64_t a1, uint64_t a2)
{
  sub_1B6AB9CA0();

  v2 = sub_1B6ABA080();
  MEMORY[0x1B8C97BE0](v2);

  MEMORY[0x1B8C97BE0](0x726564616568202CLL, 0xEA00000000003D73);
  v3 = sub_1B6AB9220();
  MEMORY[0x1B8C97BE0](v3);

  return 0x6F43737574617473;
}

uint64_t sub_1B69F846C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B69F8E6C(0, &qword_1EB95B420, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69F8928();
  sub_1B6ABA2D0();
  v14 = 0;
  sub_1B6ABA030();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1B69A7DCC();
    sub_1B69F8ED0(&qword_1EDBC8060, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1B6ABA040();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B69F862C()
{
  if (*v0)
  {
    return 0x73726564616568;
  }

  else
  {
    return 0x6F43737574617473;
  }
}

uint64_t sub_1B69F866C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B69F875C(uint64_t a1)
{
  v2 = sub_1B69F8928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B69F8798(uint64_t a1)
{
  v2 = sub_1B69F8928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B69F87D4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B69F897C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69F87F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B69F8C74(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12UploadResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1B69F8874(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B69F88BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1B69F8900(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B69F8928()
{
  result = qword_1EB95B428;
  if (!qword_1EB95B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B428);
  }

  return result;
}

uint64_t sub_1B69F897C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1B6993940(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1B6ABA0F0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1B69F8B20(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          return a1 == a4;
        }

        return 0;
      }

      if (a1 | a2)
      {
        if (a1 ^ 1 | a2)
        {
          if (a6 != 4 || a4 != 2)
          {
            return 0;
          }
        }

        else if (a6 != 4 || a4 != 1)
        {
          return 0;
        }

        return !a5;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }

    return a1 == a4 && (sub_1B69F897C(a2, a5) & 1) != 0;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    return a1 == a4 && (sub_1B69F897C(a2, a5) & 1) != 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return !a5;
  }

  if (!a5)
  {
    return 0;
  }

  if (a1 != a4)
  {
    return 0;
  }

  v9 = a2;

  LOBYTE(v9) = sub_1B69F897C(v9, a5);
  sub_1B69F8F30(a1, a5, 1u);
  result = 1;
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B69F8C74(void *a1)
{
  sub_1B69F8E6C(0, &qword_1EB95B430, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1B69F8928();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_1B6AB9F80();
    sub_1B69A7DCC();
    v10[15] = 1;
    sub_1B69F8ED0(&qword_1EB95B438, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1B6AB9F90();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_1B69F8E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B69F8928();
    v7 = a3(a1, &type metadata for UploadResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B69F8ED0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B69A7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B69F8F30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1B69F8F5C()
{
  result = qword_1EB95B440;
  if (!qword_1EB95B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B440);
  }

  return result;
}

unint64_t sub_1B69F8FB4()
{
  result = qword_1EB95B448;
  if (!qword_1EB95B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B448);
  }

  return result;
}

unint64_t sub_1B69F900C()
{
  result = qword_1EB95B450;
  if (!qword_1EB95B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B450);
  }

  return result;
}

BOOL sub_1B69F9060(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TimedData(0);
  result = 1;
  if (!swift_dynamicCastMetatype() || ((v3 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName), v4 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName + 8), v3 == 0x4464656D69544141) ? (v5 = v4 == 0xEB00000000617461) : (v5 = 0), !v5 && (sub_1B6ABA0F0() & 1) == 0 && (v3 == 0xD000000000000010 ? (v6 = 0x80000001B6AC9580 == v4) : (v6 = 0), !v6 && (sub_1B6ABA0F0() & 1) == 0)))
  {
    type metadata accessor for EventData(0);
    if (!swift_dynamicCastMetatype())
    {
      return 0;
    }

    v7 = a2 + OBJC_IVAR___AARawEventProperty_dataName;
    v8 = *(a2 + OBJC_IVAR___AARawEventProperty_dataName);
    v9 = *(v7 + 8);
    v10 = v8 == 0x44746E6576454141 && v9 == 0xEB00000000617461;
    if (!v10 && (sub_1B6ABA0F0() & 1) == 0)
    {
      v11 = v8 == 0xD000000000000010 && 0x80000001B6AC9560 == v9;
      if (!v11 && (sub_1B6ABA0F0() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B69F91E8()
{
  v1 = *(*v0 + OBJC_IVAR___AARawEventProperty_dataName);

  return v1;
}

uint64_t sub_1B69F922C()
{
  v1 = *(*v0 + OBJC_IVAR___AARawEventProperty_requirement);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t Client.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAClient_identifier);

  return v1;
}

uint64_t Client.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAClient_name);

  return v1;
}

unsigned __int8 *sub_1B69F9390()
{
  v1 = v0 + OBJC_IVAR___AAClient_buildNumber;
  v3 = *(v0 + OBJC_IVAR___AAClient_buildNumber);
  v2 = *(v1 + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    while (sub_1B6AB9440() != 46 || v5 != 0xE100000000000000)
    {
      v6 = sub_1B6ABA0F0();

      if ((v6 & 1) != 0 || 4 * v4 == sub_1B6AB9390() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v7 = sub_1B6AB9460();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if ((v7 ^ v9) < 0x4000)
  {

    return 0;
  }

  v14 = sub_1B69FA118(v7, v9, v11, v13, 10);
  if ((v15 & 0x100) == 0)
  {
    v16 = v15;
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return v17;
    }

    return 0;
  }

  v19 = sub_1B69F9B80(v7, v9, v11, v13, 10);
  v21 = v20;

  if (v21)
  {
    return 0;
  }

  return v19;
}

id sub_1B69F9540(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1B6AB92B0();

  return v3;
}

uint64_t sub_1B69F9644()
{
  v2 = *(v0 + OBJC_IVAR___AAClient_version);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  MEMORY[0x1B8C97BE0](*(v0 + OBJC_IVAR___AAClient_buildNumber), *(v0 + OBJC_IVAR___AAClient_buildNumber + 8));
  return v2;
}

id Client.__allocating_init(identifier:name:version:buildNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___AAClient_identifier];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR___AAClient_name];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v17[OBJC_IVAR___AAClient_version];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v17[OBJC_IVAR___AAClient_buildNumber];
  *v21 = a7;
  *(v21 + 1) = a8;
  v23.receiver = v17;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

id Client.init(identifier:name:version:buildNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___AAClient_identifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v8[OBJC_IVAR___AAClient_name];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v8[OBJC_IVAR___AAClient_version];
  *v11 = a5;
  *(v11 + 1) = a6;
  v12 = &v8[OBJC_IVAR___AAClient_buildNumber];
  *v12 = a7;
  *(v12 + 1) = a8;
  v14.receiver = v8;
  v14.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v14, sel_init);
}

id Client.__allocating_init(identifier:name:version:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_allocWithZone(v6);
  v8 = sub_1B6AB92B0();

  v9 = sub_1B6AB92B0();

  v10 = sub_1B6AB92B0();

  sub_1B6ABA080();
  v11 = sub_1B6AB92B0();

  v12 = [v7 initWithIdentifier:v8 name:v9 version:v10 buildNumber:v11];

  return v12;
}

id Client.init(identifier:name:version:build:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_1B6AB92B0();

  v8 = sub_1B6AB92B0();

  v9 = sub_1B6AB92B0();

  sub_1B6ABA080();
  v10 = sub_1B6AB92B0();

  v11 = [v6 initWithIdentifier:v7 name:v8 version:v9 buildNumber:v10];

  return v11;
}

id Client.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Client.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Client();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unsigned __int8 *sub_1B69F9B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1B69FA2CC();

  result = sub_1B6AB9450();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B6AB17A0(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B6AB9D40();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B69FA118(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1B6AB9D40();
  }

  result = sub_1B69FA320(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void sub_1B69FA1E4()
{
  if (!qword_1EDBCBAF0)
  {
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCBAF0);
    }
  }
}

unint64_t sub_1B69FA2CC()
{
  result = qword_1EB95B478;
  if (!qword_1EB95B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B478);
  }

  return result;
}

uint64_t sub_1B69FA320(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1B69D5E18(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1B6AB93F0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1B69D5E18(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1B69D5E18(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1B6AB93F0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1B69FA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B69F2C28;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B69FA8BC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  sub_1B6993C94(v2, v3);

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v4 = v0[14];
  __swift_project_value_buffer(v0[10], qword_1EDBCFD80);
  v5 = v4;
  v6 = sub_1B6AB8F80();
  v7 = sub_1B6AB98E0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B697C000, v6, v7, "Failed to sign our data, error=%@", v9, 0xCu);
    sub_1B69FAAA0(v10);
    MEMORY[0x1B8C99550](v10, -1, -1);
    MEMORY[0x1B8C99550](v9, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_1B69FAA68()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B69FAAA0(uint64_t a1)
{
  sub_1B69EC2D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69FAAFC(uint64_t a1)
{
  result = 0xD000000000000039;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 3)
      {
        return 0xD00000000000003DLL;
      }

      else
      {
        return 0xD000000000000038;
      }
    }

    if (!a1)
    {
      return 0xD000000000000034;
    }

    if (a1 == 1)
    {
      return result;
    }

LABEL_20:
    result = sub_1B6ABA160();
    __break(1u);
    return result;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return 0xD000000000000044;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  if (a1 == 7)
  {
    return 0xD00000000000003ALL;
  }

  if (a1 != 8 && a1 != 9)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B69FAC88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69B193C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1B69FACC8()
{
  result = qword_1EB95B480;
  if (!qword_1EB95B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B480);
  }

  return result;
}

uint64_t sub_1B69FAD2C(uint64_t a1)
{
  v73 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1B69866DC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v70 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v74 = v58 - v5;
  v6 = sub_1B6AB8DB0();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v64 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = v58 - v9;
  v65 = sub_1B6AB8970();
  v63 = *(v65 - 8);
  v10 = MEMORY[0x1EEE9AC00](v65);
  v62 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v79 = v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v77 = v58 - v14;
  sub_1B69866DC(0, &qword_1EB95AF38, MEMORY[0x1E6969BC0], v1);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v58 - v16;
  v18 = sub_1B6AB8F20();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6AB8E50();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1B6AB8F00();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, *MEMORY[0x1E6969868], v22);
  v78 = v27;
  sub_1B6AB8E60();
  (*(v23 + 8))(v25, v22);
  sub_1B6AB8F10();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_1B6AB8ED0();
  sub_1B69866DC(0, &qword_1EB95B488, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v76 = v29;
  v30 = sub_1B6AB8EE0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = *(v31 + 80);
  v69 = (((v33 + 32) & ~v33) + 2 * v32);
  v75 = (v33 + 32) & ~v33;
  v34 = swift_allocObject();
  v68 = xmmword_1B6ABF500;
  *(v34 + 16) = xmmword_1B6ABF500;
  v35 = v34 + ((v33 + 32) & ~v33);
  v67 = *MEMORY[0x1E6969A68];
  v59 = v31;
  v36 = *(v31 + 104);
  v58[0] = v31 + 104;
  v36(v35);
  v66 = *MEMORY[0x1E6969A78];
  v36(v35 + v32);
  sub_1B6AA01D0(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B6AB8E90();

  v58[1] = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = v68;
  v38 = v37 + v75;
  (v36)(v37 + v75, v67, v30);
  v72 = v32;
  v39 = v38 + v32;
  v40 = v66;
  v69 = v36;
  (v36)(v39, v66, v30);
  sub_1B6AA01D0(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B6AB8E90();

  v41 = v74;
  sub_1B6AB8EA0();
  v42 = v80[6];
  result = v42(v41, 1, v81);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v43 = v81;
  v44 = v80[4];
  v45 = v71;
  v44();
  v46 = v70;
  sub_1B6AB8EA0();
  result = v42(v46, 1, v43);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v47 = v64;
  v48 = v81;
  (v44)(v64, v46, v81);
  v49 = v75;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B6ABD890;
  v69(v50 + v49, v40, v30);
  sub_1B6AA01D0(v50);
  swift_setDeallocating();
  (*(v59 + 8))(v50 + v49, v30);
  swift_deallocClassInstance();
  v51 = v62;
  v52 = v45;
  v53 = v78;
  sub_1B6AB8E80();

  v76 = sub_1B6AB8960();
  LOBYTE(v50) = v54;
  v55 = *(v63 + 8);
  v56 = v65;
  v55(v51, v65);
  v57 = v80[1];
  v57(v47, v48);
  v57(v52, v48);
  v55(v79, v56);
  v55(v77, v56);
  (*(v60 + 8))(v53, v61);
  if (v50)
  {
    return 0;
  }

  else
  {
    return v76;
  }
}

uint64_t MigrationStartDateStorage.init(legacyStorage:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for DefaultStartDateStorage;
  a2[4] = &protocol witness table for DefaultStartDateStorage;
  v4 = swift_allocObject();
  *a2 = v4;
  *(v4 + 40) = &type metadata for DefaultKeyValueStore;
  *(v4 + 48) = &off_1F2E74C50;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = [objc_opt_self() standardUserDefaults];
  *(v4 + 56) = 0xD00000000000001BLL;
  *(v4 + 64) = 0x80000001B6AC9070;
  *(v4 + 88) = 2;
  *(v4 + 72) = 2;
  *(v4 + 80) = v5;

  return sub_1B699A784(a1, (a2 + 5));
}

uint64_t MigrationStartDateStorage.init(legacyStorage:syncRequirements:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  a3[3] = &type metadata for DefaultStartDateStorage;
  a3[4] = &protocol witness table for DefaultStartDateStorage;
  v6 = swift_allocObject();
  *a3 = v6;
  *(v6 + 40) = &type metadata for DefaultKeyValueStore;
  *(v6 + 48) = &off_1F2E74C50;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = [objc_opt_self() standardUserDefaults];
  *(v6 + 56) = 0xD00000000000001BLL;
  *(v6 + 64) = 0x80000001B6AC9070;
  *(v6 + 88) = 2;
  *(v6 + 72) = v5;
  *(v6 + 80) = v7;

  return sub_1B699A784(a1, (a3 + 5));
}

uint64_t MigrationStartDateStorage.init(legacyStorage:newStorage:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B699A784(a2, a3);

  return sub_1B699A784(a1, a3 + 40);
}

uint64_t MigrationStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(v7 + 16))(a1, a2, 1, v6, v7);
  if (!v3)
  {
    v9 = v2[8];
    v10 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v9);
    return (*(v10 + 8))(a1, a2 & 1, v9, v10);
  }

  return result;
}

uint64_t MigrationStartDateStorage.store(userStartDate:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  result = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = v5[8];
    v13 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v12);
    return (*(v13 + 8))(a1, a2 & 1, v12, v13);
  }

  return result;
}

uint64_t MigrationStartDateStorage.userStartDate(isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = a2;
  v46 = a3;
  v6 = sub_1B6AB8DB0();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69B2128(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = v3[3];
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v17);
  v19 = v49;
  result = (*(v18 + 32))(a1, v51, v17, v18);
  if (!v19)
  {
    v44 = v11;
    v50 = a1;
    v21 = v14;
    v22 = v46;
    v23 = v47;
    v49 = 0;
    v24 = *(v47 + 48);
    v25 = v48;
    if (v24(v16, 1, v48) != 1)
    {
      (*(v23 + 32))(v22, v16, v25);
      return (*(v23 + 56))(v22, 0, 1, v25);
    }

    sub_1B69E9EBC(v16);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v26 = sub_1B6AB8F90();
    __swift_project_value_buffer(v26, qword_1EDBCFD80);
    v27 = sub_1B6AB8F80();
    v28 = sub_1B6AB98D0();
    v29 = v21;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B697C000, v27, v28, "No user start date found in AA storage, checking legacy storage...", v30, 2u);
      MEMORY[0x1B8C99550](v30, -1, -1);
    }

    v31 = v4[8];
    v32 = v4[9];
    __swift_project_boxed_opaque_existential_1(v4 + 5, v31);
    v33 = v49;
    result = (*(v32 + 24))(v50 & 1, v31, v32);
    if (!v33)
    {
      v49 = 0;
      v34 = v44;
      sub_1B69B20C4(v29, v44);
      v35 = v48;
      if (v24(v34, 1, v48) == 1)
      {
        sub_1B69E9EBC(v34);
      }

      else
      {
        v36 = v47;
        v37 = v45;
        (*(v47 + 32))(v45, v34, v35);
        v38 = v4[3];
        v39 = v4[4];
        __swift_project_boxed_opaque_existential_1(v4, v38);
        v40 = v49;
        (*(v39 + 16))(v37, v50 & 1, v51 & 1, v38, v39);
        v49 = v40;
        if (v40)
        {
          (*(v36 + 8))(v37, v35);
          return sub_1B69E9EBC(v29);
        }

        v41 = sub_1B6AB8F80();
        v42 = sub_1B6AB98D0();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1B697C000, v41, v42, "User start date found in legacy storage, successfully migrated to AA storage.", v43, 2u);
          MEMORY[0x1B8C99550](v43, -1, -1);
        }

        (*(v47 + 8))(v37, v48);
      }

      return sub_1B69B3830(v29, v22);
    }
  }

  return result;
}

uint64_t sub_1B69FBE94(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(v7 + 16))(a1, a2, 1, v6, v7);
  if (!v3)
  {
    v9 = v2[8];
    v10 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v9);
    return (*(v10 + 8))(a1, a2 & 1, v9, v10);
  }

  return result;
}

uint64_t sub_1B69FBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  result = (*(v10 + 16))(a1, a2, a3, v9, v10);
  if (!v4)
  {
    v12 = v5[8];
    v13 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v12);
    return (*(v13 + 8))(a1, a2 & 1, v12, v13);
  }

  return result;
}

unint64_t sub_1B69FC0B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69FC320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1B69FC0EC()
{
  result = [objc_allocWithZone(type metadata accessor for BridgedTimestampGranularityFactory()) init];
  qword_1EDBC8120 = result;
  return result;
}

id BridgedTimestampGranularityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BridgedTimestampGranularityFactory.sharedInstance.getter()
{
  if (qword_1EDBC8118 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8120;

  return v1;
}

id BridgedTimestampGranularityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedTimestampGranularityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B69FC320(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t _s12AppAnalytics34BridgedTimestampGranularityFactoryC04makedE0yAA0cdE0OSSF_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6AB9340();
  v4 = v2;
  if (v3 == 7954788 && v2 == 0xE300000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 1920298856 && v4 == 0xE400000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 3;
  }

  else if (v3 == 0x6574756E696DLL && v4 == 0xE600000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 4;
  }

  else if (v3 == 0x72657474696ALL && v4 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1B69FC4A0()
{
  result = qword_1EB95B490;
  if (!qword_1EB95B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B490);
  }

  return result;
}

void *SessionManager.__allocating_init(accessQueue:sessionGroupManager:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v10 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v16 = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1EDBCA728);
  sub_1B6980478(v17, v12, type metadata accessor for SummaryEventConfiguration);
  v18 = swift_allocObject();
  v19 = sub_1B6A07FC4(a1, v16, a2, 0, a3, v13, v14, v15, v22, v21, v12, v18);

  swift_unknownObjectRelease();
  return v19;
}

void *SessionManager.__allocating_init(accessQueue:sessionGroupManager:options:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a6;
  v11 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_1EDBCA728);
  sub_1B6980478(v19, v13, type metadata accessor for SummaryEventConfiguration);
  v20 = swift_allocObject();
  v21 = sub_1B6A07FC4(a1, v18, a2, v14, v25, v15, v16, v17, v26, v24, v13, v20);

  swift_unknownObjectRelease();
  return v21;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampJitter:privacyValidationProvider:)(void *a1, void *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v32 = a2;
  v34 = a3;
  v35 = a5;
  v33 = a1;
  v11 = type metadata accessor for SummaryEventConfiguration(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DiagnosticsConsentProvider(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v20 = *a6;
  v19 = a6[1];
  v21 = *(a6 + 16);
  v22 = dispatch_group_create();
  sub_1B6AB8E30();
  v23 = &v17[*(v15 + 28)];
  *v23 = sub_1B69A3378;
  *(v23 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v11, qword_1EDBCA728);
  sub_1B6980478(v24, v13, type metadata accessor for SummaryEventConfiguration);
  ObjectType = swift_getObjectType();
  v29 = v13;
  v26 = v33;
  v27 = sub_1B6A089EC(v33, v22, v34, v18, v35, v20, v19, v21, a7, v17, v29, ObjectType, v31);

  swift_unknownObjectRelease();
  return v27;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:summaryEventConfiguration:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = sub_1B6A09EC0(a1, a2, a3, a4, a5, v18, a7, a8, a9, v9, v17, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v19;
}

void *SessionManager.init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:summaryEventConfiguration:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a7;
  v26 = a8;
  v24 = a4;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_1B6A09478(a1, a2, a3, v24, a5, v19, v25, v26, a9, v9, v16, v15);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v21;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:summaryEventConfiguration:timeDurationGranularity:)(void *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a11)
{
  v18 = a6[3];
  v17 = a6[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a6, v18);
  v20 = sub_1B6A09FE8(a1, a2, a3, a4, a5, v19, a7, a8, a9, a11, v10, v18, v17);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

void *SessionManager.init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:summaryEventConfiguration:timeDurationGranularity:)(void *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v25 = a4;
  v24 = a9;
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_1B69916AC(a1, a2, a3, v25, a5, v20, v26, v27, v24, *(&v24 + 1), a10, v10, v17, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v22;
}

uint64_t sub_1B69FCEDC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a2;
  v9 = sub_1B6AB90F0();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB8E40();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6992BDC(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B699332C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v65 = &v62[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v78 = &v62[-v22];
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v62[-v23];
  v24 = type metadata accessor for DiagnosticsConsentProvider(0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v67 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62[-v27];
  sub_1B6980478(*(a1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, &v62[-v27], type metadata accessor for DiagnosticsConsentProvider);
  v68 = *(a1 + 48);
  v29 = qword_1EDBC9F60;
  v75 = a3;

  v74 = a4;

  if (v29 != -1)
  {
    swift_once();
  }

  v77 = a5;
  v66 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v72 = v80;
  if (v80)
  {
    v30 = *(v12 + 16);
    v31 = v79;
    v30(v79, v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v11);
    v32 = *(v12 + 56);
    v32(v31, 0, 1, v11);
  }

  else
  {
    v32 = *(v12 + 56);
    v32(v79, 1, 1, v11);
    v30 = *(v12 + 16);
  }

  v33 = v11;
  v34 = v78;
  v76 = v28;
  v30(v78, v28, v33);
  v32(v34, 0, 1, v33);
  v35 = *(v15 + 48);
  v36 = MEMORY[0x1E69695A8];
  v37 = MEMORY[0x1E69E6720];
  sub_1B6A0A858(v79, v17, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  sub_1B6A0A858(v34, &v17[v35], &qword_1EDBCAF50, v36, v37, sub_1B699332C);
  v38 = *(v12 + 48);
  if (v38(v17, 1, v33) == 1)
  {
    v39 = MEMORY[0x1E69695A8];
    v40 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v34, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    sub_1B6A0A8CC(v79, &qword_1EDBCAF50, v39, v40, sub_1B699332C);
    v41 = v38(&v17[v35], 1, v33);
    v42 = v77;
    if (v41 == 1)
    {
      sub_1B6A0A8CC(v17, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      v43 = v76;
LABEL_15:
      v73(v74, v42);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v44 = v65;
  sub_1B6A0A858(v17, v65, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  v45 = v33;
  if (v38(&v17[v35], 1, v33) == 1)
  {
    v46 = MEMORY[0x1E69695A8];
    v47 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v78, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    sub_1B6A0A8CC(v79, &qword_1EDBCAF50, v46, v47, sub_1B699332C);
    (*(v12 + 8))(v44, v33);
    v42 = v77;
LABEL_11:
    sub_1B6A0BDA4(v17, sub_1B6992BDC);
    v43 = v76;
    goto LABEL_12;
  }

  v58 = v64;
  (*(v12 + 32))(v64, &v17[v35], v45);
  sub_1B69822F4(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v63 = sub_1B6AB92A0();
  v59 = *(v12 + 8);
  v59(v58, v45);
  v60 = MEMORY[0x1E69695A8];
  v61 = MEMORY[0x1E69E6720];
  sub_1B6A0A8CC(v78, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  sub_1B6A0A8CC(v79, &qword_1EDBCAF50, v60, v61, sub_1B699332C);
  v59(v44, v45);
  sub_1B6A0A8CC(v17, &qword_1EDBCAF50, v60, v61, sub_1B699332C);
  v43 = v76;
  v42 = v77;
  if (v63)
  {
    goto LABEL_15;
  }

LABEL_12:
  v48 = v67;
  sub_1B6980478(v43, v67, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v51 = v68;
  v50 = v69;
  v52 = *&v68[OBJC_IVAR___AAAccessQueue_queue];
  *v69 = v52;
  v54 = v70;
  v53 = v71;
  (*(v70 + 104))(v50, *MEMORY[0x1E69E8020], v71);
  v55 = v52;
  LOBYTE(v52) = sub_1B6AB9110();
  result = (*(v54 + 8))(v50, v53);
  if (v52)
  {
    sub_1B6980F64(v48, v49 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v49 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v51;
    v80 = v49;
    sub_1B699332C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v57 = v51;

    swift_task_localValuePush();
    v73(v74, v42);
    swift_task_localValuePop();

LABEL_16:

    return sub_1B6A0BDA4(v43, type metadata accessor for DiagnosticsConsentProvider);
  }

  __break(1u);
  return result;
}

uint64_t SessionManager.deinit()
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1B6AB9680();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  swift_beginAccess();
  v6 = *(v0 + v5);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v8 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v9 = swift_allocObject();
  v9[2] = inited;
  v9[3] = v8;
  v9[4] = v6;

  sub_1B69EDFB0(0, 0, v3, &unk_1B6ABF728, v9);

  sub_1B6988008(v0 + 32);

  sub_1B6A0BDA4(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_state, type metadata accessor for SessionManager.SessionState);

  sub_1B6A0A1D4(*(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind), *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind + 8));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider));

  return v0;
}

uint64_t sub_1B69FDB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B69FDC4C, v6, v5);
}

void sub_1B69FDC4C()
{
  v1 = *(v0 + 16);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 16) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v9 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);

        sub_1B6AB9710();
      }

      while (v7);
      continue;
    }
  }

  v11 = *(v0 + 8);

  v11();
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1B69FDE38(uint64_t a1)
{
  v3 = sub_1B69B4888(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 64);
  v18 = v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v10)
  {
    v10 = i;
LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1B698FE74(*(a1 + 56) + 32 * v11, &v17);
    v16[0] = v14;
    v16[1] = v13;

    sub_1B6A0242C(&v18, v16, v1);
    v7 &= v7 - 1;
    sub_1B6A0BDA4(v16, sub_1B69A1808);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v18;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++i;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1B6A0BDA4(v16, sub_1B69A1808);

  __break(1u);
  return result;
}

uint64_t sub_1B69FDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v51 = a7;
    v52 = a8;
    v48 = a11;
    v49 = a6;
    v43 = a10;
    v44 = a12;
    v46 = a9;
    v50 = a4;
    v54 = a4;
    v55 = a5;

    MEMORY[0x1B8C97BE0](35, 0xE100000000000000);
    sub_1B69E8D48();
    v23 = sub_1B6ABA330();
    MEMORY[0x1B8C97BE0](v23);

    v24 = v54;
    v25 = v55;
    v26 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v27 = *(*(v22 + v26) + 16);
    v47 = v24;
    v45 = v25;
    if (v27 && (sub_1B6993940(v24, v25), (v28 & 1) != 0))
    {
      v29 = a2;
      swift_endAccess();
      sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);

      sub_1B6AB9710();
    }

    else
    {
      v29 = a2;
      swift_endAccess();
    }

    v30 = sub_1B6AB9680();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnalyticsActor();
    inited = swift_initStaticObject();
    v33 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
    v34 = swift_allocObject();
    v34[2] = inited;
    v34[3] = v33;
    v34[4] = v31;
    v34[5] = v29;
    v35 = v50;
    v37 = v51;
    v36 = v52;
    v34[6] = v49;
    v34[7] = v37;
    v34[8] = v35;
    v34[9] = a5;
    v38 = v46;
    v34[10] = v36;
    v34[11] = v38;
    v39 = v44;
    v40 = v48;
    v34[12] = v43;
    v34[13] = v40;
    v34[14] = v39;

    sub_1B698BF94(v36);

    v41 = sub_1B6A6EE0C(0, 0, v20, &unk_1B6ABFA50, v34);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v22 + v26);
    *(v22 + v26) = 0x8000000000000000;
    sub_1B69E6EE4(v41, v47, v45, isUniquelyReferenced_nonNull_native);

    *(v22 + v26) = v53;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1B69FE378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v51 = a7;
    v52 = a8;
    v48 = a11;
    v49 = a6;
    v43 = a10;
    v44 = a12;
    v46 = a9;
    v50 = a4;
    v54 = a4;
    v55 = a5;

    MEMORY[0x1B8C97BE0](35, 0xE100000000000000);
    sub_1B69E8B54();
    v23 = sub_1B6ABA330();
    MEMORY[0x1B8C97BE0](v23);

    v24 = v54;
    v25 = v55;
    v26 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v27 = *(*(v22 + v26) + 16);
    v47 = v24;
    v45 = v25;
    if (v27 && (sub_1B6993940(v24, v25), (v28 & 1) != 0))
    {
      v29 = a2;
      swift_endAccess();
      sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);

      sub_1B6AB9710();
    }

    else
    {
      v29 = a2;
      swift_endAccess();
    }

    v30 = sub_1B6AB9680();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    v31 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnalyticsActor();
    inited = swift_initStaticObject();
    v33 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
    v34 = swift_allocObject();
    v34[2] = inited;
    v34[3] = v33;
    v34[4] = v31;
    v34[5] = v29;
    v35 = v50;
    v37 = v51;
    v36 = v52;
    v34[6] = v49;
    v34[7] = v37;
    v34[8] = v35;
    v34[9] = a5;
    v38 = v46;
    v34[10] = v36;
    v34[11] = v38;
    v39 = v44;
    v40 = v48;
    v34[12] = v43;
    v34[13] = v40;
    v34[14] = v39;

    sub_1B698BF94(v36);

    v41 = sub_1B6A6EE0C(0, 0, v20, &unk_1B6ABFA40, v34);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v22 + v26);
    *(v22 + v26) = 0x8000000000000000;
    sub_1B69E6EE4(v41, v47, v45, isUniquelyReferenced_nonNull_native);

    *(v22 + v26) = v53;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1B69FE738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 5608) = v19;
  *(v8 + 5600) = v18;
  *(v8 + 5584) = v17;
  *(v8 + 5568) = v16;
  *(v8 + 5560) = a8;
  *(v8 + 5552) = a7;
  *(v8 + 5544) = a6;
  *(v8 + 5536) = a5;
  *(v8 + 5528) = a4;
  *(v8 + 5616) = type metadata accessor for SessionManager.SessionState(0);
  *(v8 + 5624) = swift_task_alloc();
  v9 = sub_1B6AB90F0();
  *(v8 + 5632) = v9;
  *(v8 + 5640) = *(v9 - 8);
  *(v8 + 5648) = swift_task_alloc();
  sub_1B6A0B378(0);
  *(v8 + 5656) = v10;
  *(v8 + 5664) = swift_task_alloc();
  sub_1B6A0B634(0);
  *(v8 + 5672) = v11;
  *(v8 + 5680) = *(v11 - 8);
  *(v8 + 5688) = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  *(v8 + 5696) = swift_initStaticObject();
  *(v8 + 5704) = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v13 = sub_1B6AB95E0();
  *(v8 + 5712) = v13;
  *(v8 + 5720) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B69FE950, v13, v12);
}

uint64_t sub_1B69FE950()
{
  v9 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 5728) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 5544);
    v8 = *(*(v0 + 5536) + 32);
    v2(&v8);
    sub_1B69822F4(&qword_1EB95B550, sub_1B6A0B378, MEMORY[0x1E69E88C0]);
    sub_1B6AB9790();
    *(v0 + 5736) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    *(v0 + 5744) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v0 + 5752) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    swift_beginAccess();
    *(v0 + 164) = *MEMORY[0x1E69E8020];
    v3 = *(v0 + 5704);
    v4 = *(v0 + 5696);
    sub_1B69822F4(&qword_1EB95B558, sub_1B6A0B634, MEMORY[0x1E69E88B0]);
    v5 = swift_task_alloc();
    *(v0 + 5760) = v5;
    *v5 = v0;
    v5[1] = sub_1B69FEBB4;

    return MEMORY[0x1EEE6D8D0](v0 + 3336, v4, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B69FEBB4()
{
  v2 = *v1;

  v3 = *(v2 + 5720);
  v4 = *(v2 + 5712);
  if (v0)
  {
    v5 = sub_1B6A0068C;
  }

  else
  {
    v5 = sub_1B69FECF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B69FECF0()
{
  v285 = v0;
  if (*(v0 + 3344))
  {
    v1 = v0 + 2600;
    v2 = *(v0 + 5568);
    v271 = *(v0 + 5560);
    v274 = *(v0 + 5576);
    v3 = (v0 + 2744);
    v5 = *(v0 + 3400);
    v4 = *(v0 + 3416);
    v6 = *(v0 + 3384);
    *(v0 + 4184) = v5;
    *(v0 + 4200) = v4;
    *(v0 + 4209) = *(v0 + 3425);
    v7 = *(v0 + 3352);
    v8 = *(v0 + 3336);
    v9 = v7;
    *(v0 + 4120) = v8;
    *(v0 + 4136) = v7;
    v11 = *(v0 + 3368);
    v10 = *(v0 + 3384);
    v12 = *(v0 + 3352);
    *(v0 + 4152) = v11;
    *(v0 + 4168) = v10;
    v13 = *(v0 + 3384);
    v14 = *(v0 + 3400);
    v15 = *(v0 + 3416);
    *(v0 + 3848) = v14;
    *(v0 + 3864) = v15;
    v16 = *(v0 + 3336);
    *(v0 + 3784) = v16;
    *(v0 + 3800) = v12;
    v279 = v16;
    v280 = v12;
    v17 = *(v0 + 3368);
    *(v0 + 3816) = v17;
    *(v0 + 3832) = v13;
    v281 = v17;
    v282 = v13;
    v18 = *(v0 + 3425);
    *(v0 + 3873) = v18;
    v283 = v14;
    v284[0] = v15;
    *(v284 + 9) = v18;
    *(v0 + 2856) = v271;
    *(v0 + 2864) = v2;
    *(v0 + 2872) = v8;
    *(v0 + 2888) = v9;
    *(v0 + 2961) = *(v0 + 3425);
    v19 = *(v0 + 3416);
    *(v0 + 2936) = v5;
    *(v0 + 2952) = v19;
    *(v0 + 2904) = v11;
    *(v0 + 2920) = v6;
    sub_1B6A0B6F8(0, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);
    sub_1B6A0AED4(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData);

    sub_1B6A0B758(v0 + 3784, v0 + 4568);
    sub_1B6A0A858(v0 + 2856, v0 + 2984, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, sub_1B6A0B6F8);
    v20 = sub_1B6ABA330();
    v278 = v21;
    v22 = *(v0 + 2936);
    *(v0 + 2664) = *(v0 + 2920);
    *(v0 + 2680) = v22;
    *(v0 + 2696) = *(v0 + 2952);
    *(v0 + 2705) = *(v0 + 2961);
    v23 = *(v0 + 2872);
    *(v0 + 2600) = *(v0 + 2856);
    *(v0 + 2616) = v23;
    v24 = *(v0 + 2904);
    *(v0 + 2632) = *(v0 + 2888);
    *(v0 + 2648) = v24;
    *(v0 + 2728) = v271;
    *(v0 + 2736) = v2;
    v25 = v280;
    *(v0 + 2744) = v279;
    *(v0 + 2760) = v25;
    *(v0 + 2833) = *(v284 + 9);
    v26 = v284[0];
    *(v0 + 2808) = v283;
    *(v0 + 2824) = v26;
    v27 = v282;
    *(v0 + 2776) = v281;
    *(v0 + 2792) = v27;
    sub_1B6A0A8CC(v0 + 2728, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, sub_1B6A0B6F8);
    v270 = (v0 + 4120);
    if (!v274)
    {
      v66 = *(v0 + 5608);
      v67 = *(v0 + 5600);
      v68 = *(v0 + 5592);
      v69 = *(v0 + 2680);
      *(v0 + 2360) = *(v0 + 2664);
      *(v0 + 2376) = v69;
      v70 = *(v0 + 2712);
      *(v0 + 2392) = *(v0 + 2696);
      *(v0 + 2408) = v70;
      v71 = *(v0 + 2616);
      *(v0 + 2296) = *v1;
      *(v0 + 2312) = v71;
      v72 = *(v0 + 2648);
      *(v0 + 2328) = *(v0 + 2632);
      *(v0 + 2344) = v72;
      *(v0 + 2424) = v20;
      *(v0 + 2432) = v278;
      *(v0 + 2440) = 256;
      sub_1B6AA099C((v0 + 2296), &unk_1F2E73DE0, v68, v67, v66);
      v3 = v20;
      v34 = v278;
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_78;
    }

    v275 = (v0 + 2600);
    v276 = v20;
    v28 = *(v0 + 164);
    v1 = *(v0 + 5728);
    v29 = *(v0 + 5648);
    v30 = *(v0 + 5640);
    v31 = *(v0 + 5632);
    (*(v0 + 5576))(v0 + 4120);
    v32 = *(*(v1 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v29 = v32;
    (*(v30 + 104))(v29, v28, v31);
    v33 = v32;
    LOBYTE(v32) = sub_1B6AB9110();
    v35 = *(v30 + 8);
    v34 = v30 + 8;
    v35(v29, v31);
    if ((v32 & 1) == 0)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
LABEL_17:
      v73 = sub_1B6AB8F90();
      __swift_project_value_buffer(v73, qword_1EDBCFD80);

      v74 = sub_1B6AB8F80();
      v75 = sub_1B6AB98D0();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = v0 + 928;
        v77 = *(v0 + 5568);
        v78 = *(v0 + 5560);
        v79 = swift_slowAlloc();
        v277 = v3;
        v80 = swift_slowAlloc();
        *&v279 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_1B698F63C(v78, v77, &v279);
        _os_log_impl(&dword_1B697C000, v74, v75, "Immediate session data push for %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1B8C99550](v80, -1, -1);
        MEMORY[0x1B8C99550](v79, -1, -1);

        v81 = *(v0 + 4200);
        *(v0 + 4296) = *(v0 + 4184);
        *(v0 + 4312) = v81;
        *(v0 + 4321) = *(v0 + 4209);
        v82 = *(v0 + 4136);
        *(v0 + 4232) = *v270;
        *(v0 + 4248) = v82;
        v83 = *(v0 + 4168);
        *(v0 + 4264) = *(v0 + 4152);
        *(v0 + 4280) = v83;
        sub_1B6A0B878(v0 + 4232);
        v84 = *(v1 + 80);
        *(v0 + 992) = *(v1 + 64);
        *(v0 + 1008) = v84;
        v85 = *(v1 + 112);
        *(v0 + 1024) = *(v1 + 96);
        *(v0 + 1040) = v85;
        v86 = *(v1 + 16);
        *(v0 + 928) = *v1;
        *(v0 + 944) = v86;
        v87 = *(v1 + 48);
        *(v0 + 960) = *(v1 + 32);
        *(v0 + 976) = v87;
        *(v0 + 1056) = v277;
        *(v0 + 1064) = v278;
        *(v0 + 1072) = 256;
      }

      else
      {
        v76 = v0 + 1080;

        v95 = *(v0 + 4200);
        *(v0 + 3624) = *(v0 + 4184);
        *(v0 + 3640) = v95;
        *(v0 + 3649) = *(v0 + 4209);
        v96 = *(v0 + 4136);
        *(v0 + 3560) = *v270;
        *(v0 + 3576) = v96;
        v97 = *(v0 + 4168);
        *(v0 + 3592) = *(v0 + 4152);
        *(v0 + 3608) = v97;
        sub_1B6A0B878(v0 + 3560);
        v98 = *(v1 + 80);
        *(v0 + 1144) = *(v1 + 64);
        *(v0 + 1160) = v98;
        v99 = *(v1 + 112);
        *(v0 + 1176) = *(v1 + 96);
        *(v0 + 1192) = v99;
        v100 = *(v1 + 16);
        *(v0 + 1080) = *v1;
        *(v0 + 1096) = v100;
        v101 = *(v1 + 48);
        *(v0 + 1112) = *(v1 + 32);
        *(v0 + 1128) = v101;
        *(v0 + 1208) = v3;
        *(v0 + 1216) = v34;
        *(v0 + 1224) = 256;
      }

      goto LABEL_27;
    }

    sub_1B6980478(*(v0 + 5728) + *(v0 + 5736), *(v0 + 5624), type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v37 = (v0 + 472);
      v3 = (v0 + 5104);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(*(v0 + 5624), type metadata accessor for SessionManager.SessionState);
      }

      v1 = *(v0 + 5744);
      v38 = *(v0 + 5728);
      v39 = *(v0 + 5600);
      v40 = *(v0 + 5592);
      v272 = *(v0 + 5568);
      v266 = *(v0 + 5608);
      v268 = *(v0 + 5560);
      sub_1B69E1028(v0 + 5024, v0 + 4944);
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = *(v0 + 2680);
      *(v0 + 536) = *(v0 + 2664);
      *(v0 + 552) = v42;
      v43 = *(v0 + 2712);
      *(v0 + 568) = *(v0 + 2696);
      *(v0 + 584) = v43;
      v44 = *(v0 + 2616);
      *v37 = *v275;
      *(v0 + 488) = v44;
      v45 = *(v0 + 2648);
      *(v0 + 504) = *(v0 + 2632);
      *(v0 + 520) = v45;
      *(v0 + 600) = v276;
      *(v0 + 608) = v278;
      *(v0 + 616) = 256;
      v34 = swift_allocObject();
      v46 = *(v0 + 584);
      *(v34 + 120) = *(v0 + 568);
      *(v34 + 136) = v46;
      *(v34 + 152) = *(v0 + 600);
      v47 = *(v0 + 520);
      *(v34 + 56) = *(v0 + 504);
      *(v34 + 72) = v47;
      v48 = *(v0 + 552);
      *(v34 + 88) = *(v0 + 536);
      *(v34 + 104) = v48;
      v49 = *(v0 + 488);
      *(v34 + 24) = *v37;
      *(v34 + 16) = v41;
      *(v34 + 168) = *(v0 + 616);
      *(v34 + 40) = v49;
      *(v34 + 176) = v40;
      *(v34 + 184) = v39;
      *(v34 + 192) = v266;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1B6A0B7B4;
      *(v50 + 24) = v34;
      v51 = *(v0 + 4960);
      *v3 = *(v0 + 4944);
      *(v0 + 5120) = v51;
      *(v0 + 5136) = *(v0 + 4976);
      swift_beginAccess();
      *(v0 + 4872) = sub_1B6A0BE38;
      *(v0 + 4880) = v50;
      v52 = *(v0 + 5120);
      *(v0 + 4888) = *v3;
      *(v0 + 4904) = v52;
      *(v0 + 4920) = *(v0 + 5136);
      sub_1B6980478(v0 + 472, v0 + 624, sub_1B6A0B7C0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v38 + v1);
      *(v0 + 5520) = v54;
      *(v38 + v1) = 0x8000000000000000;
      v55 = sub_1B6993940(v268, v272);
      v57 = *(v54 + 16);
      v58 = (v56 & 1) == 0;
      v59 = __OFADD__(v57, v58);
      v60 = v57 + v58;
      if (!v59)
      {
        v61 = v56;
        if (*(v54 + 24) >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v264 = v55;
            sub_1B69DEDC0();
            v55 = v264;
          }
        }

        else
        {
          v62 = *(v0 + 5568);
          v3 = *(v0 + 5560);
          sub_1B69DBE84(v60, isUniquelyReferenced_nonNull_native);
          v55 = sub_1B6993940(v3, v62);
          if ((v61 & 1) != (v63 & 1))
          {
LABEL_10:

            return sub_1B6ABA190();
          }
        }

        v93 = *(v0 + 5520);
        if (v61)
        {
          sub_1B6A0B03C(v0 + 4872, v93[7] + 56 * v55, sub_1B6A0AAAC);
          v94 = (v0 + 2600);
LABEL_30:
          *(*(v0 + 5728) + *(v0 + 5744)) = v93;
          swift_endAccess();
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v112 = sub_1B6AB8F90();
          __swift_project_value_buffer(v112, qword_1EDBCFD80);

          v113 = sub_1B6AB8F80();
          v114 = sub_1B6AB98D0();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = *(v0 + 5568);
            v116 = *(v0 + 5560);
            v117 = swift_slowAlloc();
            v118 = swift_slowAlloc();
            *&v279 = v118;
            *v117 = 136315138;
            *(v117 + 4) = sub_1B698F63C(v116, v115, &v279);
            _os_log_impl(&dword_1B697C000, v113, v114, "Deferred session data push for %s, reason: No active session", v117, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v118);
            MEMORY[0x1B8C99550](v118, -1, -1);
            MEMORY[0x1B8C99550](v117, -1, -1);

            sub_1B6A0AFE8(v0 + 5024);
            v119 = *(v0 + 4200);
            *(v0 + 3512) = *(v0 + 4184);
            *(v0 + 3528) = v119;
            *(v0 + 3537) = *(v0 + 4209);
            v120 = *(v0 + 4136);
            *(v0 + 3448) = *v270;
            *(v0 + 3464) = v120;
            v121 = *(v0 + 4168);
            *(v0 + 3480) = *(v0 + 4152);
            *(v0 + 3496) = v121;
            sub_1B6A0B878(v0 + 3448);
            v122 = v94[5];
            *(v0 + 384) = v94[4];
            *(v0 + 400) = v122;
            v123 = v94[7];
            *(v0 + 416) = v94[6];
            *(v0 + 432) = v123;
            v124 = v94[1];
            *(v0 + 320) = *v94;
            *(v0 + 336) = v124;
            v125 = v94[3];
            *(v0 + 352) = v94[2];
            *(v0 + 368) = v125;
            *(v0 + 448) = v276;
            *(v0 + 456) = v278;
            *(v0 + 464) = 256;
            v102 = v0 + 320;
          }

          else
          {

            sub_1B6A0AFE8(v0 + 5024);
            v126 = *(v0 + 4200);
            *(v0 + 3960) = *(v0 + 4184);
            *(v0 + 3976) = v126;
            *(v0 + 3985) = *(v0 + 4209);
            v127 = *(v0 + 4136);
            *(v0 + 3896) = *v270;
            *(v0 + 3912) = v127;
            v128 = *(v0 + 4168);
            *(v0 + 3928) = *(v0 + 4152);
            *(v0 + 3944) = v128;
            sub_1B6A0B878(v0 + 3896);
            v129 = v94[5];
            *(v0 + 840) = v94[4];
            *(v0 + 856) = v129;
            v130 = v94[7];
            *(v0 + 872) = v94[6];
            *(v0 + 888) = v130;
            v131 = v94[1];
            *(v0 + 776) = *v94;
            *(v0 + 792) = v131;
            v132 = v94[3];
            *(v0 + 808) = v94[2];
            *(v0 + 824) = v132;
            *(v0 + 904) = v276;
            *(v0 + 912) = v278;
            *(v0 + 920) = 256;
            v102 = v0 + 776;
          }

          goto LABEL_35;
        }

        v103 = *(v0 + 5568);
        v104 = *(v0 + 5560);
        v93[(v55 >> 6) + 8] |= 1 << v55;
        v105 = (v93[6] + 16 * v55);
        *v105 = v104;
        v105[1] = v103;
        v106 = v93[7] + 56 * v55;
        v107 = *(v0 + 4872);
        v108 = *(v0 + 4888);
        v109 = *(v0 + 4904);
        *(v106 + 48) = *(v0 + 4920);
        *(v106 + 16) = v108;
        *(v106 + 32) = v109;
        *v106 = v107;
        v110 = v93[2];
        v59 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        v94 = (v0 + 2600);
        if (!v59)
        {
          v93[2] = v111;

          goto LABEL_30;
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_49:
        v158 = sub_1B6AB8F90();
        __swift_project_value_buffer(v158, qword_1EDBCFD80);

        v159 = sub_1B6AB8F80();
        v160 = sub_1B6AB98D0();

        if (os_log_type_enabled(v159, v160))
        {
          v76 = v0 + 2144;
          v161 = *(v0 + 5568);
          v162 = *(v0 + 5560);
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v279 = v164;
          *v163 = 136315138;
          *(v163 + 4) = sub_1B698F63C(v162, v161, &v279);
          _os_log_impl(&dword_1B697C000, v159, v160, "Pinned session data push for %s, reason: First value this session", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          MEMORY[0x1B8C99550](v164, -1, -1);
          MEMORY[0x1B8C99550](v163, -1, -1);

          sub_1B6A0AFE8(v0 + 5024);
          v165 = *(v0 + 4200);
          *(v0 + 4408) = *(v0 + 4184);
          *(v0 + 4424) = v165;
          *(v0 + 4433) = *(v0 + 4209);
          v166 = *(v0 + 4136);
          *(v0 + 4344) = *v270;
          *(v0 + 4360) = v166;
          v167 = *(v0 + 4168);
          *(v0 + 4376) = *(v0 + 4152);
          *(v0 + 4392) = v167;
          sub_1B6A0B878(v0 + 4344);
          v168 = v94[5];
          *(v0 + 2208) = v94[4];
          *(v0 + 2224) = v168;
          v169 = v94[7];
          *(v0 + 2240) = v94[6];
          *(v0 + 2256) = v169;
          v170 = v94[1];
          *(v0 + 2144) = *v94;
          *(v0 + 2160) = v170;
          v171 = v94[3];
          *(v0 + 2176) = v94[2];
          *(v0 + 2192) = v171;
          *(v0 + 2272) = v276;
          *(v0 + 2280) = v278;
          *(v0 + 2288) = 256;
        }

        else
        {
          v76 = v0 + 2448;

          sub_1B6A0AFE8(v0 + 5024);
          v194 = *(v0 + 4200);
          *(v0 + 3176) = *(v0 + 4184);
          *(v0 + 3192) = v194;
          *(v0 + 3201) = *(v0 + 4209);
          v195 = *(v0 + 4136);
          *(v0 + 3112) = *v270;
          *(v0 + 3128) = v195;
          v196 = *(v0 + 4168);
          *(v0 + 3144) = *(v0 + 4152);
          *(v0 + 3160) = v196;
          sub_1B6A0B878(v0 + 3112);
          v197 = v94[5];
          *(v0 + 2512) = v94[4];
          *(v0 + 2528) = v197;
          v198 = v94[7];
          *(v0 + 2544) = v94[6];
          *(v0 + 2560) = v198;
          v199 = v94[1];
          *(v0 + 2448) = *v94;
          *(v0 + 2464) = v199;
          v200 = v94[3];
          *(v0 + 2480) = v94[2];
          *(v0 + 2496) = v200;
          *(v0 + 2576) = v3;
          *(v0 + 2584) = v278;
          *(v0 + 2592) = 256;
        }

LABEL_27:
        v102 = v76;
LABEL_35:
        sub_1B6A0BDA4(v102, sub_1B6A0B7C0);
        v133 = *(v0 + 5704);
        v134 = *(v0 + 5696);
        sub_1B69822F4(&qword_1EB95B558, sub_1B6A0B634, MEMORY[0x1E69E88B0]);
        v135 = swift_task_alloc();
        *(v0 + 5760) = v135;
        *v135 = v0;
        v135[1] = sub_1B69FEBB4;
        v136 = v0 + 3336;
        v137 = v134;
        v138 = v133;

        return MEMORY[0x1EEE6D8D0](v136, v137, v138);
      }

      goto LABEL_77;
    }

    v88 = *(v0 + 5752);
    v89 = *(v0 + 5728);

    swift_beginAccess();
    v90 = *(v89 + v88);
    if (*(v90 + 16) && (v91 = sub_1B6993940(*(v0 + 5560), *(v0 + 5568)), (v92 & 1) != 0))
    {
      sub_1B69E1028(*(v90 + 56) + 40 * v91, v0 + 5264);
    }

    else
    {
      *(v0 + 5296) = 0;
      *(v0 + 5264) = 0u;
      *(v0 + 5280) = 0u;
    }

    swift_endAccess();
    v139 = *(v0 + 5288);
    sub_1B6A0A674(v0 + 5264, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
    v140 = *(v0 + 5752);
    v141 = *(v0 + 5728);
    if (!v139)
    {
      v148 = *(v0 + 5608);
      v149 = *(v0 + 5600);
      v150 = *(v0 + 5592);
      v151 = *(v0 + 5568);
      v152 = *(v0 + 5560);
      swift_beginAccess();
      sub_1B69E1028(v0 + 5024, v0 + 5224);

      v153 = swift_isUniquelyReferenced_nonNull_native();
      *&v279 = *(v141 + v140);
      *(v141 + v140) = 0x8000000000000000;
      sub_1B69E7060((v0 + 5224), v152, v151, v153);

      *(v141 + v140) = v279;
      swift_endAccess();
      v94 = (v0 + 2600);
      v3 = v276;
      v154 = *(v0 + 2680);
      *(v0 + 80) = *(v0 + 2664);
      *(v0 + 96) = v154;
      v155 = *(v0 + 2712);
      *(v0 + 112) = *(v0 + 2696);
      *(v0 + 128) = v155;
      v156 = *(v0 + 2616);
      *(v0 + 16) = *v275;
      *(v0 + 32) = v156;
      v157 = *(v0 + 2648);
      *(v0 + 48) = *(v0 + 2632);
      *(v0 + 64) = v157;
      *(v0 + 144) = v276;
      *(v0 + 152) = v278;
      *(v0 + 160) = 256;
      sub_1B6AA099C((v0 + 16), &unk_1F2E73E08, v150, v149, v148);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_81;
    }

    swift_beginAccess();
    v142 = *(v141 + v140);
    if (*(v142 + 16) && (v143 = sub_1B6993940(*(v0 + 5560), *(v0 + 5568)), (v144 & 1) != 0))
    {
      sub_1B69E1028(*(v142 + 56) + 40 * v143, v0 + 4984);
    }

    else
    {
      *(v0 + 5016) = 0;
      *(v0 + 4984) = 0u;
      *(v0 + 5000) = 0u;
    }

    swift_endAccess();
    sub_1B69E1028(v0 + 5024, v0 + 5304);
    sub_1B6A0AB30(v0 + 4984, v0 + 4680);
    sub_1B6A0AB30(v0 + 5304, v0 + 4720);
    if (*(v0 + 4704))
    {
      sub_1B6A0AB30(v0 + 4680, v0 + 5144);
      if (*(v0 + 4744))
      {
        v145 = *(v0 + 4736);
        *(v0 + 5184) = *(v0 + 4720);
        *(v0 + 5200) = v145;
        *(v0 + 5216) = *(v0 + 4752);
        v146 = MEMORY[0x1B8C98450](v0 + 5144, v0 + 5184);
        sub_1B6A0AFE8(v0 + 5184);
        v147 = MEMORY[0x1E69E69B8];
        sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
        sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0, v147);
        sub_1B6A0AFE8(v0 + 5144);
        sub_1B6A0A674(v0 + 4680, &qword_1EB95ADF0, v147);
        if ((v146 & 1) == 0)
        {
LABEL_60:
          v94 = *(v0 + 5744);
          v202 = *(v0 + 5728);
          v203 = *(v0 + 5600);
          v3 = *(v0 + 5592);
          v273 = *(v0 + 5568);
          v267 = *(v0 + 5608);
          v269 = *(v0 + 5560);
          sub_1B69E1028(v0 + 5024, v0 + 4776);
          v204 = swift_allocObject();
          swift_weakInit();
          v205 = *(v0 + 2680);
          *(v0 + 2056) = *(v0 + 2664);
          *(v0 + 2072) = v205;
          v206 = *(v0 + 2712);
          *(v0 + 2088) = *(v0 + 2696);
          *(v0 + 2104) = v206;
          v207 = *(v0 + 2616);
          *(v0 + 1992) = *v275;
          *(v0 + 2008) = v207;
          v208 = *(v0 + 2648);
          *(v0 + 2024) = *(v0 + 2632);
          *(v0 + 2040) = v208;
          *(v0 + 2120) = v276;
          *(v0 + 2128) = v278;
          *(v0 + 2136) = 256;
          v209 = swift_allocObject();
          v210 = *(v0 + 2104);
          *(v209 + 120) = *(v0 + 2088);
          *(v209 + 136) = v210;
          *(v209 + 152) = *(v0 + 2120);
          v211 = *(v0 + 2040);
          *(v209 + 56) = *(v0 + 2024);
          *(v209 + 72) = v211;
          v212 = *(v0 + 2072);
          *(v209 + 88) = *(v0 + 2056);
          *(v209 + 104) = v212;
          v213 = *(v0 + 2008);
          *(v209 + 24) = *(v0 + 1992);
          *(v209 + 16) = v204;
          *(v209 + 168) = *(v0 + 2136);
          *(v209 + 40) = v213;
          *(v209 + 176) = v3;
          *(v209 + 184) = v203;
          *(v209 + 192) = v267;
          v214 = swift_allocObject();
          *(v214 + 16) = sub_1B6A0B934;
          *(v214 + 24) = v209;
          v215 = *(v0 + 4792);
          *(v0 + 5064) = *(v0 + 4776);
          *(v0 + 5080) = v215;
          *(v0 + 5096) = *(v0 + 4808);
          swift_beginAccess();
          *(v0 + 4816) = sub_1B6A0BE38;
          *(v0 + 4824) = v214;
          v216 = *(v0 + 5080);
          *(v0 + 4832) = *(v0 + 5064);
          *(v0 + 4848) = v216;
          *(v0 + 4864) = *(v0 + 5096);

          sub_1B6980478(v0 + 1992, v0 + 1840, sub_1B6A0B7C0);
          v217 = swift_isUniquelyReferenced_nonNull_native();
          v218 = *(v94 + v202);
          *(v0 + 5512) = v218;
          *(v94 + v202) = 0x8000000000000000;
          v136 = sub_1B6993940(v269, v273);
          v219 = *(v218 + 16);
          v220 = (v137 & 1) == 0;
          v59 = __OFADD__(v219, v220);
          v221 = v219 + v220;
          if (!v59)
          {
            v222 = v137;
            if (*(v218 + 24) >= v221)
            {
              if (!v217)
              {
                v265 = v136;
                sub_1B69DEDC0();
                v136 = v265;
              }
            }

            else
            {
              v223 = *(v0 + 5568);
              v224 = *(v0 + 5560);
              sub_1B69DBE84(v221, v217);
              v136 = sub_1B6993940(v224, v223);
              if ((v222 & 1) != (v137 & 1))
              {
                goto LABEL_10;
              }
            }

            v225 = *(v0 + 5512);
            if (v222)
            {
              sub_1B6A0B03C(v0 + 4816, v225[7] + 56 * v136, sub_1B6A0AAAC);
              v226 = (v0 + 2600);
            }

            else
            {
              v227 = *(v0 + 5568);
              v228 = *(v0 + 5560);
              v225[(v136 >> 6) + 8] |= 1 << v136;
              v229 = (v225[6] + 16 * v136);
              *v229 = v228;
              v229[1] = v227;
              v230 = v225[7] + 56 * v136;
              v231 = *(v0 + 4816);
              v232 = *(v0 + 4832);
              v233 = *(v0 + 4848);
              *(v230 + 48) = *(v0 + 4864);
              *(v230 + 16) = v232;
              *(v230 + 32) = v233;
              *v230 = v231;
              v234 = v225[2];
              v59 = __OFADD__(v234, 1);
              v235 = v234 + 1;
              v226 = (v0 + 2600);
              if (v59)
              {
                __break(1u);
                return MEMORY[0x1EEE6D8D0](v136, v137, v138);
              }

              v225[2] = v235;
            }

            *(*(v0 + 5728) + *(v0 + 5744)) = v225;
            swift_endAccess();
            if (qword_1EDBCAA70 != -1)
            {
              swift_once();
            }

            v236 = sub_1B6AB8F90();
            __swift_project_value_buffer(v236, qword_1EDBCFD80);

            v237 = sub_1B6AB8F80();
            v238 = sub_1B6AB98D0();

            if (os_log_type_enabled(v237, v238))
            {
              v76 = v0 + 1536;
              v239 = *(v0 + 5568);
              v240 = *(v0 + 5560);
              v241 = swift_slowAlloc();
              v242 = swift_slowAlloc();
              *&v279 = v242;
              *v241 = 136315138;
              *(v241 + 4) = sub_1B698F63C(v240, v239, &v279);
              _os_log_impl(&dword_1B697C000, v237, v238, "Deferred session data push for %s, reason: Mid-session change", v241, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v242);
              MEMORY[0x1B8C99550](v242, -1, -1);
              MEMORY[0x1B8C99550](v241, -1, -1);

              sub_1B6A0AFE8(v0 + 5024);
              v243 = *(v0 + 4200);
              *(v0 + 3736) = *(v0 + 4184);
              *(v0 + 3752) = v243;
              *(v0 + 3761) = *(v0 + 4209);
              v244 = *(v0 + 4136);
              *(v0 + 3672) = *v270;
              *(v0 + 3688) = v244;
              v245 = *(v0 + 4168);
              *(v0 + 3704) = *(v0 + 4152);
              *(v0 + 3720) = v245;
              sub_1B6A0B878(v0 + 3672);
              v246 = v226[5];
              *(v0 + 1600) = v226[4];
              *(v0 + 1616) = v246;
              v247 = v226[7];
              *(v0 + 1632) = v226[6];
              *(v0 + 1648) = v247;
              v248 = v226[1];
              *(v0 + 1536) = *v226;
              *(v0 + 1552) = v248;
              v249 = v226[3];
              *(v0 + 1568) = v226[2];
              *(v0 + 1584) = v249;
              *(v0 + 1664) = v276;
              *(v0 + 1672) = v278;
              *(v0 + 1680) = 256;
            }

            else
            {
              v76 = v0 + 1688;

              sub_1B6A0AFE8(v0 + 5024);
              v250 = *(v0 + 4200);
              *(v0 + 4072) = *(v0 + 4184);
              *(v0 + 4088) = v250;
              *(v0 + 4097) = *(v0 + 4209);
              v251 = *(v0 + 4136);
              *(v0 + 4008) = *v270;
              *(v0 + 4024) = v251;
              v252 = *(v0 + 4168);
              *(v0 + 4040) = *(v0 + 4152);
              *(v0 + 4056) = v252;
              sub_1B6A0B878(v0 + 4008);
              v253 = v226[5];
              *(v0 + 1752) = v226[4];
              *(v0 + 1768) = v253;
              v254 = v226[7];
              *(v0 + 1784) = v226[6];
              *(v0 + 1800) = v254;
              v255 = v226[1];
              *(v0 + 1688) = *v226;
              *(v0 + 1704) = v255;
              v256 = v226[3];
              *(v0 + 1720) = v226[2];
              *(v0 + 1736) = v256;
              *(v0 + 1816) = v276;
              *(v0 + 1824) = v278;
              *(v0 + 1832) = 256;
            }

            goto LABEL_27;
          }

          goto LABEL_80;
        }

LABEL_53:
        v173 = *(v0 + 5608);
        v174 = *(v0 + 5600);
        v175 = *(v0 + 5592);
        v176 = *(v0 + 2680);
        *(v0 + 232) = *(v0 + 2664);
        *(v0 + 248) = v176;
        v177 = *(v0 + 2712);
        *(v0 + 264) = *(v0 + 2696);
        *(v0 + 280) = v177;
        v178 = *(v0 + 2616);
        *(v0 + 168) = *v275;
        *(v0 + 184) = v178;
        v179 = *(v0 + 2648);
        *(v0 + 200) = *(v0 + 2632);
        *(v0 + 216) = v179;
        *(v0 + 296) = v276;
        *(v0 + 304) = v278;
        *(v0 + 312) = 256;
        sub_1B6AA099C((v0 + 168), &unk_1F2E73E30, v175, v174, v173);
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v180 = sub_1B6AB8F90();
        __swift_project_value_buffer(v180, qword_1EDBCFD80);

        v181 = sub_1B6AB8F80();
        v182 = sub_1B6AB98D0();

        if (os_log_type_enabled(v181, v182))
        {
          v76 = v0 + 1232;
          v183 = *(v0 + 5568);
          v184 = *(v0 + 5560);
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          *&v279 = v186;
          *v185 = 136315138;
          *(v185 + 4) = sub_1B698F63C(v184, v183, &v279);
          _os_log_impl(&dword_1B697C000, v181, v182, "Session data push for %s, reason: Same version this session", v185, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v186);
          MEMORY[0x1B8C99550](v186, -1, -1);
          MEMORY[0x1B8C99550](v185, -1, -1);

          sub_1B6A0AFE8(v0 + 5024);
          v187 = *(v0 + 4200);
          *(v0 + 4520) = *(v0 + 4184);
          *(v0 + 4536) = v187;
          *(v0 + 4545) = *(v0 + 4209);
          v188 = *(v0 + 4136);
          *(v0 + 4456) = *v270;
          *(v0 + 4472) = v188;
          v189 = *(v0 + 4168);
          *(v0 + 4488) = *(v0 + 4152);
          *(v0 + 4504) = v189;
          sub_1B6A0B878(v0 + 4456);
          v190 = *(v0 + 2680);
          *(v0 + 1296) = *(v0 + 2664);
          *(v0 + 1312) = v190;
          v191 = *(v0 + 2712);
          *(v0 + 1328) = *(v0 + 2696);
          *(v0 + 1344) = v191;
          v192 = *(v0 + 2616);
          *(v0 + 1232) = *v275;
          *(v0 + 1248) = v192;
          v193 = *(v0 + 2648);
          *(v0 + 1264) = *(v0 + 2632);
          *(v0 + 1280) = v193;
          *(v0 + 1360) = v276;
          *(v0 + 1368) = v278;
          *(v0 + 1376) = 256;
        }

        else
        {
          v76 = v0 + 1384;

          sub_1B6A0AFE8(v0 + 5024);
          v257 = *(v0 + 4200);
          *(v0 + 3288) = *(v0 + 4184);
          *(v0 + 3304) = v257;
          *(v0 + 3313) = *(v0 + 4209);
          v258 = *(v0 + 4136);
          *(v0 + 3224) = *v270;
          *(v0 + 3240) = v258;
          v259 = *(v0 + 4168);
          *(v0 + 3256) = *(v0 + 4152);
          *(v0 + 3272) = v259;
          sub_1B6A0B878(v0 + 3224);
          v260 = *(v0 + 2680);
          *(v0 + 1448) = *(v0 + 2664);
          *(v0 + 1464) = v260;
          v261 = *(v0 + 2712);
          *(v0 + 1480) = *(v0 + 2696);
          *(v0 + 1496) = v261;
          v262 = *(v0 + 2616);
          *(v0 + 1384) = *v275;
          *(v0 + 1400) = v262;
          v263 = *(v0 + 2648);
          *(v0 + 1416) = *(v0 + 2632);
          *(v0 + 1432) = v263;
          *(v0 + 1512) = v276;
          *(v0 + 1520) = v278;
          *(v0 + 1528) = 256;
        }

        goto LABEL_27;
      }

      v201 = MEMORY[0x1E69E69B8];
      sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
      sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0, v201);
      sub_1B6A0AFE8(v0 + 5144);
    }

    else
    {
      v172 = MEMORY[0x1E69E69B8];
      sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
      sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0, v172);
      if (!*(v0 + 4744))
      {
        sub_1B6A0A674(v0 + 4680, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
        goto LABEL_53;
      }
    }

    sub_1B6A0BDA4(v0 + 4680, sub_1B6A0B0A4);
    goto LABEL_60;
  }

  (*(*(v0 + 5680) + 8))(*(v0 + 5688), *(v0 + 5672));

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1B6A0068C(uint64_t a1)
{
  v2 = sub_1B6ABA0C0();
  v3 = v1[711];
  v4 = v1[710];
  v5 = v1[709];
  if (v2)
  {
    (*(v4 + 8))(v1[711], v1[709]);
  }

  else
  {
    swift_allocError();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B6A007B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1928) = v19;
  *(v8 + 1920) = v18;
  *(v8 + 1904) = v17;
  *(v8 + 1888) = v16;
  *(v8 + 1880) = a8;
  *(v8 + 1872) = a7;
  *(v8 + 1864) = a6;
  *(v8 + 1856) = a5;
  *(v8 + 1848) = a4;
  *(v8 + 1936) = type metadata accessor for SessionManager.SessionState(0);
  *(v8 + 1944) = swift_task_alloc();
  v9 = sub_1B6AB90F0();
  *(v8 + 1952) = v9;
  *(v8 + 1960) = *(v9 - 8);
  *(v8 + 1968) = swift_task_alloc();
  sub_1B6A0ADCC(0, &qword_1EB95B4C0, MEMORY[0x1E69E88B8]);
  *(v8 + 1976) = v10;
  *(v8 + 1984) = swift_task_alloc();
  sub_1B6A0ADCC(0, &qword_1EB95B4D8, MEMORY[0x1E69E88A8]);
  *(v8 + 1992) = v11;
  *(v8 + 2000) = *(v11 - 8);
  *(v8 + 2008) = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  *(v8 + 2016) = swift_initStaticObject();
  *(v8 + 2024) = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor, &protocol conformance descriptor for AnalyticsActor);
  v13 = sub_1B6AB95E0();
  *(v8 + 2032) = v13;
  *(v8 + 2040) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B6A00A00, v13, v12);
}

uint64_t sub_1B6A00A00()
{
  v9 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 2048) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 1864);
    v8 = *(*(v0 + 1856) + 32);
    v2(&v8);
    sub_1B6A0AE90(&qword_1EB95B4E0, &qword_1EB95B4C0, MEMORY[0x1E69E88B8], MEMORY[0x1E69E88C0]);
    sub_1B6AB9790();
    *(v0 + 2056) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    *(v0 + 2064) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v0 + 2072) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    swift_beginAccess();
    *(v0 + 372) = *MEMORY[0x1E69E8020];
    v3 = *(v0 + 2024);
    v4 = *(v0 + 2016);
    sub_1B6A0AE90(&qword_1EB95B4E8, &qword_1EB95B4D8, MEMORY[0x1E69E88A8], MEMORY[0x1E69E88B0]);
    v5 = swift_task_alloc();
    *(v0 + 2080) = v5;
    *v5 = v0;
    v5[1] = sub_1B6A00C60;

    return MEMORY[0x1EEE6D8D0](v0 + 1800, v4, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B6A00C60()
{
  v2 = *v1;

  v3 = *(v2 + 2040);
  v4 = *(v2 + 2032);
  if (v0)
  {
    v5 = sub_1B6A02308;
  }

  else
  {
    v5 = sub_1B6A00D9C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B6A00D9C()
{
  v176 = v0;
  v1 = *(v0 + 1808);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = *(v0 + 1800);
    v3 = *(v0 + 1896);
    *(v0 + 1816) = isUniquelyReferenced_nonNull_native;
    *(v0 + 1824) = v1;
    sub_1B6A0B6F8(0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    sub_1B6A0AED4(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54, &type metadata for EssentialUserData);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v4 = sub_1B6ABA330();
    v6 = v5;

    if (!v3)
    {
      v38 = *(v0 + 1928);
      v39 = *(v0 + 1920);
      v40 = *(v0 + 1912);
      v41 = *(v0 + 1888);
      *(v0 + 1048) = *(v0 + 1880);
      *(v0 + 1056) = v41;
      *(v0 + 1064) = isUniquelyReferenced_nonNull_native;
      *(v0 + 1072) = v1;
      *(v0 + 1080) = v4;
      *(v0 + 1088) = v6;
      *(v0 + 1096) = 0;
      sub_1B6AA1014((v0 + 1048), &unk_1F2E73E58, v40, v39, v38);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_66;
    }

    v172 = v4;
    v7 = *(v0 + 372);
    v8 = *(v0 + 2048);
    v9 = *(v0 + 1968);
    v10 = *(v0 + 1960);
    v11 = *(v0 + 1952);
    (*(v0 + 1896))(v0 + 1816);
    v12 = *(*(v8 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v9 = v12;
    (*(v10 + 104))(v9, v7, v11);
    v13 = v12;
    LOBYTE(v12) = sub_1B6AB9110();
    v14 = *(v10 + 8);
    v4 = v10 + 8;
    v14(v9, v11);
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
LABEL_17:
      v42 = sub_1B6AB8F90();
      __swift_project_value_buffer(v42, qword_1EDBCFD80);

      v43 = sub_1B6AB8F80();
      v44 = sub_1B6AB98D0();

      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 1888);
      v47 = *(v0 + 1880);
      if (v45)
      {
        v174 = v6;
        v48 = v4;
        v49 = isUniquelyReferenced_nonNull_native;
        v50 = swift_slowAlloc();
        v51 = v1;
        v52 = swift_slowAlloc();
        v175 = v52;
        *v50 = 136315138;
        *(v50 + 4) = sub_1B698F63C(v47, v46, &v175);
        _os_log_impl(&dword_1B697C000, v43, v44, "Immediate session data push for %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1B8C99550](v52, -1, -1);
        MEMORY[0x1B8C99550](v50, -1, -1);

        *(v0 + 1160) = v47;
        *(v0 + 1168) = v46;
        *(v0 + 1176) = v49;
        *(v0 + 1184) = v51;
        *(v0 + 1192) = v48;
        *(v0 + 1200) = v174;
        *(v0 + 1208) = 0;
        v53 = v0 + 1160;
      }

      else
      {

        *(v0 + 432) = v47;
        *(v0 + 440) = v46;
        *(v0 + 448) = isUniquelyReferenced_nonNull_native;
        *(v0 + 456) = v1;
        *(v0 + 464) = v4;
        *(v0 + 472) = v6;
        *(v0 + 480) = 0;
        v53 = v0 + 432;
      }

LABEL_78:
      sub_1B6A0BDA4(v53, sub_1B6A0AF30);
      v155 = *(v0 + 2024);
      v156 = *(v0 + 2016);
      sub_1B6A0AE90(&qword_1EB95B4E8, &qword_1EB95B4D8, MEMORY[0x1E69E88A8], MEMORY[0x1E69E88B0]);
      v157 = swift_task_alloc();
      *(v0 + 2080) = v157;
      *v157 = v0;
      v157[1] = sub_1B6A00C60;
      v125 = v0 + 1800;
      v126 = v156;
      v127 = v155;

      return MEMORY[0x1EEE6D8D0](v125, v126, v127);
    }

    sub_1B6980478(*(v0 + 2048) + *(v0 + 2056), *(v0 + 1944), type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v173 = v6;
    if (EnumCaseMultiPayload)
    {
      v166 = isUniquelyReferenced_nonNull_native;
      v169 = v1;
      v16 = (v0 + 1472);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(*(v0 + 1944), type metadata accessor for SessionManager.SessionState);
      }

      v6 = *(v0 + 2064);
      v17 = *(v0 + 2048);
      v159 = *(v0 + 1920);
      v161 = *(v0 + 1928);
      v158 = *(v0 + 1912);
      v18 = *(v0 + 1888);
      v19 = *(v0 + 1880);
      v163 = v19;
      sub_1B69E1028(v0 + 1592, v0 + 112);
      v20 = swift_allocObject();
      swift_weakInit();
      *(v0 + 488) = v19;
      *(v0 + 496) = v18;
      *(v0 + 504) = v166;
      *(v0 + 512) = v169;
      *(v0 + 520) = v172;
      *(v0 + 528) = v173;
      *(v0 + 536) = 0;
      v4 = swift_allocObject();
      *(v4 + 16) = v20;
      v21 = *(v0 + 504);
      *(v4 + 24) = *(v0 + 488);
      *(v4 + 40) = v21;
      *(v4 + 56) = *(v0 + 520);
      *(v4 + 72) = *(v0 + 536);
      *(v4 + 80) = v158;
      *(v4 + 88) = v159;
      *(v4 + 96) = v161;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_1B6A0AF24;
      *(v1 + 24) = v4;
      v22 = *(v0 + 128);
      *v16 = *(v0 + 112);
      *(v0 + 1488) = v22;
      *(v0 + 1504) = *(v0 + 144);
      swift_beginAccess();
      *(v0 + 264) = sub_1B69BDB14;
      *(v0 + 272) = v1;
      v23 = *(v0 + 1488);
      *(v0 + 280) = *v16;
      *(v0 + 296) = v23;
      *(v0 + 312) = *(v0 + 1504);
      sub_1B6980478(v0 + 488, v0 + 768, sub_1B6A0AF30);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v17 + v6);
      *(v0 + 1832) = v24;
      *(v17 + v6) = 0x8000000000000000;
      v25 = sub_1B6993940(v163, v18);
      v27 = *(v24 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (!v29)
      {
        v31 = v26;
        if (*(v24 + 24) >= v30)
        {
          v35 = v169;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = v25;
            sub_1B69DEDC0();
            v25 = v16;
          }
        }

        else
        {
          v32 = *(v0 + 1888);
          v33 = *(v0 + 1880);
          sub_1B69DBE84(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_1B6993940(v33, v32);
          v35 = v169;
          if ((v31 & 1) != (v34 & 1))
          {
LABEL_10:

            return sub_1B6ABA190();
          }
        }

        v59 = *(v0 + 1832);
        if (v31)
        {
          sub_1B6A0B03C(v0 + 264, v59[7] + 56 * v25, sub_1B6A0AAAC);
LABEL_29:
          *(*(v0 + 2048) + *(v0 + 2064)) = v59;
          swift_endAccess();
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v69 = sub_1B6AB8F90();
          __swift_project_value_buffer(v69, qword_1EDBCFD80);

          v70 = sub_1B6AB8F80();
          v71 = sub_1B6AB98D0();

          v72 = os_log_type_enabled(v70, v71);
          v73 = *(v0 + 1888);
          v74 = *(v0 + 1880);
          if (v72)
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v175 = v76;
            *v75 = 136315138;
            *(v75 + 4) = sub_1B698F63C(v74, v73, &v175);
            _os_log_impl(&dword_1B697C000, v70, v71, "Deferred session data push for %s, reason: No active session", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v76);
            MEMORY[0x1B8C99550](v76, -1, -1);
            MEMORY[0x1B8C99550](v75, -1, -1);

            sub_1B6A0AFE8(v0 + 1592);

            *(v0 + 936) = v74;
            *(v0 + 944) = v73;
            *(v0 + 952) = v166;
            *(v0 + 960) = v35;
            *(v0 + 968) = v172;
            *(v0 + 976) = v173;
            *(v0 + 984) = 0;
            v53 = v0 + 936;
          }

          else
          {

            sub_1B6A0AFE8(v0 + 1592);

            *(v0 + 880) = v74;
            *(v0 + 888) = v73;
            *(v0 + 896) = v166;
            *(v0 + 904) = v35;
            *(v0 + 912) = v172;
            *(v0 + 920) = v173;
            *(v0 + 928) = 0;
            v53 = v0 + 880;
          }

          goto LABEL_78;
        }

        v60 = *(v0 + 1888);
        v61 = *(v0 + 1880);
        v59[(v25 >> 6) + 8] |= 1 << v25;
        v62 = (v59[6] + 16 * v25);
        *v62 = v61;
        v62[1] = v60;
        v63 = v59[7] + 56 * v25;
        v64 = *(v0 + 264);
        v65 = *(v0 + 280);
        v66 = *(v0 + 296);
        *(v63 + 48) = *(v0 + 312);
        *(v63 + 16) = v65;
        *(v63 + 32) = v66;
        *v63 = v64;
        v67 = v59[2];
        v29 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (!v29)
        {
          v59[2] = v68;

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    v54 = *(v0 + 2072);
    v55 = *(v0 + 2048);

    swift_beginAccess();
    v56 = *(v55 + v54);
    if (*(v56 + 16) && (v57 = sub_1B6993940(*(v0 + 1880), *(v0 + 1888)), (v58 & 1) != 0))
    {
      sub_1B69E1028(*(v56 + 56) + 40 * v57, v0 + 1432);
    }

    else
    {
      *(v0 + 1464) = 0;
      *(v0 + 1432) = 0u;
      *(v0 + 1448) = 0u;
    }

    swift_endAccess();
    v77 = *(v0 + 1456);
    sub_1B6A0A674(v0 + 1432, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
    v78 = *(v0 + 2072);
    v79 = *(v0 + 2048);
    if (!v77)
    {
      v167 = *(v0 + 1920);
      v170 = *(v0 + 1928);
      v86 = *(v0 + 1912);
      v87 = *(v0 + 1888);
      v88 = v1;
      v89 = *(v0 + 1880);
      swift_beginAccess();
      sub_1B69E1028(v0 + 1592, v0 + 1312);

      v90 = swift_isUniquelyReferenced_nonNull_native();
      v175 = *(v79 + v78);
      *(v79 + v78) = 0x8000000000000000;
      sub_1B69E7060((v0 + 1312), v89, v87, v90);

      *(v79 + v78) = v175;
      swift_endAccess();
      *(v0 + 320) = v89;
      *(v0 + 328) = v87;
      v16 = v88;
      v1 = isUniquelyReferenced_nonNull_native;
      *(v0 + 336) = isUniquelyReferenced_nonNull_native;
      *(v0 + 344) = v88;
      *(v0 + 352) = v172;
      *(v0 + 360) = v6;
      *(v0 + 368) = 0;
      sub_1B6AA1014((v0 + 320), &unk_1F2E73E80, v86, v167, v170);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_69;
    }

    swift_beginAccess();
    v80 = *(v79 + v78);
    if (*(v80 + 16) && (v81 = sub_1B6993940(*(v0 + 1880), *(v0 + 1888)), (v82 & 1) != 0))
    {
      sub_1B69E1028(*(v80 + 56) + 40 * v81, v0 + 1272);
    }

    else
    {
      *(v0 + 1304) = 0;
      *(v0 + 1272) = 0u;
      *(v0 + 1288) = 0u;
    }

    swift_endAccess();
    sub_1B69E1028(v0 + 1592, v0 + 1352);
    sub_1B6A0AB30(v0 + 1272, v0 + 16);
    sub_1B6A0AB30(v0 + 1352, v0 + 56);
    if (*(v0 + 40))
    {
      sub_1B6A0AB30(v0 + 16, v0 + 1512);
      if (*(v0 + 80))
      {
        v83 = *(v0 + 72);
        *(v0 + 1552) = *(v0 + 56);
        *(v0 + 1568) = v83;
        *(v0 + 1584) = *(v0 + 88);
        v84 = MEMORY[0x1B8C98450](v0 + 1512, v0 + 1552);
        sub_1B6A0AFE8(v0 + 1552);
        v85 = MEMORY[0x1E69E69B8];
        sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
        sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0, v85);
        sub_1B6A0AFE8(v0 + 1512);
        sub_1B6A0A674(v0 + 16, &qword_1EB95ADF0, v85);
        if ((v84 & 1) == 0)
        {
LABEL_56:
          v16 = (v0 + 1392);
          v114 = v1;
          v1 = *(v0 + 2048);
          v164 = *(v0 + 1928);
          v165 = *(v0 + 2064);
          v160 = *(v0 + 1912);
          v162 = *(v0 + 1920);
          v115 = *(v0 + 1888);
          v116 = *(v0 + 1880);
          sub_1B69E1028(v0 + 1592, v0 + 224);
          v117 = swift_allocObject();
          swift_weakInit();
          *(v0 + 1104) = v116;
          *(v0 + 1112) = v115;
          v168 = isUniquelyReferenced_nonNull_native;
          v171 = v114;
          *(v0 + 1120) = isUniquelyReferenced_nonNull_native;
          *(v0 + 1128) = v114;
          *(v0 + 1136) = v172;
          *(v0 + 1144) = v6;
          *(v0 + 1152) = 0;
          v118 = swift_allocObject();
          *(v118 + 16) = v117;
          v119 = *(v0 + 1120);
          *(v118 + 24) = *(v0 + 1104);
          *(v118 + 40) = v119;
          *(v118 + 56) = *(v0 + 1136);
          *(v118 + 72) = *(v0 + 1152);
          *(v118 + 80) = v160;
          *(v118 + 88) = v162;
          *(v118 + 96) = v164;
          v120 = swift_allocObject();
          *(v120 + 16) = sub_1B6A0B170;
          *(v120 + 24) = v118;
          v121 = *(v0 + 240);
          *(v0 + 1392) = *(v0 + 224);
          *(v0 + 1408) = v121;
          *(v0 + 1424) = *(v0 + 256);
          swift_beginAccess();
          *(v0 + 152) = sub_1B6A0BE38;
          *(v0 + 160) = v120;
          v122 = *(v0 + 1408);
          *(v0 + 168) = *(v0 + 1392);
          *(v0 + 184) = v122;
          *(v0 + 200) = *(v0 + 1424);

          sub_1B6980478(v0 + 1104, v0 + 824, sub_1B6A0AF30);
          v123 = swift_isUniquelyReferenced_nonNull_native();
          v124 = *(v1 + v165);
          *(v0 + 1840) = v124;
          *(v1 + v165) = 0x8000000000000000;
          v125 = sub_1B6993940(v116, v115);
          v128 = *(v124 + 16);
          v129 = (v126 & 1) == 0;
          v29 = __OFADD__(v128, v129);
          v130 = v128 + v129;
          if (v29)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            swift_once();
LABEL_45:
            v91 = sub_1B6AB8F90();
            __swift_project_value_buffer(v91, qword_1EDBCFD80);

            v92 = sub_1B6AB8F80();
            v93 = sub_1B6AB98D0();

            v94 = os_log_type_enabled(v92, v93);
            v95 = *(v0 + 1888);
            v96 = *(v0 + 1880);
            if (v94)
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v175 = v98;
              *v97 = 136315138;
              *(v97 + 4) = sub_1B698F63C(v96, v95, &v175);
              _os_log_impl(&dword_1B697C000, v92, v93, "Pinned session data push for %s, reason: First value this session", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v98);
              MEMORY[0x1B8C99550](v98, -1, -1);
              MEMORY[0x1B8C99550](v97, -1, -1);

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 376) = v96;
              *(v0 + 384) = v95;
              *(v0 + 392) = v1;
              *(v0 + 400) = v16;
              *(v0 + 408) = v172;
              *(v0 + 416) = v173;
              *(v0 + 424) = 0;
              v53 = v0 + 376;
            }

            else
            {

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 1216) = v96;
              *(v0 + 1224) = v95;
              *(v0 + 1232) = v1;
              *(v0 + 1240) = v16;
              *(v0 + 1248) = v172;
              *(v0 + 1256) = v173;
              *(v0 + 1264) = 0;
              v53 = v0 + 1216;
            }

            goto LABEL_78;
          }

          v131 = v126;
          v132 = (v0 + 1840);
          if (*(v124 + 24) >= v130)
          {
            v135 = v171;
            if (!v123)
            {
              v137 = v125;
              sub_1B69DEDC0();
              v125 = v137;
              v136 = *v132;
              if (v131)
              {
                goto LABEL_62;
              }

              goto LABEL_71;
            }
          }

          else
          {
            v133 = *(v0 + 1888);
            v134 = *(v0 + 1880);
            sub_1B69DBE84(v130, v123);
            v125 = sub_1B6993940(v134, v133);
            v135 = v171;
            if ((v131 & 1) != (v126 & 1))
            {
              goto LABEL_10;
            }
          }

          v136 = *v132;
          if (v131)
          {
LABEL_62:
            sub_1B6A0B03C(v0 + 152, v136[7] + 56 * v125, sub_1B6A0AAAC);
LABEL_73:
            *(*(v0 + 2048) + *(v0 + 2064)) = v136;
            swift_endAccess();
            if (qword_1EDBCAA70 != -1)
            {
              swift_once();
            }

            v147 = sub_1B6AB8F90();
            __swift_project_value_buffer(v147, qword_1EDBCFD80);

            v148 = sub_1B6AB8F80();
            v149 = sub_1B6AB98D0();

            v150 = os_log_type_enabled(v148, v149);
            v151 = *(v0 + 1888);
            v152 = *(v0 + 1880);
            if (v150)
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v175 = v154;
              *v153 = 136315138;
              *(v153 + 4) = sub_1B698F63C(v152, v151, &v175);
              _os_log_impl(&dword_1B697C000, v148, v149, "Deferred session data push for %s, reason: Mid-session change", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v154);
              MEMORY[0x1B8C99550](v154, -1, -1);
              MEMORY[0x1B8C99550](v153, -1, -1);

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 656) = v152;
              *(v0 + 664) = v151;
              *(v0 + 672) = v168;
              *(v0 + 680) = v135;
              *(v0 + 688) = v172;
              *(v0 + 696) = v173;
              *(v0 + 704) = 0;
              v53 = v0 + 656;
            }

            else
            {

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 712) = v152;
              *(v0 + 720) = v151;
              *(v0 + 728) = v168;
              *(v0 + 736) = v135;
              *(v0 + 744) = v172;
              *(v0 + 752) = v173;
              *(v0 + 760) = 0;
              v53 = v0 + 712;
            }

            goto LABEL_78;
          }

LABEL_71:
          v138 = *(v0 + 1888);
          v139 = *(v0 + 1880);
          v136[(v125 >> 6) + 8] |= 1 << v125;
          v140 = (v136[6] + 16 * v125);
          *v140 = v139;
          v140[1] = v138;
          v141 = v136[7] + 56 * v125;
          v142 = *(v0 + 152);
          v143 = *(v0 + 168);
          v144 = *(v0 + 184);
          *(v141 + 48) = *(v0 + 200);
          *(v141 + 16) = v143;
          *(v141 + 32) = v144;
          *v141 = v142;
          v145 = v136[2];
          v29 = __OFADD__(v145, 1);
          v146 = v145 + 1;
          if (v29)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8D0](v125, v126, v127);
          }

          v136[2] = v146;

          goto LABEL_73;
        }

LABEL_49:
        v100 = *(v0 + 1928);
        v101 = *(v0 + 1920);
        v102 = *(v0 + 1912);
        v103 = *(v0 + 1888);
        *(v0 + 992) = *(v0 + 1880);
        *(v0 + 1000) = v103;
        *(v0 + 1008) = isUniquelyReferenced_nonNull_native;
        *(v0 + 1016) = v1;
        *(v0 + 1024) = v172;
        *(v0 + 1032) = v6;
        *(v0 + 1040) = 0;
        sub_1B6AA1014((v0 + 992), &unk_1F2E73EA8, v102, v101, v100);
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v104 = sub_1B6AB8F90();
        __swift_project_value_buffer(v104, qword_1EDBCFD80);

        v105 = sub_1B6AB8F80();
        v106 = sub_1B6AB98D0();

        v107 = os_log_type_enabled(v105, v106);
        v108 = *(v0 + 1888);
        v109 = *(v0 + 1880);
        if (v107)
        {
          v110 = swift_slowAlloc();
          v111 = isUniquelyReferenced_nonNull_native;
          v112 = swift_slowAlloc();
          v175 = v112;
          *v110 = 136315138;
          *(v110 + 4) = sub_1B698F63C(v109, v108, &v175);
          _os_log_impl(&dword_1B697C000, v105, v106, "Session data push for %s, reason: Same version this session", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v112);
          MEMORY[0x1B8C99550](v112, -1, -1);
          MEMORY[0x1B8C99550](v110, -1, -1);

          sub_1B6A0AFE8(v0 + 1592);

          *(v0 + 544) = v109;
          *(v0 + 552) = v108;
          *(v0 + 560) = v111;
          *(v0 + 568) = v1;
          *(v0 + 576) = v172;
          *(v0 + 584) = v6;
          *(v0 + 592) = 0;
          v53 = v0 + 544;
        }

        else
        {

          sub_1B6A0AFE8(v0 + 1592);

          *(v0 + 600) = v109;
          *(v0 + 608) = v108;
          *(v0 + 616) = isUniquelyReferenced_nonNull_native;
          *(v0 + 624) = v1;
          *(v0 + 632) = v172;
          *(v0 + 640) = v6;
          *(v0 + 648) = 0;
          v53 = v0 + 600;
        }

        goto LABEL_78;
      }

      v113 = MEMORY[0x1E69E69B8];
      sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
      sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0, v113);
      sub_1B6A0AFE8(v0 + 1512);
    }

    else
    {
      v99 = MEMORY[0x1E69E69B8];
      sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
      sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0, v99);
      if (!*(v0 + 80))
      {
        sub_1B6A0A674(v0 + 16, &qword_1EB95ADF0, MEMORY[0x1E69E69B8]);
        goto LABEL_49;
      }
    }

    sub_1B6A0BDA4(v0 + 16, sub_1B6A0B0A4);
    goto LABEL_56;
  }

  (*(*(v0 + 2000) + 8))(*(v0 + 2008), *(v0 + 1992));

  v37 = *(v0 + 8);

  return v37();
}