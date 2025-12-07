uint64_t sub_1E5C()
{
  v1.n128_f64[0] = sub_EF248();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1EDC(void *a1)
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

uint64_t sub_1F28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1F8C()
{
  v90 = v0;
  v1 = v0[9];
  v2 = sub_F030C();
  v0[10] = v2;
  v3 = *(v2 - 8);
  v0[11] = *(v3 + 64);
  v4 = swift_task_alloc();
  sub_F02DC();
  swift_beginAccess();
  v5 = *(v1 + 160);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;

  v8 = sub_2FF8(v7, sub_28F8, v6);
  v5, v9, v10, v11, v12, v13, v14, v15;

  v16 = v8[2];
  if (v16)
  {
    v17 = sub_9D6B8(v8[2], 0);
    v18 = sub_BD618(&v89, v17 + 4, v16, v8);
    sub_66138(v89);
    if (v18 == v16)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[12] = v17;
  v19 = *(v3 + 8);
  v0[13] = v19;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v4, v2);

  v20 = v17[2];
  v0[15] = v20;
  if (v20)
  {
    v21 = 0;
    while (1)
    {
      v0[16] = v21;
      v22 = v0[12] + 16 * v21;
      v24 = *(v22 + 32);
      v23 = *(v22 + 40);
      swift_beginAccess();

      v25 = sub_51FEC(v24, v23);
      if (v26)
      {
        break;
      }

      swift_endAccess();
      v23, v27, v28, v29, v30, v31, v32, v33;
      v21 = v0[16] + 1;
      if (v21 == v0[15])
      {
        goto LABEL_9;
      }
    }

    v36 = v25;
    v37 = v0[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *(v37 + 160);
    v0[8] = v46;
    *(v37 + 160) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_BC984();
      v46 = v0[8];
    }

    v47 = v0[13];
    v48 = v0[10];
    v49 = v0[9];
    *(*(v46 + 48) + 16 * v36 + 8), v39, v40, v41, v42, v43, v44, v45;
    v50 = *(*(v46 + 56) + 8 * v36);
    v0[17] = v50;
    sub_EE478();
    *(v49 + 160) = v46;
    swift_endAccess();
    v51 = swift_task_alloc();
    sub_F02DC();
    sub_F02BC();
    v53 = v52;
    v47(v51, v48);
    sub_F02BC();
    v55 = v54;

    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v56 = v53 - v55;
    v57 = sub_F06CC();
    sub_3C96C(v57, qword_129B28);

    v58 = sub_F06AC();
    v59 = sub_F0D0C();
    v23, v60, v61, v62, v63, v64, v65, v66;

    if (os_log_type_enabled(v58, v59))
    {
      v67 = v0[9];
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v89 = v69;
      *v68 = 141558787;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      v70 = sub_3E850(v24, v23, &v89);
      v23, v71, v72, v73, v74, v75, v76, v77;
      *(v68 + 14) = v70;
      *(v68 + 22) = 2048;
      *(v68 + 24) = v56;
      *(v68 + 32) = 2048;
      *(v68 + 34) = *(v67 + 120);
      _os_log_impl(&dword_0, v58, v59, "Terminating operation with ID %{private,mask.hash}s - took %f seconds, allowed %f seconds", v68, 0x2Au);
      sub_1EDC(v69);
    }

    else
    {

      v23, v78, v79, v80, v81, v82, v83, v84;
    }

    v85 = v0[9];
    sub_B777C();
    v86 = swift_allocError();
    v88 = v87;
    v0[18] = v86;
    *v87 = *(v85 + 120);
    *(v87 + 8) = v56;
    sub_1F28(v50 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v87 + 16);
    *(v88 + 56) = 0;

    return _swift_task_switch(sub_24B4, v50, 0);
  }

  else
  {
LABEL_9:

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_24B4()
{
  v1 = *(v0 + 72);
  sub_C3D90(*(v0 + 144), 1);

  return _swift_task_switch(sub_2538, v1, 0);
}

uint64_t sub_2538()
{
  v70 = v0;

  while (1)
  {
    v1 = v0[16] + 1;
    if (v1 == v0[15])
    {
      break;
    }

    v0[16] = v1;
    v2 = v0[12] + 16 * v1;
    v4 = *(v2 + 32);
    v3 = *(v2 + 40);
    swift_beginAccess();

    v5 = sub_51FEC(v4, v3);
    if (v6)
    {
      v16 = v5;
      v17 = v0[9];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v17 + 160);
      v0[8] = v26;
      *(v17 + 160) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_BC984();
        v26 = v0[8];
      }

      v27 = v0[13];
      v28 = v0[10];
      v29 = v0[9];
      *(*(v26 + 48) + 16 * v16 + 8), v19, v20, v21, v22, v23, v24, v25;
      v30 = *(*(v26 + 56) + 8 * v16);
      v0[17] = v30;
      sub_EE478();
      *(v29 + 160) = v26;
      swift_endAccess();
      v31 = swift_task_alloc();
      sub_F02DC();
      sub_F02BC();
      v33 = v32;
      v27(v31, v28);
      sub_F02BC();
      v35 = v34;

      if (qword_128F78 != -1)
      {
        swift_once();
      }

      v36 = v33 - v35;
      v37 = sub_F06CC();
      sub_3C96C(v37, qword_129B28);

      v38 = sub_F06AC();
      v39 = sub_F0D0C();
      v3, v40, v41, v42, v43, v44, v45, v46;

      if (os_log_type_enabled(v38, v39))
      {
        v47 = v0[9];
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v69 = v49;
        *v48 = 141558787;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2081;
        v50 = sub_3E850(v4, v3, &v69);
        v3, v51, v52, v53, v54, v55, v56, v57;
        *(v48 + 14) = v50;
        *(v48 + 22) = 2048;
        *(v48 + 24) = v36;
        *(v48 + 32) = 2048;
        *(v48 + 34) = *(v47 + 120);
        _os_log_impl(&dword_0, v38, v39, "Terminating operation with ID %{private,mask.hash}s - took %f seconds, allowed %f seconds", v48, 0x2Au);
        sub_1EDC(v49);
      }

      else
      {

        v3, v58, v59, v60, v61, v62, v63, v64;
      }

      v65 = v0[9];
      sub_B777C();
      v66 = swift_allocError();
      v68 = v67;
      v0[18] = v66;
      *v67 = *(v65 + 120);
      *(v67 + 8) = v36;
      sub_1F28(v30 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v67 + 16);
      *(v68 + 56) = 0;

      return _swift_task_switch(sub_24B4, v30, 0);
    }

    swift_endAccess();
    v3, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2900()
{
  v1[13] = v0;
  v2 = type metadata accessor for TypingIndicator(0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_29C0, v0, 0);
}

uint64_t sub_29C0()
{
  v48 = v0;
  v1 = *(v0 + 104);
  v47 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v2 = *(v1 + 136);

  sub_3178(v3, &v47);
  v5 = v4;
  v2, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(v1 + 136);
  *(v1 + 136) = v5;
  v13, v14, v15, v16, v17, v18, v19, v20;
  v28 = v47;
  *(v0 + 136) = v47;
  v29 = *v28[1].IMDTelephonyServiceSession_opaque;
  *(v0 + 144) = v29;
  if (v29)
  {
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v30 + 80);
    *(v0 + 76) = v34;
    *(v0 + 152) = *(v30 + 72);
    *(v0 + 160) = 0;
    sub_BDE3C(&v28->IMDTelephonyServiceSession_opaque[(v34 + 32) & ~v34], v31);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v35 = *(v32 + 120);
    ObjectType = swift_getObjectType();
    v37 = v31[1];
    v38 = v31[2];
    v39 = v31[3];
    *(v0 + 57) = *(v31 + 57);
    *(v0 + 32) = v38;
    *(v0 + 48) = v39;
    *(v0 + 16) = v37;
    v40 = v31 + *(v33 + 36);
    v41 = *(v40 + 2);
    v42 = *(v40 + 3);
    v46 = *(v35 + 8) + **(v35 + 8);
    v43 = swift_task_alloc();
    *(v0 + 176) = v43;
    *v43 = v0;
    v43[1] = sub_2C44;
    v52 = ObjectType;
    v53 = v35;
    v50 = v41;
    v51 = v42;

    __asm { BRAA            X8, X16 }
  }

  v28, v21, v22, v23, v24, v25, v26, v27;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_2C44()
{
  v1 = *(*v0 + 104);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2D70, v1, 0);
}

uint64_t sub_2D70()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160) + 1;
  sub_EFE48(*(v0 + 128));
  if (v2 != v1)
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 160) + 1;
    *(v0 + 160) = v13;
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    sub_BDE3C(*(v0 + 136) + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + v12 * v13, v14);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v16 = *(v15 + 120);
    swift_getObjectType();
    v17 = v14[1];
    v18 = v14[2];
    v19 = v14[3];
    *(v0 + 57) = *(v14 + 57);
    *(v0 + 32) = v18;
    *(v0 + 48) = v19;
    *(v0 + 16) = v17;
    v21 = *(v16 + 8) + **(v16 + 8);
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_2C44;

    __asm { BRAA            X8, X16 }
  }

  *(v0 + 136), v3, v4, v5, v6, v7, v8, v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t type metadata accessor for TypingIndicator(uint64_t a1)
{
  result = qword_12B0A8;
  if (!qword_12B0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_2FF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_33EC(v9, v7, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_C7B54(v11, v7, v5, a2);

  if (!v3)
  {
    return v12;
  }

  return result;
}

void sub_3178(uint64_t a1, RCSServiceSession **a2)
{
  v51 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v23 = sub_EF830(v15, a2);
    if (*v23[1].IMDTelephonyServiceSession_opaque)
    {
      v14, v16, v17, v18, v19, v20, v21, v22;
      v38 = v51;
      v39 = *(v51 + 2);
      if (*(v51 + 3) <= v39)
      {
        sub_BB710(v39 + 1, 1);
        v38 = &_swiftEmptyDictionarySingleton;
      }

      v51 = v38;
      sub_F12FC();
      sub_F089C();
      v40 = sub_F132C();
      v41 = v51 + 64;
      v42 = -1 << v51[32];
      v43 = v40 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*&v51[8 * (v43 >> 6) + 64]) == 0)
      {
        v46 = 0;
        v47 = (63 - v42) >> 6;
        while (++v44 != v47 || (v46 & 1) == 0)
        {
          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *&v41[8 * v44];
          if (v49 != -1)
          {
            v45 = __clz(__rbit64(~v49)) + (v44 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v45 = __clz(__rbit64((-1 << v43) & ~*&v51[8 * (v43 >> 6) + 64])) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *&v41[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
      v50 = (*(v51 + 6) + 16 * v45);
      *v50 = v13;
      v50[1] = v12;
      *(*(v51 + 7) + 8 * v45) = v23;
      ++*(v51 + 2);
    }

    else
    {
      v12, v16, v17, v18, v19, v20, v21, v22;
      v14, v24, v25, v26, v27, v28, v29, v30;
      v23, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_33EC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v28 = result;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);
    v16, v19, v20, v21, v22, v23, v24, v25;

    if (v18)
    {
      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_3560(v28, a2, v29, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_3560(v28, a2, v29, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_388C8(&qword_1296F0, &qword_F5B90);
  result = sub_F110C();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_F12FC();

    sub_F089C();
    result = sub_F132C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_37DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_37EC()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3824()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_387C()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_38E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3928(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3940()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  else
  {
    sub_1EDC((v0 + 40));
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_39A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_39DC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 105))
  {
    sub_1EDC((v0 + 48));
  }

  else
  {
    *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;
    *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 80), v15, v16, v17, v18, v19, v20, v21;
    *(v0 + 96), v22, v23, v24, v25, v26, v27, v28;
  }

  *(v0 + 128), v29, v30, v31, v32, v33, v34, v35;
  *(v0 + 144), v36, v37, v38, v39, v40, v41, v42;
  *(v0 + 152), v43, v44, v45, v46, v47, v48, v49;
  *(v0 + 168), v50, v51, v52, v53, v54, v55, v56;

  if (*(v0 + 216))
  {
    sub_1EDC((v0 + 192));
  }

  v57 = *(v0 + 232);
  if (v57 >= 2)
  {
  }

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_3AB0()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v12 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v13, v14, v15, v16, v17, v18, v19;
    *(v12 + 32), v20, v21, v22, v23, v24, v25, v26;
    *(v12 + 48), v27, v28, v29, v30, v31, v32, v33;
    if (*(v12 + 121))
    {
      v41 = (v12 + 64);
LABEL_6:
      sub_1EDC(v41);
      goto LABEL_10;
    }

    *(v12 + 72), v34, v35, v36, v37, v38, v39, v40;
    *(v12 + 88), v49, v50, v51, v52, v53, v54, v55;
    *(v12 + 96), v56, v57, v58, v59, v60, v61, v62;
    v70 = *(v12 + 112);
  }

  else
  {
    if (*(v12 + 57))
    {
      v41 = (v0 + v3);
      goto LABEL_6;
    }

    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v71, v72, v73, v74, v75, v76, v77;
    *(v12 + 32), v78, v79, v80, v81, v82, v83, v84;
    v70 = *(v12 + 48);
  }

  v70, v63, v64, v65, v66, v67, v68, v69;
LABEL_10:
  *(v12 + 136), v42, v43, v44, v45, v46, v47, v48;
  *(v12 + 152), v85, v86, v87, v88, v89, v90, v91;
  v92 = *(v12 + 160);
  if (v92 >= 2)
  {
  }

  v93 = v12 + v1[8];
  v94 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v93);
          *(v93 + 40), v134, v135, v136, v137, v138, v139, v140;
          *(v93 + 56), v141, v142, v143, v144, v145, v146, v147;
          v148 = *(v93 + 72);
          if (v148)
          {
            v148, v95, v96, v97, v98, v99, v100, v101;
            sub_5F048(*(v93 + 80), *(v93 + 88));
            *(v93 + 104), v149, v150, v151, v152, v153, v154, v155;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v156 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v156 - 1) + 48))(v93, 1, v156))
        {
          *(v93 + 16), v157, v158, v159, v160, v161, v162, v163;
          v164 = v156[6];
          v165 = sub_F01EC();
          (*(*(v165 - 8) + 8))(v93 + v164, v165);
          v166 = v156[7];
          v167 = sub_F030C();
          (*(*(v167 - 8) + 8))(v93 + v166, v167);
          v168 = (v93 + v156[8]);
          if (v168[3])
          {
            sub_1EDC(v168);
          }
        }

        v169 = v93 + *(type metadata accessor for RCSFile(0) + 20);
        *(v169 + 16), v170, v171, v172, v173, v174, v175, v176;
        *(v169 + 32), v177, v178, v179, v180, v181, v182, v183;
        v184 = type metadata accessor for RCSFile.DispositionInformation(0);
        v185 = v184[7];
        v186 = sub_F01EC();
        (*(*(v186 - 8) + 8))(v169 + v185, v186);
        v187 = v184[8];
        v188 = sub_F030C();
        (*(*(v188 - 8) + 8))(v169 + v187, v188);
        v189 = (v169 + v184[11]);
        if (v189[3])
        {
          sub_1EDC(v189);
        }

        sub_388C8(&qword_128028, &qword_F3670);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        *(v93 + 24), v95, v96, v97, v98, v99, v100, v101;
      }
    }

    else
    {
      *(v93 + 8), v95, v96, v97, v98, v99, v100, v101;
    }
  }

LABEL_13:
  v102 = (v12 + v1[9]);
  if (v102[3])
  {
    sub_1EDC(v102);
  }

  v103 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v1[10]), v95, v96, v97, v98, v99, v100, v101;
  *(v12 + v1[12] + 8), v104, v105, v106, v107, v108, v109, v110;
  *(v12 + v1[14]), v111, v112, v113, v114, v115, v116, v117;
  v118 = v12 + v1[15];
  *(v118 + 8), v119, v120, v121, v122, v123, v124, v125;
  *(v118 + 24), v126, v127, v128, v129, v130, v131, v132;

  return _swift_deallocObject(v0, ((((v103 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_3F6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127B28, &qword_F2B20);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_401C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_388C8(&qword_127B28, &qword_F2B20);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_40B0()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v211 = *(*(v1 - 1) + 64);
  v4 = sub_388C8(&qword_1284E8, &qword_F3668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v212 = *(v5 + 64);

  v14 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    *(v14 + 1), v7, v8, v9, v10, v11, v12, v13;
    *(v14 + 3), v15, v16, v17, v18, v19, v20, v21;
    *(v14 + 4), v22, v23, v24, v25, v26, v27, v28;
    *(v14 + 6), v29, v30, v31, v32, v33, v34, v35;
    if (v14[121])
    {
      v43 = v14 + 64;
LABEL_6:
      sub_1EDC(v43);
      goto LABEL_10;
    }

    *(v14 + 9), v36, v37, v38, v39, v40, v41, v42;
    *(v14 + 11), v51, v52, v53, v54, v55, v56, v57;
    *(v14 + 12), v58, v59, v60, v61, v62, v63, v64;
    v72 = *(v14 + 14);
  }

  else
  {
    if (v14[57])
    {
      v43 = (v0 + v3);
      goto LABEL_6;
    }

    *(v14 + 1), v7, v8, v9, v10, v11, v12, v13;
    *(v14 + 3), v73, v74, v75, v76, v77, v78, v79;
    *(v14 + 4), v80, v81, v82, v83, v84, v85, v86;
    v72 = *(v14 + 6);
  }

  v72, v65, v66, v67, v68, v69, v70, v71;
LABEL_10:
  *(v14 + 17), v44, v45, v46, v47, v48, v49, v50;
  *(v14 + 19), v87, v88, v89, v90, v91, v92, v93;
  v94 = *(v14 + 20);
  if (v94 >= 2)
  {
  }

  v95 = &v14[v1[8]];
  v96 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v96 - 8) + 48))(v95, 1, v96))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v95);
          *(v95 + 5), v153, v154, v155, v156, v157, v158, v159;
          *(v95 + 7), v160, v161, v162, v163, v164, v165, v166;
          v167 = *(v95 + 9);
          if (v167)
          {
            v167, v97, v98, v99, v100, v101, v102, v103;
            sub_5F048(*(v95 + 10), *(v95 + 11));
            *(v95 + 13), v168, v169, v170, v171, v172, v173, v174;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v175 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v175 - 1) + 48))(v95, 1, v175))
        {
          *(v95 + 2), v176, v177, v178, v179, v180, v181, v182;
          v208 = v175[6];
          v183 = sub_F01EC();
          (*(*(v183 - 8) + 8))(&v95[v208], v183);
          v209 = v175[7];
          v184 = sub_F030C();
          (*(*(v184 - 8) + 8))(&v95[v209], v184);
          v185 = &v95[v175[8]];
          if (*(v185 + 3))
          {
            sub_1EDC(v185);
          }
        }

        v186 = &v95[*(type metadata accessor for RCSFile(0) + 20)];
        *(v186 + 2), v187, v188, v189, v190, v191, v192, v193;
        *(v186 + 4), v194, v195, v196, v197, v198, v199, v200;
        v201 = type metadata accessor for RCSFile.DispositionInformation(0);
        v206 = *(v201 + 28);
        v210 = v201;
        v202 = sub_F01EC();
        (*(*(v202 - 8) + 8))(&v186[v206], v202);
        v207 = *(v210 + 32);
        v203 = sub_F030C();
        (*(*(v203 - 8) + 8))(&v186[v207], v203);
        v204 = &v186[*(v210 + 44)];
        if (*(v204 + 3))
        {
          sub_1EDC(v204);
        }

        sub_388C8(&qword_128028, &qword_F3670);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        *(v95 + 3), v97, v98, v99, v100, v101, v102, v103;
      }
    }

    else
    {
      *(v95 + 1), v97, v98, v99, v100, v101, v102, v103;
    }
  }

LABEL_13:
  v104 = &v14[v1[9]];
  if (*(v104 + 3))
  {
    sub_1EDC(v104);
  }

  v105 = v2 | v6;
  v106 = (v211 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + v6 + 8) & ~v6;
  *&v14[v1[10]], v97, v98, v99, v100, v101, v102, v103;
  *&v14[v1[12] + 8], v109, v110, v111, v112, v113, v114, v115;
  *&v14[v1[14]], v116, v117, v118, v119, v120, v121, v122;
  v123 = &v14[v1[15]];
  *(v123 + 1), v124, v125, v126, v127, v128, v129, v130;
  *(v123 + 3), v131, v132, v133, v134, v135, v136, v137;
  *(v0 + v106 + 8), v138, v139, v140, v141, v142, v143, v144;
  *(v0 + v107), v145, v146, v147, v148, v149, v150, v151;
  (*(v5 + 8))(v0 + v108, v4);

  return _swift_deallocObject(v0, v108 + v212, v105 | 7);
}

uint64_t sub_4640(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

uint64_t sub_4678()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_46C0()
{
  v1 = (sub_388C8(&qword_127EE0, qword_F2CB0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64) + v3;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_F035C();
  (*(*(v6 - 8) + 8))(v5, v6);

  *(v5 + v1[13]), v7, v8, v9, v10, v11, v12, v13;
  *(v5 + v1[14] + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v5 + v1[15] + 8), v21, v22, v23, v24, v25, v26, v27;

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_47F8()
{
  v1 = sub_388C8(&qword_128670, &unk_F3958);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_48C8()
{
  v1 = sub_388C8(&qword_128680, &qword_F3968);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16), v6, v7, v8, v9, v10, v11, v12;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_49B4()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_49F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4A28()
{
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4A78()
{
  swift_unknownObjectRelease();

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 80), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_4AD8()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4B14()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v207 = *(*(v1 - 1) + 64);
  v4 = sub_F030C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v208 = *(v5 + 64);

  *(v0 + 32), v7, v8, v9, v10, v11, v12, v13;
  v21 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    *(v21 + 8), v14, v15, v16, v17, v18, v19, v20;
    *(v21 + 24), v22, v23, v24, v25, v26, v27, v28;
    *(v21 + 32), v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 48), v36, v37, v38, v39, v40, v41, v42;
    if (*(v21 + 121))
    {
      v50 = (v21 + 64);
LABEL_6:
      sub_1EDC(v50);
      goto LABEL_10;
    }

    *(v21 + 72), v43, v44, v45, v46, v47, v48, v49;
    *(v21 + 88), v58, v59, v60, v61, v62, v63, v64;
    *(v21 + 96), v65, v66, v67, v68, v69, v70, v71;
    v79 = *(v21 + 112);
  }

  else
  {
    if (*(v21 + 57))
    {
      v50 = (v0 + v3);
      goto LABEL_6;
    }

    *(v21 + 8), v14, v15, v16, v17, v18, v19, v20;
    *(v21 + 24), v80, v81, v82, v83, v84, v85, v86;
    *(v21 + 32), v87, v88, v89, v90, v91, v92, v93;
    v79 = *(v21 + 48);
  }

  v79, v72, v73, v74, v75, v76, v77, v78;
LABEL_10:
  *(v21 + 136), v51, v52, v53, v54, v55, v56, v57;
  *(v21 + 152), v94, v95, v96, v97, v98, v99, v100;
  v101 = *(v21 + 160);
  if (v101 >= 2)
  {
  }

  v102 = v21 + v1[8];
  v103 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v102);
          *(v102 + 40), v153, v154, v155, v156, v157, v158, v159;
          *(v102 + 56), v160, v161, v162, v163, v164, v165, v166;
          v167 = *(v102 + 72);
          if (v167)
          {
            v167, v104, v105, v106, v107, v108, v109, v110;
            sub_5F048(*(v102 + 80), *(v102 + 88));
            *(v102 + 104), v168, v169, v170, v171, v172, v173, v174;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v175 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v175 - 1) + 48))(v102, 1, v175))
        {
          *(v102 + 16), v176, v177, v178, v179, v180, v181, v182;
          v205 = v175[6];
          v183 = sub_F01EC();
          (*(*(v183 - 8) + 8))(v102 + v205, v183);
          (*(v5 + 8))(v102 + v175[7], v4);
          v184 = (v102 + v175[8]);
          if (v184[3])
          {
            sub_1EDC(v184);
          }
        }

        v185 = v102 + *(type metadata accessor for RCSFile(0) + 20);
        *(v185 + 16), v186, v187, v188, v189, v190, v191, v192;
        *(v185 + 32), v193, v194, v195, v196, v197, v198, v199;
        v200 = type metadata accessor for RCSFile.DispositionInformation(0);
        v204 = *(v200 + 28);
        v206 = v200;
        v201 = sub_F01EC();
        (*(*(v201 - 8) + 8))(v185 + v204, v201);
        (*(v5 + 8))(v185 + *(v206 + 32), v4);
        v202 = (v185 + *(v206 + 44));
        if (v202[3])
        {
          sub_1EDC(v202);
        }

        sub_388C8(&qword_128028, &qword_F3670);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        *(v102 + 24), v104, v105, v106, v107, v108, v109, v110;
      }
    }

    else
    {
      *(v102 + 8), v104, v105, v106, v107, v108, v109, v110;
    }
  }

LABEL_13:
  v111 = (v21 + v1[9]);
  if (v111[3])
  {
    sub_1EDC(v111);
  }

  v112 = v2 | v6;
  v113 = (((v207 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v6 + v114 + 17) & ~v6;
  *(v21 + v1[10]), v104, v105, v106, v107, v108, v109, v110;
  *(v21 + v1[12] + 8), v116, v117, v118, v119, v120, v121, v122;
  *(v21 + v1[14]), v123, v124, v125, v126, v127, v128, v129;
  v130 = v21 + v1[15];
  *(v130 + 8), v131, v132, v133, v134, v135, v136, v137;
  *(v130 + 24), v138, v139, v140, v141, v142, v143, v144;

  *(v0 + v114 + 8), v145, v146, v147, v148, v149, v150, v151;
  (*(v5 + 8))(v0 + v115, v4);

  return _swift_deallocObject(v0, v115 + v208, v112 | 7);
}

uint64_t sub_5054()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_509C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50DC()
{
  v1 = sub_F043C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5 + 16), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + v5 + 32), v13, v14, v15, v16, v17, v18, v19;

  return _swift_deallocObject(v0, v5 + 49, v3 | 7);
}

uint64_t sub_51C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5200()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5238()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5288()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_52D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_F035C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_F035C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_53AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_53F4()
{
  v1 = [*v0 metaData];

  return v1;
}

uint64_t sub_542C()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v12 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v13, v14, v15, v16, v17, v18, v19;
    *(v12 + 32), v20, v21, v22, v23, v24, v25, v26;
    *(v12 + 48), v27, v28, v29, v30, v31, v32, v33;
    if (*(v12 + 121))
    {
      v41 = (v12 + 64);
LABEL_6:
      sub_1EDC(v41);
      goto LABEL_10;
    }

    *(v12 + 72), v34, v35, v36, v37, v38, v39, v40;
    *(v12 + 88), v49, v50, v51, v52, v53, v54, v55;
    *(v12 + 96), v56, v57, v58, v59, v60, v61, v62;
    v70 = *(v12 + 112);
  }

  else
  {
    if (*(v12 + 57))
    {
      v41 = (v0 + v3);
      goto LABEL_6;
    }

    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v71, v72, v73, v74, v75, v76, v77;
    *(v12 + 32), v78, v79, v80, v81, v82, v83, v84;
    v70 = *(v12 + 48);
  }

  v70, v63, v64, v65, v66, v67, v68, v69;
LABEL_10:
  *(v12 + 136), v42, v43, v44, v45, v46, v47, v48;
  *(v12 + 152), v85, v86, v87, v88, v89, v90, v91;
  v92 = *(v12 + 160);
  if (v92 >= 2)
  {
  }

  v93 = v12 + v1[8];
  v94 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v93);
          *(v93 + 40), v135, v136, v137, v138, v139, v140, v141;
          *(v93 + 56), v142, v143, v144, v145, v146, v147, v148;
          v149 = *(v93 + 72);
          if (v149)
          {
            v149, v95, v96, v97, v98, v99, v100, v101;
            sub_5F048(*(v93 + 80), *(v93 + 88));
            *(v93 + 104), v150, v151, v152, v153, v154, v155, v156;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v157 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v157 - 1) + 48))(v93, 1, v157))
        {
          *(v93 + 16), v158, v159, v160, v161, v162, v163, v164;
          v165 = v157[6];
          v166 = sub_F01EC();
          (*(*(v166 - 8) + 8))(v93 + v165, v166);
          v167 = v157[7];
          v168 = sub_F030C();
          (*(*(v168 - 8) + 8))(v93 + v167, v168);
          v169 = (v93 + v157[8]);
          if (v169[3])
          {
            sub_1EDC(v169);
          }
        }

        v170 = v93 + *(type metadata accessor for RCSFile(0) + 20);
        *(v170 + 16), v171, v172, v173, v174, v175, v176, v177;
        *(v170 + 32), v178, v179, v180, v181, v182, v183, v184;
        v185 = type metadata accessor for RCSFile.DispositionInformation(0);
        v186 = v185[7];
        v187 = sub_F01EC();
        (*(*(v187 - 8) + 8))(v170 + v186, v187);
        v188 = v185[8];
        v189 = sub_F030C();
        (*(*(v189 - 8) + 8))(v170 + v188, v189);
        v190 = (v170 + v185[11]);
        if (v190[3])
        {
          sub_1EDC(v190);
        }

        sub_388C8(&qword_128028, &qword_F3670);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        *(v93 + 24), v95, v96, v97, v98, v99, v100, v101;
      }
    }

    else
    {
      *(v93 + 8), v95, v96, v97, v98, v99, v100, v101;
    }
  }

LABEL_13:
  v102 = (v12 + v1[9]);
  if (v102[3])
  {
    sub_1EDC(v102);
  }

  v103 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v12 + v1[10]), v95, v96, v97, v98, v99, v100, v101;
  *(v12 + v1[12] + 8), v105, v106, v107, v108, v109, v110, v111;
  *(v12 + v1[14]), v112, v113, v114, v115, v116, v117, v118;
  v119 = v12 + v1[15];
  *(v119 + 8), v120, v121, v122, v123, v124, v125, v126;
  *(v119 + 24), v127, v128, v129, v130, v131, v132, v133;

  return _swift_deallocObject(v0, v104 + 8, v2 | 7);
}

uint64_t sub_58D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5910()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5948()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5990()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v12 = v0 + v3;
  if (*(v0 + v3 + 122))
  {
    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v13, v14, v15, v16, v17, v18, v19;
    *(v12 + 32), v20, v21, v22, v23, v24, v25, v26;
    *(v12 + 48), v27, v28, v29, v30, v31, v32, v33;
    if (*(v12 + 121))
    {
      v41 = (v12 + 64);
LABEL_6:
      sub_1EDC(v41);
      goto LABEL_10;
    }

    *(v12 + 72), v34, v35, v36, v37, v38, v39, v40;
    *(v12 + 88), v49, v50, v51, v52, v53, v54, v55;
    *(v12 + 96), v56, v57, v58, v59, v60, v61, v62;
    v70 = *(v12 + 112);
  }

  else
  {
    if (*(v12 + 57))
    {
      v41 = (v0 + v3);
      goto LABEL_6;
    }

    *(v12 + 8), v5, v6, v7, v8, v9, v10, v11;
    *(v12 + 24), v71, v72, v73, v74, v75, v76, v77;
    *(v12 + 32), v78, v79, v80, v81, v82, v83, v84;
    v70 = *(v12 + 48);
  }

  v70, v63, v64, v65, v66, v67, v68, v69;
LABEL_10:
  *(v12 + 136), v42, v43, v44, v45, v46, v47, v48;
  *(v12 + 152), v85, v86, v87, v88, v89, v90, v91;
  v92 = *(v12 + 160);
  if (v92 >= 2)
  {
  }

  v93 = v12 + v1[8];
  v94 = type metadata accessor for RCSMessage.Content(0);
  if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6 && EnumCaseMultiPayload != 7)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1EDC(v93);
          *(v93 + 40), v133, v134, v135, v136, v137, v138, v139;
          *(v93 + 56), v140, v141, v142, v143, v144, v145, v146;
          v147 = *(v93 + 72);
          if (v147)
          {
            v147, v95, v96, v97, v98, v99, v100, v101;
            sub_5F048(*(v93 + 80), *(v93 + 88));
            *(v93 + 104), v148, v149, v150, v151, v152, v153, v154;
          }

          goto LABEL_13;
        }

        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v155 = type metadata accessor for RCSFile.ThumbnailInformation(0);
        if (!(*(*(v155 - 1) + 48))(v93, 1, v155))
        {
          *(v93 + 16), v156, v157, v158, v159, v160, v161, v162;
          v163 = v155[6];
          v164 = sub_F01EC();
          (*(*(v164 - 8) + 8))(v93 + v163, v164);
          v165 = v155[7];
          v166 = sub_F030C();
          (*(*(v166 - 8) + 8))(v93 + v165, v166);
          v167 = (v93 + v155[8]);
          if (v167[3])
          {
            sub_1EDC(v167);
          }
        }

        v168 = v93 + *(type metadata accessor for RCSFile(0) + 20);
        *(v168 + 16), v169, v170, v171, v172, v173, v174, v175;
        *(v168 + 32), v176, v177, v178, v179, v180, v181, v182;
        v183 = type metadata accessor for RCSFile.DispositionInformation(0);
        v184 = v183[7];
        v185 = sub_F01EC();
        (*(*(v185 - 8) + 8))(v168 + v184, v185);
        v186 = v183[8];
        v187 = sub_F030C();
        (*(*(v187 - 8) + 8))(v168 + v186, v187);
        v188 = (v168 + v183[11]);
        if (v188[3])
        {
          sub_1EDC(v188);
        }

        sub_388C8(&qword_128028, &qword_F3670);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        *(v93 + 24), v95, v96, v97, v98, v99, v100, v101;
      }
    }

    else
    {
      *(v93 + 8), v95, v96, v97, v98, v99, v100, v101;
    }
  }

LABEL_13:
  v102 = (v12 + v1[9]);
  if (v102[3])
  {
    sub_1EDC(v102);
  }

  *(v12 + v1[10]), v95, v96, v97, v98, v99, v100, v101;
  *(v12 + v1[12] + 8), v103, v104, v105, v106, v107, v108, v109;
  *(v12 + v1[14]), v110, v111, v112, v113, v114, v115, v116;
  v117 = v12 + v1[15];
  *(v117 + 8), v118, v119, v120, v121, v122, v123, v124;
  *(v117 + 24), v125, v126, v127, v128, v129, v130, v131;

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5E18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5E50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

void sub_5EA8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_5F28()
{
  v1 = *(*(v0 + 144) + 16);
  if (v1)
  {
    v22 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 224) = v2;
    *v2 = v0;
    v2[1] = sub_62D4;
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);

    return v22(v5, v3, v4);
  }

  sub_37380(*(v0 + 136), v0 + 16, &qword_128B88, &qword_F3F30);
  if (*(v0 + 48) == 1)
  {
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
LABEL_16:

    v21 = *(v0 + 8);

    return v21();
  }

  sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(v0 + 112);
  *(v0 + 232) = v7;
  swift_beginAccess();
  v8 = objc_getAssociatedObject(v7, &unk_128F30);
  swift_endAccess();
  if (v8)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  *(v0 + 56) = v23;
  *(v0 + 72) = v24;
  sub_388C8(&unk_127FB0, &qword_F2F40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    v20 = *(v0 + 176);

    (*(v17 + 56))(v16, 1, 1, v20);
    (*(v19 + 8))(v16, v18);
    goto LABEL_16;
  }

  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 200);
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  (*(v10 + 56))(v11, 0, 1, v12);
  (*(v10 + 32))(v9, v11, v12);
  *(v0 + 240) = *(v13 + 120);
  *(v0 + 248) = (v13 + 120) & 0xFFFFFFFFFFFFLL | 0x202C000000000000;
  sub_F0AEC();
  *(v0 + 256) = sub_F0ADC();
  v15 = sub_F0A6C();

  return _swift_task_switch(sub_6698, v15, v14);
}

uint64_t sub_62D4()
{

  return _swift_task_switch(sub_63D0, 0, 0);
}

uint64_t sub_63D0()
{
  sub_37380(*(v0 + 136), v0 + 16, &qword_128B88, &qword_F3F30);
  if (*(v0 + 48) == 1)
  {
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
LABEL_12:

    v15 = *(v0 + 8);

    return v15();
  }

  sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v1 = *(v0 + 112);
  *(v0 + 232) = v1;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v1, &unk_128F30);
  swift_endAccess();
  if (v2)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  *(v0 + 56) = v17;
  *(v0 + 72) = v18;
  sub_388C8(&unk_127FB0, &qword_F2F40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v11 + 56))(v10, 1, 1, v14);
    (*(v13 + 8))(v10, v12);
    goto LABEL_12;
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  (*(v4 + 56))(v5, 0, 1, v6);
  (*(v4 + 32))(v3, v5, v6);
  *(v0 + 240) = *(v7 + 120);
  *(v0 + 248) = (v7 + 120) & 0xFFFFFFFFFFFFLL | 0x202C000000000000;
  sub_F0AEC();
  *(v0 + 256) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_6698, v9, v8);
}

uint64_t sub_6698()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[20];
  v4 = v0[21];

  v2(v3, v1, v5, v4);

  return _swift_task_switch(sub_673C, 0, 0);
}

uint64_t sub_673C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_67D8()
{
  if (*(v0 + 48))
  {
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_6820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[9];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_127A0;

  return sub_B1E64(a1, a2, a3, (v3 + 4), v10, v8, v9);
}

uint64_t sub_68F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_69E8()
{
  v1 = v0[15];
  v2 = v0[11];
  (*(v0[13] + 16))(v1, v0[7], v0[12]);
  v3 = *(v2 - 8);
  v0[16] = v3;
  v4 = *(v3 + 48);
  v0[17] = v4;
  v0[18] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    v8 = *(v7 + 8);
    v0[19] = v8;
    v0[20] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[21] = Strong;
    if (Strong)
    {
      v10 = v0[9];
      v0[22] = *(v10 + 40);
      v0[23] = (v10 + 40) & 0xFFFFFFFFFFFFLL | 0xBF16000000000000;
      sub_F0AEC();
      v0[24] = sub_F0ADC();
      v12 = sub_F0A6C();

      return _swift_task_switch(sub_6C8C, v12, v11);
    }

    (*(v3 + 56))(v0[14], 1, 1, v0[11]);
    v15 = v0[9];
    v14 = v0[10];
    (v0[19])(v0[14], v0[12]);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v14, v15, v16);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[5], v0[15], v0[11]);

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_6C8C()
{
  v1 = v0[22];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v1(v4, v2, v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_6D38, 0, 0);
}

uint64_t sub_6D38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  if ((*(v0 + 136))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    (*(v0 + 152))(v1, *(v0 + 96));
    type metadata accessor for RCSGroupController.GroupOperationError(0, v3, v4, v5);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(*(v0 + 128) + 32))(*(v0 + 40), v1, v2);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_6E90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = v0[13];
    v0[24] = *(v3 + 56);
    v0[25] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
    sub_F0AEC();
    v0[26] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_7008, v5, v4);
  }

  else
  {
    type metadata accessor for RCSGroupController.GroupOperationError(0, v0[14], v0[13], v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_7008()
{
  v1 = v0[24];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  v0[27] = v1(v4, v2, v3);
  v0[28] = v5;

  return _swift_task_switch(sub_70A0, 0, 0);
}

uint64_t sub_70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[27];
  v6 = v4[22];
  v19 = v4[28];
  v7 = v4[20];
  v8 = v4[18];
  v9 = v4[19];
  v10 = v4[16];
  v22 = v4[17];
  v23 = v4[21];
  v25 = v4[14];
  v26 = v4[23];
  v11 = v4[12];
  v24 = v4[13];
  v12 = v4[10];
  v20 = v4[11];
  v21 = v4[15];
  v4[5] = type metadata accessor for RCSGroupController.OperationID(0, v25, v24, a4);
  v4[6] = swift_getWitnessTable();
  v13 = sub_37474(v4 + 2);
  *v13 = v5;
  v13[1] = v19;
  v13[2] = 0;
  v13[3] = 0;
  *(v13 + 32) = 0;
  sub_F034C();
  (*(v7 + 16))(v6, v12, v9);
  (*(v10 + 16))(v8, v20, v21);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v23 + *(v10 + 80) + v14) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v4[29] = v16;
  *(v16 + 2) = v25;
  *(v16 + 3) = v24;
  *(v16 + 4) = v11;
  (*(v7 + 32))(&v16[v14], v6, v9);
  (*(v10 + 32))(&v16[v15], v8, v21);
  *&v16[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;

  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v4[30] = v17;
  *v17 = v4;
  v17[1] = sub_7308;

  return sub_B64CC((v4 + 2), &unk_F4A60, v16);
}

uint64_t sub_7308(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_74C4;
  }

  else
  {
    *(v4 + 256) = a1;
    sub_1EDC((v4 + 16));
    v5 = sub_7448;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7448()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);
  v2 = *(v0 + 256);

  return v1(v2);
}

uint64_t sub_74C4()
{
  swift_unknownObjectRelease();
  sub_1EDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7544()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_7CC8;
  }

  else
  {
    v2 = sub_7658;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7658()
{
  *(v0 + 152) = sub_F0AEC();
  *(v0 + 160) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_76F0, v2, v1);
}

uint64_t sub_76F0()
{
  v1 = v0[18];
  v2 = v0[5];

  v0[21] = sub_B3094(v2);
  v0[22] = v1;
  if (v1)
  {
    v3 = sub_7D54;
  }

  else
  {
    v3 = sub_7788;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7788()
{
  v62 = v0;
  if (qword_128F10 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[3];
  v7 = sub_F06CC();
  sub_3C96C(v7, qword_128F18);
  v8 = *(v4 + 16);
  v8(v2, v3, v5);
  v9 = v1;

  v10 = sub_F06AC();
  v11 = sub_F0CCC();

  v6, v12, v13, v14, v15, v16, v17, v18;
  if (os_log_type_enabled(v10, v11))
  {
    v19 = v0[21];
    v20 = v0[14];
    v56 = v0[15];
    v21 = v0[13];
    v22 = v0[9];
    v58 = v0[2];
    v59 = v0[3];
    v23 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v23 = 138412802;
    *(v23 + 4) = v19;
    *v57 = v19;
    *(v23 + 12) = 2080;
    v8(v20, v56, v22);
    v24 = v19;
    v25 = sub_F083C();
    v60 = v8;
    v27 = v26;
    v30 = *(v21 + 8);
    v29 = v21 + 8;
    v28 = v30;
    v30(v56, v22);
    v31 = sub_3E850(v25, v27, &v61);
    v27, v32, v33, v34, v35, v36, v37, v38;
    *(v23 + 14) = v31;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_3E850(v58, v59, &v61);
    _os_log_impl(&dword_0, v10, v11, "Creating group with information %@ context %s operation ID %s", v23, 0x20u);
    sub_372B0(v57, &qword_127AF0, &qword_F28E0);

    swift_arrayDestroy();

    v39 = v60;
  }

  else
  {
    v40 = v0[15];
    v41 = v0[13];
    v42 = v0[9];

    v43 = *(v41 + 8);
    v29 = v41 + 8;
    v28 = v43;
    v43(v40, v42);
    v39 = v8;
  }

  v0[23] = v29;
  v0[24] = v28;
  v44 = v0[14];
  v45 = v0[12];
  v46 = v0[9];
  v47 = v0[7];
  v49 = v0[2];
  v48 = v0[3];
  v39(v44, v0[16], v46);
  (*(*(v46 - 8) + 32))(v45, v44, v46);
  v52 = (v45 + *(type metadata accessor for RCSGroupOperation(0, v46, v50, v51) + 28));
  *v52 = v49;
  v52[1] = v48;
  v0[25] = *(v47 + 128);
  v0[26] = (v47 + 128) & 0xFFFFFFFFFFFFLL | 0x464A000000000000;

  v0[27] = sub_F0ADC();
  v54 = sub_F0A6C();

  return _swift_task_switch(sub_7B38, v54, v53);
}

uint64_t sub_7B38()
{
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  v1(v2, v3, v6, v7);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_7C04, 0, 0);
}

uint64_t sub_7C04()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = *(v0 + 72);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_7CC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7D54()
{
  (*(v0[13] + 8))(v0[16], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_7DFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 152) + 88);
    *(v0 + 168) = v2;
    *(v0 + 176) = *(v2 + 80);
    *(v0 + 184) = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    sub_F0AEC();
    *(v0 + 192) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v4;
    v6 = sub_7FDC;
LABEL_5:

    return _swift_task_switch(v6, v3, v5);
  }

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
  v7 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 200) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 152) + 88);
    *(v0 + 208) = v8;
    *(v0 + 216) = *(v8 + 168);
    *(v0 + 224) = (v8 + 168) & 0xFFFFFFFFFFFFLL | 0x2365000000000000;
    *(v0 + 232) = sub_F0AEC();
    *(v0 + 240) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v9;
    v6 = sub_8220;
    goto LABEL_5;
  }

  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_86F8;
  v11 = *(v0 + 136);
  v12 = *(v0 + 128);

  return sub_B3D70(v12, v11);
}

uint64_t sub_7FDC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];

  v2(v4, *(v3 + 80), v1);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_807C, 0, 0);
}

uint64_t sub_807C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_3928((v0 + 56), v0 + 16);
    sub_3928((v0 + 16), v1);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = Strong;
    if (Strong)
    {
      v5 = *(*(v0 + 152) + 88);
      *(v0 + 208) = v5;
      *(v0 + 216) = *(v5 + 168);
      *(v0 + 224) = (v5 + 168) & 0xFFFFFFFFFFFFLL | 0x2365000000000000;
      *(v0 + 232) = sub_F0AEC();
      *(v0 + 240) = sub_F0ADC();
      v7 = sub_F0A6C();

      return _swift_task_switch(sub_8220, v7, v6);
    }

    else
    {
      v8 = swift_task_alloc();
      *(v0 + 304) = v8;
      *v8 = v0;
      v8[1] = sub_86F8;
      v9 = *(v0 + 136);
      v10 = *(v0 + 128);

      return sub_B3D70(v10, v9);
    }
  }
}

uint64_t sub_8220()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[16];

  v0[31] = *(v2 + 80);
  v0[32] = v1(v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_82C8, 0, 0);
}

uint64_t sub_82C8()
{
  v1 = v0[32];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[33] = Strong;
    if (Strong)
    {
      if (qword_128F50 != -1)
      {
        swift_once();
      }

      v4 = sub_F06CC();
      sub_3C96C(v4, static Logger.groups);
      v5 = v1;
      v6 = sub_F06AC();
      v7 = sub_F0CCC();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[32];
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        *(v9 + 4) = v5;
        *v10 = v8;
        v11 = v5;
        _os_log_impl(&dword_0, v6, v7, "Backfilling the missing group identity with the existing info: %@", v9, 0xCu);
        sub_372B0(v10, &qword_127AF0, &qword_F28E0);
      }

      v12 = v0[26];

      v0[34] = *(v12 + 72);
      v0[35] = (v12 + 72) & 0xFFFFFFFFFFFFLL | 0x441C000000000000;
      v0[36] = sub_F0ADC();
      v14 = sub_F0A6C();

      return _swift_task_switch(sub_85C4, v14, v13);
    }

    else
    {
      type metadata accessor for RCSGroupController.GroupOperationError(0, v0[31], v0[26], v3);
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v18 = v0[1];

      return v18();
    }
  }

  else
  {
    v15 = swift_task_alloc();
    v0[38] = v15;
    *v15 = v0;
    v15[1] = sub_86F8;
    v16 = v0[17];
    v17 = v0[16];

    return sub_B3D70(v17, v16);
  }
}

uint64_t sub_85C4()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[26];
  v5 = v0[16];

  v1(v5, v2, v3, v4);
  v0[37] = 0;

  return _swift_task_switch(sub_8690, 0, 0);
}

uint64_t sub_8690()
{
  v1 = *(v0 + 256);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_86F8(uint64_t a1)
{
  v3 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_882C, 0, 0);
  }
}

uint64_t sub_882C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  if (Strong)
  {
    v3 = *(v0[19] + 88);
    v0[42] = v3;
    v0[43] = *(v3 + 72);
    v0[44] = (v3 + 72) & 0xFFFFFFFFFFFFLL | 0x441C000000000000;
    sub_F0AEC();
    v0[45] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_899C, v5, v4);
  }

  else
  {
    v6 = v0[39];
    type metadata accessor for RCSGroupController.GroupOperationError(0, *(v0[19] + 80), *(v0[19] + 88), v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_899C()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[19];
  v6 = v0[16];

  v2(v6, v4, *(v5 + 80), v1);
  v0[46] = v3;
  if (v3)
  {
    v7 = sub_8B3C;
  }

  else
  {
    v7 = sub_8A68;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_8A68()
{
  v1 = *(v0 + 312);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_8AD4()
{
  v1 = *(v0 + 256);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_8B3C()
{
  v1 = *(v0 + 312);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_8BA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 272);
    *(v0 + 360) = *(v2 + 80);
    *(v0 + 368) = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    *(v0 + 376) = sub_F0AEC();
    *(v0 + 384) = sub_F0ADC();
    v4 = sub_F0A6C();

    return _swift_task_switch(sub_8D98, v4, v3);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v7, v8, v10);
    swift_getWitnessTable();
    swift_allocError();
    (*(v6 + 16))(v11, v9, v5);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_8D98()
{
  v1 = v0[45];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[29];

  v1(v4, v2, v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_8E3C, 0, 0);
}

uint64_t sub_8E3C()
{
  if (*(v0 + 80))
  {
    sub_3928((v0 + 56), v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 392) = Strong;
    v3 = *(v0 + 272);
    if (Strong)
    {
      *(v0 + 400) = *(v3 + 56);
      *(v0 + 408) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
      *(v0 + 416) = sub_F0ADC();
      v5 = sub_F0A6C();

      return _swift_task_switch(sub_9070, v5, v4);
    }

    type metadata accessor for RCSGroupController.GroupOperationError(0, *(v0 + 280), v3, v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 16));
  }

  else
  {
    v6 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v8, v9, v11);
    swift_getWitnessTable();
    swift_allocError();
    (*(v7 + 16))(v12, v10, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_9070()
{
  v1 = v0[50];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[29];

  v0[53] = v1(v4, v2, v3);
  v0[54] = v5;

  return _swift_task_switch(sub_9108, 0, 0);
}

uint64_t sub_9108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *(v4 + 424);
  v24 = *(v4 + 432);
  v34 = *(v4 + 392);
  v5 = *(v4 + 344);
  v27 = v5;
  v30 = *(v4 + 336);
  v7 = *(v4 + 320);
  v6 = *(v4 + 328);
  v25 = v7;
  v35 = *(v4 + 312);
  v9 = *(v4 + 288);
  v8 = *(v4 + 296);
  v26 = v9;
  v10 = *(v4 + 272);
  v31 = v10;
  v32 = *(v4 + 280);
  v33 = *(v4 + 264);
  v28 = *(v4 + 256);
  v12 = *(v4 + 240);
  v11 = *(v4 + 248);
  v29 = *(v4 + 304);
  v22 = *(v4 + 232);
  *(v4 + 440) = *(v33 + 24);
  *(v4 + 120) = type metadata accessor for RCSGroupController.OperationID(0, v32, v10, a4);
  *(v4 + 128) = swift_getWitnessTable();
  v13 = sub_37474((v4 + 96));

  *v13 = v23;
  v13[1] = v24;
  v13[2] = v12;
  v13[3] = v11;
  *(v13 + 32) = 1;
  sub_F034C();
  (*(v6 + 16))(v5, v22, v7);
  (*(v8 + 16))(v35, v28, v9);
  sub_1F28(v4 + 16, v4 + 136);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = (v30 + *(v8 + 80) + v14) & ~*(v8 + 80);
  v16 = (v29 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v4 + 448) = v18;
  *(v18 + 2) = v32;
  *(v18 + 3) = v31;
  *(v18 + 4) = v33;
  (*(v6 + 32))(&v18[v14], v27, v25);
  (*(v8 + 32))(&v18[v15], v35, v26);
  *&v18[v16] = v34;
  sub_3928((v4 + 136), &v18[v17]);
  v19 = &v18[(v17 + 47) & 0xFFFFFFFFFFFFFFF8];
  *v19 = v12;
  v19[1] = v11;

  swift_unknownObjectRetain();
  v20 = swift_task_alloc();
  *(v4 + 456) = v20;
  *v20 = v4;
  v20[1] = sub_93E8;

  return sub_B64F0(v4 + 176, v4 + 96, &unk_F4480, v18);
}

uint64_t sub_93E8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_9618;
  }

  else
  {
    sub_1EDC((v2 + 176));
    v4 = sub_9524;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_9524()
{

  sub_1EDC((v0 + 96));

  return _swift_task_switch(sub_9594, 0, 0);
}

uint64_t sub_9594()
{
  swift_unknownObjectRelease();
  sub_1EDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9618()
{

  return _swift_task_switch(sub_9680, 0, 0);
}

uint64_t sub_9680()
{
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_9708()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_9AC4;
  }

  else
  {
    v2 = sub_981C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_981C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  (*(v0[14] + 16))(v1, v0[16], v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  v9 = (v2 + *(type metadata accessor for RCSGroupOperation(0, v3, v7, v8) + 28));
  *v9 = v6;
  v9[1] = v5;
  v0[19] = *(v4 + 136);
  v0[20] = (v4 + 136) & 0xFFFFFFFFFFFFLL | 0xBA73000000000000;
  sub_F0AEC();

  v0[21] = sub_F0ADC();
  v11 = sub_F0A6C();

  return _swift_task_switch(sub_994C, v11, v10);
}

uint64_t sub_994C()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  v10 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v1(v8, v6, v7, v2, v4, v5);
  (*(v3 + 8))(v2, v10);

  return _swift_task_switch(sub_9A28, 0, 0);
}

uint64_t sub_9A28()
{
  (*(v0[14] + 8))(v0[16], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_9AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9B3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 336) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 256);
    *(v0 + 344) = *(v2 + 80);
    *(v0 + 352) = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    *(v0 + 360) = sub_F0AEC();
    *(v0 + 368) = sub_F0ADC();
    v4 = sub_F0A6C();

    return _swift_task_switch(sub_9D2C, v4, v3);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v7, v8, v10);
    swift_getWitnessTable();
    swift_allocError();
    (*(v6 + 16))(v11, v9, v5);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_9D2C()
{
  v1 = v0[43];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];

  v1(v4, v2, v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_9DD0, 0, 0);
}

uint64_t sub_9DD0()
{
  if (*(v0 + 80))
  {
    sub_3928((v0 + 56), v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 376) = Strong;
    v3 = *(v0 + 256);
    if (Strong)
    {
      *(v0 + 384) = *(v3 + 56);
      *(v0 + 392) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
      *(v0 + 400) = sub_F0ADC();
      v5 = sub_F0A6C();

      return _swift_task_switch(sub_A004, v5, v4);
    }

    type metadata accessor for RCSGroupController.GroupOperationError(0, *(v0 + 264), v3, v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 16));
  }

  else
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = *(v0 + 232);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v8, v9, v11);
    swift_getWitnessTable();
    swift_allocError();
    (*(v7 + 16))(v12, v10, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_A004()
{
  v1 = v0[48];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];

  v0[51] = v1(v4, v2, v3);
  v0[52] = v5;

  return _swift_task_switch(sub_A09C, 0, 0);
}

uint64_t sub_A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 408);
  v6 = *(v4 + 328);
  v8 = *(v4 + 304);
  v7 = *(v4 + 312);
  v21 = *(v4 + 416);
  v22 = v8;
  v9 = *(v4 + 296);
  v24 = *(v4 + 288);
  v25 = *(v4 + 320);
  v11 = *(v4 + 272);
  v10 = *(v4 + 280);
  v12 = *(v4 + 256);
  v26 = v12;
  v27 = *(v4 + 264);
  v28 = *(v4 + 248);
  v29 = *(v4 + 376);
  v23 = *(v4 + 240);
  v13 = *(v4 + 232);
  *(v4 + 424) = *(v28 + 24);
  *(v4 + 120) = type metadata accessor for RCSGroupController.OperationID(0, v27, v12, a4);
  *(v4 + 128) = swift_getWitnessTable();
  v14 = sub_37474((v4 + 96));
  *v14 = v5;
  v14[1] = v21;
  v14[2] = 0;
  v14[3] = 0;
  *(v14 + 32) = 2;
  sub_F034C();
  (*(v7 + 16))(v6, v13, v8);
  (*(v10 + 16))(v9, v23, v11);
  sub_1F28(v4 + 16, v4 + 136);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = (v25 + *(v10 + 80) + v15) & ~*(v10 + 80);
  v17 = (v24 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v4 + 432) = v18;
  *(v18 + 2) = v27;
  *(v18 + 3) = v26;
  *(v18 + 4) = v28;
  (*(v7 + 32))(&v18[v15], v6, v22);
  (*(v10 + 32))(&v18[v16], v9, v11);
  *&v18[v17] = v29;
  sub_3928((v4 + 136), &v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8]);

  swift_unknownObjectRetain();
  v19 = swift_task_alloc();
  *(v4 + 440) = v19;
  *v19 = v4;
  v19[1] = sub_A334;

  return sub_B64F0(v4 + 176, v4 + 96, &unk_F44A0, v18);
}

uint64_t sub_A334()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = sub_A564;
  }

  else
  {
    sub_1EDC((v2 + 176));
    v4 = sub_A470;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_A470()
{

  sub_1EDC((v0 + 96));

  return _swift_task_switch(sub_A4E0, 0, 0);
}

uint64_t sub_A4E0()
{
  swift_unknownObjectRelease();
  sub_1EDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A564()
{

  return _swift_task_switch(sub_A5CC, 0, 0);
}

uint64_t sub_A5CC()
{
  swift_unknownObjectRelease();
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_A654()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_A9FC;
  }

  else
  {
    v2 = sub_A768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A768()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  (*(v0[12] + 16))(v1, v0[14], v3);
  (*(*(v3 - 8) + 32))(v2, v1, v3);
  v9 = (v2 + *(type metadata accessor for RCSGroupOperation(0, v3, v7, v8) + 28));
  *v9 = v6;
  v9[1] = v5;
  v0[17] = *(v4 + 144);
  v0[18] = (v4 + 144) & 0xFFFFFFFFFFFFLL | 0x26A0000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v11 = sub_F0A6C();

  return _swift_task_switch(sub_A898, v11, v10);
}

uint64_t sub_A898()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v1(v7, v2, v5, v6);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_A960, 0, 0);
}

uint64_t sub_A960()
{
  (*(v0[12] + 8))(v0[14], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_A9FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AA74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v3 = v0[34];
    v0[47] = *(v3 + 80);
    v0[48] = (v3 + 80) & 0xFFFFFFFFFFFFLL | 0xB154000000000000;
    v0[49] = sub_F0AEC();
    v0[50] = sub_F0ADC();
    v5 = sub_F0A6C();

    return _swift_task_switch(sub_AC10, v5, v4);
  }

  else
  {
    type metadata accessor for RCSGroupController.GroupOperationError(0, v0[33], v0[34], v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_AC10()
{
  v1 = v0[47];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[28];

  v1(v4, v3, v2);

  return _swift_task_switch(sub_ACAC, 0, 0);
}

uint64_t sub_ACAC()
{
  if (!*(v0 + 80))
  {
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 224);
    sub_372B0(v0 + 56, &qword_127B08, &qword_F29A0);
    type metadata accessor for RCSGroupController.GroupOperationError(0, v15, v14, v17);
    swift_getWitnessTable();
    swift_allocError();
    v19 = v18;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(v19, v16, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:

    v21 = *(v0 + 8);

    return v21();
  }

  sub_3928((v0 + 56), v0 + 16);
  if (qword_128F90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = sub_3C96C(v3, qword_12A270);
  (*(v2 + 16))(v1, v4, v3);
  sub_F044C();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 496) == 1)
  {
    if (qword_128F50 != -1)
    {
      swift_once();
    }

    v5 = sub_F06CC();
    sub_3C96C(v5, static Logger.groups);
    v6 = sub_F06AC();
    v7 = sub_F0CCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "No-oping participant modification due to override", v8, 2u);
    }

    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 216);

    type metadata accessor for RCSGroupController.GroupOperationError(0, v10, v9, v12);
    swift_getWitnessTable();
    swift_allocError();
    *v13 = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1EDC((v0 + 16));
    goto LABEL_11;
  }

  v23 = *(v0 + 272);
  *(v0 + 408) = *(v23 + 56);
  *(v0 + 416) = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0x4D12000000000000;
  *(v0 + 424) = sub_F0ADC();
  v25 = sub_F0A6C();

  return _swift_task_switch(sub_B094, v25, v24);
}

uint64_t sub_B094()
{
  v1 = v0[51];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[28];

  v0[54] = v1(v4, v3, v2);
  v0[55] = v5;
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_B16C;
  v7 = v0[42];
  v8 = v0[28];
  v9 = v0[29];

  return sub_B3C4C(v7, v8, v9);
}

uint64_t sub_B16C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    *(v2 + 440), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_B960;
  }

  else
  {
    v10 = sub_B288;
  }

  return _swift_task_switch(v10, 0, 0);
}

void sub_B288()
{
  v43 = v0;
  v1 = *(v0 + 456);
  v2 = sub_B49C8(*(v0 + 216), *(v0 + 336));
  *(v0 + 464) = v2;
  if (v1)
  {
    v3 = *(v0 + 440);
    v4 = *(v0 + 336);
    v5 = *(v0 + 304);
    v6 = *(v0 + 312);
    swift_unknownObjectRelease();
    v3, v7, v8, v9, v10, v11, v12, v13;
    (*(v6 + 8))(v4, v5);
    sub_1EDC((v0 + 16));

    v14 = *(v0 + 8);

    v14();
  }

  else
  {
    v15 = *v2[1].IMDTelephonyServiceSession_opaque;
    if (v15)
    {
      v16 = v2;
      v17 = sub_BA324(*v2[1].IMDTelephonyServiceSession_opaque, 0);
      v18 = sub_BD48C(&v42, v17 + 32, v15, v16);
      v19 = v42;

      sub_66138(v19);
      if (v18 != v15)
      {
        __break(1u);
        return;
      }

      v39 = v17;
    }

    else
    {
      v39 = _swiftEmptyArrayStorage;
    }

    v20 = *(v0 + 432);
    v21 = *(v0 + 440);
    v37 = *(v0 + 336);
    v22 = *(v0 + 312);
    v38 = *(v0 + 368);
    v23 = *(v0 + 296);
    v35 = *(v0 + 304);
    v36 = *(v0 + 328);
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v40 = *(v0 + 264);
    v41 = *(v0 + 240);
    v26 = *(v0 + 497) & 1;
    v27 = *(v0 + 216);

    *v23 = v20;
    *(v23 + 8) = v21;
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;
    *(v23 + 32) = 3;
    type metadata accessor for RCSGroupController.OperationID(0, v40, *(&v40 + 1), v28);
    sub_F034C();
    *(v0 + 120) = v24;
    *(v0 + 128) = swift_getWitnessTable();
    v29 = sub_37474((v0 + 96));
    (*(v25 + 16))(v29, v23, v24);
    sub_1F28(v0 + 16, v0 + 136);
    (*(v22 + 16))(v36, v37, v35);
    v30 = (*(v22 + 80) + 120) & ~*(v22 + 80);
    v31 = swift_allocObject();
    *(v0 + 472) = v31;
    *(v31 + 16) = v40;
    *(v31 + 32) = v41;
    *(v31 + 48) = v38;
    sub_3928((v0 + 136), v31 + 56);
    *(v31 + 96) = v20;
    *(v31 + 104) = v21;
    *(v31 + 112) = v39;
    (*(v22 + 32))(v31 + v30, v36, v35);

    swift_unknownObjectRetain();
    v32 = swift_task_alloc();
    *(v0 + 480) = v32;
    v34 = type metadata accessor for RCSGroupController.ParticipantModificationResult(0, v40, *(&v40 + 1), v33);
    *v32 = v0;
    v32[1] = sub_B654;

    RCSOperationController.perform<A>(operation:runTask:)(v0 + 200, v0 + 96, &unk_F4A18, v31, v34);
  }
}

uint64_t sub_B654()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 464);

    v3, v4, v5, v6, v7, v8, v9, v10;
    v11 = sub_B9FC;
  }

  else
  {

    sub_1EDC((v2 + 96));
    v11 = sub_B788;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_B788()
{
  v1 = v0[61];
  v3 = v0[25];
  v2 = v0[26];
  sub_B4D10(v0[58], v3, v2, v0[33], v0[34]);
  v11 = v0[58];
  if (v1)
  {
    v12 = v0[39];
    v52 = v0[38];
    v53 = v0[42];
    v13 = v0[36];
    v14 = v0[37];
    v15 = v0[35];
    v3, v4, v5, v6, v7, v8, v9, v10;
    v2, v16, v17, v18, v19, v20, v21, v22;
    v11, v23, v24, v25, v26, v27, v28, v29;
    swift_unknownObjectRelease();
    (*(v13 + 8))(v14, v15);
    (*(v12 + 8))(v53, v52);
  }

  else
  {
    v31 = v0[42];
    v32 = v0[39];
    v51 = v0[38];
    v33 = v0[36];
    v34 = v0[37];
    v35 = v0[35];
    v3, v4, v5, v6, v7, v8, v9, v10;
    v2, v36, v37, v38, v39, v40, v41, v42;
    v11, v43, v44, v45, v46, v47, v48, v49;
    swift_unknownObjectRelease();
    (*(v33 + 8))(v34, v35);
    (*(v32 + 8))(v31, v51);
  }

  sub_1EDC(v0 + 2);

  v30 = v0[1];

  return v30();
}

uint64_t sub_B960()
{
  swift_unknownObjectRelease();
  sub_1EDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B9FC()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1EDC(v0 + 2);
  sub_1EDC(v0 + 12);

  v7 = v0[1];

  return v7();
}

uint64_t sub_BAE8()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v15 = *(v0 + 104);
  v16 = *(v0 + 192);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v18 = *(v0 + 72);
  v13 = *(v0 + 136);
  v14 = *(v0 + 56);
  sub_1F28(*(v0 + 96), v0 + 16);
  (*(v2 + 16))(v1, v5, v3);
  sub_B4F28(v8, (v0 + 16), v15, v7, v6, v1, v14, v9, v16, v13, v4);
  swift_unknownObjectRetain();

  v17 = (v18 + *v18);
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = sub_BC98;
  v11 = *(v0 + 192);

  return v17(v11);
}

uint64_t sub_BC98()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *v1;
  *(v5 + 208) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_BE50, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_BE50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_BEC0()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v0[12] = *v5;
  v0[13] = *(v5 + 8);
  (*(v2 + 16))(v3, &v5[*(v7 + 48)], v4);
  v8 = &v5[*(v7 + 52)];
  v10 = *v8;
  v9 = *(v8 + 1);
  (*(*(v4 - 8) + 32))(v1, v3, v4);
  v13 = (v1 + *(type metadata accessor for RCSGroupOperation(0, v4, v11, v12) + 28));
  *v13 = v10;
  v13[1] = v9;
  v0[14] = *(v6 + 152);
  v0[15] = (v6 + 152) & 0xFFFFFFFFFFFFLL | 0xFCEE000000000000;
  sub_F0AEC();

  v0[16] = sub_F0ADC();
  v15 = sub_F0A6C();

  return _swift_task_switch(sub_C014, v15, v14);
}

uint64_t sub_C014()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  v2(v1, v8 + 8, v3, v6, v7);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_C0F4()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_C1D8;
  v4 = v0[4];
  v6 = v0[2];
  v5 = v0[3];

  return sub_B5018(v6, v5, 0, v4, &unk_F44C0, v2);
}

uint64_t sub_C1D8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_C314, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_C314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C378()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_C470()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  v0[12] = *v5;
  v0[13] = *(v5 + 8);
  (*(v2 + 16))(v3, &v5[*(v7 + 48)], v4);
  v8 = &v5[*(v7 + 52)];
  v10 = *v8;
  v9 = *(v8 + 1);
  (*(*(v4 - 8) + 32))(v1, v3, v4);
  v13 = (v1 + *(type metadata accessor for RCSGroupOperation(0, v4, v11, v12) + 28));
  *v13 = v10;
  v13[1] = v9;
  v0[14] = *(v6 + 160);
  v0[15] = (v6 + 160) & 0xFFFFFFFFFFFFLL | 0x5736000000000000;
  sub_F0AEC();

  v0[16] = sub_F0ADC();
  v15 = sub_F0A6C();

  return _swift_task_switch(sub_1277C, v15, v14);
}

uint64_t sub_C5C4()
{
  v1 = v0[6];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_C6A8;
  v4 = v0[4];
  v6 = v0[2];
  v5 = v0[3];

  return sub_B5018(v6, v5, 1, v4, &unk_F44E0, v2);
}

uint64_t sub_C6A8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_127D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _s7CoreRCS18RCSGroupControllerC23participantAddCompleted4with14groupOperationyAC29ParticipantModificationResultVyx_GSg_AA012RCSOperationM0_ptF_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *v4;
  *v9.IMDTelephonyServiceSession_opaque = a1;
  *v9.state = a2;
  v7 = type metadata accessor for RCSGroupController.ParticipantModificationResult(0, *(v6 + 80), *(v6 + 88), a4);
  return sub_B2298(&v9, a3, v7);
}

uint64_t sub_C854()
{
  v37 = v0;
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) == 255)
  {
    v29 = *(v0 + 136);
    sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
    v30 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation, &unk_F5B58);
    v31 = swift_task_alloc();
    *(v0 + 144) = v31;
    v32 = sub_37310(0, &qword_128FC0, CTLazuliGroupChatInformation_ptr);
    *v31 = v0;
    v31[1] = sub_CCEC;
    v33 = *(v0 + 136);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 120, v29, v30, 0x292874696177, 0xE600000000000000, sub_1239C, v33, v32);
  }

  else
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = sub_F06CC();
    sub_3C96C(v3, qword_129B28);

    v4 = sub_F06AC();
    v5 = sub_F0CDC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 136);
      v7 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v7 = 136315138;
      v8 = sub_F035C();
      v9 = *(v8 - 8);
      v10 = swift_task_alloc();
      v11 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v12 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v11);
      (*(v12 + 16))(v11, v12);
      sub_5F9D4();
      v13 = sub_F11EC();
      v15 = v14;
      (*(v9 + 8))(v10, v8);

      v16 = sub_3E850(v13, v15, &v36);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v7 + 4) = v16;
      _os_log_impl(&dword_0, v4, v5, "Fulfilling operation %s with already-received result", v7, 0xCu);
      sub_1EDC(v35);
    }

    v24 = sub_B5ED8(v0 + 16);
    v25 = v24;
    if (v26)
    {
      *(v0 + 128) = v24;
      sub_388C8(&qword_127B88, &qword_F3680);
      swift_willThrowTypedImpl();
      sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
      v27 = *(v0 + 8);

      return v27();
    }

    else
    {
      sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
      v34 = *(v0 + 8);

      return v34(v25);
    }
  }
}

uint64_t sub_CCEC()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[17];

    return _swift_task_switch(sub_CE24, v3, 0);
  }

  else
  {
    v4 = v2[15];
    v5 = v2[1];

    return v5(v4);
  }
}

uint64_t sub_CE3C()
{
  v35 = v0;
  v1 = *(v0 + 216);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) != 255)
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = sub_F06CC();
    sub_3C96C(v3, qword_129B28);

    v4 = sub_F06AC();
    v5 = sub_F0CDC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 216);
      v7 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v7 = 136315138;
      v8 = sub_F035C();
      v9 = *(v8 - 8);
      v10 = swift_task_alloc();
      v11 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v12 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v11);
      (*(v12 + 16))(v11, v12);
      sub_5F9D4();
      v13 = sub_F11EC();
      v15 = v14;
      (*(v9 + 8))(v10, v8);

      v16 = sub_3E850(v13, v15, &v34);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v7 + 4) = v16;
      _os_log_impl(&dword_0, v4, v5, "Fulfilling operation %s with already-received result", v7, 0xCu);
      sub_1EDC(v33);
    }

    sub_37380(v0 + 16, v0 + 136, &qword_128B88, &qword_F3F30);
    if (*(v0 + 168) == 1)
    {
      v24 = *(v0 + 136);
      *(v0 + 96) = v24;
      *(v0 + 128) = 1;
    }

    else
    {
      sub_3FE38(v0 + 136, v0 + 96);
      *(v0 + 128) = 0;
      sub_1EDC((v0 + 136));
      if (*(v0 + 128) != 1)
      {
        v31 = *(v0 + 208);
        sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
        sub_54F88((v0 + 96), v31);
        v30 = *(v0 + 8);
        goto LABEL_15;
      }

      v24 = *(v0 + 96);
    }

    *(v0 + 200) = v24;
    sub_388C8(&qword_127B88, &qword_F3680);
    swift_willThrowTypedImpl();
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);
    v30 = *(v0 + 8);
LABEL_15:

    return v30();
  }

  v25 = *(v0 + 216);
  sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
  v26 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation, &unk_F5B58);
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  *v27 = v0;
  v27[1] = sub_D2E8;
  v28 = *(v0 + 208);
  v29 = *(v0 + 216);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v28, v25, v26, 0x292874696177, 0xE600000000000000, sub_11C24, v29, &type metadata for Any + 8);
}

uint64_t sub_D2E8()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[27];

    return _swift_task_switch(sub_D41C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_D434()
{
  v35 = v0;
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 104, &qword_129368, &unk_F5B80);
  if (*(v0 + 136) == 255)
  {
    v25 = *(v0 + 184);
    sub_372B0(v0 + 104, &qword_129368, &unk_F5B80);
    v26 = sub_12734(&qword_129370, type metadata accessor for RCSOperationController.Operation, &unk_F5B58);
    v27 = swift_task_alloc();
    *(v0 + 192) = v27;
    v28 = sub_388C8(&qword_129378, &qword_F49E0);
    *v27 = v0;
    v27[1] = sub_D8A4;
    v29 = *(v0 + 176);
    v30 = *(v0 + 184);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, v25, v26, 0x292874696177, 0xE600000000000000, sub_1184C, v30, v28);
  }

  else
  {
    v2 = *(v0 + 120);
    *(v0 + 64) = *(v0 + 104);
    *(v0 + 80) = v2;
    *(v0 + 96) = *(v0 + 136);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = sub_F06CC();
    sub_3C96C(v3, qword_129B28);

    v4 = sub_F06AC();
    v5 = sub_F0CDC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 184);
      v7 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v7 = 136315138;
      v8 = sub_F035C();
      v9 = *(v8 - 8);
      v10 = swift_task_alloc();
      v11 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v12 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v11);
      (*(v12 + 16))(v11, v12);
      sub_5F9D4();
      v13 = sub_F11EC();
      v15 = v14;
      (*(v9 + 8))(v10, v8);

      v16 = sub_3E850(v13, v15, &v34);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v7 + 4) = v16;
      _os_log_impl(&dword_0, v4, v5, "Fulfilling operation %s with already-received result", v7, 0xCu);
      sub_1EDC(v33);
    }

    sub_B5FD8(v0 + 64, v0 + 16);
    if (*(v0 + 56))
    {
      *(v0 + 168) = *(v0 + 16);
      sub_388C8(&qword_127B88, &qword_F3680);
      swift_willThrowTypedImpl();
      sub_372B0(v0 + 64, &qword_128B88, &qword_F3F30);
    }

    else
    {
      v31 = *(v0 + 176);
      sub_372B0(v0 + 64, &qword_128B88, &qword_F3F30);
      sub_3928((v0 + 16), v31);
    }

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_D8A4()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_D9D8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_D9F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_388C8(a3, a4);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - v12;
  (*(v10 + 16))(&v26 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  swift_beginAccess();
  v16 = *(a2 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 152) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_D8A20(0, (*v16[1].IMDTelephonyServiceSession_opaque + 1), &dword_0 + 1, v16, v18, v19, v20, v21);
    *(a2 + 152) = v16;
  }

  v23 = *v16[1].IMDTelephonyServiceSession_opaque;
  v22 = *v16[1].state;
  if (v23 >= v22 >> 1)
  {
    v16 = sub_D8A20((v22 > 1), (v23 + 1), &dword_0 + 1, v16, v18, v19, v20, v21);
  }

  *v16[1].IMDTelephonyServiceSession_opaque = v23 + 1;
  v24 = &v16[v23];
  *v24[2].IMDTelephonyServiceSession_opaque = a6;
  *v24[2].state = v15;
  *(a2 + 152) = v16;
  return swift_endAccess();
}

uint64_t sub_DBA8()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_DBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_DCCC;

  return sub_B2F5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_DCCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_DDC0()
{
  v156 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v15 = *(v1 + 168);
  if (*v15[1].IMDTelephonyServiceSession_opaque)
  {

    v16 = sub_51FEC(v5, v7);
    v18 = v17;
    v7, v17, v19, v20, v21, v22, v23, v24;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      v52 = v15;
      goto LABEL_8;
    }

    v25 = *(v0 + 440);
    v26 = (*v15[3].state + 16 * v16);
    v27 = *v26;
    v7 = v26[1];

    v15, v28, v29, v30, v31, v32, v33, v34;
    swift_beginAccess();
    v15 = *(v25 + 160);
    if (*v15[1].IMDTelephonyServiceSession_opaque)
    {

      v35 = sub_51FEC(v27, v7);
      v37 = v36;
      v7, v36, v38, v39, v40, v41, v42, v43;
      if (v37)
      {
        v44 = *(*v15[3].state + 8 * v35);

        v15, v45, v46, v47, v48, v49, v50, v51;
        sub_1F28(v44 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

        sub_3928((v0 + 256), v0 + 216);
        sub_3928((v0 + 216), v0 + 16);
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v52 = v7;
LABEL_8:
  v52, v8, v9, v10, v11, v12, v13, v14;
  sub_1F28(*(v0 + 416), v0 + 16);
LABEL_9:
  v53 = *(v0 + 440);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  sub_373E8((v0 + 16), v54);
  v56 = sub_F035C();
  v57 = *(v56 - 8);
  v58 = swift_task_alloc();
  (*(v55 + 16))(v54, v55);
  v59 = sub_F032C();
  v61 = v60;
  *(v0 + 448) = v60;
  (*(v57 + 8))(v58, v56);

  swift_beginAccess();
  v62 = *(v53 + 160);
  if (*v62[1].IMDTelephonyServiceSession_opaque)
  {

    v63 = sub_51FEC(v59, v61);
    if (v64)
    {
      v71 = v63;
      v61, v64, v65, v66, v67, v68, v69, v70;
      v72 = *(*v62[3].state + 8 * v71);

      v62, v73, v74, v75, v76, v77, v78, v79;
      v80 = qword_128F78;

      if (v80 != -1)
      {
        swift_once();
      }

      v81 = sub_F06CC();
      sub_3C96C(v81, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v82 = sub_F06AC();
      v83 = sub_F0CCC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v155 = v85;
        *v84 = 141558275;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2081;
        sub_373E8((v0 + 176), *(v0 + 200));
        v86 = sub_F11EC();
        v88 = v87;
        sub_1EDC((v0 + 176));
        v89 = sub_3E850(v86, v88, &v155);
        v88, v90, v91, v92, v93, v94, v95, v96;
        *(v84 + 14) = v89;
        _os_log_impl(&dword_0, v82, v83, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v84, 0x16u);
        sub_1EDC(v85);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 496) = v72;
      v152 = swift_task_alloc();
      *(v0 + 504) = v152;
      *v152 = v0;
      v152[1] = sub_E9D0;

      return sub_B5E78();
    }

    v62, v64, v65, v66, v67, v68, v69, v70;
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v97 = sub_F06CC();
  sub_3C96C(v97, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v98 = sub_F06AC();
  v99 = sub_F0CCC();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v153 = v1;
    v155 = swift_slowAlloc();
    v101 = v155;
    *v100 = 141558275;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_373E8((v0 + 56), *(v0 + 80));
    v102 = sub_F11EC();
    v104 = v103;
    sub_1EDC((v0 + 56));
    v105 = sub_3E850(v102, v104, &v155);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v100 + 14) = v105;
    _os_log_impl(&dword_0, v98, v99, "Creating a new operation with ID %{private,mask.hash}s", v100, 0x16u);
    sub_1EDC(v101);
    v1 = v153;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v113 = *(v0 + 40);
  v114 = *(v0 + 48);
  sub_373E8((v0 + 16), v113);
  v115 = (*(v114 + 24))(v113, v114);
  v117 = v116;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v59, v61, v115, v117, isUniquelyReferenced_nonNull_native);
  v117, v119, v120, v121, v122, v123, v124, v125;
  *(v1 + 168) = v155;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  type metadata accessor for RCSOperationController.Operation(0);
  swift_allocObject();
  v127 = sub_C7C30((v0 + 96), v126);
  *(v0 + 456) = v127;
  swift_beginAccess();
  swift_retain_n();

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v53 + 160);
  *(v53 + 160) = 0x8000000000000000;
  sub_BC0D8(v127, v59, v61, v128);
  v61, v129, v130, v131, v132, v133, v134, v135;
  *(v53 + 160) = v155;
  swift_endAccess();
  v136 = *(v0 + 40);
  v137 = *(v0 + 48);
  sub_373E8((v0 + 16), v136);
  v138 = (*(v137 + 32))(v136, v137);
  *(v0 + 464) = v139;
  if (v139)
  {
    v140 = v138;
    v141 = v139;
    v143 = *(v0 + 432);
    v142 = *(v0 + 440);
    v144 = *(v0 + 424);
    sub_1F28(v0 + 16, v0 + 136);
    v145 = swift_allocObject();
    *(v0 + 472) = v145;
    sub_3928((v0 + 136), (v145 + 2));
    v145[7] = v144;
    v145[8] = v143;
    v145[9] = v59;
    v145[10] = v61;
    v145[11] = v142;
    v154 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v146 = swift_task_alloc();
    *(v0 + 480) = v146;
    *v146 = v0;
    v146[1] = sub_E6EC;

    return (v154)(v140, v141, &unk_F4A78, v145);
  }

  else
  {
    v148 = swift_task_alloc();
    *(v0 + 488) = v148;
    *v148 = v0;
    v148[1] = sub_E870;
    v149 = *(v0 + 432);
    v150 = *(v0 + 440);
    v151 = *(v0 + 424);

    return sub_C72F8(v0 + 16, v151, v149, v59, v61, v150);
  }
}

uint64_t sub_E6EC()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;

  v1[62] = v1[57];
  v11 = swift_task_alloc();
  v1[63] = v11;
  *v11 = v3;
  v11[1] = sub_E9D0;

  return sub_B5E78();
}

uint64_t sub_E870()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;
  v1[62] = v1[57];
  v11 = swift_task_alloc();
  v1[63] = v11;
  *v11 = v3;
  v11[1] = sub_E9D0;

  return sub_B5E78();
}

uint64_t sub_E9D0(uint64_t a1)
{
  v4 = *v2;
  v4[64] = v1;

  v5 = v4[55];
  if (v1)
  {
    v6 = sub_EB98;
  }

  else
  {
    v4[65] = a1;
    v6 = sub_EB28;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_EB28()
{

  sub_1EDC(v0 + 2);
  v1 = v0[1];
  v2 = v0[65];

  return v1(v2);
}

uint64_t sub_EB98()
{

  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_EC04()
{
  v157 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v15 = *(v1 + 168);
  if (*v15[1].IMDTelephonyServiceSession_opaque)
  {

    v16 = sub_51FEC(v5, v7);
    v18 = v17;
    v7, v17, v19, v20, v21, v22, v23, v24;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      v52 = v15;
      goto LABEL_8;
    }

    v25 = *(v0 + 448);
    v26 = (*v15[3].state + 16 * v16);
    v27 = *v26;
    v7 = v26[1];

    v15, v28, v29, v30, v31, v32, v33, v34;
    swift_beginAccess();
    v15 = *(v25 + 160);
    if (*v15[1].IMDTelephonyServiceSession_opaque)
    {

      v35 = sub_51FEC(v27, v7);
      v37 = v36;
      v7, v36, v38, v39, v40, v41, v42, v43;
      if (v37)
      {
        v44 = *(*v15[3].state + 8 * v35);

        v15, v45, v46, v47, v48, v49, v50, v51;
        sub_1F28(v44 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

        sub_3928((v0 + 256), v0 + 216);
        sub_3928((v0 + 216), v0 + 16);
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v52 = v7;
LABEL_8:
  v52, v8, v9, v10, v11, v12, v13, v14;
  sub_1F28(*(v0 + 424), v0 + 16);
LABEL_9:
  v53 = *(v0 + 448);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  sub_373E8((v0 + 16), v54);
  v56 = sub_F035C();
  v57 = *(v56 - 8);
  v58 = swift_task_alloc();
  (*(v55 + 16))(v54, v55);
  v59 = sub_F032C();
  v61 = v60;
  *(v0 + 456) = v60;
  (*(v57 + 8))(v58, v56);

  swift_beginAccess();
  v62 = *(v53 + 160);
  if (*v62[1].IMDTelephonyServiceSession_opaque)
  {

    v63 = sub_51FEC(v59, v61);
    if (v64)
    {
      v71 = v63;
      v61, v64, v65, v66, v67, v68, v69, v70;
      v72 = *(*v62[3].state + 8 * v71);

      v62, v73, v74, v75, v76, v77, v78, v79;
      v80 = qword_128F78;

      if (v80 != -1)
      {
        swift_once();
      }

      v81 = sub_F06CC();
      sub_3C96C(v81, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v82 = sub_F06AC();
      v83 = sub_F0CCC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v156 = v85;
        *v84 = 141558275;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2081;
        sub_373E8((v0 + 176), *(v0 + 200));
        v86 = sub_F11EC();
        v88 = v87;
        sub_1EDC((v0 + 176));
        v89 = sub_3E850(v86, v88, &v156);
        v88, v90, v91, v92, v93, v94, v95, v96;
        *(v84 + 14) = v89;
        _os_log_impl(&dword_0, v82, v83, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v84, 0x16u);
        sub_1EDC(v85);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 504) = v72;
      v152 = swift_task_alloc();
      *(v0 + 512) = v152;
      *v152 = v0;
      v152[1] = sub_F854;
      v153 = *(v0 + 416);

      return sub_B5E98(v153);
    }

    v62, v64, v65, v66, v67, v68, v69, v70;
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v97 = sub_F06CC();
  sub_3C96C(v97, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v98 = sub_F06AC();
  v99 = sub_F0CCC();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v154 = v1;
    v156 = swift_slowAlloc();
    v101 = v156;
    *v100 = 141558275;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_373E8((v0 + 56), *(v0 + 80));
    v102 = sub_F11EC();
    v104 = v103;
    sub_1EDC((v0 + 56));
    v105 = sub_3E850(v102, v104, &v156);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v100 + 14) = v105;
    _os_log_impl(&dword_0, v98, v99, "Creating a new operation with ID %{private,mask.hash}s", v100, 0x16u);
    sub_1EDC(v101);
    v1 = v154;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v113 = *(v0 + 40);
  v114 = *(v0 + 48);
  sub_373E8((v0 + 16), v113);
  v115 = (*(v114 + 24))(v113, v114);
  v117 = v116;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v156 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v59, v61, v115, v117, isUniquelyReferenced_nonNull_native);
  v117, v119, v120, v121, v122, v123, v124, v125;
  *(v1 + 168) = v156;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  type metadata accessor for RCSOperationController.Operation(0);
  swift_allocObject();
  v127 = sub_C7C30((v0 + 96), v126);
  *(v0 + 464) = v127;
  swift_beginAccess();
  swift_retain_n();

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *(v53 + 160);
  *(v53 + 160) = 0x8000000000000000;
  sub_BC0D8(v127, v59, v61, v128);
  v61, v129, v130, v131, v132, v133, v134, v135;
  *(v53 + 160) = v156;
  swift_endAccess();
  v136 = *(v0 + 40);
  v137 = *(v0 + 48);
  sub_373E8((v0 + 16), v136);
  v138 = (*(v137 + 32))(v136, v137);
  *(v0 + 472) = v139;
  if (v139)
  {
    v140 = v138;
    v141 = v139;
    v143 = *(v0 + 440);
    v142 = *(v0 + 448);
    v144 = *(v0 + 432);
    sub_1F28(v0 + 16, v0 + 136);
    v145 = swift_allocObject();
    *(v0 + 480) = v145;
    sub_3928((v0 + 136), (v145 + 2));
    v145[7] = v144;
    v145[8] = v143;
    v145[9] = v59;
    v145[10] = v61;
    v145[11] = v142;
    v155 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v146 = swift_task_alloc();
    *(v0 + 488) = v146;
    *v146 = v0;
    v146[1] = sub_F538;

    return (v155)(v140, v141, &unk_F4A30, v145);
  }

  else
  {
    v148 = swift_task_alloc();
    *(v0 + 496) = v148;
    *v148 = v0;
    v148[1] = sub_F6D4;
    v149 = *(v0 + 440);
    v150 = *(v0 + 448);
    v151 = *(v0 + 432);

    return sub_C72F8(v0 + 16, v151, v149, v59, v61, v150);
  }
}

uint64_t sub_F538()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;

  v1[63] = v1[58];
  v11 = swift_task_alloc();
  v1[64] = v11;
  *v11 = v3;
  v11[1] = sub_F854;
  v12 = v1[52];

  return sub_B5E98(v12);
}

uint64_t sub_F6D4()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;
  v1[63] = v1[58];
  v11 = swift_task_alloc();
  v1[64] = v11;
  *v11 = v3;
  v11[1] = sub_F854;
  v12 = v1[52];

  return sub_B5E98(v12);
}

uint64_t sub_F854()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    v4 = sub_12780;
  }

  else
  {
    v4 = sub_12788;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_F99C()
{
  v157 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v15 = *(v1 + 168);
  if (*v15[1].IMDTelephonyServiceSession_opaque)
  {

    v16 = sub_51FEC(v5, v7);
    v18 = v17;
    v7, v17, v19, v20, v21, v22, v23, v24;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      v52 = v15;
      goto LABEL_8;
    }

    v25 = *(v0 + 448);
    v26 = (*v15[3].state + 16 * v16);
    v27 = *v26;
    v7 = v26[1];

    v15, v28, v29, v30, v31, v32, v33, v34;
    swift_beginAccess();
    v15 = *(v25 + 160);
    if (*v15[1].IMDTelephonyServiceSession_opaque)
    {

      v35 = sub_51FEC(v27, v7);
      v37 = v36;
      v7, v36, v38, v39, v40, v41, v42, v43;
      if (v37)
      {
        v44 = *(*v15[3].state + 8 * v35);

        v15, v45, v46, v47, v48, v49, v50, v51;
        sub_1F28(v44 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

        sub_3928((v0 + 256), v0 + 216);
        sub_3928((v0 + 216), v0 + 16);
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v52 = v7;
LABEL_8:
  v52, v8, v9, v10, v11, v12, v13, v14;
  sub_1F28(*(v0 + 424), v0 + 16);
LABEL_9:
  v53 = *(v0 + 448);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  sub_373E8((v0 + 16), v54);
  v56 = sub_F035C();
  v57 = *(v56 - 8);
  v58 = swift_task_alloc();
  (*(v55 + 16))(v54, v55);
  v59 = sub_F032C();
  v61 = v60;
  *(v0 + 456) = v60;
  (*(v57 + 8))(v58, v56);

  swift_beginAccess();
  v62 = *(v53 + 160);
  if (*v62[1].IMDTelephonyServiceSession_opaque)
  {

    v63 = sub_51FEC(v59, v61);
    if (v64)
    {
      v71 = v63;
      v61, v64, v65, v66, v67, v68, v69, v70;
      v72 = *(*v62[3].state + 8 * v71);

      v62, v73, v74, v75, v76, v77, v78, v79;
      v80 = qword_128F78;

      if (v80 != -1)
      {
        swift_once();
      }

      v81 = sub_F06CC();
      sub_3C96C(v81, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v82 = sub_F06AC();
      v83 = sub_F0CCC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v156 = v85;
        *v84 = 141558275;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2081;
        sub_373E8((v0 + 176), *(v0 + 200));
        v86 = sub_F11EC();
        v88 = v87;
        sub_1EDC((v0 + 176));
        v89 = sub_3E850(v86, v88, &v156);
        v88, v90, v91, v92, v93, v94, v95, v96;
        *(v84 + 14) = v89;
        _os_log_impl(&dword_0, v82, v83, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v84, 0x16u);
        sub_1EDC(v85);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 504) = v72;
      v152 = swift_task_alloc();
      *(v0 + 512) = v152;
      *v152 = v0;
      v152[1] = sub_105EC;
      v153 = *(v0 + 416);

      return sub_B5EB8(v153);
    }

    v62, v64, v65, v66, v67, v68, v69, v70;
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v97 = sub_F06CC();
  sub_3C96C(v97, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v98 = sub_F06AC();
  v99 = sub_F0CCC();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v154 = v1;
    v156 = swift_slowAlloc();
    v101 = v156;
    *v100 = 141558275;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_373E8((v0 + 56), *(v0 + 80));
    v102 = sub_F11EC();
    v104 = v103;
    sub_1EDC((v0 + 56));
    v105 = sub_3E850(v102, v104, &v156);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v100 + 14) = v105;
    _os_log_impl(&dword_0, v98, v99, "Creating a new operation with ID %{private,mask.hash}s", v100, 0x16u);
    sub_1EDC(v101);
    v1 = v154;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v113 = *(v0 + 40);
  v114 = *(v0 + 48);
  sub_373E8((v0 + 16), v113);
  v115 = (*(v114 + 24))(v113, v114);
  v117 = v116;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v156 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v59, v61, v115, v117, isUniquelyReferenced_nonNull_native);
  v117, v119, v120, v121, v122, v123, v124, v125;
  *(v1 + 168) = v156;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  type metadata accessor for RCSOperationController.Operation(0);
  swift_allocObject();
  v127 = sub_C7C30((v0 + 96), v126);
  *(v0 + 464) = v127;
  swift_beginAccess();
  swift_retain_n();

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *(v53 + 160);
  *(v53 + 160) = 0x8000000000000000;
  sub_BC0D8(v127, v59, v61, v128);
  v61, v129, v130, v131, v132, v133, v134, v135;
  *(v53 + 160) = v156;
  swift_endAccess();
  v136 = *(v0 + 40);
  v137 = *(v0 + 48);
  sub_373E8((v0 + 16), v136);
  v138 = (*(v137 + 32))(v136, v137);
  *(v0 + 472) = v139;
  if (v139)
  {
    v140 = v138;
    v141 = v139;
    v143 = *(v0 + 440);
    v142 = *(v0 + 448);
    v144 = *(v0 + 432);
    sub_1F28(v0 + 16, v0 + 136);
    v145 = swift_allocObject();
    *(v0 + 480) = v145;
    sub_3928((v0 + 136), (v145 + 2));
    v145[7] = v144;
    v145[8] = v143;
    v145[9] = v59;
    v145[10] = v61;
    v145[11] = v142;
    v155 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v146 = swift_task_alloc();
    *(v0 + 488) = v146;
    *v146 = v0;
    v146[1] = sub_102D0;

    return (v155)(v140, v141, &unk_F49D0, v145);
  }

  else
  {
    v148 = swift_task_alloc();
    *(v0 + 496) = v148;
    *v148 = v0;
    v148[1] = sub_1046C;
    v149 = *(v0 + 440);
    v150 = *(v0 + 448);
    v151 = *(v0 + 432);

    return sub_C72F8(v0 + 16, v151, v149, v59, v61, v150);
  }
}

uint64_t sub_102D0()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;

  v1[63] = v1[58];
  v11 = swift_task_alloc();
  v1[64] = v11;
  *v11 = v3;
  v11[1] = sub_105EC;
  v12 = v1[52];

  return sub_B5EB8(v12);
}

uint64_t sub_1046C()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;
  v1[63] = v1[58];
  v11 = swift_task_alloc();
  v1[64] = v11;
  *v11 = v3;
  v11[1] = sub_105EC;
  v12 = v1[52];

  return sub_B5EB8(v12);
}

uint64_t sub_105EC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 448);
  if (v0)
  {
    v4 = sub_107A0;
  }

  else
  {
    v4 = sub_10734;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10734()
{

  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_107A0()
{

  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1080C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

BOOL sub_10888(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_108EC()
{
  sub_F07EC();
  v1 = v0;
  v2 = sub_F094C();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_10928(uint64_t a1)
{
  sub_F07EC();
  v2 = v1;
  sub_F089C();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1097C(uint64_t a1)
{
  sub_F07EC();
  v2 = v1;
  sub_F12FC();
  sub_F089C();
  v3 = sub_F132C();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_10A68(uint64_t a1, id *a2)
{
  v3 = sub_F07DC();
  *a2 = 0;
  return v3 & 1;
}

void sub_10AE8(uint64_t *a2@<X8>)
{
  sub_F07EC();
  v4 = v3;
  v5 = sub_F07BC();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

uint64_t sub_10B30(void *a1, uint64_t *a2)
{
  v2 = sub_F07EC();
  v4 = v3;
  v5 = sub_F07EC();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_F122C();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_10BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F07EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_10BE8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_F07BC();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_10C30()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(sub_F0DEC() - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v11 = *(v6 - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, v6))
  {
    (*(v11 + 8))(v0 + v9, v6);
  }

  v12 = (((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1EDC((v0 + v12));
  *(v0 + v13 + 8), v14, v15, v16, v17, v18, v19, v20;

  return _swift_deallocObject(v0, v13 + 16, v3 | v8 | 7);
}

uint64_t sub_10E38(uint64_t a1, uint64_t a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  swift_getAssociatedTypeWitness();
  v8 = *(sub_F0DEC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + v10);
  v13 = *(v2 + 32);
  v14 = *(v2 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_127B4;

  return sub_B43E8(a1, a2, v13, v2 + v6, v2 + v9, v12, v2 + v11, v14);
}

uint64_t sub_11024()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(sub_F0DEC() - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v11 = *(v6 - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, v6))
  {
    (*(v11 + 8))(v0 + v9, v6);
  }

  v12 = (((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_1EDC((v0 + v12));

  return _swift_deallocObject(v0, v12 + 40, v3 | v8 | 7);
}

uint64_t sub_11218(uint64_t a1, uint64_t a2)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(sub_F0DEC() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + 32);
  v14 = *(v2 + v11);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_113E0;

  return sub_B479C(a1, a2, v13, v2 + v7, v2 + v10, v14, v2 + v12);
}

uint64_t sub_113E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_114E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_127B8;

  return sub_B5B3C(a1, v5, v4);
}

uint64_t sub_1158C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_127BC;

  return sub_B5D8C(a1, v5, v4);
}

uint64_t sub_11644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *(a1 + 32);
    if (v4 > 4)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_116E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11788()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127A4;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_118D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  sub_1EDC((v0 + 56));
  *(v0 + 104), v6, v7, v8, v9, v10, v11, v12;
  *(v0 + 112), v13, v14, v15, v16, v17, v18, v19;
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_119C8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[12];
  v10 = v2[13];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_127C0;

  return sub_B5210(a1, a2, v4, v5, v6, (v2 + 7), v7, v10);
}

uint64_t sub_11B10()
{
  sub_1EDC((v0 + 16));

  *(v0 + 80), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_11B60()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127A8;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_11CA8()
{
  v1 = *(v0 + 40);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  *(v0 + 72), v6, v7, v8, v9, v10, v11, v12;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_11DDC(uint64_t a1)
{
  v3 = v2;
  sub_3CB70(&qword_127B88, &qword_F3680);
  v4 = *(sub_F133C() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_127AC;

  return sub_B2BC8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_11F28()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(sub_F0DEC() - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v11 = *(v6 - 8);
  if (!(*(v11 + 48))(v0 + v9, 1, v6))
  {
    (*(v11 + 8))(v0 + v9, v6);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_12114(uint64_t a1, uint64_t a2)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(sub_F0DEC() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 32);
  v12 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_127C4;

  return sub_B3F18(a1, a2, v11, v2 + v7, v2 + v10, v12);
}

uint64_t sub_122D8()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_127B0;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_123F8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_388C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_124A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_388C8(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1253C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_127C8;

  return sub_3E5DC(a1, v4);
}

uint64_t sub_1262C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_127CC;

  return sub_3E5DC(a1, v4);
}

void sub_126E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_12734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1287C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_F06CC();
  sub_42800(v3, a2);
  sub_3C96C(v3, a2);
  sub_F069C();
  return sub_F06BC();
}

uint64_t sub_128E4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_F06CC();

  return sub_3C96C(v4, a2);
}

uint64_t sub_12938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_F06CC();
  v7 = sub_3C96C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *sub_129D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_12B2C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_12BAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_12CA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 240) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 232);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = [*(v0 + 144) isChatbot];
    v8 = *(v0 + 232);
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    if (v7)
    {
      v11 = (v0 + 288);
      *(v0 + 288) = 1;
    }

    else
    {
      v11 = (v0 + 280);
      *(v0 + 280) = 0;
    }

    *v8 = v10;

    *(v4 + 8) = v6;
    *(v4 + 16) = v9;
    *(v4 + 24) = v5;
    v14 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = *(v0 + 216);
    v17 = *(v0 + 192);
    v27 = *(v0 + 184);
    v28 = *(v0 + 208);
    v29 = *(v0 + 176);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    v26 = *(v0 + 152);
    v32 = *(v0 + 136);
    v30 = *(v0 + 144);
    v31 = *(v0 + 128);
    *(v4 + 32) = *v11;
    type metadata accessor for RCSSpamReportingController.OperationID(0, v29, v19, v20);
    sub_F034C();
    *(v0 + 248) = *(v18 + 24);
    *(v0 + 40) = v16;
    *(v0 + 48) = swift_getWitnessTable();
    v21 = sub_37474((v0 + 16));
    (*(v14 + 16))(v21, v15, v16);
    (*(v17 + 16))(v28, v26, v27);
    v22 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v23 = swift_allocObject();
    *(v0 + 256) = v23;
    *(v23 + 2) = v29;
    *(v23 + 3) = v19;
    *(v23 + 4) = v30;
    *(v23 + 5) = v3;
    *(v23 + 6) = v31;
    *(v23 + 7) = v32;
    (*(v17 + 32))(&v23[v22], v28, v27);

    v24 = v30;
    swift_unknownObjectRetain();
    v25 = swift_task_alloc();
    *(v0 + 264) = v25;
    *v25 = v0;
    v25[1] = sub_12FFC;

    return sub_B64F0(v0 + 56, v0 + 16, &unk_F53E8, v23);
  }

  else
  {
    type metadata accessor for RCSSpamReportingController.SpamReportOperationError(0, *(v0 + 176), *(v0 + 168), v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_12FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_13244;
  }

  else
  {
    sub_1EDC((v2 + 56));
    v4 = sub_13138;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_13138()
{

  sub_1EDC((v0 + 16));

  return _swift_task_switch(sub_131A8, 0, 0);
}

uint64_t sub_131A8()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_13244()
{

  return _swift_task_switch(sub_132AC, 0, 0);
}

uint64_t sub_132AC()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  sub_1EDC(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_13350()
{
  v40 = v0;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_F06CC();
  sub_3C96C(v3, qword_129728);
  v4 = v1;

  v5 = sub_F06AC();
  v6 = sub_F0CDC();

  v2, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v15 = v0[3];
    v14 = v0[4];
    v16 = v0[2];
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v17 = 136315394;
    if ([v14 isChatbot])
    {
      v18 = 0x746F627461684328;
    }

    else
    {
      v18 = 0x746361746E6F4328;
    }

    v19 = sub_3E850(v18, 0xE900000000000029, &v39);
    0xE900000000000029, v20, v21, v22, v23, v24, v25, v26;
    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_3E850(v16, v15, &v39);
    _os_log_impl(&dword_0, v5, v6, "report spam %s operation created with ID %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v0[16];
  v28 = v0[13];
  v30 = v0[10];
  v29 = v0[11];
  v32 = v0[2];
  v31 = v0[3];
  (*(v0[12] + 16))(v28, v0[8], v29);
  (*(*(v29 - 8) + 32))(v27, v28, v29);
  v35 = (v27 + *(type metadata accessor for RCSSpamReportOperation(0, v29, v33, v34) + 28));
  *v35 = v32;
  v35[1] = v31;
  v0[17] = *(v30 + 32);
  v0[18] = (v30 + 32) & 0xFFFFFFFFFFFFLL | 0x8D61000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v37 = sub_F0A6C();

  return _swift_task_switch(sub_13620, v37, v36);
}

uint64_t sub_13620()
{
  v1 = v0[16];
  v11 = v0[17];
  v2 = v0[15];
  v12 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[4];

  v11(v7, v5, v8, v1, v6, v4, v3);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_13714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v21 = *(v0 + 208);
    v4 = *(v0 + 192);
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v19 = v5;
    v20 = *(v0 + 184);
    v18 = *(v0 + 152);
    v7 = *(v0 + 136);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    v22 = *(v0 + 144);
    *(v0 + 224) = *(*(v0 + 160) + 24);
    *(v0 + 256) = 1;
    *(v0 + 40) = type metadata accessor for RCSSpamReportingController.OperationID(0, v5, v6, v2);
    *(v0 + 48) = swift_getWitnessTable();
    v11 = sub_37474((v0 + 16));

    *v11 = v10;
    v11[1] = v9;
    v11[2] = v8;
    v11[3] = v7;
    *(v11 + 32) = *(v0 + 256);
    sub_F034C();
    (*(v4 + 16))(v21, v18, v20);
    v12 = (*(v4 + 80) + 64) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v0 + 232) = v13;
    *(v13 + 2) = v19;
    *(v13 + 3) = v6;
    *(v13 + 4) = v3;
    *(v13 + 5) = v8;
    *(v13 + 6) = v7;
    *(v13 + 7) = v22;
    (*(v4 + 32))(&v13[v12], v21, v20);

    swift_unknownObjectRetain();
    v14 = v22;
    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_13A0C;

    return sub_B64F0(v0 + 56, v0 + 16, &unk_F5400, v13);
  }

  else
  {
    type metadata accessor for RCSSpamReportingController.SpamReportOperationError(0, *(v0 + 176), *(v0 + 168), v2);
    swift_getWitnessTable();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_13A0C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_13C24;
  }

  else
  {
    sub_1EDC((v2 + 56));
    v4 = sub_13B48;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_13B48()
{

  sub_1EDC((v0 + 16));

  return _swift_task_switch(sub_13BB8, 0, 0);
}

uint64_t sub_13BB8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13C24()
{

  return _swift_task_switch(sub_13C8C, 0, 0);
}

uint64_t sub_13C8C()
{
  swift_unknownObjectRelease();
  sub_1EDC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13D00()
{
  v29 = v0;
  if (qword_128F68 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_F06CC();
  sub_3C96C(v2, qword_129728);

  v3 = sub_F06AC();
  v4 = sub_F0CDC();
  v1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v13 = v0[2];
    v12 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_3E850(v13, v12, &v28);
    _os_log_impl(&dword_0, v3, v4, "report chatbot spam operation created with ID %s", v14, 0xCu);
    sub_1EDC(v15);
  }

  v16 = v0[16];
  v17 = v0[13];
  v19 = v0[10];
  v18 = v0[11];
  v21 = v0[2];
  v20 = v0[3];
  (*(v0[12] + 16))(v17, v0[8], v18);
  (*(*(v18 - 8) + 32))(v16, v17, v18);
  v24 = (v16 + *(type metadata accessor for RCSSpamReportOperation(0, v18, v22, v23) + 28));
  *v24 = v21;
  v24[1] = v20;
  v0[17] = *(v19 + 24);
  v0[18] = (v19 + 24) & 0xFFFFFFFFFFFFLL | 0x1663000000000000;
  sub_F0AEC();

  v0[19] = sub_F0ADC();
  v26 = sub_F0A6C();

  return _swift_task_switch(sub_13F4C, v26, v25);
}

uint64_t sub_13F4C()
{
  v1 = v0[16];
  v11 = v0[17];
  v2 = v0[15];
  v12 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  v11(v8, v7, v6, v1, v5, v4, v3);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_14040()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  if (*(v0 + 88))
  {
  }

  else
  {
    sub_1EDC((v0 + 56));
  }

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_140A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_149FC;

  return sub_BEDC8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_14178()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_141C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1429C;

  return sub_BF15C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1429C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_14390()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  *(v0 + 56), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_14474(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_145A8;

  return sub_BF3AC(a1, a2, v8, v9, v10, v11, v2 + v7, v5);
}

uint64_t sub_145A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1469C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  *(v0 + 48), v6, v7, v8, v9, v10, v11, v12;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_14780(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_14A00;

  return sub_BF618(a1, a2, v8, v9, v10, v11, v2 + v7, v5);
}

uint64_t sub_148B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_14958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_14A04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_14A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_14B08()
{
  v37 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_37380(v1 + 112, v0 + 56, &qword_129368, &unk_F5B80);
  if (*(v0 + 88) == 255)
  {
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    sub_372B0(v0 + 56, &qword_129368, &unk_F5B80);
    v28 = sub_17504(&qword_129370, type metadata accessor for RCSOperationController.Operation, &unk_F5B58);
    v29 = swift_task_alloc();
    *(v0 + 168) = v29;
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *v30 = v0;
    v30[1] = sub_14F4C;
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, v26, v28, 0x292874696177, 0xE600000000000000, sub_1754C, v29, v32);
  }

  else
  {
    v2 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v2;
    *(v0 + 48) = *(v0 + 88);
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v3 = sub_F06CC();
    sub_3C96C(v3, qword_129B28);

    v4 = sub_F06AC();
    v5 = sub_F0CDC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 144);
      v7 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v7 = 136315138;
      v8 = sub_F035C();
      v9 = *(v8 - 8);
      v10 = swift_task_alloc();
      v11 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
      v12 = *(v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
      sub_373E8((v6 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v11);
      (*(v12 + 16))(v11, v12);
      sub_5F9D4();
      v13 = sub_F11EC();
      v15 = v14;
      (*(v9 + 8))(v10, v8);

      v16 = sub_3E850(v13, v15, &v36);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v7 + 4) = v16;
      _os_log_impl(&dword_0, v4, v5, "Fulfilling operation %s with already-received result", v7, 0xCu);
      sub_1EDC(v35);
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 128);
    sub_C63A4(v0 + 16, *(v0 + 136), *(v0 + 160));
    sub_C6584(v24, v0 + 120, v25);
    sub_372B0(v0 + 16, &qword_128B88, &qword_F3F30);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_14F4C()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[18];

    return _swift_task_switch(sub_15090, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_15090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1510C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_151F4;

    return sub_1EBC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_151F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_15304()
{
  v50 = v0;
  v2 = v0[13];
  v1 = v0[14];
  swift_beginAccess();
  v3 = sub_C7880(v2, v1);
  v0[18] = v3;
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v5 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v4);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    swift_beginAccess();
    sub_C77D0(v6, v8);
    v10 = v9;
    swift_endAccess();
    v8, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;

    return _swift_task_switch(sub_15704, v3, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v25 = v0[14];
    v26 = sub_F06CC();
    sub_3C96C(v26, qword_129B28);

    v27 = sub_F06AC();
    v28 = sub_F0D0C();
    v25, v29, v30, v31, v32, v33, v34, v35;
    if (os_log_type_enabled(v27, v28))
    {
      v37 = v0[13];
      v36 = v0[14];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_3E850(v37, v36, &v49);
      _os_log_impl(&dword_0, v27, v28, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v38, 0x16u);
      sub_1EDC(v39);
    }

    v40 = *(v0[17] + 136);
    if (v40)
    {
      v41 = v0[16];
      *(swift_task_alloc() + 16) = v41;
      sub_3CB70(&qword_127B88, &qword_F3680);
      v42 = sub_F133C();
      sub_C5C14(sub_17C48, v42, (v0 + 2));

      v48 = (v40 + *v40);
      v43 = swift_task_alloc();
      v0[19] = v43;
      *v43 = v0;
      v43[1] = sub_157D0;
      v45 = v0[13];
      v44 = v0[14];

      return (v48)(v45, v44, v0 + 2);
    }

    else
    {
      v46 = v0[1];

      return v46();
    }
  }
}

uint64_t sub_15704()
{
  v1 = v0[17];
  sub_C53A0(v0[15], v0[16]);

  return _swift_task_switch(sub_15770, v1, 0);
}

uint64_t sub_15770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_157D0()
{
  v1 = *v0;
  v4 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_158DC()
{
  v158 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 424);
  v3 = v2[3];
  v4 = v2[4];
  sub_373E8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  swift_beginAccess();
  v15 = *(v1 + 168);
  if (*v15[1].IMDTelephonyServiceSession_opaque)
  {

    v16 = sub_51FEC(v5, v7);
    v18 = v17;
    v7, v17, v19, v20, v21, v22, v23, v24;
    if ((v18 & 1) == 0)
    {
LABEL_7:
      v52 = v15;
      goto LABEL_8;
    }

    v25 = *(v0 + 456);
    v26 = (*v15[3].state + 16 * v16);
    v27 = *v26;
    v7 = v26[1];

    v15, v28, v29, v30, v31, v32, v33, v34;
    swift_beginAccess();
    v15 = *(v25 + 160);
    if (*v15[1].IMDTelephonyServiceSession_opaque)
    {

      v35 = sub_51FEC(v27, v7);
      v37 = v36;
      v7, v36, v38, v39, v40, v41, v42, v43;
      if (v37)
      {
        v44 = *(*v15[3].state + 8 * v35);

        v15, v45, v46, v47, v48, v49, v50, v51;
        sub_1F28(v44 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id, v0 + 256);

        sub_3928((v0 + 256), v0 + 216);
        sub_3928((v0 + 216), v0 + 16);
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v52 = v7;
LABEL_8:
  v52, v8, v9, v10, v11, v12, v13, v14;
  sub_1F28(*(v0 + 424), v0 + 16);
LABEL_9:
  v53 = *(v0 + 456);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  sub_373E8((v0 + 16), v54);
  v56 = sub_F035C();
  v57 = *(v56 - 8);
  v58 = swift_task_alloc();
  (*(v55 + 16))(v54, v55);
  v59 = sub_F032C();
  v61 = v60;
  *(v0 + 464) = v60;
  (*(v57 + 8))(v58, v56);

  swift_beginAccess();
  v62 = *(v53 + 160);
  if (*v62[1].IMDTelephonyServiceSession_opaque)
  {

    v63 = sub_51FEC(v59, v61);
    if (v64)
    {
      v71 = v63;
      v61, v64, v65, v66, v67, v68, v69, v70;
      v72 = *(*v62[3].state + 8 * v71);

      v62, v73, v74, v75, v76, v77, v78, v79;
      v80 = qword_128F78;

      if (v80 != -1)
      {
        swift_once();
      }

      v81 = sub_F06CC();
      sub_3C96C(v81, qword_129B28);
      sub_1F28(v0 + 16, v0 + 176);
      v82 = sub_F06AC();
      v83 = sub_F0CCC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v157 = v85;
        *v84 = 141558275;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2081;
        sub_373E8((v0 + 176), *(v0 + 200));
        v86 = sub_F11EC();
        v88 = v87;
        sub_1EDC((v0 + 176));
        v89 = sub_3E850(v86, v88, &v157);
        v88, v90, v91, v92, v93, v94, v95, v96;
        *(v84 + 14) = v89;
        _os_log_impl(&dword_0, v82, v83, "Existing operation found for ID %{private,mask.hash}s, waiting for existing operation", v84, 0x16u);
        sub_1EDC(v85);
      }

      else
      {

        sub_1EDC((v0 + 176));
      }

      *(v0 + 512) = v72;
      v152 = swift_task_alloc();
      *(v0 + 520) = v152;
      *v152 = v0;
      v152[1] = sub_16558;
      v153 = *(v0 + 448);
      v154 = *(v0 + 416);

      return sub_C62E4(v154, v153);
    }

    v62, v64, v65, v66, v67, v68, v69, v70;
  }

  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v97 = sub_F06CC();
  sub_3C96C(v97, qword_129B28);
  sub_1F28(v0 + 16, v0 + 56);
  v98 = sub_F06AC();
  v99 = sub_F0CCC();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v155 = v1;
    v157 = swift_slowAlloc();
    v101 = v157;
    *v100 = 141558275;
    *(v100 + 4) = 1752392040;
    *(v100 + 12) = 2081;
    sub_373E8((v0 + 56), *(v0 + 80));
    v102 = sub_F11EC();
    v104 = v103;
    sub_1EDC((v0 + 56));
    v105 = sub_3E850(v102, v104, &v157);
    v104, v106, v107, v108, v109, v110, v111, v112;
    *(v100 + 14) = v105;
    _os_log_impl(&dword_0, v98, v99, "Creating a new operation with ID %{private,mask.hash}s", v100, 0x16u);
    sub_1EDC(v101);
    v1 = v155;
  }

  else
  {

    sub_1EDC((v0 + 56));
  }

  v113 = *(v0 + 40);
  v114 = *(v0 + 48);
  sub_373E8((v0 + 16), v113);
  v115 = (*(v114 + 24))(v113, v114);
  v117 = v116;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v157 = *(v1 + 168);
  *(v1 + 168) = 0x8000000000000000;
  sub_BC254(v59, v61, v115, v117, isUniquelyReferenced_nonNull_native);
  v117, v119, v120, v121, v122, v123, v124, v125;
  *(v1 + 168) = v157;
  swift_endAccess();
  sub_1F28(v0 + 16, v0 + 96);
  type metadata accessor for RCSOperationController.Operation(0);
  swift_allocObject();
  v127 = sub_C7C30((v0 + 96), v126);
  *(v0 + 472) = v127;
  swift_beginAccess();
  swift_retain_n();

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *(v53 + 160);
  *(v53 + 160) = 0x8000000000000000;
  sub_BC0D8(v127, v59, v61, v128);
  v61, v129, v130, v131, v132, v133, v134, v135;
  *(v53 + 160) = v157;
  swift_endAccess();
  v136 = *(v0 + 40);
  v137 = *(v0 + 48);
  sub_373E8((v0 + 16), v136);
  v138 = (*(v137 + 32))(v136, v137);
  *(v0 + 480) = v139;
  if (v139)
  {
    v140 = v138;
    v141 = v139;
    v142 = *(v0 + 456);
    v144 = *(v0 + 432);
    v143 = *(v0 + 440);
    sub_1F28(v0 + 16, v0 + 136);
    v145 = swift_allocObject();
    *(v0 + 488) = v145;
    sub_3928((v0 + 136), (v145 + 2));
    v145[7] = v144;
    v145[8] = v143;
    v145[9] = v59;
    v145[10] = v61;
    v145[11] = v142;
    v156 = &async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:) + async function pointer to dispatch thunk of AsyncMultiQueue.perform(key:_:);

    v146 = swift_task_alloc();
    *(v0 + 496) = v146;
    *v146 = v0;
    v146[1] = sub_16214;

    return (v156)(v140, v141, &unk_F49D0, v145);
  }

  else
  {
    v148 = swift_task_alloc();
    *(v0 + 504) = v148;
    *v148 = v0;
    v148[1] = sub_163C4;
    v149 = *(v0 + 456);
    v150 = *(v0 + 432);
    v151 = *(v0 + 440);

    return sub_C72F8(v0 + 16, v150, v151, v59, v61, v149);
  }
}

uint64_t sub_16214()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;

  v1[64] = v1[59];
  v11 = swift_task_alloc();
  v1[65] = v11;
  *v11 = v3;
  v11[1] = sub_16558;
  v12 = v1[56];
  v13 = v1[52];

  return sub_C62E4(v13, v12);
}

uint64_t sub_163C4()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *v0;

  v2, v4, v5, v6, v7, v8, v9, v10;
  v1[64] = v1[59];
  v11 = swift_task_alloc();
  v1[65] = v11;
  *v11 = v3;
  v11[1] = sub_16558;
  v12 = v1[56];
  v13 = v1[52];

  return sub_C62E4(v13, v12);
}

uint64_t sub_16558()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 456);
  if (v0)
  {
    v4 = sub_1670C;
  }

  else
  {
    v4 = sub_166A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_166A0()
{

  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1670C()
{

  sub_1EDC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16778()
{
  v24 = v0;
  if (qword_128F78 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_F06CC();
  sub_3C96C(v2, qword_129B28);
  sub_1F28(v1, (v0 + 2));
  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    sub_373E8(v0 + 2, v0[5]);
    v7 = sub_F11EC();
    v9 = v8;
    sub_1EDC(v0 + 2);
    v10 = sub_3E850(v7, v9, &v23);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 14) = v10;
    _os_log_impl(&dword_0, v3, v4, "No operation with ID %{private,mask.hash}s is being tracked, starting a new one", v5, 0x16u);
    sub_1EDC(v6);
  }

  else
  {

    sub_1EDC(v0 + 2);
  }

  v22 = (v0[8] + *v0[8]);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_169F4;
  v20 = v0[10];
  v19 = v0[11];

  return v22(v20, v19);
}

uint64_t sub_169F4()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[13];

    return _swift_task_switch(sub_16B28, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_16B28()
{
  v1 = v0[15];
  swift_errorRetain();
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_16BEC;
  v3 = v0[11];
  v4 = v0[10];

  return sub_E10D8(v4, v3, v1, 1);
}

uint64_t sub_16BEC()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_16D18, v1, 0);
}

uint64_t sub_16D18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16D78()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_16EB8;
  }

  else
  {
    v5 = *(v2 + 48);
    sub_1EDC((v2 + 16));
    v4 = sub_16EA0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_16ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_16FC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17000()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17C30;

  return sub_C7288(v0);
}

uint64_t sub_17090()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_170D0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17198;

  return sub_DEF50(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_17198()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1728C()
{
  sub_1EDC((v0 + 16));

  *(v0 + 80), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_172DC()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_17C34;

  return sub_C72F8((v0 + 2), v2, v3, v4, v5, v6);
}

uint64_t sub_173A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_17400()
{
  sub_C8238(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17454(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1746C()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    sub_1EDC((v0 + 16));
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_174CC()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_17504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_17554()
{
  sub_3CB70(&qword_127B88, &qword_F3680);
  v1 = sub_F0A9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_17604(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v4 = *(sub_F0A9C() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_C6840(a1, v5, v3);
}

uint64_t sub_176B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  a2[3] = v4;
  v5 = sub_37474(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, a1, v4);
}

uint64_t sub_17720()
{
  v1 = *(v0 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return _swift_deallocObject(v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_17850()
{
  v1 = *(v0 + 16);
  sub_3CB70(&qword_127B88, &qword_F3680);
  v2 = *(sub_F133C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_C60AC(v0 + v3, v5, v6, v1);
}

uint64_t sub_17914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17C38;

  return sub_3E5DC(a1, v4);
}

uint64_t sub_179CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17A84;

  return sub_3E5DC(a1, v4);
}

uint64_t sub_17A84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_17B78()
{
  if (*(v0 + 48))
  {
  }

  else
  {
    sub_1EDC((v0 + 16));
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_17BD8()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17C58(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3C96C(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  sub_F044C();
  (*(v6 + 8))(v8, v5);
  return v11[15];
}

uint64_t sub_17DA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = sub_388C8(&unk_127FA0, &qword_F34C0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v82 - v6);
  sub_5BD2C(a1, v87);
  if ((v88[58] & 1) == 0)
  {
    return sub_5EFF4(v87);
  }

  v89 = a2;
  v8 = v87[1];
  v10 = v87[3];
  v9 = v87[4];
  v11 = v87[6];
  v84 = type metadata accessor for RCSMessage(0);
  if (*(a1 + *(v84 + 44)) == 1)
  {
    v9, v12, v13, v14, v15, v16, v17, v18;
    v10, v19, v20, v21, v22, v23, v24, v25;
    v8, v26, v27, v28, v29, v30, v31, v32;
    v11, v33, v34, v35, v36, v37, v38, v39;
    sub_5BD88(v88);
  }

  else
  {
    v83 = v87[2];
    v85 = v87[0];
    v86 = v8;

    v90._countAndFlagsBits = 58;
    v90._object = 0xE100000000000000;
    sub_F08CC(v90);
    v91._countAndFlagsBits = v83;
    v91._object = v10;
    sub_F08CC(v91);
    v9, v41, v42, v43, v44, v45, v46, v47;
    v10, v48, v49, v50, v51, v52, v53, v54;
    v8, v55, v56, v57, v58, v59, v60, v61;
    v11, v62, v63, v64, v65, v66, v67, v68;
    v69 = v86;
    v70 = sub_F07BC();
    v69, v71, v72, v73, v74, v75, v76, v77;
    LODWORD(v69) = [v70 __im_isChatBot];

    result = sub_5BD88(v88);
    if (!v69)
    {
      return result;
    }
  }

  v78 = *(a1 + 128);
  v79 = *(a1 + 136);
  type metadata accessor for RCSRichCards();
  v80 = swift_allocObject();
  *(v80 + 16) = v89(v2, v78, v79);
  *v7 = v80;
  v81 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v81 - 8) + 56))(v7, 0, 1, v81);
  return sub_C9724(v7, a1 + *(v84 + 32));
}

uint64_t sub_1800C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18100()
{
  sub_F0B9C();
  sub_F0B6C();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_181E0;
  v2 = v0[11];
  v3 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_181E0()
{

  return _swift_task_switch(sub_182DC, 0, 0);
}

uint64_t sub_182DC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[10], v1, v2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[10];
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v0[2];
      v9 = *v7;
      v10 = v7[1];
      v0[18] = v10;
      v11 = v7[2];
      v12 = swift_task_alloc();
      v0[19] = v12;
      v12[2] = v8;
      v12[3] = v11;
      v12[4] = v9;
      v12[5] = v10;
      v13 = swift_task_alloc();
      v0[20] = v13;
      *v13 = v0;
      v13[1] = sub_187DC;

      return withCheckedContinuation<A>(isolation:function:_:)(v13, 0, 0, 0x29286E7572, 0xE500000000000000, sub_189A0, v12, &type metadata for ()[8]);
    }

    else
    {
      v14 = v0[7];
      v15 = v0[5];
      v22 = v0[4];
      (*(v0[6] + 32))(v14, v7, v15);
      v0[16] = swift_unknownObjectUnownedLoadStrong();
      v16 = *(v15 + 36);
      v21 = (*(v22 + 24) + **(v22 + 24));
      v17 = swift_task_alloc();
      v0[17] = v17;
      *v17 = v0;
      v17[1] = sub_18608;
      v18 = v0[7];
      v19 = v0[3];
      v20 = v0[4];

      return v21(v18, v14 + v16, v19, v20);
    }
  }
}

uint64_t sub_18608()
{

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_18720, 0, 0);
}

uint64_t sub_18720()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_181E0;
  v2 = v0[11];
  v3 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_187DC()
{

  return _swift_task_switch(sub_188F4, 0, 0);
}

uint64_t sub_188F4()
{

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_181E0;
  v2 = v0[11];
  v3 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_189B0()
{
  v1 = sub_388C8(&qword_129F98, &qword_F62E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_18A80()
{
  sub_388C8(&qword_129F98, &qword_F62E8);
  v1 = *(v0 + 24);

  return sub_CB4E4(v1);
}

uint64_t sub_18AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18B58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3CB70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18C40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18C80(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_18D34;

  return sub_CA88C();
}

uint64_t sub_18D34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_18E30()
{
  v88 = v0;
  v1 = [*(v0 + 16) fileTransferGUIDs];
  if (!v1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v2 = v1;
  v3 = sub_F09FC();

  if (!*v3[1].IMDTelephonyServiceSession_opaque)
  {

    v52 = v3;
LABEL_12:
    v52, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_13;
  }

  v4 = *(v0 + 16);
  v6 = *v3[2].IMDTelephonyServiceSession_opaque;
  v5 = *v3[2].state;

  v3, v7, v8, v9, v10, v11, v12, v13;
  v14 = [v4 fileTransferGUIDs];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v14;

  v16 = sub_F09FC();

  v17 = *v16[1].IMDTelephonyServiceSession_opaque;
  v16, v18, v19, v20, v21, v22, v23, v24;
  if (v17 != 1)
  {
    v52 = v5;
    goto LABEL_12;
  }

  v32 = *(v0 + 32);
  swift_unknownObjectUnownedLoadStrong();
  v33 = (*(*(v32 + 88) + 56))(v6, v5, *(v32 + 80));
  v5, v34, v35, v36, v37, v38, v39, v40;
  swift_unknownObjectRelease();
  if (!v33)
  {
LABEL_13:
    v53 = *(v0 + 16);
    sub_CCD3C(*(v0 + 56));
    v54 = v53;
    v55 = sub_F06AC();
    v56 = sub_F0CDC();
    if (!os_log_type_enabled(v55, v56))
    {
      v75 = *(v0 + 48);
      v74 = *(v0 + 56);
      v76 = *(v0 + 40);

      (*(v75 + 8))(v74, v76);
      goto LABEL_17;
    }

    v57 = *(v0 + 16);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v87 = v59;
    *v58 = 136315138;
    v60 = [v57 guid];

    if (v60)
    {
      v61 = *(v0 + 48);
      v86 = *(v0 + 56);
      v62 = *(v0 + 40);
      v63 = sub_F07EC();
      v65 = v64;

      v66 = sub_3E850(v63, v65, &v87);
      v65, v67, v68, v69, v70, v71, v72, v73;
      *(v58 + 4) = v66;
      _os_log_impl(&dword_0, v55, v56, "%s does not look like a current location message", v58, 0xCu);
      sub_1EDC(v59);

      (*(v61 + 8))(v86, v62);
LABEL_17:
      v33 = 0;
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v41 = [v33 type];
  if (!v41)
  {
LABEL_22:

    goto LABEL_13;
  }

  v42 = v41;
  v43 = sub_F07EC();
  v45 = v44;

  if (v43 != 0xD000000000000010 || 0x8000000000100700 != v45)
  {
    v78 = sub_F122C();
    v45, v79, v80, v81, v82, v83, v84, v85;
    if (v78)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v45, v46, v47, 0x8000000000100700, v48, v49, v50, v51;
LABEL_18:

  v77 = *(v0 + 8);

  v77(v33);
}

uint64_t sub_191C4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_192DC, v2, 0);
}

uint64_t sub_192DC()
{
  if (*(v0 + 48))
  {
    sub_F0AEC();
    *(v0 + 56) = sub_F0ADC();
    v2 = sub_F0A6C();

    return _swift_task_switch(sub_194C8, v2, v1);
  }

  v3 = [*(v0 + 16) balloonBundleID];
  if (!v3)
  {
    sub_F07EC();
    goto LABEL_14;
  }

  v4 = v3;
  v5 = sub_F07EC();
  v7 = v6;

  v8 = sub_F07EC();
  if (!v7)
  {
LABEL_14:
    v9, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_15;
  }

  if (v5 == v8 && v7 == v9)
  {
    v9, v9, v8, v11, v12, v13, v14, v15;
    v7, v36, v37, v38, v39, v40, v41, v42;
    goto LABEL_21;
  }

  v17 = v9;
  v18 = sub_F122C();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v7, v26, v27, v28, v29, v30, v31, v32;
  if ((v18 & 1) == 0)
  {
LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

LABEL_21:
  v33 = [*(v0 + 16) body];
  if (v33)
  {
    v43 = v33;
    v44 = [v33 string];

    v45 = sub_F07EC();
    v47 = v46;

    v34 = v47;
    v33 = v45;
    goto LABEL_17;
  }

LABEL_16:
  v34 = 0;
LABEL_17:
  v35 = *(v0 + 8);

  return v35(v33, v34);
}

uint64_t sub_194C8()
{
  v1 = v0[6];
  v2 = v0[4];

  v0[8] = sub_CD4F0(v1);
  v0[9] = v3;

  return _swift_task_switch(sub_19548, v2, 0);
}

uint64_t sub_19548()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_195AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return _swift_task_switch(sub_196F0, v4, 0);
}

uint64_t sub_196F0()
{
  v1 = *(v0 + 128);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_22;
  }

  v2 = (v0 + 136);
  *(v0 + 136) = 0;
  v3 = objc_opt_self();
  v4 = sub_F07BC();
  v5 = [v3 vCardCoordinateForMapURL:v4 outLatitude:v0 + 136 outLongitude:v0 + 140];

  if (!v5)
  {
    v1, v6, v7, v8, v9, v10, v11, v12;
    goto LABEL_22;
  }

  v13 = sub_F07BC();
  v14 = sub_F07BC();
  v15 = IMGetDomainValueForKey();

  if (v15)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  *(v0 + 16) = v32;
  *(v0 + 32) = v33;
  if (*(v0 + 40))
  {
    sub_37310(0, &qword_128050, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 88);
      [v16 floatValue];
      v18 = v17;

      goto LABEL_13;
    }
  }

  else
  {
    sub_372B0(v0 + 16, &unk_127FB0, &qword_F2F40);
  }

  v18 = *v2;
LABEL_13:
  *v2 = v18;
  v19 = sub_F07BC();
  v20 = sub_F07BC();
  v21 = IMGetDomainValueForKey();

  if (v21)
  {
    sub_F0E6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  *(v0 + 48) = v32;
  *(v0 + 64) = v33;
  if (!*(v0 + 72))
  {
    sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
    goto LABEL_20;
  }

  sub_37310(0, &qword_128050, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = *(v0 + 140);
    goto LABEL_21;
  }

  v22 = *(v0 + 80);
  [v22 floatValue];
  v24 = v23;

LABEL_21:
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  *(v0 + 140) = v24;
  v28 = v27 + *(type metadata accessor for RCSMessage(0) + 32);
  sub_372B0(v28, &unk_127FA0, &qword_F34C0);
  *v28 = vcvtq_f64_f32(*(v0 + 136));
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  *(v28 + 32) = 0;
  v29 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
LABEL_22:
  v30 = *(v0 + 8);

  return v30(v5);
}

uint64_t sub_19AB8()
{
  v108 = v0;
  v1 = *(v0 + 24);
  v2 = sub_E9318(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for RCSMessage(0);
  *(v0 + 128) = v3;
  RCSMessageMetadata.merge(with:)(v2);
  v2, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_E9B84(v1);
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 16);
    v14 = *(v3 + 32);
    sub_372B0(v13 + v14, &unk_127FA0, &qword_F34C0);
    type metadata accessor for RCSSuggestedReply();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v13 + v14) = v15;
    v16 = type metadata accessor for RCSMessage.Content(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    v20 = 1;
    (*(*(v16 - 8) + 56))(v13 + v14, 0, 1, v16);
LABEL_8:

    v21 = *(v0 + 8);

    return v21(v20);
  }

  v17 = sub_E9B98(*(v0 + 24));
  if (v17)
  {
    v18 = v17;
    v13 = *(v0 + 16);
    v14 = *(v3 + 32);
    sub_372B0(v13 + v14, &unk_127FA0, &qword_F34C0);
    type metadata accessor for RCSSuggestedAction();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v13 + v14) = v19;
    v16 = type metadata accessor for RCSMessage.Content(0);
    goto LABEL_7;
  }

  if ([*(v0 + 24) isDeviceActionMessage])
  {
    v13 = *(v0 + 16);
    v14 = *(v3 + 32);
    sub_372B0(v13 + v14, &unk_127FA0, &qword_F34C0);
    v16 = type metadata accessor for RCSMessage.Content(0);
    goto LABEL_7;
  }

  if ([*(v0 + 24) isTypingMessage])
  {
    v23 = *(v0 + 112);
    v24 = *(v0 + 16);
    *v23 = [*(v0 + 24) isFinished] ^ 1;
    v25 = type metadata accessor for RCSMessage.Content(0);
    swift_storeEnumTagMultiPayload();
    v20 = 1;
    (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
    sub_C9724(v23, v24 + *(v3 + 32));
    goto LABEL_8;
  }

  if ([*(v0 + 24) sendAlternateLayoutAsText])
  {
    v26 = [*(v0 + 24) payloadData];
    if (v26)
    {
      v27 = v26;
      v28 = sub_F025C();
      v30 = v29;

      v31 = sub_F024C();
      sub_5F048(v28, v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = IMBalloonPluginFallbackText();

    if (v32)
    {
      v33 = *(v0 + 104);
      v34 = sub_F07EC();
      v36 = v35;

      sub_CCD3C(v33);
      v37 = sub_F06AC();
      v38 = sub_F0CCC();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 104);
      v42 = *(v0 + 56);
      v41 = *(v0 + 64);
      if (v39)
      {
        v105 = v36;
        v43 = v34;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v107 = v45;
        *v44 = 136446210;
        *(v44 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v107);
        _os_log_impl(&dword_0, v37, v38, "%{public}s populated RCSMessage with alternate layout fallback text content", v44, 0xCu);
        sub_1EDC(v45);

        v34 = v43;
        v36 = v105;
      }

      (*(v41 + 8))(v40, v42);
      v46 = (*(v0 + 16) + *(v3 + 32));
      sub_372B0(v46, &unk_127FA0, &qword_F34C0);
      *v46 = v34;
      v46[1] = v36;
LABEL_30:
      v46[2] = 0;
      v75 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v20 = 1;
      (*(*(v75 - 8) + 56))(v46, 0, 1, v75);
      goto LABEL_8;
    }
  }

  v47 = [*(v0 + 24) fileTransferGUIDs];
  if (!v47)
  {
LABEL_27:
    v60 = *(v0 + 48);
    v61 = *(v0 + 24);
    v62 = sub_F01EC();
    v63 = *(v62 - 8);
    v64 = swift_task_alloc();
    sub_388C8(&qword_128320, &qword_F34B0);
    v65 = swift_task_alloc();
    swift_unknownObjectUnownedLoadStrong();
    (*(*(v60 + 88) + 80))(v61, *(v60 + 80));
    swift_unknownObjectRelease();
    if ((*(v63 + 48))(v65, 1, v62) != 1)
    {
      v76 = *(v0 + 128);
      v77 = *(v0 + 112);
      v78 = *(v0 + 16);
      (*(v63 + 32))(v64, v65, v62);

      v79 = sub_F017C();
      v81 = v80;
      (*(v63 + 8))(v64, v62);
      *v77 = v79;
      v77[1] = v81;
      v77[2] = 0;
      v82 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v20 = 1;
      (*(*(v82 - 8) + 56))(v77, 0, 1, v82);
      sub_C9724(v77, v78 + *(v76 + 32));

      goto LABEL_8;
    }

    v66 = *(v0 + 24);
    sub_372B0(v65, &qword_128320, &qword_F34B0);

    v67 = [v66 body];
    if (!v67)
    {
      v83 = *(v0 + 24);
      sub_CCD3C(*(v0 + 80));
      v84 = v83;
      v85 = sub_F06AC();
      v86 = sub_F0CFC();

      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 80);
      v90 = *(v0 + 56);
      v89 = *(v0 + 64);
      if (v87)
      {
        v91 = *(v0 + 24);
        v106 = *(v0 + 80);
        v92 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *v92 = 136446466;
        *(v92 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v107);
        *(v92 + 12) = 2080;
        v93 = [v91 debugDescription];
        v94 = sub_F07EC();
        v96 = v95;

        v97 = sub_3E850(v94, v96, &v107);
        v96, v98, v99, v100, v101, v102, v103, v104;
        *(v92 + 14) = v97;
        _os_log_impl(&dword_0, v85, v86, "%{public}s asked to convert unknown message type to RCS: %s", v92, 0x16u);
        swift_arrayDestroy();

        (*(v89 + 8))(v106, v90);
      }

      else
      {

        (*(v89 + 8))(v88, v90);
      }

      v20 = 0;
      goto LABEL_8;
    }

    v68 = *(v0 + 128);
    v69 = *(v0 + 16);
    v70 = v67;
    v71 = [v67 string];

    v72 = sub_F07EC();
    v74 = v73;

    v46 = (v69 + *(v68 + 32));
    sub_372B0(v46, &unk_127FA0, &qword_F34C0);
    *v46 = v72;
    v46[1] = v74;
    goto LABEL_30;
  }

  v48 = v47;
  v49 = sub_F09FC();
  *(v0 + 136) = v49;

  if (!*v49[1].IMDTelephonyServiceSession_opaque)
  {
    v49, v50, v51, v52, v53, v54, v55, v56;
    goto LABEL_27;
  }

  v57 = swift_task_alloc();
  *(v0 + 144) = v57;
  *v57 = v0;
  v57[1] = sub_1A488;
  v59 = *(v0 + 16);
  v58 = *(v0 + 24);

  return sub_CDD5C(v59, v58);
}

uint64_t sub_1A488(char a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1A5A0, v2, 0);
}

unint64_t sub_1A5A0(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v73 = v8;
  v9 = *(v8 + 136);
  if (*(v8 + 200) == 1)
  {
    v10 = *(v8 + 96);
    *(v8 + 136), a2, a3, a4, a5, a6, a7, a8;
    sub_CCD3C(v10);
    v11 = sub_F06AC();
    v12 = sub_F0CCC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v8 + 96);
    v15 = *(v8 + 56);
    v16 = *(v8 + 64);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v72 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v72);
      _os_log_impl(&dword_0, v11, v12, "%{public}s populated RCSMessage with geolocation content", v17, 0xCu);
      sub_1EDC(v18);
    }

    (*(v16 + 8))(v14, v15);

    v19 = *(v8 + 8);

    return v19(1);
  }

  else
  {
    v21 = *(v8 + 24);
    sub_CCD3C(*(v8 + 88));

    v22 = v21;
    v23 = sub_F06AC();
    v24 = sub_F0CCC();
    v9, v25, v26, v27, v28, v29, v30, v31;

    if (os_log_type_enabled(v23, v24))
    {
      v32 = *(v8 + 136);
      v33 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v33 = 136446722;
      result = sub_3E850(0xD000000000000023, 0x8000000000100680, &v72);
      *(v33 + 4) = result;
      *(v33 + 12) = 2080;
      if (!*(v32 + 16))
      {
        __break(1u);
        return result;
      }

      v34 = *(v8 + 136);
      v35 = *(v8 + 64);
      v70 = *(v8 + 56);
      v71 = *(v8 + 88);
      v36 = *(v8 + 24);
      v37 = *(v34 + 32);
      v38 = *(v34 + 40);

      v39 = sub_3E850(v37, v38, &v72);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v33 + 14) = v39;
      *(v33 + 22) = 2080;
      v47 = [v36 isAudioMessage];
      v48 = v47 == 0;
      if (v47)
      {
        v49 = 7562617;
      }

      else
      {
        v49 = 28526;
      }

      if (v48)
      {
        v50 = 0xE200000000000000;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_3E850(v49, v50, &v72);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v33 + 24) = v51;
      _os_log_impl(&dword_0, v23, v24, "%{public}s Sending attachment %s, isAudioMessage: %s", v33, 0x20u);
      swift_arrayDestroy();

      v59 = *(v35 + 8);
      v59(v71, v70);
    }

    else
    {
      v60 = *(v8 + 88);
      v61 = *(v8 + 56);
      v62 = *(v8 + 64);

      v59 = *(v62 + 8);
      v59(v60, v61);
    }

    *(v8 + 152) = v59;
    v63 = *(v8 + 24);
    v64 = [v63 isAudioMessage];
    v65 = [v63 encrypted];
    v66 = swift_task_alloc();
    *(v8 + 160) = v66;
    *v66 = v8;
    v66[1] = sub_1AA00;
    v67 = *(v8 + 136);
    v68 = *(v8 + 32);
    v69 = *(v8 + 16);

    return sub_DE2FC(v69, v64, v65, v67, v68);
  }
}

uint64_t sub_1AA00(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  *(v4 + 168) = v1;

  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = *(v4 + 120);
  if (v1)
  {
    v14 = sub_1B084;
  }

  else
  {
    *(v4 + 201) = a1 & 1;
    v14 = sub_1AB5C;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_1AB5C()
{
  v52 = v0;
  if (*(v0 + 201))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = sub_F01EC();
    v5 = *(v4 - 8);
    v6 = swift_task_alloc();
    sub_388C8(&qword_128320, &qword_F34B0);
    v7 = swift_task_alloc();
    swift_unknownObjectUnownedLoadStrong();
    (*(*(v2 + 88) + 80))(v3, *(v2 + 80));
    swift_unknownObjectRelease();
    if ((*(v5 + 48))(v7, 1, v4) == 1)
    {
      v8 = *(v0 + 24);
      sub_372B0(v7, &qword_128320, &qword_F34B0);

      v9 = [v8 body];
      if (v9)
      {
        v10 = *(v0 + 128);
        v11 = *(v0 + 16);
        v12 = v9;
        v13 = [v9 string];

        v14 = sub_F07EC();
        v16 = v15;

        v17 = (v11 + *(v10 + 32));
        sub_372B0(v17, &unk_127FA0, &qword_F34C0);
        *v17 = v14;
        v17[1] = v16;
        v17[2] = 0;
        v18 = type metadata accessor for RCSMessage.Content(0);
        swift_storeEnumTagMultiPayload();
        v1 = 1;
        (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
      }

      else
      {
        v26 = *(v0 + 24);
        sub_CCD3C(*(v0 + 80));
        v27 = v26;
        v28 = sub_F06AC();
        v29 = sub_F0CFC();

        v30 = os_log_type_enabled(v28, v29);
        v31 = *(v0 + 80);
        v33 = *(v0 + 56);
        v32 = *(v0 + 64);
        if (v30)
        {
          v34 = *(v0 + 24);
          v50 = *(v0 + 80);
          v35 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v35 = 136446466;
          *(v35 + 4) = sub_3E850(0xD000000000000023, 0x8000000000100680, &v51);
          *(v35 + 12) = 2080;
          v36 = [v34 debugDescription];
          v37 = sub_F07EC();
          v39 = v38;

          v40 = sub_3E850(v37, v39, &v51);
          v39, v41, v42, v43, v44, v45, v46, v47;
          *(v35 + 14) = v40;
          _os_log_impl(&dword_0, v28, v29, "%{public}s asked to convert unknown message type to RCS: %s", v35, 0x16u);
          swift_arrayDestroy();

          (*(v32 + 8))(v50, v33);
        }

        else
        {

          (*(v32 + 8))(v31, v33);
        }

        v1 = 0;
      }
    }

    else
    {
      v19 = *(v0 + 128);
      v20 = *(v0 + 112);
      v21 = *(v0 + 16);
      (*(v5 + 32))(v6, v7, v4);

      v22 = sub_F017C();
      v24 = v23;
      (*(v5 + 8))(v6, v4);
      *v20 = v22;
      v20[1] = v24;
      v20[2] = 0;
      v25 = type metadata accessor for RCSMessage.Content(0);
      swift_storeEnumTagMultiPayload();
      v1 = 1;
      (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
      sub_C9724(v20, v21 + *(v19 + 32));
    }
  }

  v48 = *(v0 + 8);

  return v48(v1);
}

uint64_t sub_1B084(uint64_t a1)
{
  sub_CCD3C(v1[9]);
  v2 = sub_F06AC();
  v3 = sub_F0CEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failed to process attachments for message", v4, 2u);
  }

  v5 = v1[19];
  v6 = v1[9];
  v7 = v1[7];
  v8 = v1[3];

  v5(v6, v7);
  sub_F0AEC();
  v9 = v8;
  v1[22] = sub_F0ADC();
  v11 = sub_F0A6C();

  return _swift_task_switch(sub_1B1CC, v11, v10);
}

uint64_t sub_1B1CC()
{
  v1 = v0[15];

  v0[23] = RCSMessage.SenderInfo.description.getter();
  v0[24] = v2;

  return _swift_task_switch(sub_1B244, v1, 0);
}

uint64_t sub_1B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[23];
  v6 = v4[24];
  v7 = v4[3];
  v8 = v4[21] | 0x8000000000000000;
  type metadata accessor for RCSMessageCreator.MessageCreationError(0, *(v4[6] + 80), *(v4[6] + 88), a4);
  swift_getWitnessTable();
  swift_allocError();
  *v9 = v7;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v8;
  swift_willThrow();

  v10 = v4[1];

  return v10(0);
}

uint64_t sub_1B370()
{
  v1 = v0[36];
  v0[43] = swift_unknownObjectUnownedLoadStrong();
  v0[44] = *(v1 + 40);
  v0[45] = (v1 + 40) & 0xFFFFFFFFFFFFLL | 0x7B1F000000000000;
  v0[46] = sub_F0AEC();
  v0[47] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_1B424, v3, v2);
}

uint64_t sub_1B424()
{
  v1 = v0[44];
  v2 = v0[42];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[33];

  v6 = v1(v5, v3, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  v0[48] = v6;
  v0[49] = v8;

  return _swift_task_switch(sub_1B4D8, v2, 0);
}

uint64_t sub_1B4D8()
{
  v1 = v0[36];
  v0[50] = swift_unknownObjectUnownedLoadStrong();
  v0[51] = *(v1 + 48);
  v0[52] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x4D2E000000000000;
  v0[53] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_1B580, v3, v2);
}

uint64_t sub_1B580()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 336);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 264);

  *(v0 + 73) = v1(v5, v3, v4);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1B62C, v2, 0);
}

id sub_1B62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 73);
  if (v5 != 43)
  {
    if (v5 == 45)
    {
      v6 = *(v4 + 384);
      v7 = *(v4 + 392);

      v8._countAndFlagsBits = v6;
      v8._object = v7;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)((v4 + 144), v8, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (!v16)
      {
        v33 = [*(v4 + 256) isFromMe];
        v41 = v33;
        if (v33)
        {
          v42 = *(v4 + 248);
          *(v4 + 392), v34, v35, v36, v37, v38, v39, v40;
          v43 = *(v4 + 144);
          v44 = *(v4 + 160);
          v45 = *(v4 + 176);
          *(v42 + 41) = *(v4 + 185);
          *(v42 + 16) = v44;
          *(v42 + 32) = v45;
          *v42 = v43;
          v46 = (v42 + 57);
        }

        else
        {
          result = [*(v4 + 256) sender];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v54 = result;
          *(v4 + 392), v47, v48, v49, v50, v51, v52, v53;
          v55 = sub_F07EC();
          v57 = v56;

          v58._countAndFlagsBits = v55;
          v58._object = v57;
          RCSHandle.init(rawValue:botStatus:alternateHandle:)((v4 + 80), v58, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          if (v59)
          {
            sub_3CAB8(v4 + 144);
            goto LABEL_9;
          }

          v42 = *(v4 + 248);
          v60 = *(v4 + 80);
          v61 = *(v4 + 96);
          v62 = *(v4 + 112);
          *(v42 + 41) = *(v4 + 121);
          *(v42 + 16) = v61;
          *(v42 + 32) = v62;
          *v42 = v60;
          v63 = *(v4 + 144);
          v64 = *(v4 + 160);
          v65 = *(v4 + 176);
          *(v42 + 105) = *(v4 + 185);
          *(v42 + 80) = v64;
          *(v42 + 96) = v65;
          *(v42 + 64) = v63;
          v46 = (v42 + 121);
        }

        *v46 = 0;
        *(v42 + 122) = v41 ^ 1;

        v32 = *(v4 + 8);
        goto LABEL_10;
      }

      *(v4 + 392), v9, v10, v11, v12, v13, v14, v15;
    }

    else
    {
      v28 = *(v4 + 384);
      v27 = *(v4 + 392);
      v29 = *(v4 + 256);
      type metadata accessor for RCSMessageCreator.MessageCreationError(0, *(v4 + 296), *(v4 + 288), a4);
      swift_getWitnessTable();
      swift_allocError();
      *v30 = v29;
      v30[1] = v28;
      v30[2] = v27;
      v30[3] = 0x6000000000000000;
      swift_willThrow();
      v31 = v29;
    }

LABEL_9:

    v32 = *(v4 + 8);
LABEL_10:

    return v32();
  }

  v17 = *(v4 + 328);
  v18 = *(v4 + 304);
  v67 = *(v4 + 288);
  v19 = *(v4 + 272);
  *(v4 + 432) = swift_unknownObjectUnownedLoadStrong();
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  v66 = (*(v67 + 24) + **(v67 + 24));
  v21 = swift_task_alloc();
  *(v4 + 440) = v21;
  *v21 = v4;
  v21[1] = sub_1B9E8;
  v22 = *(v4 + 328);
  v24 = *(v4 + 288);
  v23 = *(v4 + 296);
  v25 = *(v4 + 264);

  return v66(v4 + 208, v25, v22, v23, v24);
}

uint64_t sub_1B9E8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v3 = v2[49];
    v4 = v2[42];
    (*(v2[40] + 8))(v2[41], v2[39]);
    swift_unknownObjectRelease();
    v3, v5, v6, v7, v8, v9, v10, v11;
    v12 = sub_1BCE8;
    v13 = v4;
  }

  else
  {
    v14 = v2[42];
    (*(v2[40] + 8))(v2[41], v2[39]);
    swift_unknownObjectRelease();
    v12 = sub_1BB78;
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

id sub_1BB78()
{
  v8 = [*(v0 + 256) isFromMe];
  if (v8)
  {
    v9 = *(v0 + 248);
    *(v0 + 392), v1, v2, v3, v4, v5, v6, v7;
    sub_55248((v0 + 208), v9);
    v10 = 57;
LABEL_7:
    v30 = *(v0 + 248);
    *(v30 + v10) = 1;
    *(v30 + 122) = v8 ^ 1;

    v25 = *(v0 + 8);
    goto LABEL_8;
  }

  result = [*(v0 + 256) sender];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  *(v0 + 392), v12, v13, v14, v15, v16, v17, v18;
  v20 = sub_F07EC();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 16), v23, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v24)
  {
    v26 = *(v0 + 248);
    v27 = *(v0 + 16);
    v28 = *(v0 + 32);
    v29 = *(v0 + 48);
    *(v26 + 41) = *(v0 + 57);
    v26[1] = v28;
    v26[2] = v29;
    *v26 = v27;
    sub_55248((v0 + 208), (v26 + 4));
    v10 = 121;
    goto LABEL_7;
  }

  sub_1EDC((v0 + 208));

  v25 = *(v0 + 8);
LABEL_8:

  return v25();
}

uint64_t sub_1BCE8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1BD4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v3, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [*(v0 + 152) isFromMe];
  if (v6)
  {
    v7 = *(v0 + 144);
    v8 = 57;
    v9 = v7;
LABEL_9:
    v21 = *(v0 + 80);
    v22 = *(v0 + 96);
    v23 = *(v0 + 112);
    *(v9 + 41) = *(v0 + 121);
    v9[1] = v22;
    v9[2] = v23;
    *v9 = v21;
    *(v7 + v8) = 0;
    *(v7 + 122) = v6 ^ 1;
    v5 = *(v0 + 8);
    goto LABEL_10;
  }

  result = [*(v0 + 152) sender];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = sub_F07EC();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 16), v15, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v16)
  {
    v17 = *(v0 + 144);
    v9 = v17 + 4;
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    v20 = *(v0 + 48);
    *(v17 + 41) = *(v0 + 57);
    v17[1] = v19;
    v17[2] = v20;
    *v17 = v18;
    v7 = *(v0 + 144);
    v8 = 121;
    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  sub_3CAB8(v0 + 80);
LABEL_2:
  v5 = *(v0 + 8);
LABEL_10:

  return v5();
}

uint64_t sub_1BED0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_1C254;
  }

  else
  {
    v4 = sub_1BFFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1BFFC()
{
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 123) = *(v0 + 251);
  v2 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v2;
  v3 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_1C0C4;
  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);

  return RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(v8, v6, v7, v0 + 16, v5);
}

uint64_t sub_1C0C4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_1C4A4;
  }

  else
  {
    v4 = sub_1C1F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1C1F0()
{
  sub_5EFF4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C254()
{
  v1 = v0[40];
  v2 = v0[35];
  v0[46] = swift_unknownObjectUnownedLoadStrong();
  v3 = *(v1 + 88);
  v0[47] = v3;
  v0[48] = *(v3 + 40);
  v0[49] = (v3 + 40) & 0xFFFFFFFFFFFFLL | 0x7B1F000000000000;
  sub_F0AEC();
  v4 = v2;
  v0[50] = sub_F0ADC();
  v6 = sub_F0A6C();

  return _swift_task_switch(sub_1C31C, v6, v5);
}

uint64_t sub_1C31C()
{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];

  v0[51] = *(v3 + 80);
  v5 = v1(v4);
  v7 = v6;
  swift_unknownObjectRelease();
  v0[52] = v5;
  v0[53] = v7;

  return _swift_task_switch(sub_1C3D4, v2, 0);
}

uint64_t sub_1C3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[52];
  v5 = v4[53];
  v7 = v4[35];
  v8 = v4[43] | 0x2000000000000000;
  type metadata accessor for RCSMessageCreator.MessageCreationError(0, v4[51], v4[47], a4);
  swift_getWitnessTable();
  swift_allocError();
  *v9 = v7;
  v9[1] = v6;
  v9[2] = v5;
  v9[3] = v8;
  swift_willThrow();
  v10 = v4[1];

  return v10();
}

uint64_t sub_1C4A4()
{
  sub_5EFF4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

id sub_1C508()
{
  v1 = [*(v0 + 392) messageSummaryInfo];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_F076C();

  *(v0 + 328) = sub_F07EC();
  *(v0 + 336) = v4;
  sub_F0F3C();
  if (!*v3[1].IMDTelephonyServiceSession_opaque || (v12 = sub_51FA8(v0 + 184), (v5 & 1) == 0))
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
    v54 = v0 + 184;
LABEL_10:
    sub_54F34(v54);
    goto LABEL_11;
  }

  sub_3FE38(*v3[3].state + 32 * v12, v0 + 264);
  sub_54F34(v0 + 184);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v3, v13, v14, v15, v16, v17, v18, v19;
    goto LABEL_11;
  }

  v20 = *(v0 + 352);
  *(v0 + 360) = sub_F07EC();
  *(v0 + 368) = v21;
  sub_F0F3C();
  if (!*v3[1].IMDTelephonyServiceSession_opaque || (v29 = sub_51FA8(v0 + 224), (v22 & 1) == 0))
  {
    v20, v22, v23, v24, v25, v26, v27, v28;
    v3, v106, v107, v108, v109, v110, v111, v112;
    v54 = v0 + 224;
    goto LABEL_10;
  }

  sub_3FE38(*v3[3].state + 32 * v29, v0 + 296);
  sub_54F34(v0 + 224);
  v3, v30, v31, v32, v33, v34, v35, v36;
  sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 376);
    v45 = [objc_allocWithZone(CTLazuliOriginalMessageID) init];
    v46 = sub_F07BC();
    v20, v47, v48, v49, v50, v51, v52, v53;
    [v45 setUuid:v46];

    [v45 setSecureGroupVersion:v44];
    goto LABEL_12;
  }

  v20, v37, v38, v39, v40, v41, v42, v43;
LABEL_11:
  v45 = [*(v0 + 392) encrypted];
LABEL_12:
  *(v0 + 472) = v45;
  v55 = *(v0 + 392);
  sub_5BD2C(*(v0 + 408), v0 + 16);
  result = [v55 guid];
  if (result)
  {
    v57 = result;
    v58 = *(v0 + 392);
    v59 = sub_F07EC();
    v119 = v60;
    v120 = v59;

    v61 = [v58 guid];
    v121 = v45;
    if (v61)
    {
      v62 = v61;
      v63 = sub_F07EC();
      v117 = v64;
      v118 = v63;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v65 = *(v0 + 456);
    v66 = *(v0 + 432);
    v67 = *(v0 + 416);
    v68 = *(v0 + 400);
    swift_unknownObjectUnownedLoadStrong();
    v69 = *(v66 + 88);
    *(v0 + 480) = v69;
    v70 = *(v69 + 32);
    *(v0 + 488) = *(v66 + 80);
    v71 = v70(v67);
    v115 = v72;
    v116 = v71;
    v113 = v74;
    v114 = v73;
    swift_unknownObjectRelease();
    v75 = type metadata accessor for RCSMessage.Content(0);
    v76 = *(*(v75 - 8) + 56);
    v76(v65, 1, 1, v75);
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    v77 = v68;
    if (!v68)
    {
      v77 = *(v0 + 392);
    }

    v78 = *(v0 + 448);
    v79 = *(v0 + 456);
    v80 = *(v0 + 440);
    v81 = v68;
    v82 = sub_E9318(_swiftEmptyArrayStorage);

    v83 = v80[8];
    v76(v78 + v83, 1, 1, v75);
    v84 = v78 + v80[9];
    *(v84 + 32) = 0;
    *v84 = 0u;
    *(v84 + 16) = 0u;
    *(v78 + v80[13]) = 0;
    *(v78 + v80[14]) = 0;
    sub_5BD2C(v0 + 16, v78);
    v78[16] = v120;
    v78[17] = v119;
    v78[18] = v118;
    v78[19] = v117;
    v85 = (v78 + v80[15]);
    *v85 = v116;
    v85[1] = v115;
    v85[2] = v114;
    v85[3] = v113;
    sub_3896C(v121);
    sub_1CDE8(v79, v78 + v83, &unk_127FA0, &qword_F34C0);
    sub_1CDE8(v0 + 144, v84, &qword_127B08, &qword_F29A0);
    v78[20] = v121;
    *(v78 + v80[10]) = v82;
    *(v78 + v80[11]) = 0;
    if (*v82[1].IMDTelephonyServiceSession_opaque)
    {

      v86 = sub_E92AC();
      if (v87)
      {
        v94 = (*v82[3].state + 16 * v86);
        v96 = *v94;
        v95 = v94[1];
      }

      else
      {
        v95 = 0xE700000000000000;
        v96 = 0x6E776F6E6B6E75;
      }

      v82, v87, v88, v89, v90, v91, v92, v93;
    }

    else
    {
      v95 = 0xE700000000000000;
      v96 = 0x6E776F6E6B6E75;
    }

    v98 = *(v0 + 448);
    v97 = *(v0 + 456);
    v99 = *(v0 + 440);
    v100 = *(v0 + 384);
    sub_372B0(v0 + 144, &qword_127B08, &qword_F29A0);
    sub_372B0(v97, &unk_127FA0, &qword_F34C0);
    sub_5EFF4(v0 + 16);
    v101 = (v98 + *(v99 + 48));
    *v101 = v96;
    v101[1] = v95;
    sub_3CA08(v98, v100);
    v102 = swift_task_alloc();
    *(v0 + 496) = v102;
    *v102 = v0;
    v102[1] = sub_1CAD4;
    v103 = *(v0 + 416);
    v105 = *(v0 + 384);
    v104 = *(v0 + 392);

    return sub_CDE68(v105, v104, v103);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAD4(char a1)
{
  v4 = *v2;
  *(v4 + 504) = v1;

  v5 = *(v4 + 464);
  if (v1)
  {
    v6 = sub_1CD5C;
  }

  else
  {
    *(v4 + 139) = a1 & 1;
    v6 = sub_1CC14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1CC14()
{
  if (*(v0 + 139) == 1)
  {
    sub_CE48C(*(v0 + 472));
  }

  else
  {
    v3 = *(v0 + 480);
    v2 = *(v0 + 488);
    v4 = *(v0 + 392);
    v5 = RCSMessage.SenderInfo.description.getter();
    v7 = v6;
    type metadata accessor for RCSMessageCreator.MessageCreationError(0, v2, v3, v8);
    swift_getWitnessTable();
    swift_allocError();
    *v9 = v4;
    v9[1] = v5;
    v9[2] = v7;
    v9[3] = 0x6000000000000000;
    swift_willThrow();
    v10 = *(v0 + 384);
    sub_CE48C(*(v0 + 472));
    sub_3897C(v10);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CD5C()
{
  v1 = *(v0 + 384);
  sub_CE48C(*(v0 + 472));
  sub_3897C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CE50()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = sub_E7CB4(_swiftEmptyArrayStorage);
  v4 = *(v1 + 40);
  *(v0 + 336) = v4;
  v5 = v2 + *(type metadata accessor for RCSMessage(0) + 60) + v4;
  *(v0 + 168) = *(v5 + 16);
  v6 = *(v5 + 24);
  *(v0 + 176) = v6;
  if (v6)
  {
    v7 = RCSRichCards.files()();
    *(v0 + 184) = v7;
    v15 = *v7[1].IMDTelephonyServiceSession_opaque;
    *(v0 + 192) = v15;
    if (v15)
    {
      v16 = *(v0 + 152);
      v17 = *(v0 + 128);
      *(v0 + 208) = 0;
      *(v0 + 216) = v3;
      *(v0 + 200) = v3;
      if (*v7[1].IMDTelephonyServiceSession_opaque)
      {
        v18 = *(v0 + 136);
        sub_23624(&v7->IMDTelephonyServiceSession_opaque[(*(v16 + 80) + 32) & ~*(v16 + 80)], *(v0 + 160), type metadata accessor for RCSFile);
        *(v0 + 224) = *(v18 + *(v17 + 44));
        v19 = *(v17 + 24);
        *(v0 + 232) = v19;
        *(v0 + 240) = *(v19 + 176);
        *(v0 + 248) = (v19 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
        *(v0 + 256) = sub_F0AEC();
        *(v0 + 264) = sub_F0ADC();
        v20 = sub_F0A6C();
        v22 = v21;
        v7 = sub_1D2E8;
        v8 = v20;
        v9 = v22;

        return _swift_task_switch(v7, v8, v9);
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return _swift_task_switch(v7, v8, v9);
    }

    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  v23 = objc_allocWithZone(IMUrlToTransferMap);
  v24 = sub_F075C();
  v25 = [v23 initWithUrlToTransferGuids:v24];

  v26 = [v25 dictionaryRepresentation];
  v27 = sub_F076C();

  v28 = RCSRichCards.attributes.getter();
  v29 = sub_F07EC();
  v31 = v30;
  v32 = sub_F07EC();
  if (*v27[1].IMDTelephonyServiceSession_opaque)
  {
    v40 = v33;
    v41 = sub_51FEC(v32, v33);
    v43 = v42;
    v40, v42, v44, v45, v46, v47, v48, v49;
    if (v43)
    {
      sub_3FE38(*v27[3].state + 32 * v41, v0 + 16);
      v27, v57, v58, v59, v60, v61, v62, v63;
      sub_54F88((v0 + 16), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v28;
      sub_52328((v0 + 80), v29, v31, isUniquelyReferenced_nonNull_native);
      v31, v65, v66, v67, v68, v69, v70, v71;
      v72 = v28;
      goto LABEL_13;
    }
  }

  else
  {
    v33, v33, v34, v35, v36, v37, v38, v39;
  }

  v27, v50, v51, v52, v53, v54, v55, v56;
  sub_C7918(v29, v31, (v0 + 48));
  v31, v73, v74, v75, v76, v77, v78, v79;
  sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
  v72 = v28;
LABEL_13:
  v80 = *(*(v0 + 136) + 8);
  v81 = sub_51844(v72);
  v72, v82, v83, v84, v85, v86, v87, v88;
  v89 = sub_F075C();
  v81, v90, v91, v92, v93, v94, v95, v96;
  v97 = *v3[1].IMDTelephonyServiceSession_opaque;
  if (v97)
  {
    v113 = v80;
    sub_9D6B8(v97, 0);
    v98 = sub_BDF68();

    sub_66138(v114);
    if (v98 != v97)
    {
      goto LABEL_22;
    }

    v80 = v113;
  }

  v100 = *(v0 + 128);
  v99 = *(v0 + 136);
  v101 = sub_F09EC();

  [v80 appendRichCards:v89 transferGuids:v101];

  v3, v102, v103, v104, v105, v106, v107, v108;
  v109 = *(v100 + 48);
  v110 = *(v99 + v109);
  if ((v110 & 1) == 0)
  {
    *(v99 + v109) = v110 | 1;
  }

  *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

  v111 = *(v0 + 8);

  return v111();
}