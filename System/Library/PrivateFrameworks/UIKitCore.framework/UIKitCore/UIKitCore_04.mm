uint64_t sub_188AAD55C()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188AAD594()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

void sub_188AAD624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1B0, &unk_18A64E990);
  v36 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *(v22 + 2);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v23);
      sub_18A4A7348();
      v26 = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t sub_188AAD8E8(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2 & 1;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

BOOL sub_188AAD93C()
{
  swift_beginAccess();
  if (*(v0[6] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[8] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[7] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0[9] + 16) == 0;
}

uint64_t sub_188AAD9E4()
{
  if (pthread_main_np() != 1)
  {
    v1 = [objc_opt_self() currentThread];
    v2 = [v1 threadDictionary];

    if (qword_1ED48F7A8 != -1)
    {
      swift_once();
    }

    v3 = [v2 objectForKey_];

    if (v3)
    {
      sub_18A4A7DE8();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934CB0, &unk_18A64F940);
      if (swift_dynamicCast())
      {
        v0 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x58));

        return v0;
      }
    }

    else
    {
      sub_188A3F5FC(v8, &qword_1EA934050, qword_18A64CA10);
    }

    return 0;
  }

  v0 = qword_1EA935C88;

  return v0;
}

uint64_t sub_188AADBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](a2);
  v8 = sub_18A4A88E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 16 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    *a1 = *(*(v7 + 48) + 16 * v10);
    swift_unknownObjectRetain();
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v13 = swift_unknownObjectRetain();
    sub_188AA7C54(v13, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    *a1 = a2;
    *(a1 + 8) = a3;
    return 1;
  }
}

void sub_188AADE10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, id *a5, uint64_t a6)
{
  v13 = sub_18A4A6E18();
  v56 = *(v13 - 1);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18A4A6E58();
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    type metadata accessor for InProcessAnimationManager();
    v33 = objc_opt_self();
    v34 = +[(UIScreen *)v33];
    v35 = sub_18920BE24(v34, 1);

    v36 = a4 & 1;
    v37 = a1;
    v38 = a2;
    v39 = a3;
    v40 = a5;
    v41 = a6;
    v42 = v35;
LABEL_13:
    sub_188AAC950(v37, v38, v39, v36, 0, v40, v41, v42);

    return;
  }

  v54 = a5;
  v19 = sub_188AA9BB0();
  if (v19)
  {
    v20 = v19;
    v53 = a6;
    v21 = sub_188AA9BB0();
    if (v21)
    {
      v22 = v21;
      Strong = swift_weakLoadStrong();
      v52 = a3;
      v24 = Strong;

      v25 = v24;
      a3 = v52;
      if (v25)
      {
        if (_inProcessAnimationManagerIsInternalOS())
        {
          if ((v20[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_assertionsChecked] & 1) == 0)
          {
            v20[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_assertionsChecked] = 1;
            sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
            v51 = v6;
            v49 = sub_18A4A7A68();
            v26 = swift_allocObject();
            *(v26 + 16) = v51;
            *(v26 + 24) = v25;
            aBlock[4] = sub_188EB2AC0;
            aBlock[5] = v26;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_188A4A8F0;
            aBlock[3] = &block_descriptor_364;
            v27 = _Block_copy(aBlock);
            v47 = v27;
            v28 = v51;

            sub_18A4A6E38();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            v48 = sub_188D7609C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
            sub_188BA3728();
            v50 = v25;
            v29 = v57;
            sub_18A4A7EB8();
            v30 = v27;
            v31 = v49;
            MEMORY[0x18CFE29D0](0, v18, v15, v30);
            _Block_release(v47);

            v32 = v29;
            v25 = v50;
            a3 = v52;
            (*(v56 + 8))(v15, v32);
            (*(v55 + 8))(v18, v16);
          }
        }

        sub_188AAC950(a1, a2, a3, a4 & 1, 0, v54, v53, v25);

        return;
      }
    }

    a6 = v53;
  }

  v43 = sub_188EB2798();
  if (v43)
  {
    v44 = v43;
    v36 = a4 & 1;
    v37 = a1;
    v38 = a2;
    v39 = a3;
    v40 = v54;
    v41 = a6;
    v42 = v44;
    goto LABEL_13;
  }

  v57 = sub_18A4A7258();
  _inProcessAnimationManagerSoftAssert(1, v57);
  v45 = v57;
}

uint64_t sub_188AAE2C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188AAE320()
{
  if ((*(v0 + 393) & 1) == 0)
  {
    swift_beginAccess();

    *(v0 + 80) = sub_188ABC430(v1);

    *(v0 + 393) = 1;
  }

  return *(v0 + 80);
}

uint64_t sub_188AAE39C()
{
  sub_188ABC874();

  return swift_deallocClassInstance();
}

void sub_188AAE3F4(uint64_t *a1)
{
  v5 = *a1;
  if (*(a1 + 314) == 1)
  {
    v12[5] = v4;
    v12[6] = v3;
    v12[13] = v1;
    v12[14] = v2;
    v7 = v5;
    *(a1 + 314) = 0;
    v8 = CACurrentMediaTime();
    *(a1 + 30) = v8 + sub_188A33550() * -0.4;
    a1[31] = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = a1[29];
      ObjectType = swift_getObjectType();
      v12[3] = v7;
      v12[4] = &off_1EFAF6BF8;
      v12[0] = a1;
      v11 = *(v9 + 8);

      v11(v12, ObjectType, v9);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }
  }
}

void sub_188AAE55C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, id a7, uint64_t a8, uint64_t a9, uint64_t a10, id *a11)
{
  v17 = *a11;
  sub_188A55598(a3, aBlock);
  sub_188A3F29C(a4, v53, &qword_1EA934050, qword_18A64CA10);
  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = a2;
  v18 = [a1 count];
  v47 = a7;
  if (v18 == [a1 capacity])
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  v45 = v17;
  v46 = a11;
  v48 = a8;
  v20 = sub_18A4A7258();
  __swift_project_boxed_opaque_existential_0(aBlock, v50);
  v21 = sub_18A4A86A8();
  v22 = v54;
  if (v54)
  {
    v23 = __swift_project_boxed_opaque_existential_0(v53, v54);
    v43 = &v43;
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_18A4A86A8();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E6979410]) initWithKeyPath:v20 initialValue:v21 initialVelocity:v28 additive:0 preferredFrameRateRangeMaximum:a5 group:v19];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  signpost_c2_entryLock_start();
  v30 = *(a10 + 16);
  os_unfair_lock_lock(v30 + 4);
  signpost_c2_entryLock_start();
  swift_beginAccess();

  a7 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(a10 + 56);
  *(a10 + 56) = 0x8000000000000000;
  v32 = v47;
  v33 = v47 & 1;
  v34 = v48;
  sub_188AA9D24(a7, v47 & 1, v48, a9, isUniquelyReferenced_nonNull_native);

  *(a10 + 56) = v53[0];
  swift_endAccess();
  sub_188AA9E78();
  swift_beginAccess();

  sub_188AB79D4(0, 1, v32 & 1, v34, a9);
  swift_endAccess();
  sub_188AA9E78();
  os_unfair_lock_unlock(v30 + 4);
  if (pthread_main_np() != 1)
  {
    a5 = swift_allocObject();
    *(a5 + 16) = a10;
    *(a5 + 24) = v33;
    *(a5 + 32) = v34;
    *(a5 + 40) = a9;
    *(a5 + 48) = a7;
    v36 = qword_1ED48FBB8;

    v17 = a7;

    if (v36 == -1)
    {
LABEL_13:
      v37 = qword_1ED4A3568;
      v38 = swift_allocObject();
      v38[2] = sub_188EB2784;
      v38[3] = a5;
      v39 = v45;
      v38[4] = v46;
      v38[5] = v39;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_188AAA458;
      *(v40 + 24) = v38;
      v51 = sub_188E5C7F8;
      v52 = v40;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A968;
      v50 = &block_descriptor_70;
      v41 = _Block_copy(aBlock);

      dispatch_sync(v37, v41);
      _Block_release(v41);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

      if ((v41 & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  signpost_c2_entryLock_start();
  if ((v32 & 1) == 0)
  {
LABEL_15:
    v35 = [v44 layer];
    goto LABEL_16;
  }

  v35 = [(UIView *)v44 _backing_outermostLayer];
LABEL_16:
  v42 = v35;
  [v42 addPresentationModifier_];

  signpost_c2_entryLock_start();
}

uint64_t sub_188AAEAE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188AAEB28()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_188AAEB6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B00, &unk_18A656F70);
  v36 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v37 = *v21;
      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v37);
      sub_18A4A7348();
      v26 = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v37;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

char *sub_188AAEE7C(char *a1, int64_t a2, char a3)
{
  result = sub_188AA9F60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_188AAEEA4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = 3;
  return result;
}

uint64_t sub_188AAEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, __n128 a17@<Q7>, double a18, uint64_t *a19, void (*a20)(uint64_t, __n128, __n128, __n128, __n128), uint64_t (*a21)(uint64_t), uint64_t a22, double (*a23)(uint64_t))
{
  v220 = a2;
  v218 = a16;
  v219 = a17;
  v216 = a14;
  v217 = a15;
  v210 = a12;
  v211 = a13;
  v208 = a10;
  v209 = a11;
  v214 = a1;
  v215 = a9;
  v213 = a22;
  v204 = a21;
  v205 = a4;
  v206 = a5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v196 = (v189.f64 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v202 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v200 = (v189.f64 - v34);
  MEMORY[0x1EEE9AC00](v35);
  *&v199.f64[0] = v189.f64 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v189 - v38;
  v197 = a19;
  v198 = a8;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a19);
  MEMORY[0x1EEE9AC00](v203);
  v41 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v189 - v43;
  v201 = a3;
  v207 = v23;
  *(v23 + 81) = a3;
  v45 = v220;
  sub_188AA72A8(v220, &v258);
  if (v260 != 2)
  {
    v51 = v214;
    v212 = v28;
    sub_188AA7808(&v258);
    sub_188AA72A8(v45, &v258);
    if (v260 == 1)
    {
      v263 = *&v259[16];
      v264 = *&v259[32];
      v265 = *&v259[48];
      v261 = v258;
      v262 = *v259;
      sub_188A5EBAC(&v261, &v258);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
      swift_dynamicCast();
      sub_188A5EBAC((&v263 + 8), &v225);
      swift_dynamicCast();
      v52 = v226;
      v53 = v227;
      v54 = v228;
      v55 = v229;
      v56 = v221;
      v57 = v222;
      v58 = v223;
      v59 = v224;
      v60 = v215;
      v215[8] = v226;
      v60[9] = v53;
      v60[10] = v54;
      v60[11] = v55;
      v60[14] = v56;
      v60[15] = v57;
      v60[16] = v58;
      v60[17] = v59;
      *v60 = v56;
      v60[1] = v57;
      v60[2] = v58;
      v60[3] = v59;
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v54;
      v60[7] = v55;
      *(v60 + 6) = xmmword_18A650B90;
      return swift_storeEnumTagMultiPayload();
    }

    v195 = v41;
    sub_188AA7808(&v258);
    v63 = a7;
    v64 = v29;
    v65 = v201;
    v66 = v200;
    if (v201)
    {
      v67 = CACurrentMediaTime();
      if (a18 * 0.9 < v67 - *v207)
      {
        if (*v207 != 0.0)
        {
          if (*(v207 + 120) == 1)
          {
            v68 = v207;
            *(v207 + 120) = 0;
            *(v68 + 104) = 0u;
            *(v68 + 88) = 0u;
          }

          else
          {
            *&v80.f64[0] = v216.n128_u64[0];
            *&v80.f64[1] = v217.n128_u64[0];
            *&v81.f64[0] = v218.n128_u64[0];
            *&v81.f64[1] = v219.n128_u64[0];
            if ((*(v207 + 80) & 1) == 0)
            {
              v80 = vsubq_f64(v80, *(v207 + 48));
              v81 = vsubq_f64(v81, *(v207 + 64));
            }

            v82 = 1.0 / (v67 - *v207);
            v83 = v207;
            __asm
            {
              FMOV            V5.2D, #0.25
              FMOV            V6.2D, #0.75
            }

            *(v207 + 88) = vaddq_f64(vmulq_f64(vmulq_n_f64(v80, v82), _Q6), vmulq_f64(*(v207 + 88), _Q5));
            *(v83 + 104) = vaddq_f64(vmulq_f64(vmulq_n_f64(v81, v82), _Q6), vmulq_f64(*(v83 + 104), _Q5));
          }
        }

        v90 = v210.n128_u64[0];
        v91 = v207;
        *(v207 + 16) = v209.n128_u64[0];
        *(v91 + 24) = v90;
        *(v91 + 32) = v211.n128_u64[0];
        *(v91 + 40) = 0;
        v92 = v208.n128_u64[0];
        *v91 = v67;
        *(v91 + 8) = v92;
      }
    }

    v93 = v207;
    v94 = *(v207 + 64);
    v192 = *(v207 + 48);
    v193 = v94;
    v194 = *(v207 + 80);
    v95 = v217.n128_u64[0];
    *(v207 + 48) = v216.n128_u64[0];
    *(v93 + 56) = v95;
    v96 = v219.n128_u64[0];
    *(v93 + 64) = v218.n128_u64[0];
    *(v93 + 72) = v96;
    *(v93 + 80) = 0;
    v97 = a6;
    v98 = *&v199.f64[0];
    sub_188A3F29C(v51, *&v199.f64[0], v97, v63);
    v99 = *(v64 + 48);
    if (v99(v98, 1, v212) == 1)
    {
      sub_188A3F5FC(v98, v97, v63);
      v100 = v202;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v102 = v98;
      v100 = v202;
      if (EnumCaseMultiPayload)
      {
        sub_188A3F5FC(v102, v205, v206);
      }

      else
      {
        v103 = v102[11];
        v257[10] = v102[10];
        v257[11] = v103;
        v104 = v102[7];
        v257[6] = v102[6];
        v257[7] = v104;
        v105 = v102[9];
        v257[8] = v102[8];
        v257[9] = v105;
        v106 = v102[3];
        v257[2] = v102[2];
        v257[3] = v106;
        v107 = v102[5];
        v257[4] = v102[4];
        v257[5] = v107;
        v108 = v102[1];
        v257[0] = *v102;
        v257[1] = v108;
        v109 = v102[12];
        v110 = v102[13];
        v112 = v102[14];
        v111 = v102[15];
        v113 = v102[16];
        v114 = v102[17];
        v257[20] = v102[20];
        v116 = v102[18];
        v115 = v102[19];
        v257[12] = v109;
        v257[13] = v110;
        v199 = v110;
        v257[14] = v112;
        v257[15] = v111;
        v190 = v114;
        v191 = v112;
        v257[16] = v113;
        v257[17] = v114;
        v257[18] = v116;
        v257[19] = v115;
        v189 = v116;
        v117 = v220;
        sub_188AA72A8(v220, &v258);
        if (v260 == 3 && v258 == 1)
        {
          v118 = vorrq_s8(vorrq_s8(*&v259[8], *&v259[40]), vorrq_s8(*&v259[24], *&v259[56]));
          if (!(*&vorr_s8(*v118.i8, *&vextq_s8(v118, v118, 8uLL)) | *v259 | *(&v258 + 1)))
          {
            sub_188AA7808(&v258);
            *&v257[11] = v216.n128_u64[0];
            *(&v257[11] + 1) = v217.n128_u64[0];
            *&v257[12] = v218.n128_u64[0];
            *(&v257[12] + 1) = v219.n128_u64[0];
            v119 = v257;
            goto LABEL_86;
          }
        }

        sub_188AA7808(&v258);
        sub_188AA72A8(v117, &v258);
        if (!v260)
        {
          v263 = *&v259[16];
          v264 = *&v259[32];
          v265 = *&v259[48];
          v266 = *&v259[64];
          v261 = v258;
          v262 = *v259;
          v173 = *&v259[24];
          if ((v65 & 1) == 0)
          {
            if ((*&v259[24] & 0x8000000000000000) != 0 && *(&v265 + 1) > 0.0 && (*(v207 + 120) & 1) == 0)
            {
              v174 = *(&v265 + 1) / 1000.0 / (1.0 - *(&v265 + 1));
              v175 = vaddq_f64(v190, vmulq_n_f64(*(v207 + 88), v174));
              v176 = vaddq_f64(v189, vmulq_n_f64(*(v207 + 104), v174));
              v257[17] = v175;
              v257[18] = v176;
            }

            v177 = v207;
            *(v207 + 104) = 0u;
            *(v177 + 88) = 0u;
            *(v177 + 120) = 1;
            *v177 = 0;
          }

          if (v173 < 0 && !((v266 <= 0.0) | v194 & 1))
          {
            *&v178.f64[0] = v218.n128_u64[0];
            *&v178.f64[1] = v219.n128_u64[0];
            *&v179.f64[0] = v216.n128_u64[0];
            *&v179.f64[1] = v217.n128_u64[0];
            v180 = 6.28318531 / *&v261 * (6.28318531 / *&v261) * v266;
            v257[13] = vaddq_f64(v199, vmulq_n_f64(vsubq_f64(v179, v192), v180));
            v257[14] = vaddq_f64(v191, vmulq_n_f64(vsubq_f64(v178, v193), v180));
          }

          sub_188AB1304(&v261, 0);
          *&v257[11] = v216.n128_u64[0];
          *(&v257[11] + 1) = v217.n128_u64[0];
          *&v257[12] = v218.n128_u64[0];
          *(&v257[12] + 1) = v219.n128_u64[0];
          memcpy(v215, v257, 0x150uLL);
          return swift_storeEnumTagMultiPayload();
        }

        sub_188AA7808(&v258);
      }
    }

    sub_188A3F29C(v51, v66, v97, v63);
    if (v99(v66, 1, v212) == 1)
    {
      v120 = v66;
      v121 = v97;
      v122 = v63;
LABEL_41:
      sub_188A3F5FC(v120, v121, v122);
      goto LABEL_42;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v120 = v66;
      v121 = v205;
      v122 = v206;
      goto LABEL_41;
    }

    v124 = v66[4];
    v123 = v66[5];
    v126 = v66[6];
    v125 = v66[7];
    v127 = v220;
    sub_188AA72A8(v220, &v258);
    if (v260 == 3 && (v128 = vorrq_s8(vorrq_s8(*&v259[8], *&v259[40]), vorrq_s8(*&v259[24], *&v259[56])), !(*&vorr_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL)) | *v259 | *(&v258 + 1) | v258)) || (sub_188AA7808(&v258), sub_188AA72A8(v127, &v258), v260 == 3) && v258 == 1 && (v129 = vorrq_s8(vorrq_s8(*&v259[8], *&v259[40]), vorrq_s8(*&v259[24], *&v259[56])), !(*&vorr_s8(*v129.i8, *&vextq_s8(v129, v129, 8uLL)) | *v259 | *(&v258 + 1))))
    {
LABEL_78:
      sub_188AA7808(&v258);
      v181 = v217.n128_u64[0];
      v182 = v215;
      *v215 = v216.n128_u64[0];
      *(v182 + 1) = v181;
      v183 = v219.n128_u64[0];
      v182[2] = v218.n128_f64[0];
      *(v182 + 3) = v183;
      v182[4] = v124;
      v182[5] = v123;
      v182[6] = v126;
      v182[7] = v125;
      return swift_storeEnumTagMultiPayload();
    }

    sub_188AA7808(&v258);
    sub_188AA72A8(v127, &v258);
    if (v260)
    {
      sub_188AA7808(&v258);
LABEL_42:
      sub_188A3F29C(v51, v100, v97, v63);
      v130 = v99(v100, 1, v212);
      if (v130 == 1)
      {
        sub_188A3F5FC(v100, v97, v63);
        v131 = 0.0;
        v132 = 0.0;
        v133 = 0.0;
        v134 = 0.0;
      }

      else
      {
        v135 = v196;
        sub_188A3F29C(v100, v196, v205, v206);
        v136 = swift_getEnumCaseMultiPayload();
        if (v136 > 1)
        {
          if (v136 == 2)
          {
            v137 = v135;
            v138 = v195;
            v140 = v197;
            v139 = v198;
            v141 = sub_188A3F704(v137, v195, v198, v197);
            v131 = a23(v141);
            v132 = v142;
            v133 = v143;
            v134 = v144;
            sub_188A3F5FC(v138, v139, v140);
          }

          else
          {
            v131 = v135[4];
            v132 = v135[5];
            v133 = v135[6];
            v134 = v135[7];
          }
        }

        else
        {
          v131 = 0.0;
          v132 = 0.0;
          v133 = 0.0;
          v134 = 0.0;
          if (!v136)
          {
            v131 = v135[26];
            v132 = v135[27];
            v133 = v135[28];
            v134 = v135[29];
          }
        }

        sub_188A3F5FC(v100, v205, v206);
      }

      v145 = sub_188AA72A8(v220, &v258);
      if (!v260)
      {
        v157 = v207;
        v263 = *&v259[16];
        v264 = *&v259[32];
        v265 = *&v259[48];
        v266 = *&v259[64];
        v261 = v258;
        v262 = *v259;
        memset(v256, 0, 73);
        memset(&v256[5], 0, 25);
        memset(&v256[7], 0, 52);
        v256[10].f64[1] = 1.0;
        *&v256[15].f64[0] = v208.n128_u64[0];
        *&v256[15].f64[1] = v209.n128_u64[0];
        *&v256[16].f64[0] = v210.n128_u64[0];
        *&v256[16].f64[1] = v211.n128_u64[0];
        *&v256[11].f64[0] = v216.n128_u64[0];
        *&v256[11].f64[1] = v217.n128_u64[0];
        *&v256[12].f64[0] = v218.n128_u64[0];
        *&v256[12].f64[1] = v219.n128_u64[0];
        memset(&v256[13], 0, 32);
        memset(&v256[19], 0, 32);
        *&v256[17].f64[0] = v208.n128_u64[0];
        *&v256[17].f64[1] = v209.n128_u64[0];
        *&v256[18].f64[0] = v210.n128_u64[0];
        *&v256[18].f64[1] = v211.n128_u64[0];
        sub_188AB1304(&v261, 1);
        if (v130 != 1)
        {
          v256[13].f64[0] = v131;
          v256[13].f64[1] = v132;
          v256[14].f64[0] = v133;
          v256[14].f64[1] = v134;
        }

        if ((*(&v263 + 1) & 0x8000000000000000) != 0)
        {
          if (*(&v265 + 1) > 0.0 && (*(v157 + 120) & 1) == 0)
          {
            v158 = *(&v265 + 1) / 1000.0 / (1.0 - *(&v265 + 1));
            v159 = vaddq_f64(v256[17], vmulq_n_f64(*(v157 + 88), v158));
            v160 = vaddq_f64(vmulq_n_f64(*(v157 + 104), v158), v256[18]);
            v256[17] = v159;
            v256[18] = v160;
          }

          if (v266 > 0.0)
          {
            *&v161.f64[0] = v216.n128_u64[0];
            *&v161.f64[1] = v217.n128_u64[0];
            *&v162.f64[0] = v208.n128_u64[0];
            *&v162.f64[1] = v209.n128_u64[0];
            v163 = vsubq_f64(v161, v162);
            *&v162.f64[0] = v218.n128_u64[0];
            *&v162.f64[1] = v219.n128_u64[0];
            *&v164.f64[0] = v210.n128_u64[0];
            *&v164.f64[1] = v211.n128_u64[0];
            v165 = 6.28318531 / *&v261 * (6.28318531 / *&v261) * v266;
            v256[13] = vaddq_f64(vmulq_n_f64(v163, v165), v256[13]);
            v256[14] = vaddq_f64(vmulq_n_f64(vsubq_f64(v162, v164), v165), v256[14]);
          }
        }

        memcpy(v215, v256, 0x150uLL);
        return swift_storeEnumTagMultiPayload();
      }

      if (v260 != 2)
      {
        sub_188AA7808(&v258);
        v166 = 0.0;
        v167 = 0.0;
        v168 = 0.0;
        v169 = 0.0;
        if (v130 != 1)
        {
          v166 = v131;
          v167 = v132;
          v168 = v133;
          v169 = v134;
        }

        v170 = v217.n128_u64[0];
        v171 = v215;
        *v215 = v216.n128_u64[0];
        *(v171 + 1) = v170;
        v172 = v219.n128_u64[0];
        v171[2] = v218.n128_f64[0];
        *(v171 + 3) = v172;
        v171[4] = v166;
        v171[5] = v167;
        v171[6] = v168;
        v171[7] = v169;
        return swift_storeEnumTagMultiPayload();
      }

LABEL_53:
      v146 = v258;
      v147 = BYTE8(v258);
      v148 = v215;
      *v215 = 0;
      *(v148 + 56) = 0;
      v149 = v203;
      v204(v145);
      sub_18A4A49B8();
      v150 = *(v149 + 64);
      v148[1] = v146;
      v152 = v208.n128_u64[0];
      v151 = v209.n128_u64[0];
      v148[2] = v208.n128_u64[0];
      v148[3] = v151;
      v154 = v210.n128_u64[0];
      v153 = v211.n128_u64[0];
      v148[4] = v210.n128_u64[0];
      v148[5] = v153;
      v148[6] = v152;
      v148[7] = v151;
      v148[8] = v154;
      v148[9] = v153;
      v155 = v217.n128_u64[0];
      v148[10] = v216.n128_u64[0];
      v148[11] = v155;
      v156 = v219.n128_u64[0];
      v148[12] = v218.n128_u64[0];
      v148[13] = v156;
      *(v148 + v150) = v147;
      return swift_storeEnumTagMultiPayload();
    }

    v145 = sub_188AA72A8(v127, &v258);
    if (v260)
    {
      if (v260 == 2)
      {
        goto LABEL_53;
      }

      goto LABEL_78;
    }

    v184 = v207;
    v263 = *&v259[16];
    v264 = *&v259[32];
    v265 = *&v259[48];
    v266 = *&v259[64];
    v261 = v258;
    v262 = *v259;
    memset(v230, 0, 73);
    v232 = 0;
    v231 = 0;
    v234 = 0;
    v233 = 0;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0;
    v239 = 0x3FF0000000000000;
    v248 = v208.n128_u64[0];
    v249 = v209.n128_u64[0];
    v250 = v210.n128_u64[0];
    v251 = v211.n128_u64[0];
    v240 = v216.n128_u64[0];
    v241 = v217.n128_u64[0];
    v242 = v218.n128_u64[0];
    v243 = v219.n128_u64[0];
    v254 = 0u;
    v255 = 0u;
    *&v252.f64[0] = v208.n128_u64[0];
    *&v252.f64[1] = v209.n128_u64[0];
    *&v253.f64[0] = v210.n128_u64[0];
    *&v253.f64[1] = v211.n128_u64[0];
    sub_188AB1304(&v261, 1);
    v244 = v124;
    v245 = v123;
    v246 = v126;
    v247 = v125;
    if ((*(&v263 + 1) & 0x8000000000000000) != 0)
    {
      if (*(&v265 + 1) > 0.0 && (*(v184 + 120) & 1) == 0)
      {
        v185 = *(&v265 + 1) / 1000.0 / (1.0 - *(&v265 + 1));
        v186 = vaddq_f64(v252, vmulq_n_f64(*(v184 + 88), v185));
        v187 = vaddq_f64(vmulq_n_f64(*(v184 + 104), v185), v253);
        v252 = v186;
        v253 = v187;
      }

      if (v266 > 0.0)
      {
        v188 = 6.28318531 / *&v261 * (6.28318531 / *&v261) * v266;
        v244 = v124 + (v216.n128_f64[0] - v208.n128_f64[0]) * v188;
        v245 = v123 + (v217.n128_f64[0] - v209.n128_f64[0]) * v188;
        v246 = v126 + (v218.n128_f64[0] - v210.n128_f64[0]) * v188;
        v247 = v125 + (v219.n128_f64[0] - v211.n128_f64[0]) * v188;
      }
    }

    v119 = v230;
LABEL_86:
    memcpy(v215, v119, 0x150uLL);
    return swift_storeEnumTagMultiPayload();
  }

  v46 = v258;
  v47 = BYTE8(v258);
  sub_188A3F29C(v214, v39, a6, a7);
  if ((*(v29 + 48))(v39, 1, v28) == 1)
  {
    v48 = v39;
    v49 = a6;
    v50 = a7;
LABEL_14:
    v69 = sub_188A3F5FC(v48, v49, v50);
    v70 = v215;
    *v215 = 0;
    *(v70 + 56) = 0;
    v71 = v203;
    v204(v69);
    sub_18A4A49B8();
    v72 = *(v71 + 64);
    v70[1] = v46;
    v74 = v208.n128_u64[0];
    v73 = v209.n128_u64[0];
    v70[2] = v208.n128_u64[0];
    v70[3] = v73;
    v76 = v210.n128_u64[0];
    v75 = v211.n128_u64[0];
    v70[4] = v210.n128_u64[0];
    v70[5] = v75;
    v70[6] = v74;
    v70[7] = v73;
    v70[8] = v76;
    v70[9] = v75;
    v77 = v217.n128_u64[0];
    v70[10] = v216.n128_u64[0];
    v70[11] = v77;
    v78 = v219.n128_u64[0];
    v70[12] = v218.n128_u64[0];
    v70[13] = v78;
    *(v70 + v72) = v47;
    return swift_storeEnumTagMultiPayload();
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v48 = v39;
    v49 = v205;
    v50 = v206;
    goto LABEL_14;
  }

  v62 = v197;
  v61 = v198;
  sub_188A3F704(v39, v44, v198, v197);
  a20(v46, v216, v217, v218, v219);

  sub_188A3F704(v44, v215, v61, v62);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_188AAFED8(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_188AAFF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, __int128 *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, double a14@<D4>, uint64_t *a15, void (*a16)(uint64_t, __n128, __n128), uint64_t (*a17)(uint64_t), uint64_t a18, double (*a19)(uint64_t))
{
  v23 = v19;
  v186 = a12;
  v187 = a13;
  v180 = a10;
  v181 = a11;
  v183 = a1;
  v185 = a9;
  v182 = a18;
  v176 = a17;
  v177 = a4;
  v178 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v168 = &v165[-v29];
  v184 = a6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v171 = &v165[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v172 = &v165[-v33];
  MEMORY[0x1EEE9AC00](v34);
  *&v173.f64[0] = &v165[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v165[-v37];
  v169 = a15;
  v170 = a8;
  v39 = a8;
  v40 = a2;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(v39, a15);
  MEMORY[0x1EEE9AC00](v175);
  v42 = &v165[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v165[-v44];
  v179 = v23;
  v174 = a3;
  *(v23 + 49) = a3;
  sub_188AA72A8(v40, &v233);
  if (v235 != 2)
  {
    v52 = v184;
    sub_188AA7808(&v233);
    sub_188AA72A8(v40, &v233);
    if (v235 == 1)
    {
      v238 = *&v234[16];
      v239 = *&v234[32];
      v240 = *&v234[48];
      v236 = v233;
      v237 = *v234;
      sub_188A5EBAC(&v236, &v233);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
      swift_dynamicCast();
      sub_188A5EBAC((&v238 + 8), v189);
      swift_dynamicCast();
      v53 = *&v189[40];
      v54 = v188;
      v55 = v185;
      v185[4] = v188;
      *v55 = v54;
      v55[1] = v53;
      v55[2] = v53;
      v55[3] = xmmword_18A650B90;
      return swift_storeEnumTagMultiPayload();
    }

    v167 = v42;
    sub_188AA7808(&v233);
    v58 = v179;
    v59 = a7;
    v60 = v52;
    v61 = v28;
    v62 = v183;
    v63 = *&v173.f64[0];
    if (v174)
    {
      v64 = CACurrentMediaTime();
      v65 = v64 - *v58;
      if (a14 * 0.9 < v65)
      {
        if (*v58 != 0.0)
        {
          if (*(v58 + 72) == 1)
          {
            *(v58 + 56) = 0;
            *(v58 + 64) = 0;
            *(v58 + 72) = 0;
          }

          else
          {
            __asm { FMOV            V4.2D, #0.25 }

            v79 = vmulq_f64(*(v58 + 56), _Q4);
            *&_Q4.f64[0] = v186.n128_u64[0];
            *&_Q4.f64[1] = v187.n128_u64[0];
            v80 = vdup_n_s32(*(v58 + 48));
            v81.i64[0] = v80.u32[0];
            v81.i64[1] = v80.u32[1];
            __asm { FMOV            V2.2D, #0.75 }

            *(v58 + 56) = vaddq_f64(vmulq_f64(vmulq_n_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v81, 0x3FuLL)), _Q4, vsubq_f64(_Q4, *(v58 + 32))), 1.0 / v65), _Q2), v79);
          }
        }

        v83 = v181.n128_u64[0];
        *(v58 + 8) = v180.n128_u64[0];
        *(v58 + 16) = v83;
        *(v58 + 24) = 0;
        *v58 = v64;
      }
    }

    v84 = *(v58 + 32);
    v85 = *(v58 + 40);
    v166 = *(v58 + 48);
    v86 = v187.n128_u64[0];
    *(v58 + 32) = v186.n128_u64[0];
    *(v58 + 40) = v86;
    *(v58 + 48) = 0;
    sub_188A3F29C(v62, v63, v60, v59);
    v87 = *(v61 + 48);
    if (v87(v63, 1, v27) == 1)
    {
      v88 = v63;
      v89 = v60;
      v90 = v59;
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        v112 = *(v63 + 144);
        v226 = *(v63 + 128);
        v227 = v112;
        v228 = *(v63 + 160);
        v113 = *(v63 + 80);
        v222 = *(v63 + 64);
        v223 = v113;
        v114 = *(v63 + 112);
        v224 = *(v63 + 96);
        v225 = v114;
        v115 = *(v63 + 16);
        v218 = *v63;
        v219 = v115;
        v116 = *(v63 + 48);
        v220 = *(v63 + 32);
        v221 = v116;
        v117 = *(v63 + 176);
        v118 = *(v63 + 184);
        v119 = *(v63 + 224);
        v231 = *(v63 + 208);
        v232 = v119;
        v120 = *(v63 + 192);
        *&v229 = v117;
        *(&v229 + 1) = v118;
        v230 = v120;
        v173 = v231;
        sub_188AA72A8(v40, &v233);
        if (v235 == 3 && v233 == 1 && (v121 = vorrq_s8(vorrq_s8(*&v234[8], *&v234[40]), vorrq_s8(*&v234[24], *&v234[56])), !(*&vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL)) | *v234 | *(&v233 + 1))))
        {
          sub_188AA7808(&v233);
        }

        else
        {
          sub_188AA7808(&v233);
          sub_188AA72A8(v40, &v233);
          if (v235)
          {
            sub_188AA7808(&v233);
LABEL_23:
            v91 = v62;
            v92 = v172;
            sub_188A3F29C(v91, v172, v60, v59);
            if (v87(v92, 1, v27) == 1)
            {
              sub_188A3F5FC(v92, v60, v59);
              v93 = v27;
LABEL_34:
              v98 = v171;
              sub_188A3F29C(v183, v171, v60, v59);
              v99 = v87(v98, 1, v93);
              if (v99 == 1)
              {
                sub_188A3F5FC(v98, v60, v59);
                v100 = 0.0;
                v101 = 0.0;
                v102 = v179;
              }

              else
              {
                v103 = v168;
                sub_188A3F29C(v98, v168, v177, v178);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                v102 = v179;
                if (EnumCaseMultiPayload > 1)
                {
                  if (EnumCaseMultiPayload == 2)
                  {
                    v105 = v103;
                    v106 = v167;
                    v108 = v169;
                    v107 = v170;
                    v109 = sub_188A3F704(v105, v167, v170, v169);
                    v100 = a19(v109);
                    v101 = v110;
                    v111 = v108;
                    v98 = v171;
                    sub_188A3F5FC(v106, v107, v111);
                  }

                  else
                  {
                    v100 = v103[2];
                    v101 = v103[3];
                  }
                }

                else
                {
                  v100 = 0.0;
                  v101 = 0.0;
                  if (!EnumCaseMultiPayload)
                  {
                    v100 = v103[22];
                    v101 = v103[23];
                  }
                }

                sub_188A3F5FC(v98, v177, v178);
              }

              v122 = sub_188AA72A8(v40, &v233);
              if (v235)
              {
                if (v235 != 2)
                {
                  sub_188AA7808(&v233);
                  v142 = v187.n128_u64[0];
                  v143 = v185;
                  *v185 = v186.n128_u64[0];
                  *(v143 + 1) = v142;
                  v143[2] = v100;
                  v143[3] = v101;
                  return swift_storeEnumTagMultiPayload();
                }

                goto LABEL_51;
              }

              v238 = *&v234[16];
              v239 = *&v234[32];
              v240 = *&v234[48];
              v241 = *&v234[64];
              v236 = v233;
              v237 = *v234;
              v204 = 0u;
              v205 = 0u;
              v206 = 0u;
              memset(v207, 0, 25);
              v208 = 0uLL;
              BYTE8(v209) = 0;
              *&v209 = 0;
              v210 = 0u;
              v211 = 0u;
              LODWORD(v212) = 0;
              *(&v212 + 1) = 0x3FF0000000000000;
              *&v215 = v180.n128_u64[0];
              *(&v215 + 1) = v181.n128_u64[0];
              *&v213 = v186.n128_u64[0];
              *(&v213 + 1) = v187.n128_u64[0];
              v214 = 0uLL;
              v217 = 0uLL;
              *&v216.f64[0] = v180.n128_u64[0];
              *&v216.f64[1] = v181.n128_u64[0];
              sub_188AB0DD4(&v236, 1);
              if (v99 != 1)
              {
                v214.f64[0] = v100;
                v214.f64[1] = v101;
              }

              if ((*(&v238 + 1) & 0x8000000000000000) != 0)
              {
                if (*(&v240 + 1) > 0.0 && (*(v102 + 72) & 1) == 0)
                {
                  v216 = vaddq_f64(v216, vmulq_n_f64(*(v102 + 56), *(&v240 + 1) / 1000.0 / (1.0 - *(&v240 + 1))));
                }

                if (v241 > 0.0)
                {
                  *&v131.f64[0] = v186.n128_u64[0];
                  *&v131.f64[1] = v187.n128_u64[0];
                  *&v132.f64[0] = v180.n128_u64[0];
                  *&v132.f64[1] = v181.n128_u64[0];
                  v214 = vaddq_f64(vmulq_n_f64(vsubq_f64(v131, v132), 6.28318531 / *&v236 * (6.28318531 / *&v236) * v241), v214);
                }
              }

              v133 = v216;
              v134 = v185;
              v185[12] = v215;
              v134[13] = v133;
              v134[14] = v217;
              v135 = v212;
              v134[8] = v211;
              v134[9] = v135;
              v136 = v214;
              v134[10] = v213;
              v134[11] = v136;
              v137 = v208;
              v134[4] = v207[1];
              v134[5] = v137;
              v138 = v210;
              v134[6] = v209;
              v134[7] = v138;
              v139 = v205;
              *v134 = v204;
              v134[1] = v139;
              v141 = v206;
              v140 = v207[0];
LABEL_61:
              v134[2] = v141;
              v134[3] = v140;
              return swift_storeEnumTagMultiPayload();
            }

            if (swift_getEnumCaseMultiPayload() != 3)
            {
              sub_188A3F5FC(v92, v177, v178);
              v93 = v27;
              goto LABEL_34;
            }

            v95 = v92[2];
            v94 = v92[3];
            sub_188AA72A8(v40, &v233);
            if (v235 != 3 || (v96 = vorrq_s8(vorrq_s8(*&v234[8], *&v234[40]), vorrq_s8(*&v234[24], *&v234[56])), *&vorr_s8(*v96.i8, *&vextq_s8(v96, v96, 8uLL)) | *v234 | *(&v233 + 1) | v233))
            {
              sub_188AA7808(&v233);
              sub_188AA72A8(v40, &v233);
              v93 = v27;
              if (v235 != 3 || v233 != 1 || (v97 = vorrq_s8(vorrq_s8(*&v234[8], *&v234[40]), vorrq_s8(*&v234[24], *&v234[56])), *&vorr_s8(*v97.i8, *&vextq_s8(v97, v97, 8uLL)) | *v234 | *(&v233 + 1)))
              {
                sub_188AA7808(&v233);
                sub_188AA72A8(v40, &v233);
                if (v235)
                {
                  sub_188AA7808(&v233);
                  goto LABEL_34;
                }

                v122 = sub_188AA72A8(v40, &v233);
                if (!v235)
                {
                  v157 = v179;
                  v238 = *&v234[16];
                  v239 = *&v234[32];
                  v240 = *&v234[48];
                  v241 = *&v234[64];
                  v236 = v233;
                  v237 = *v234;
                  v190 = 0u;
                  v191 = 0u;
                  v192 = 0u;
                  memset(v193, 0, 25);
                  v194 = 0uLL;
                  BYTE8(v195) = 0;
                  *&v195 = 0;
                  v196 = 0u;
                  v197 = 0u;
                  LODWORD(v198) = 0;
                  *(&v198 + 1) = 0x3FF0000000000000;
                  *&v201 = v180.n128_u64[0];
                  *(&v201 + 1) = v181.n128_u64[0];
                  *&v199 = v186.n128_u64[0];
                  *(&v199 + 1) = v187.n128_u64[0];
                  v203 = 0uLL;
                  *&v202.f64[0] = v180.n128_u64[0];
                  *&v202.f64[1] = v181.n128_u64[0];
                  sub_188AB0DD4(&v236, 1);
                  *&v200 = v95;
                  *(&v200 + 1) = v94;
                  if ((*(&v238 + 1) & 0x8000000000000000) != 0)
                  {
                    if (*(&v240 + 1) > 0.0 && (*(v157 + 72) & 1) == 0)
                    {
                      v202 = vaddq_f64(v202, vmulq_n_f64(*(v157 + 56), *(&v240 + 1) / 1000.0 / (1.0 - *(&v240 + 1))));
                    }

                    if (v241 > 0.0)
                    {
                      v158 = 6.28318531 / *&v236 * (6.28318531 / *&v236) * v241;
                      *&v200 = v95 + (v186.n128_f64[0] - v180.n128_f64[0]) * v158;
                      *(&v200 + 1) = v94 + (v187.n128_f64[0] - v181.n128_f64[0]) * v158;
                    }
                  }

                  v159 = v202;
                  v134 = v185;
                  v185[12] = v201;
                  v134[13] = v159;
                  v134[14] = v203;
                  v160 = v198;
                  v134[8] = v197;
                  v134[9] = v160;
                  v161 = v200;
                  v134[10] = v199;
                  v134[11] = v161;
                  v162 = v194;
                  v134[4] = v193[1];
                  v134[5] = v162;
                  v163 = v196;
                  v134[6] = v195;
                  v134[7] = v163;
                  v164 = v191;
                  *v134 = v190;
                  v134[1] = v164;
                  v141 = v192;
                  v140 = v193[0];
                  goto LABEL_61;
                }

                if (v235 == 2)
                {
LABEL_51:
                  v123 = v233;
                  v124 = BYTE8(v233);
                  v125 = v185;
                  *v185 = 0;
                  *(v125 + 64) = 0;
                  v126 = v175;
                  v176(v122);
                  sub_18A4A49B8();
                  v127 = *(v126 + 64);
                  *(v125 + 8) = v123;
                  v129 = v180.n128_u64[0];
                  v128 = v181.n128_u64[0];
                  *(v125 + 16) = v180.n128_u64[0];
                  *(v125 + 24) = v128;
                  *(v125 + 32) = v129;
                  *(v125 + 40) = v128;
                  v130 = v187.n128_u64[0];
                  *(v125 + 48) = v186.n128_u64[0];
                  *(v125 + 56) = v130;
                  *(v125 + v127) = v124;
                  return swift_storeEnumTagMultiPayload();
                }
              }
            }

            sub_188AA7808(&v233);
            v155 = v187.n128_u64[0];
            v156 = v185;
            *v185 = v186.n128_u64[0];
            *(v156 + 8) = v155;
            *(v156 + 16) = v95;
            *(v156 + 24) = v94;
            return swift_storeEnumTagMultiPayload();
          }

          v238 = *&v234[16];
          v239 = *&v234[32];
          v240 = *&v234[48];
          v241 = *&v234[64];
          v236 = v233;
          v237 = *v234;
          v144 = *&v234[24];
          if ((v174 & 1) == 0)
          {
            v145 = v179;
            if ((*&v234[24] & 0x8000000000000000) != 0 && *(&v240 + 1) > 0.0 && (*(v179 + 72) & 1) == 0)
            {
              v231 = vaddq_f64(v173, vmulq_n_f64(*(v179 + 56), *(&v240 + 1) / 1000.0 / (1.0 - *(&v240 + 1))));
            }

            *(v179 + 56) = 0;
            *(v145 + 64) = 0;
            *(v145 + 72) = 1;
            *v145 = 0;
          }

          if (v144 < 0 && !((v241 <= 0.0) | v166 & 1))
          {
            v146 = 6.28318531 / *&v236 * (6.28318531 / *&v236) * v241;
            *&v229 = v117 + (v186.n128_f64[0] - v84) * v146;
            *(&v229 + 1) = v118 + (v187.n128_f64[0] - v85) * v146;
          }

          sub_188AB0DD4(&v236, 0);
        }

        *&v228 = v186.n128_u64[0];
        *(&v228 + 1) = v187.n128_u64[0];
        v147 = v231;
        v148 = v185;
        v185[12] = v230;
        v148[13] = v147;
        v148[14] = v232;
        v149 = v227;
        v148[8] = v226;
        v148[9] = v149;
        v150 = v223;
        v148[4] = v222;
        v148[5] = v150;
        v151 = v225;
        v148[6] = v224;
        v148[7] = v151;
        v152 = v219;
        *v148 = v218;
        v148[1] = v152;
        v153 = v221;
        v148[2] = v220;
        v148[3] = v153;
        v154 = v229;
        v148[10] = v228;
        v148[11] = v154;
        return swift_storeEnumTagMultiPayload();
      }

      v88 = v63;
      v89 = v177;
      v90 = v178;
    }

    sub_188A3F5FC(v88, v89, v90);
    goto LABEL_23;
  }

  v46 = v233;
  v47 = BYTE8(v233);
  v48 = v184;
  sub_188A3F29C(v183, v38, v184, a7);
  if ((*(v28 + 48))(v38, 1, v27) == 1)
  {
    v49 = v38;
    v50 = v48;
    v51 = a7;
LABEL_14:
    v66 = sub_188A3F5FC(v49, v50, v51);
    v67 = v185;
    *v185 = 0;
    *(v67 + 64) = 0;
    v68 = v175;
    v176(v66);
    sub_18A4A49B8();
    v69 = *(v68 + 64);
    *(v67 + 8) = v46;
    v71 = v180.n128_u64[0];
    v70 = v181.n128_u64[0];
    *(v67 + 16) = v180.n128_u64[0];
    *(v67 + 24) = v70;
    *(v67 + 32) = v71;
    *(v67 + 40) = v70;
    v72 = v187.n128_u64[0];
    *(v67 + 48) = v186.n128_u64[0];
    *(v67 + 56) = v72;
    *(v67 + v69) = v47;
    return swift_storeEnumTagMultiPayload();
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v49 = v38;
    v50 = v177;
    v51 = v178;
    goto LABEL_14;
  }

  v57 = v169;
  v56 = v170;
  sub_188A3F704(v38, v45, v170, v169);
  a16(v46, v186, v187);

  sub_188A3F704(v45, v185, v56, v57);
  return swift_storeEnumTagMultiPayload();
}

double sub_188AB0DD4(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 145) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 146) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 128) = v11;
  *(v2 + 136) = v12 + v12;
  *(v2 + 147) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 152) = v17 / v15;
  return result;
}

unint64_t sub_188AB0F24(float a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v18 = v6;
  result = sub_188AB103C(a1);
  v9 = v6[2];
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v8;
  if (v6[3] < v12)
  {
    sub_188D4A2CC(v12, isUniquelyReferenced_nonNull_native);
    result = sub_188AB103C(a1);
    if ((v2 & 1) == (v13 & 1))
    {
      goto LABEL_6;
    }

    result = sub_18A4A87A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v3 = v6;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = result;
  sub_188AA88B4(result, 0, v6, a1);
  result = v3;
LABEL_8:
  while (1)
  {
    v14 = v6[7];
    v15 = *(v14 + 8 * result);
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v11)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v17 = result;
    sub_188FA253C();
    result = v17;
    v6 = v18;
    *v3 = v18;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v14 + 8 * result) = v16;
  return result;
}

unint64_t sub_188AB103C(float a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x18CFE37B0](*(v1 + 40), LODWORD(v4), 4);

  return sub_188AB108C(v5, a1);
}

unint64_t sub_188AB108C(uint64_t a1, float a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_188AB10F4(uint64_t a1)
{
  v3 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  v18 = v6;
  result = sub_188AB120C(a1);
  v9 = v6[2];
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v8;
  if (v6[3] < v12)
  {
    sub_188D4A540(v12, isUniquelyReferenced_nonNull_native);
    result = sub_188AB120C(a1);
    if ((v2 & 1) == (v13 & 1))
    {
      goto LABEL_6;
    }

    result = sub_18A4A87A8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *v3 = v6;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v3 = result;
  sub_188AB1254(result, a1, 0, v6);
  result = v3;
LABEL_8:
  while (1)
  {
    v14 = v6[7];
    v15 = *(v14 + 8 * result);
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (!v11)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v17 = result;
    sub_188FA2688();
    result = v17;
    v6 = v18;
    *v3 = v18;
    if ((v2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v14 + 8 * result) = v16;
  return result;
}

unint64_t sub_188AB120C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x18CFE37B0](*(v1 + 40), a1, 4);

  return sub_188AB1298(v2, v3);
}

unint64_t sub_188AB1254(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_188AB1298(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_188AB1304(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 161) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 162) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 144) = v11;
  *(v2 + 152) = v12 + v12;
  *(v2 + 163) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 168) = v17 / v15;
  return result;
}

uint64_t sub_188AB1454(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v291 = v10;
  v292.i64[0] = v9;
  v293 = v11;
  v12 = *(v10 + 112);
  v487 = *(v10 + 96);
  v488 = v12;
  v489 = *(v10 + 128);
  v13 = *(v10 + 48);
  v483 = *(v10 + 32);
  v484 = v13;
  v14 = *(v10 + 64);
  v486 = *(v10 + 80);
  v485 = v14;
  v15 = *v10;
  v482 = *(v10 + 16);
  v481 = v15;
  v17 = *(v16 + 112);
  v496 = *(v16 + 96);
  v497 = v17;
  v498 = *(v16 + 128);
  v18 = *(v16 + 48);
  v492 = *(v16 + 32);
  v493 = v18;
  v19 = *(v16 + 64);
  v495 = *(v16 + 80);
  v494 = v19;
  v21 = *v16;
  v20 = *(v16 + 16);
  v290 = v16;
  v491 = v20;
  v490 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780, &qword_18A650ED8);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v283.i64[0] = &v278 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9368B8, &qword_18A651000);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v287.i64[0] = &v278 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v285.i64[0] = &v278 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v284.i64[0] = &v278 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v278 - v32;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778, &qword_18A650ED0);
  MEMORY[0x1EEE9AC00](v288);
  v282.i64[0] = &v278 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v278 - v36;
  v286.i32[0] = v5;
  *(v3 + 273) = v5;
  sub_188AA72A8(v7, &v472);
  if (v477.u8[8] != 2)
  {
    v41 = v292.i64[0];
    v289 = v22;
    sub_188AA7808(&v472);
    sub_188AA72A8(v7, &v454);
    if (BYTE8(v459) == 1)
    {
      v447 = v456;
      v448 = v457;
      v449 = v458;
      v446 = v455;
      v445 = v454;
      sub_188A5EBAC(&v445, &v434);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
      swift_dynamicCast();
      sub_188A5EBAC((&v447 + 8), &v425);
      swift_dynamicCast();
      v42 = v469;
      v43 = v470;
      v44 = v470;
      v45 = v293;
      v293[23] = v469;
      v45[24] = v43;
      v46 = v465;
      v47 = v466;
      v48 = v466;
      v45[19] = v465;
      v45[20] = v47;
      v49 = v468;
      v50 = v468;
      v51 = v467;
      v45[21] = v467;
      v45[22] = v49;
      v52 = v464;
      v53 = v464;
      v54 = v463;
      v45[17] = v463;
      v45[18] = v52;
      v55 = v478;
      v56 = v479;
      v57 = v479;
      *(v45 + 520) = v478;
      *(v45 + 536) = v56;
      v58 = v474;
      v59 = v475;
      v60 = v475;
      *(v45 + 456) = v474;
      *(v45 + 472) = v59;
      v61 = v477;
      v62 = v477;
      v63 = v476;
      *(v45 + 488) = v476;
      *(v45 + 504) = v61;
      v64 = v473;
      v65 = v473;
      v66 = v472;
      *(v45 + 424) = v472;
      *(v45 + 440) = v64;
      v45[6] = v55;
      v45[7] = v57;
      v45[2] = v58;
      v45[3] = v60;
      v45[4] = v63;
      v45[5] = v62;
      *v45 = v66;
      v45[1] = v65;
      *(v45 + 216) = v50;
      *(v45 + 232) = v42;
      *(v45 + 248) = v44;
      *(v45 + 152) = v53;
      *(v45 + 168) = v46;
      *(v45 + 184) = v48;
      *(v45 + 200) = v51;
      v45[25].i8[0] = v471;
      v45[34].i8[8] = v480;
      v45[8].i8[0] = v480;
      v45[16].i8[8] = v471;
      *(v45 + 136) = v54;
      v45[25].i64[1] = 0x3FEFEF9DB22D0E56;
      v45[26].i64[0] = 0;
      return swift_storeEnumTagMultiPayload();
    }

    v281 = v7;
    sub_188AA7808(&v454);
    v68 = v287.i64[0];
    v69 = v291;
    v70 = v23;
    v71 = v285.i64[0];
    if (v286.i8[0])
    {
      v72 = CACurrentMediaTime();
      v73 = v72 - *v3;
      if (v8 * 0.9 < v73)
      {
        if (*v3 != 0.0)
        {
          v438 = *(v3 + 408);
          v74 = *(v3 + 392);
          v436 = *(v3 + 376);
          v437 = v74;
          v75 = *(v3 + 328);
          v435[1] = *(v3 + 312);
          v435[2] = v75;
          v76 = *(v3 + 344);
          v435[4] = *(v3 + 360);
          v435[3] = v76;
          v77 = *(v3 + 280);
          v435[0] = *(v3 + 296);
          v434 = v77;
          if (sub_188AB3700(&v434) == 1)
          {
            v480 = 0;
            v479 = 0u;
            v478 = 0u;
            v477 = 0u;
            v476 = 0u;
            v475 = 0u;
            v474 = 0u;
            v473 = 0u;
            v472 = 0u;
            signpost_c2_entryLock_start();
            v78 = v479;
            *(v3 + 376) = v478;
            *(v3 + 392) = v78;
            *(v3 + 408) = v480;
            v79 = v475;
            *(v3 + 312) = v474;
            *(v3 + 328) = v79;
            v80 = v477;
            *(v3 + 344) = v476;
            *(v3 + 360) = v80;
            v81 = v473;
            *(v3 + 280) = v472;
            *(v3 + 296) = v81;
          }

          else
          {
            v279 = v3 + 280;
            v102 = *(v69 + 112);
            v411 = *(v69 + 96);
            v412 = v102;
            v103 = *(v69 + 48);
            v407 = *(v69 + 32);
            v408 = v103;
            v104 = *(v69 + 64);
            v410 = *(v69 + 80);
            v409 = v104;
            v105 = *v69;
            v406 = *(v69 + 16);
            v405 = v105;
            v106 = *(v3 + 224);
            v107 = *(v3 + 256);
            v422 = *(v3 + 240);
            v423 = v107;
            v108 = *(v3 + 160);
            v109 = *(v3 + 192);
            v418 = *(v3 + 176);
            v419 = v109;
            v111 = *(v3 + 192);
            v110 = *(v3 + 208);
            v112 = v110;
            v421 = *(v3 + 224);
            v420 = v110;
            v113 = *(v3 + 144);
            v114 = v113;
            v417 = *(v3 + 160);
            v416 = v113;
            v115 = *(v3 + 256);
            v431 = v422;
            v432 = v115;
            v427 = v418;
            v428 = v111;
            v430 = v106;
            v429 = v112;
            v413 = *(v69 + 128);
            v424 = *(v3 + 272);
            v280.i64[0] = v3;
            v433 = *(v3 + 272);
            v426 = v108;
            v425 = v114;
            if (sub_188AB3700(&v425) != 1)
            {
              v478 = v422;
              v479 = v423;
              v480 = v424;
              v474 = v418;
              v475 = v419;
              v477 = v421;
              v476 = v420;
              v473 = v417;
              v472 = v416;
              v116 = *(v69 + 112);
              v469 = *(v69 + 96);
              v470 = v116;
              v471 = *(v69 + 128);
              v117 = *(v69 + 48);
              v465 = *(v69 + 32);
              v466 = v117;
              v118 = *(v69 + 64);
              v468 = *(v69 + 80);
              v467 = v118;
              v119 = *v69;
              v464 = *(v69 + 16);
              v463 = v119;
              sub_188AAA46C(&v463, &v472, &v405);
            }

            sub_188AB3714(1.0 / v73);
            v120 = v279;
            v121 = *(v279 + 112);
            v402 = *(v279 + 96);
            v403 = v121;
            v404 = *(v279 + 128);
            v122 = *(v279 + 48);
            v398 = *(v279 + 32);
            v399 = v122;
            v123 = *(v279 + 64);
            v401 = *(v279 + 80);
            v400 = v123;
            v124 = *v279;
            v397 = *(v279 + 16);
            v396 = v124;
            if (sub_188AB3700(&v396) != 1)
            {
              sub_188AB3714(0.25);
            }

            v125 = *(v120 + 112);
            v327 = *(v120 + 96);
            v328 = v125;
            v329 = *(v120 + 128);
            v126 = *(v120 + 48);
            v323 = *(v120 + 32);
            v324 = v126;
            v127 = *(v120 + 64);
            v326 = *(v120 + 80);
            v325 = v127;
            v128 = *v120;
            v322 = *(v120 + 16);
            v321 = v128;
            if (sub_188AB3700(&v321) != 1)
            {
              v300 = v411;
              v301 = v412;
              v302 = v413;
              v296 = v407;
              v297 = v408;
              v298 = v409;
              v299 = v410;
              v294 = v405;
              v295 = v406;
              sub_188AB3714(0.75);
              v460 = v300;
              v461 = v301;
              v462 = v302;
              v456 = v296;
              v457 = v297;
              v459 = v299;
              v458 = v298;
              v455 = v295;
              v454 = v294;
              v129 = *(v120 + 112);
              v451 = *(v120 + 96);
              v452 = v129;
              v453 = *(v120 + 128);
              v130 = *(v120 + 48);
              v447 = *(v120 + 32);
              v448 = v130;
              v131 = *(v120 + 64);
              v450 = *(v120 + 80);
              v449 = v131;
              v132 = *v120;
              v446 = *(v120 + 16);
              v445 = v132;
              sub_188AB35D4(&v445, &v454, v414);
              v133 = v414[7];
              *(v120 + 96) = v414[6];
              *(v120 + 112) = v133;
              *(v120 + 128) = v415;
              v134 = v414[3];
              *(v120 + 32) = v414[2];
              *(v120 + 48) = v134;
              v135 = v414[5];
              *(v120 + 64) = v414[4];
              *(v120 + 80) = v135;
              v136 = v414[1];
              *v120 = v414[0];
              *(v120 + 16) = v136;
            }

            v3 = v280.i64[0];
          }
        }

        v436 = v496;
        v437 = v497;
        v438 = v498;
        v435[1] = v492;
        v435[2] = v493;
        v435[4] = v495;
        v435[3] = v494;
        v435[0] = v491;
        v434 = v490;
        signpost_c2_entryLock_start();
        v137 = v435[3];
        *(v3 + 88) = v435[4];
        v138 = v437;
        *(v3 + 104) = v436;
        *(v3 + 120) = v138;
        v139 = v434;
        *(v3 + 24) = v435[0];
        v140 = v435[2];
        *(v3 + 40) = v435[1];
        *(v3 + 56) = v140;
        *(v3 + 72) = v137;
        *(v3 + 136) = v438;
        *(v3 + 8) = v139;
        *v3 = v72;
      }
    }

    v141 = *(v3 + 256);
    v402 = *(v3 + 240);
    v403 = v141;
    v404 = *(v3 + 272);
    v142 = *(v3 + 192);
    v398 = *(v3 + 176);
    v399 = v142;
    v143 = *(v3 + 208);
    v401 = *(v3 + 224);
    v400 = v143;
    v144 = *(v3 + 144);
    v397 = *(v3 + 160);
    v396 = v144;
    v411 = v487;
    v412 = v488;
    v413 = v489;
    v407 = v483;
    v408 = v484;
    v410 = v486;
    v409 = v485;
    v406 = v482;
    v405 = v481;
    signpost_c2_entryLock_start();
    v145 = v412;
    *(v3 + 240) = v411;
    *(v3 + 256) = v145;
    *(v3 + 272) = v413;
    v146 = v408;
    *(v3 + 176) = v407;
    *(v3 + 192) = v146;
    v147 = v410;
    *(v3 + 208) = v409;
    *(v3 + 224) = v147;
    v148 = v406;
    *(v3 + 144) = v405;
    *(v3 + 160) = v148;
    v149 = v284.i64[0];
    sub_188A3F29C(v41, v284.i64[0], &qword_1EA9368B8, &qword_18A651000);
    v150 = *(v70 + 48);
    if (v150(v149, 1, v289) == 1)
    {
      v151 = &qword_1EA9368B8;
      v152 = &qword_18A651000;
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        memcpy(v395, v149, 0x3B9uLL);
        sub_188AA72A8(v281, &v434);
        if (BYTE8(v435[4]) == 3 && v434.i64[0] == 1)
        {
          v160 = vorrq_s8(vorrq_s8(*(v435 + 8), *(&v435[2] + 8)), vorrq_s8(*(&v435[1] + 8), *(&v435[3] + 8)));
          if (!(*&vorr_s8(*v160.i8, *&vextq_s8(v160, v160, 8uLL)) | *&v435[0] | v434.i64[1]))
          {
            sub_188AA7808(&v434);
            v161 = *(v69 + 112);
            *(&v395[23] + 8) = *(v69 + 96);
            *(&v395[24] + 8) = v161;
            v162 = *(v69 + 48);
            *(&v395[19] + 8) = *(v69 + 32);
            *(&v395[20] + 8) = v162;
            v163 = *(v69 + 80);
            *(&v395[21] + 8) = *(v69 + 64);
            *(&v395[22] + 8) = v163;
            v164 = *(v69 + 16);
            *(&v395[17] + 8) = *v69;
            *(&v395[18] + 8) = v164;
            BYTE8(v395[25]) = *(v69 + 128);
            v165 = v395;
            goto LABEL_70;
          }
        }

        sub_188AA7808(&v434);
        sub_188AA72A8(v281, &v434);
        if (!BYTE8(v435[4]))
        {
          v296 = v435[1];
          v297 = v435[2];
          v298 = v435[3];
          *&v299 = *&v435[4];
          v294 = v434;
          v295 = v435[0];
          v238 = *(&v435[1] + 1);
          if ((v286.i8[0] & 1) == 0)
          {
            if ((*(&v435[1] + 1) & 0x8000000000000000) != 0)
            {
              v239 = *(&v298 + 1);
              if (*(&v298 + 1) > 0.0)
              {
                v240 = *(v3 + 360);
                v241 = *(v3 + 392);
                v422 = *(v3 + 376);
                v423 = v241;
                v242 = *(v3 + 296);
                v243 = *(v3 + 328);
                v418 = *(v3 + 312);
                v419 = v243;
                v245 = *(v3 + 328);
                v244 = *(v3 + 344);
                v246 = v244;
                v421 = *(v3 + 360);
                v420 = v244;
                v247 = *(v3 + 280);
                v248 = v247;
                v417 = *(v3 + 296);
                v416 = v247;
                v249 = *(v3 + 392);
                v431 = v422;
                v432 = v249;
                v427 = v418;
                v428 = v245;
                v430 = v240;
                v429 = v246;
                v424 = *(v3 + 408);
                v433 = *(v3 + 408);
                v426 = v242;
                v425 = v248;
                if (sub_188AB3700(&v425) != 1)
                {
                  v303[6] = v422;
                  v303[7] = v423;
                  v304 = v424;
                  v303[2] = v418;
                  v303[3] = v419;
                  v303[4] = v420;
                  v303[5] = v421;
                  v303[0] = v416;
                  v303[1] = v417;
                  sub_188AB3714(v239 / 1000.0 / (1.0 - v239));
                  v436 = v395[49];
                  v437 = v395[50];
                  v438 = v395[51];
                  v435[1] = v395[45];
                  v435[2] = v395[46];
                  v435[4] = v395[48];
                  v435[3] = v395[47];
                  v435[0] = v395[44];
                  v434 = v395[43];
                  sub_188AB35D4(&v434, v303, &v395[43]);
                }
              }
            }

            sub_188AA24A8(&v425);
            v250 = v432;
            *(v3 + 376) = v431;
            *(v3 + 392) = v250;
            *(v3 + 408) = v433;
            v251 = v428;
            *(v3 + 312) = v427;
            *(v3 + 328) = v251;
            v252 = v430;
            *(v3 + 344) = v429;
            *(v3 + 360) = v252;
            v253 = v426;
            *(v3 + 280) = v425;
            *(v3 + 296) = v253;
            *v3 = 0;
          }

          if (v238 < 0)
          {
            v254 = *&v299;
            if (*&v299 > 0.0)
            {
              v255 = *&v294;
              v327 = v402;
              v328 = v403;
              v329 = v404;
              v323 = v398;
              v324 = v399;
              v326 = v401;
              v325 = v400;
              v322 = v397;
              v321 = v396;
              if (sub_188AB3700(&v321) != 1)
              {
                v431 = v402;
                v432 = v403;
                v433 = v404;
                v427 = v398;
                v428 = v399;
                v430 = v401;
                v429 = v400;
                v426 = v397;
                v425 = v396;
                sub_188AAA46C(v69, &v425, v305);
                sub_188AB3714(6.28318531 / v255 * (6.28318531 / v255) * v254);
                v422 = v395[32];
                v423 = v395[33];
                v424 = v395[34];
                v418 = v395[28];
                v419 = v395[29];
                v421 = v395[31];
                v420 = v395[30];
                v417 = v395[27];
                v416 = v395[26];
                sub_188AB35D4(&v416, v305, &v395[26]);
              }
            }
          }

          sub_188AB3484(&v294, 0);
          v256 = *(v69 + 112);
          *(&v395[23] + 8) = *(v69 + 96);
          *(&v395[24] + 8) = v256;
          v257 = *(v69 + 48);
          *(&v395[19] + 8) = *(v69 + 32);
          *(&v395[20] + 8) = v257;
          v258 = *(v69 + 80);
          *(&v395[21] + 8) = *(v69 + 64);
          *(&v395[22] + 8) = v258;
          v259 = *(v69 + 16);
          *(&v395[17] + 8) = *v69;
          *(&v395[18] + 8) = v259;
          BYTE8(v395[25]) = *(v69 + 128);
          memcpy(v293, v395, 0x3B9uLL);
          return swift_storeEnumTagMultiPayload();
        }

        sub_188AA7808(&v434);
LABEL_29:
        sub_188A3F29C(v41, v71, &qword_1EA9368B8, &qword_18A651000);
        v153 = v289;
        if (v150(v71, 1, v289) == 1)
        {
          sub_188A3F5FC(v71, &qword_1EA9368B8, &qword_18A651000);
        }

        else if (swift_getEnumCaseMultiPayload() == 3)
        {
          memcpy(v394, v71, 0x109uLL);
          sub_188AA72A8(v281, &v434);
          if (BYTE8(v435[4]) == 3 && (v154 = vorrq_s8(vorrq_s8(*(v435 + 8), *(&v435[2] + 8)), vorrq_s8(*(&v435[1] + 8), *(&v435[3] + 8))), !(*&vorr_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL)) | *&v435[0] | v434.i64[1] | v434.i64[0])) || (sub_188AA7808(&v434), sub_188AA72A8(v281, &v434), v153 = v289, BYTE8(v435[4]) == 3) && v434.i64[0] == 1 && (v155 = vorrq_s8(vorrq_s8(*(v435 + 8), *(&v435[2] + 8)), vorrq_s8(*(&v435[1] + 8), *(&v435[3] + 8))), !(*&vorr_s8(*v155.i8, *&vextq_s8(v155, v155, 8uLL)) | *&v435[0] | v434.i64[1])))
          {
            sub_188AA7808(&v434);
            v156 = *(v69 + 112);
            v394[6] = *(v69 + 96);
            v394[7] = v156;
            LOBYTE(v394[8]) = *(v69 + 128);
            v157 = *(v69 + 48);
            v394[2] = *(v69 + 32);
            v394[3] = v157;
            v158 = *(v69 + 64);
            v394[5] = *(v69 + 80);
            v394[4] = v158;
            v159 = *v69;
            v394[1] = *(v69 + 16);
            v394[0] = v159;
            memcpy(v293, v394, 0x109uLL);
            return swift_storeEnumTagMultiPayload();
          }

          sub_188AA7808(&v434);
          v166 = v281;
          sub_188AA72A8(v281, &v321);
          if (!v326.i8[8])
          {
            sub_188AA72A8(v166, &v294);
            if (!BYTE8(v299))
            {
              v441 = v296;
              v442 = v297;
              v443 = v298;
              v444 = *&v299;
              v439 = v294;
              v440 = v295;
              sub_188D88AB8(&v439, v290, v69, v309);
              v309[32] = *(&v394[14] + 8);
              v309[33] = *(&v394[15] + 8);
              LOBYTE(v309[34]) = BYTE8(v394[16]);
              v309[28] = *(&v394[10] + 8);
              v309[29] = *(&v394[11] + 8);
              v309[31] = *(&v394[13] + 8);
              v309[30] = *(&v394[12] + 8);
              v309[27] = *(&v394[9] + 8);
              v309[26] = *(&v394[8] + 8);
              if ((*(&v441 + 1) & 0x8000000000000000) != 0)
              {
                v265 = v444;
                v266 = *&v439;
                v267 = *(&v443 + 1);
                if (*(&v443 + 1) > 0.0)
                {
                  v268 = *(v3 + 360);
                  v269 = *(v3 + 392);
                  v422 = *(v3 + 376);
                  v423 = v269;
                  v270 = *(v3 + 296);
                  v271 = *(v3 + 328);
                  v418 = *(v3 + 312);
                  v419 = v271;
                  v273 = *(v3 + 328);
                  v272 = *(v3 + 344);
                  v274 = v272;
                  v421 = *(v3 + 360);
                  v420 = v272;
                  v275 = *(v3 + 280);
                  v276 = v275;
                  v417 = *(v3 + 296);
                  v416 = v275;
                  v277 = *(v3 + 392);
                  v431 = v422;
                  v432 = v277;
                  v427 = v418;
                  v428 = v273;
                  v430 = v268;
                  v429 = v274;
                  v424 = *(v3 + 408);
                  v433 = *(v3 + 408);
                  v426 = v270;
                  v425 = v276;
                  if (sub_188AB3700(&v425) != 1)
                  {
                    v306[6] = v422;
                    v306[7] = v423;
                    v307 = v424;
                    v306[2] = v418;
                    v306[3] = v419;
                    v306[4] = v420;
                    v306[5] = v421;
                    v306[0] = v416;
                    v306[1] = v417;
                    sub_188AB3714(v267 / 1000.0 / (1.0 - v267));
                    v436 = v309[49];
                    v437 = v309[50];
                    v438 = v309[51];
                    v435[1] = v309[45];
                    v435[2] = v309[46];
                    v435[4] = v309[48];
                    v435[3] = v309[47];
                    v435[0] = v309[44];
                    v434 = v309[43];
                    sub_188AB35D4(&v434, v306, &v309[43]);
                  }
                }

                if (v265 > 0.0)
                {
                  sub_188AAA46C(v69, v290, v308);
                  sub_188AB3714(6.28318531 / v266 * (6.28318531 / v266) * v265);
                  v431 = v309[32];
                  v432 = v309[33];
                  v433 = v309[34];
                  v427 = v309[28];
                  v428 = v309[29];
                  v430 = v309[31];
                  v429 = v309[30];
                  v426 = v309[27];
                  v425 = v309[26];
                  sub_188AB35D4(&v425, v308, &v309[26]);
                }
              }

              memcpy(v293, v309, 0x3B9uLL);
              return swift_storeEnumTagMultiPayload();
            }

            if (BYTE8(v299) != 2)
            {
              sub_188AA7808(&v294);
              v260 = *(v69 + 112);
              v261 = v293;
              v293[6] = *(v69 + 96);
              v261[7] = v260;
              v261[8].i8[0] = *(v69 + 128);
              v262 = *(v69 + 48);
              v261[2] = *(v69 + 32);
              v261[3] = v262;
              v263 = *(v69 + 80);
              v261[4] = *(v69 + 64);
              v261[5] = v263;
              v264 = *(v69 + 16);
              *v261 = *v69;
              v261[1] = v264;
              *(v261 + 216) = *(&v394[13] + 8);
              *(v261 + 232) = *(&v394[14] + 8);
              *(v261 + 248) = *(&v394[15] + 8);
              v261[16].i8[8] = BYTE8(v394[16]);
              *(v261 + 152) = *(&v394[9] + 8);
              *(v261 + 168) = *(&v394[10] + 8);
              *(v261 + 184) = *(&v394[11] + 8);
              *(v261 + 200) = *(&v394[12] + 8);
              *(v261 + 136) = *(&v394[8] + 8);
              return swift_storeEnumTagMultiPayload();
            }

LABEL_60:
            v182 = v293;
            v183 = v294;
            v184 = BYTE8(v294);
            v293->i64[0] = 0;
            *(v182[26].i16 + 1) = 0;
            v185 = v288;
            sub_188F0D4BC();
            sub_18A4A49B8();
            v186 = *(v185 + 64);
            v187 = v290;
            v188 = v290[5];
            v190 = v290[6];
            v189 = v290[7];
            v182[7] = v190;
            v182[8] = v189;
            v191 = v187[1];
            v193 = v187[2];
            v192 = v187[3];
            v182[3] = v193;
            v182[4] = v192;
            v194 = v187[3];
            v196 = v187[4];
            v195 = v187[5];
            v182[5] = v196;
            v182[6] = v195;
            v197 = v187[1];
            v198 = *v187;
            v182[1] = *v187;
            v182[2] = v197;
            *(&v182[14] + 8) = v188;
            *(&v182[15] + 8) = v190;
            *(&v182[16] + 8) = v187[7];
            *(&v182[10] + 8) = v191;
            *(&v182[11] + 8) = v193;
            *(&v182[12] + 8) = v194;
            v182->i64[1] = v183;
            v182[9].i8[0] = *(v187 + 128);
            v182[17].i8[8] = *(v187 + 128);
            *(&v182[13] + 8) = v196;
            *(&v182[9] + 8) = v198;
            v199 = *(v69 + 112);
            v182[24] = *(v69 + 96);
            v182[25] = v199;
            v182[26].i8[0] = *(v69 + 128);
            v200 = *(v69 + 48);
            v182[20] = *(v69 + 32);
            v182[21] = v200;
            v201 = *(v69 + 80);
            v182[22] = *(v69 + 64);
            v182[23] = v201;
            v202 = *(v69 + 16);
            v182[18] = *v69;
            v182[19] = v202;
            v182->i8[v186] = v184;
            return swift_storeEnumTagMultiPayload();
          }

          sub_188AA7808(&v321);
          v68 = v287.i64[0];
        }

        else
        {
          sub_188A3F5FC(v71, &qword_1EA936780, &qword_18A650ED8);
          v153 = v289;
        }

        sub_188A3F29C(v41, v68, &qword_1EA9368B8, &qword_18A651000);
        if (v150(v68, 1, v153) == 1)
        {
          sub_188A3F5FC(v68, &qword_1EA9368B8, &qword_18A651000);
          sub_188AA24A8(&v434);
          v280 = v434;
          v282 = v435[1];
          v286 = v435[2];
          v287 = v435[4];
          v283 = v435[3];
          v284 = v435[0];
          v292 = v437;
          v285 = v436;
          v167 = v438;
LABEL_58:
          sub_188AA72A8(v281, &v294);
          if (BYTE8(v299))
          {
            if (BYTE8(v299) != 2)
            {
              sub_188AA7808(&v294);
              v435[0] = v284;
              v434 = v280;
              v435[2] = v286;
              v435[1] = v282;
              v435[4] = v287;
              v435[3] = v283;
              v437 = v292;
              v436 = v285;
              v438 = v167;
              v228 = sub_188AB3700(&v434);
              v229 = v228 == 1;
              if (v228 == 1)
              {
                v230 = 0;
              }

              else
              {
                v230 = v167;
              }

              v231 = *(v69 + 112);
              v232 = v293;
              v293[6] = *(v69 + 96);
              v232[7] = v231;
              v232[8].i8[0] = *(v69 + 128);
              v233 = *(v69 + 48);
              v232[2] = *(v69 + 32);
              v232[3] = v233;
              v234 = *(v69 + 80);
              v232[4] = *(v69 + 64);
              v232[5] = v234;
              v235 = *(v69 + 16);
              *v232 = *v69;
              v232[1] = v235;
              *v235.i8 = vdup_n_s32(v229);
              v236.i64[0] = v235.u32[0];
              v236.i64[1] = v235.u32[1];
              v237 = vcgezq_s64(vshlq_n_s64(v236, 0x3FuLL));
              *(v232 + 136) = vandq_s8(v280, v237);
              *(v232 + 152) = vandq_s8(v284, v237);
              *(v232 + 168) = vandq_s8(v282, v237);
              *(v232 + 184) = vandq_s8(v286, v237);
              *(v232 + 200) = vandq_s8(v283, v237);
              *(v232 + 216) = vandq_s8(v287, v237);
              *(v232 + 232) = vandq_s8(v285, v237);
              *(v232 + 248) = vandq_s8(v292, v237);
              v232[16].i8[8] = v230;
              return swift_storeEnumTagMultiPayload();
            }

            goto LABEL_60;
          }

          v203 = v290[1];
          v204 = v290[3];
          v369 = v290[2];
          v370 = v204;
          v205 = v290[5];
          v206 = v290[7];
          v373 = v290[6];
          v374 = v206;
          v207 = v290[3];
          v208 = v290[5];
          v371 = v290[4];
          v372 = v208;
          v209 = v290[1];
          v367 = *v290;
          v368 = v209;
          v210 = *(v69 + 112);
          v355 = *(v69 + 96);
          v356 = v210;
          v211 = *(v69 + 48);
          v351 = *(v69 + 32);
          v352 = v211;
          v212 = *(v69 + 80);
          v353 = *(v69 + 64);
          v354 = v212;
          v213 = *(v69 + 16);
          v349 = *v69;
          v350 = v213;
          v441 = v296;
          v442 = v297;
          v443 = v298;
          v439 = v294;
          v440 = v295;
          v336 = 0u;
          v337 = 0u;
          v338 = 0u;
          v339 = 0u;
          v340 = 0u;
          v341 = 0u;
          v342 = 0u;
          v343 = 0u;
          memset(v331, 0, 73);
          v365 = 0u;
          v364 = 0u;
          v363 = 0u;
          v362 = 0u;
          v361 = 0u;
          v360 = 0u;
          v359 = 0u;
          v358 = 0u;
          v385 = 0u;
          v386 = 0u;
          v387 = 0u;
          v388 = 0u;
          v389 = 0u;
          v390 = 0u;
          v391 = 0u;
          v392 = 0u;
          v214 = v290[7];
          v382 = v373;
          v383 = v214;
          v378 = v369;
          v379 = v207;
          v381 = v205;
          v380 = v371;
          v444 = *&v299;
          v344 = 0;
          v333 = 0;
          v332 = 0;
          v335 = 0;
          v334 = 0;
          v347 = 0;
          v345 = 0;
          v346 = 0;
          v348 = 0x3FF0000000000000;
          v375 = *(v290 + 128);
          v357 = *(v69 + 128);
          v366 = 0;
          v393 = 0;
          v384 = *(v290 + 128);
          v377 = v203;
          v376 = v367;
          sub_188AB3484(&v439, 1);
          v416 = v280;
          v417 = v284;
          v418 = v282;
          v419 = v286;
          v420 = v283;
          v421 = v287;
          v422 = v285;
          v423 = v292;
          v424 = v167;
          if (sub_188AB3700(&v416) != 1)
          {
            v358 = v280;
            v359 = v284;
            v360 = v282;
            v361 = v286;
            v362 = v283;
            v363 = v287;
            v364 = v285;
            v365 = v292;
            v366 = v167;
          }

          if ((*(&v441 + 1) & 0x8000000000000000) != 0)
          {
            v215 = v444;
            v216 = *&v439;
            v217 = *(&v443 + 1);
            if (*(&v443 + 1) > 0.0)
            {
              v218 = *(v3 + 360);
              v219 = *(v3 + 392);
              v327 = *(v3 + 376);
              v328 = v219;
              v220 = *(v3 + 296);
              v221 = *(v3 + 328);
              v323 = *(v3 + 312);
              v324 = v221;
              v223 = *(v3 + 328);
              v222 = *(v3 + 344);
              v224 = v222;
              v326 = *(v3 + 360);
              v325 = v222;
              v225 = *(v3 + 280);
              v226 = v225;
              v322 = *(v3 + 296);
              v321 = v225;
              v227 = *(v3 + 392);
              v431 = v327;
              v432 = v227;
              v427 = v323;
              v428 = v223;
              v430 = v218;
              v429 = v224;
              v329 = *(v3 + 408);
              v433 = *(v3 + 408);
              v426 = v220;
              v425 = v226;
              if (sub_188AB3700(&v425) != 1)
              {
                v319[6] = v327;
                v319[7] = v328;
                v320 = v329;
                v319[2] = v323;
                v319[3] = v324;
                v319[5] = v326;
                v319[4] = v325;
                v319[1] = v322;
                v319[0] = v321;
                sub_188AB3714(v217 / 1000.0 / (1.0 - v217));
                v436 = v382;
                v437 = v383;
                v438 = v384;
                v435[1] = v378;
                v435[2] = v379;
                v435[4] = v381;
                v435[3] = v380;
                v435[0] = v377;
                v434 = v376;
                sub_188AB35D4(&v434, v319, &v376);
              }
            }

            if (v215 > 0.0)
            {
              sub_188AAA46C(v69, v290, v330);
              sub_188AB3714(6.28318531 / v216 * (6.28318531 / v216) * v215);
              v431 = v364;
              v432 = v365;
              v433 = v366;
              v427 = v360;
              v428 = v361;
              v430 = v363;
              v429 = v362;
              v426 = v359;
              v425 = v358;
              sub_188AB35D4(&v425, v330, &v358);
            }
          }

          v165 = v331;
LABEL_70:
          memcpy(v293, v165, 0x3B9uLL);
          return swift_storeEnumTagMultiPayload();
        }

        v168 = v283.i64[0];
        sub_188A3F29C(v68, v283.i64[0], &qword_1EA936780, &qword_18A650ED8);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v174 = v168;
            v175 = v282.i64[0];
            sub_188A3F704(v174, v282.i64[0], &qword_1EA936778, &qword_18A650ED0);
            sub_188EF66AC(&v310);
            v68 = v287.i64[0];
            sub_188A3F5FC(v175, &qword_1EA936778, &qword_18A650ED0);
            goto LABEL_57;
          }

          v177 = *(v168 + 216);
          v178 = *(v168 + 248);
          v316 = *(v168 + 232);
          v317 = v178;
          v318 = *(v168 + 264);
          v179 = *(v168 + 152);
          v180 = *(v168 + 184);
          v312 = *(v168 + 168);
          v313 = v180;
          v181 = *(v168 + 200);
          v315 = v177;
          v314 = v181;
          v176 = *(v168 + 136);
          v311 = v179;
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v170 = *(v168 + 528);
            v316 = *(v168 + 512);
            v317 = v170;
            v318 = *(v168 + 544);
            v171 = *(v168 + 464);
            v312 = *(v168 + 448);
            v313 = v171;
            v172 = *(v168 + 480);
            v315 = *(v168 + 496);
            v314 = v172;
            v173 = *(v168 + 416);
            v311 = *(v168 + 432);
            v310 = v173;
LABEL_57:
            sub_188A3F5FC(v68, &qword_1EA936780, &qword_18A650ED8);
            v436 = v316;
            v437 = v317;
            v438 = v318;
            v435[1] = v312;
            v435[2] = v313;
            v435[4] = v315;
            v435[3] = v314;
            v435[0] = v311;
            v434 = v310;
            signpost_c2_entryLock_start();
            v280 = v434;
            v282 = v435[1];
            v286 = v435[2];
            v287 = v435[4];
            v283 = v435[3];
            v284 = v435[0];
            v292 = v437;
            v285 = v436;
            v167 = v438;
            goto LABEL_58;
          }

          v318 = 0;
          v176 = 0uLL;
          v317 = 0u;
          v316 = 0u;
          v315 = 0u;
          v314 = 0u;
          v313 = 0u;
          v312 = 0u;
          v311 = 0u;
        }

        v310 = v176;
        goto LABEL_57;
      }

      v151 = &qword_1EA936780;
      v152 = &qword_18A650ED8;
    }

    sub_188A3F5FC(v149, v151, v152);
    goto LABEL_29;
  }

  v38 = v472.i64[0];
  v39 = v472.i8[8];
  sub_188A3F29C(v292.i64[0], v33, &qword_1EA9368B8, &qword_18A651000);
  if ((*(v23 + 48))(v33, 1, v22) == 1)
  {
    sub_188A3F5FC(v33, &qword_1EA9368B8, &qword_18A651000);
    v40 = v291;
LABEL_14:
    v82 = v293;
    v293->i64[0] = 0;
    *(v82[26].i16 + 1) = 0;
    v83 = v288;
    sub_188F0D4BC();
    sub_18A4A49B8();
    v84 = *(v83 + 64);
    v85 = v290;
    v86 = v290[5];
    v88 = v290[6];
    v87 = v290[7];
    v82[7] = v88;
    v82[8] = v87;
    v89 = v85[1];
    v91 = v85[2];
    v90 = v85[3];
    v82[3] = v91;
    v82[4] = v90;
    v92 = v85[3];
    v94 = v85[4];
    v93 = v85[5];
    v82[5] = v94;
    v82[6] = v93;
    v95 = v85[1];
    v96 = *v85;
    v82[1] = *v85;
    v82[2] = v95;
    *(&v82[14] + 8) = v86;
    *(&v82[15] + 8) = v88;
    *(&v82[16] + 8) = v85[7];
    *(&v82[10] + 8) = v89;
    *(&v82[11] + 8) = v91;
    *(&v82[12] + 8) = v92;
    v82->i64[1] = v38;
    v82[9].i8[0] = *(v85 + 128);
    v82[17].i8[8] = *(v85 + 128);
    *(&v82[13] + 8) = v94;
    *(&v82[9] + 8) = v96;
    v97 = *(v40 + 112);
    v82[24] = *(v40 + 96);
    v82[25] = v97;
    v82[26].i8[0] = *(v40 + 128);
    v98 = *(v40 + 48);
    v82[20] = *(v40 + 32);
    v82[21] = v98;
    v99 = *(v40 + 80);
    v82[22] = *(v40 + 64);
    v82[23] = v99;
    v100 = *(v40 + 16);
    v82[18] = *v40;
    v82[19] = v100;
    v82->i8[v84] = v39;
    return swift_storeEnumTagMultiPayload();
  }

  v67 = swift_getEnumCaseMultiPayload();
  v40 = v291;
  if (v67 != 2)
  {
    sub_188A3F5FC(v33, &qword_1EA936780, &qword_18A650ED8);
    goto LABEL_14;
  }

  sub_188A3F704(v33, v37, &qword_1EA936778, &qword_18A650ED0);
  sub_188EF92B4(v38, v40);

  sub_188A3F704(v37, v293, &qword_1EA936778, &qword_18A650ED0);
  return swift_storeEnumTagMultiPayload();
}

double sub_188AB3484(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 265) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 266) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 248) = v11;
  *(v2 + 256) = v12 + v12;
  *(v2 + 267) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 272) = v17 / v15;
  return result;
}

uint64_t sub_188AB35D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *(a1 + 16);
  v23 = *a1;
  v20 = *(a2 + 16);
  v21 = *a2;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 32);
  v13 = *(a1 + 80);
  v19 = *(a1 + 64);
  v12 = *(a2 + 80);
  v18 = *(a2 + 64);
  v10 = *(a1 + 112);
  v11 = *(a1 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 96);
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EB60, &qword_18A66C4C8);
  v7 = 2;
  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    goto LABEL_7;
  }

  v7 = 1;
  if (v4 == 1 || v5 == 1)
  {
    goto LABEL_7;
  }

  if (!v4)
  {
    v7 = 0;
LABEL_7:
    *a3 = vaddq_f64(v23, v21);
    *(a3 + 16) = vaddq_f64(v22, v20);
    *(a3 + 32) = vaddq_f64(v17, v15);
    *(a3 + 48) = vaddq_f64(v16, v14);
    *(a3 + 64) = vaddq_f64(v19, v18);
    *(a3 + 80) = vaddq_f64(v13, v12);
    *(a3 + 96) = vaddq_f64(v11, v9);
    *(a3 + 112) = vaddq_f64(v10, v8);
    *(a3 + 128) = v7;
    return result;
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

uint64_t sub_188AB3700(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

float64x2_t sub_188AB3714(double a1)
{
  v2 = vmulq_n_f64(v1[1], a1);
  *v1 = vmulq_n_f64(*v1, a1);
  v1[1] = v2;
  v3 = vmulq_n_f64(v1[3], a1);
  v1[2] = vmulq_n_f64(v1[2], a1);
  v1[3] = v3;
  v4 = vmulq_n_f64(v1[5], a1);
  v1[4] = vmulq_n_f64(v1[4], a1);
  v1[5] = v4;
  v5 = vmulq_n_f64(v1[6], a1);
  result = vmulq_n_f64(v1[7], a1);
  v1[6] = v5;
  v1[7] = result;
  return result;
}

uint64_t sub_188AB3790(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_18A4A7F68();
LABEL_9:
  result = sub_18A4A8168();
  *v2 = result;
  return result;
}

BOOL sub_188AB3838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658, &qword_18A650DE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660, &qword_18A650DE8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v10, v9, &qword_1EA936660, &qword_18A650DE8);
  sub_188A3F29C(v9, v6, &qword_1EA936660, &qword_18A650DE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F5FC(v9, &qword_1EA936660, &qword_18A650DE8);
      sub_188A3F704(v6, v3, &qword_1EA936658, &qword_18A650DE0);
      v12 = v3[40];
      sub_188A3F5FC(v3, &qword_1EA936658, &qword_18A650DE0);
    }

    else
    {
      sub_188A3F5FC(v9, &qword_1EA936660, &qword_18A650DE8);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = vabdd_f64(v6[5], v6[2]);
    sub_188A3F5FC(v9, &qword_1EA936660, &qword_18A650DE8);
    return v13 <= 0.001;
  }

  else
  {
    v12 = 1;
    if ((v6[21] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6[20] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && COERCE_UNSIGNED_INT64(fabs((v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]))) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v12 = (v6[19] - v6[21]) * (v6[19] - v6[21]) + v6[20] * v6[18] * (v6[20] * v6[18]) <= 0.000001;
    }

    sub_188A3F5FC(v9, &qword_1EA936660, &qword_18A650DE8);
  }

  return v12;
}

void sub_188AB3ADC(double a1)
{
  if (a1 <= 0.0)
  {
    return;
  }

  v2 = a1;
  v3 = *(v1 + 160);
  v4 = *(v1 + 147);
  if (v4)
  {
    *(v1 + 208) = v3;
    *(v1 + 224) = 0;
    *(v1 + 232) = 0;
  }

  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 145);
  v10 = *(v1 + 146);
  v161 = v3;
  if ((v9 & 1) == 0)
  {
    v11 = *(v1 + 48);
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    v14 = *(v1 + 72);
    if (*v1 == v11 && *(v1 + 8) == 0.0)
    {
      if (*(v1 + 146))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = *v1 - v11;
      v149 = *(v1 + 48);
      v152 = *(v1 + 88);
      if ((v14 - 1) <= 2)
      {
        v18 = __sincos_stret(*v1 - v11);
        v19 = atan2(v18.__sinval, v18.__cosval);
        if (v19 > 0.0 && v14 == 2)
        {
          v19 = v19 + -6.28318531;
        }

        if (v19 < 0.0 && v14 == 3)
        {
          v17 = v19 + 6.28318531;
        }

        else
        {
          v17 = v19;
        }
      }

      v22 = *(v1 + 8);
      v23 = sqrt(v12);
      v24 = v13 * 0.5;
      if (v13 * 0.5 >= v23)
      {
        if (v23 >= v24)
        {
          v41 = v24 * v17 + v22;
          v42 = v17 + v41 * v2;
          v30 = exp(-(v24 * v2));
          v31 = v30 * v42;
          v32 = v30 * v41;
          v33 = v42 * v24;
        }

        else
        {
          v34 = sqrt(v24 * v24 - v23 * v23);
          v145 = v7;
          v35 = cosh(v34 * v2);
          v156 = v2;
          v36 = 1.0 / v34 * (v24 * v17 + v22);
          v37 = sinh(v34 * v2);
          v38 = v17 * v35 + v36 * v37;
          v30 = exp(-(v24 * v156));
          v31 = v30 * v38;
          v39 = v36 * v35;
          v7 = v145;
          v32 = v30 * (v34 * v39 + v34 * (v17 * v37));
          v33 = v38 * v24;
          v2 = v156;
        }
      }

      else
      {
        v25 = sqrt(v23 * v23 - v24 * v24);
        v26 = __sincos_stret(v25 * v2);
        v27 = 1.0 / v25 * (v24 * v17 + v22);
        v163 = v6;
        v28 = v2;
        v29 = v26.__cosval * v17 + v26.__sinval * v27;
        v30 = exp(-(v24 * v28));
        v31 = v30 * v29;
        v32 = v30 * (v25 * (v26.__cosval * v27) - v25 * (v17 * v26.__sinval));
        v33 = v29 * v24;
        v2 = v28;
        v6 = v163;
      }

      v5 = v152;
      *v1 = v149 + v31;
      *(v1 + 8) = v32 - v30 * v33;
      v3 = v161;
      if (v10)
      {
LABEL_11:
        if (!v9)
        {
          v40 = *(v1 + 16);
LABEL_53:
          v15 = 6.28318531 / v40 * (6.28318531 / v40);
          v67 = sqrt(v15);
          v16 = *v1 * (v67 + v67);
          *(v1 + 32) = v15;
          *(v1 + 40) = v16;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v40 = *(v1 + 16);
    if (v40 == v6 && *(v1 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v43 = v40 - v6;
    if ((v8 - 1) <= 2)
    {
      v44 = __sincos_stret(v40 - v6);
      v45 = atan2(v44.__sinval, v44.__cosval);
      if (v45 > 0.0 && v8 == 2)
      {
        v45 = v45 + -6.28318531;
      }

      if (v45 < 0.0 && v8 == 3)
      {
        v43 = v45 + 6.28318531;
      }

      else
      {
        v43 = v45;
      }
    }

    v48 = *(v1 + 24);
    v49 = sqrt(v5);
    v50 = v7 * 0.5;
    if (v7 * 0.5 >= v49)
    {
      if (v49 >= v50)
      {
        v64 = v50 * v43 + v48;
        v65 = v43 + v64 * v2;
        v55 = exp(-(v50 * v2));
        v56 = v55 * v65;
        v62 = v55 * v64;
        v63 = v65 * v50;
        goto LABEL_52;
      }

      v58 = sqrt(v50 * v50 - v49 * v49);
      v59 = cosh(v58 * v2);
      v164 = v6;
      v60 = 1.0 / v58 * (v50 * v43 + v48);
      v61 = sinh(v58 * v2);
      v54 = v43 * v59 + v60 * v61;
      v55 = exp(-(v50 * v2));
      v56 = v55 * v54;
      v57 = v58 * (v60 * v59) + v58 * (v43 * v61);
    }

    else
    {
      v51 = sqrt(v49 * v49 - v50 * v50);
      v52 = __sincos_stret(v51 * v2);
      v53 = 1.0 / v51 * (v50 * v43 + v48);
      v164 = v6;
      v54 = v52.__cosval * v43 + v52.__sinval * v53;
      v55 = exp(-(v50 * v2));
      v56 = v55 * v54;
      v57 = v51 * (v52.__cosval * v53) - v51 * (v43 * v52.__sinval);
    }

    v62 = v55 * v57;
    v63 = v54 * v50;
    v6 = v164;
LABEL_52:
    v66 = v62 - v55 * v63;
    v40 = v6 + v56;
    *(v1 + 16) = v6 + v56;
    *(v1 + 24) = v66;
    v3 = v161;
    goto LABEL_53;
  }

  if ((*(v1 + 146) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v15 = *(v1 + 32);
  v16 = *(v1 + 40);
LABEL_54:
  *(v1 + 112) = v3;
  v69 = *(v1 + 208);
  v68 = *(v1 + 224);
  v70 = *(v1 + 192);
  v71 = *(v1 + 200);
  v72 = *(v1 + 184);
  v165 = *(v1 + 176);
  v73 = *(v1 + 216);
  v74 = *(v1 + 232);
  v75 = vmovn_s32(vuzp1q_s32(vceqq_f64(v69, v3), vceqzq_f64(v68)));
  v75.i16[0] = vminv_u16(v75);
  if ((v4 ^ 1) & (v75.i32[0] ^ 1))
  {
    v76 = v69.f64[0] - v3.f64[0];
    v139 = v16;
    v140 = v3.f64[1];
    v77 = v69.f64[1] - v3.f64[1];
    v78 = sqrt(*(v1 + 128));
    v79 = *(v1 + 136) * 0.5;
    v146 = *(v1 + 192);
    v150 = *(v1 + 200);
    v142 = v15;
    v143 = *(v1 + 184);
    if (v79 >= v78)
    {
      if (v78 >= v79)
      {
        v100 = v68.f64[0] + v76 * v79;
        v101 = v68.f64[1] + v77 * v79;
        v102 = v76 + v100 * v2;
        v99 = v77 + v101 * v2;
        v85 = exp(-(v79 * v2));
        v86 = v85 * v102;
        v87 = v85 * v99;
        v89 = v100 * v85;
        v90 = v101 * v85;
        v91 = v102 * v79;
      }

      else
      {
        v93 = sqrt(v79 * v79 - v78 * v78);
        v154 = *(v1 + 224);
        v94 = *(v1 + 232);
        v95 = cosh(v93 * v2);
        v136 = v77;
        v135 = v77 * v95;
        *&v154 = (*&v154 + v76 * v79) * (1.0 / v93);
        v96 = (v94 + v77 * v79) * (1.0 / v93);
        v97 = sinh(v93 * v2);
        v158 = v2;
        v98 = v76 * v95 + *&v154 * v97;
        v99 = v135 + v96 * v97;
        v85 = exp(-(v79 * v158));
        v86 = v85 * v98;
        v87 = v85 * v99;
        v89 = v85 * (v93 * (*&v154 * v95) + v93 * (v76 * v97));
        v90 = v85 * (v93 * (v96 * v95) + v93 * (v136 * v97));
        v91 = v98 * v79;
        v2 = v158;
      }

      v92 = v99 * v79;
    }

    else
    {
      v80 = sqrt(v78 * v78 - v79 * v79);
      v153 = *(v1 + 224);
      v81 = *(v1 + 232);
      v82 = __sincos_stret(v80 * v2);
      v157 = v2;
      v83 = (*&v153 + v76 * v79) * (1.0 / v80);
      v84 = (v81 + v77 * v79) * (1.0 / v80);
      *&v153 = v76 * v82.__cosval + v83 * v82.__sinval;
      v137 = v77 * v82.__cosval + v84 * v82.__sinval;
      v85 = exp(-(v79 * v157));
      v86 = v85 * *&v153;
      v87 = v85 * v137;
      v88 = v83 * v82.__cosval;
      v2 = v157;
      v89 = v85 * (v80 * v88 - v80 * (v76 * v82.__sinval));
      v90 = v85 * (v80 * (v84 * v82.__cosval) - v80 * (v77 * v82.__sinval));
      v91 = *&v153 * v79;
      v92 = v137 * v79;
    }

    v68.f64[0] = v89 - v85 * v91;
    v74 = v90 - v85 * v92;
    v69.f64[0] = v161.f64[0] + v86;
    v16 = v139;
    v73 = v140 + v87;
    v70 = v146;
    v71 = v150;
    v15 = v142;
    v72 = v143;
  }

  if (v70 != v69.f64[0] || v71 != v73 || v165 != 0.0 || v72 != 0.0)
  {
    v103 = v70 - v69.f64[0];
    v104 = v71 - v73;
    v105 = sqrt(v15);
    v106 = v16 * 0.5;
    v155 = v68.f64[0];
    v162 = v74;
    v141 = v69.f64[0];
    if (v16 * 0.5 >= v105)
    {
      if (v105 >= v106)
      {
        v131 = v165 + v106 * v103;
        v132 = v72 + v106 * v104;
        v133 = v103 + v131 * v2;
        v134 = v104 + v132 * v2;
        v115 = exp(-(v106 * v2));
        v116 = v115 * v133;
        v117 = v115 * v134;
        v118 = v115 * v131;
        v119 = v115 * v132;
        v120 = v133 * v106;
        v121 = v134 * v106;
      }

      else
      {
        v122 = v2;
        v160 = v2;
        v123 = sqrt(v106 * v106 - v105 * v105);
        v124 = v123 * v122;
        v125 = v104;
        v126 = cosh(v123 * v122);
        v138 = v125;
        v148 = v125 * v126;
        v144 = 1.0 / v123 * (v165 + v106 * v103);
        v127 = 1.0 / v123 * (v72 + v106 * v125);
        v128 = sinh(v124);
        v129 = v103 * v126 + v144 * v128;
        v167 = v103;
        v130 = v148 + v127 * v128;
        v115 = exp(-(v106 * v160));
        v116 = v115 * v129;
        v117 = v115 * v130;
        v118 = v115 * (v123 * (v144 * v126) + v123 * (v167 * v128));
        v119 = v115 * (v123 * (v127 * v126) + v123 * (v138 * v128));
        v120 = v129 * v106;
        v121 = v130 * v106;
      }
    }

    else
    {
      v107 = v2;
      v159 = v2;
      v108 = sqrt(v105 * v105 - v106 * v106);
      v109 = v104;
      v110 = __sincos_stret(v108 * v107);
      v111 = v110.__cosval * v103;
      v112 = v72 + v106 * v109;
      v113 = 1.0 / v108 * (v165 + v106 * v103);
      v166 = v103;
      v114 = 1.0 / v108 * v112;
      v147 = v110.__cosval * v109 + v110.__sinval * v114;
      v151 = v111 + v110.__sinval * v113;
      v115 = exp(-(v106 * v159));
      v116 = v115 * v151;
      v117 = v115 * v147;
      v118 = v115 * (v108 * (v110.__cosval * v113) - v108 * (v166 * v110.__sinval));
      v119 = v115 * (v108 * (v110.__cosval * v114) - v108 * (v109 * v110.__sinval));
      v120 = v151 * v106;
      v121 = v147 * v106;
    }

    v165 = v118 - v115 * v120;
    v72 = v119 - v115 * v121;
    v69.f64[0] = v141;
    v70 = v141 + v116;
    v71 = v73 + v117;
    v68.f64[0] = v155;
    v74 = v162;
  }

  *(v1 + 192) = v70;
  *(v1 + 200) = v71;
  *(v1 + 176) = v165;
  *(v1 + 184) = v72;
  *(v1 + 208) = v69.f64[0];
  *(v1 + 216) = v73;
  *(v1 + 224) = v68.f64[0];
  *(v1 + 232) = v74;
}

BOOL sub_188AB4454()
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*(v0 + 240), v2), v3), vcgeq_s64(vandq_s8(*(v0 + 256), v2), v3)))))
  {
    return 1;
  }

  v23 = *(v0 + 240);
  v24 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  if (sub_188AABCA0(v4, v5, v6, v7))
  {
    return 1;
  }

  v8 = *(v0 + 168);
  v9 = v4 * v8 * (v4 * v8);
  v10 = v5 * v8 * (v5 * v8);
  v11 = v6 * v8 * (v6 * v8);
  v12 = v7 * v8 * (v7 * v8);
  v13 = (*(v0 + 176) - *&v23) * (*(v0 + 176) - *&v23) + v9;
  v14 = (*(v0 + 184) - *(&v23 + 1)) * (*(v0 + 184) - *(&v23 + 1)) + v10;
  v15 = (*(v0 + 192) - *&v24) * (*(v0 + 192) - *&v24) + v11;
  v16 = (*(v0 + 200) - *(&v24 + 1)) * (*(v0 + 200) - *(&v24 + 1)) + v12;
  if (sub_188AABCA0(v13, v14, v15, v16))
  {
    return 1;
  }

  if (qword_1ED48C638 != -1)
  {
    swift_once();
  }

  v18 = *(&xmmword_1ED4A3470 + 1) * *(&xmmword_1ED4A3470 + 1);
  v19 = fabs(v14);
  v20 = fabs(v15);
  return fabs(v13) <= *&xmmword_1ED4A3470 * *&xmmword_1ED4A3470 && v19 <= *&xmmword_1ED4A3470 * *&xmmword_1ED4A3470 && v20 <= v18 && fabs(v16) <= v18;
}

void sub_188AB45D8(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v1;
  v5 = v2;
  if (v3 <= 0.0)
  {
    *(v2 + 128) = *(v1 + 680);
    v18 = *(v1 + 664);
    *(v2 + 96) = *(v1 + 648);
    *(v2 + 112) = v18;
    v19 = *(v1 + 600);
    *(v2 + 32) = *(v1 + 584);
    *(v2 + 48) = v19;
    v20 = *(v1 + 632);
    *(v2 + 64) = *(v1 + 616);
    *(v2 + 80) = v20;
    v21 = *(v1 + 568);
    *v2 = *(v1 + 552);
    *(v2 + 16) = v21;
    return;
  }

  v260 = v3;
  v6 = (v1 + 280);
  v7 = *(v1 + 267);
  if (v7)
  {
    v8 = *(v4 + 392);
    *(v4 + 784) = *(v4 + 376);
    *(v4 + 800) = v8;
    *(v4 + 816) = *(v4 + 408);
    v9 = *(v4 + 328);
    *(v4 + 720) = *(v4 + 312);
    *(v4 + 736) = v9;
    v10 = *(v4 + 360);
    *(v4 + 752) = *(v4 + 344);
    *(v4 + 768) = v10;
    v11 = *(v4 + 296);
    *(v4 + 688) = *v6;
    *(v4 + 704) = v11;
    *(v4 + 952) = 0;
    *(v4 + 920) = 0u;
    *(v4 + 936) = 0u;
    *(v4 + 888) = 0u;
    *(v4 + 904) = 0u;
    *(v4 + 856) = 0u;
    *(v4 + 872) = 0u;
    *(v4 + 824) = 0u;
    *(v4 + 840) = 0u;
  }

  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  v14 = *(v4 + 96);
  v15 = *(v4 + 104);
  v16 = *(v4 + 265);
  v17 = *(v4 + 266);
  if (v16)
  {
    if ((*(v4 + 266) & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v23 = *(v4 + 48);
  v22 = *(v4 + 56);
  v24 = *(v4 + 64);
  v25 = *(v4 + 72);
  if (*v4 != v23 || *(v4 + 8) != 0.0)
  {
    v26 = *v4 - v23;
    v255 = *(v4 + 88);
    if ((v25 - 1) <= 2)
    {
      v27 = __sincos_stret(*v4 - v23);
      v28 = atan2(v27.__sinval, v27.__cosval);
      if (v28 > 0.0 && v25 == 2)
      {
        v28 = v28 + -6.28318531;
      }

      if (v28 < 0.0 && v25 == 3)
      {
        v26 = v28 + 6.28318531;
      }

      else
      {
        v26 = v28;
      }
    }

    v31 = *(v4 + 8);
    v32 = sqrt(v22);
    v33 = v24 * 0.5;
    if (v24 * 0.5 >= v32)
    {
      if (v32 >= v33)
      {
        v51 = v33 * v26 + v31;
        v52 = v26 + v51 * v260;
        v38 = exp(-(v33 * v260));
        v39 = v38 * v52;
        v42 = v38 * v51;
        v43 = v52 * v33;
      }

      else
      {
        v258 = v12;
        v44 = sqrt(v33 * v33 - v32 * v32);
        v45 = cosh(v44 * v260);
        v252 = v14;
        v46 = 1.0 / v44 * (v33 * v26 + v31);
        v47 = sinh(v44 * v260);
        v48 = v26 * v45 + v46 * v47;
        v38 = exp(-(v33 * v260));
        v39 = v38 * v48;
        v49 = v44 * (v26 * v47);
        v50 = v44 * (v46 * v45);
        v12 = v258;
        v42 = v38 * (v50 + v49);
        v43 = v48 * v33;
        v14 = v252;
      }
    }

    else
    {
      v251 = v14;
      v34 = sqrt(v32 * v32 - v33 * v33);
      v35 = __sincos_stret(v34 * v260);
      v36 = 1.0 / v34 * (v33 * v26 + v31);
      v257 = v12;
      v37 = v35.__cosval * v26 + v35.__sinval * v36;
      v38 = exp(-(v33 * v260));
      v39 = v38 * v37;
      v40 = v34 * (v26 * v35.__sinval);
      v41 = v34 * (v35.__cosval * v36);
      v14 = v251;
      v42 = v38 * (v41 - v40);
      v43 = v37 * v33;
      v12 = v257;
    }

    *v4 = v23 + v39;
    *(v4 + 8) = v42 - v38 * v43;
    v13 = v255;
  }

  if ((v17 & 1) == 0)
  {
LABEL_31:
    v53 = *(v4 + 16);
    if (v53 == v12 && *(v4 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v54 = v53 - v12;
    if ((v15 - 1) <= 2)
    {
      v55 = __sincos_stret(v53 - v12);
      v56 = atan2(v55.__sinval, v55.__cosval);
      if (v56 > 0.0 && v15 == 2)
      {
        v56 = v56 + -6.28318531;
      }

      if (v56 < 0.0 && v15 == 3)
      {
        v54 = v56 + 6.28318531;
      }

      else
      {
        v54 = v56;
      }
    }

    v59 = *(v4 + 24);
    v60 = sqrt(v13);
    v61 = v14 * 0.5;
    if (v14 * 0.5 >= v60)
    {
      if (v60 >= v61)
      {
        v75 = v61 * v54 + v59;
        v76 = v54 + v75 * v260;
        v66 = exp(-(v61 * v260));
        v67 = v66 * v76;
        v73 = v66 * v75;
        v74 = v76 * v61;
        goto LABEL_52;
      }

      v69 = sqrt(v61 * v61 - v60 * v60);
      v70 = cosh(v69 * v260);
      v71 = 1.0 / v69 * (v61 * v54 + v59);
      v72 = sinh(v69 * v260);
      v65 = v54 * v70 + v71 * v72;
      v66 = exp(-(v61 * v260));
      v67 = v66 * v65;
      v68 = v69 * (v71 * v70) + v69 * (v54 * v72);
    }

    else
    {
      v62 = sqrt(v60 * v60 - v61 * v61);
      v63 = __sincos_stret(v62 * v260);
      v64 = 1.0 / v62 * (v61 * v54 + v59);
      v65 = v63.__cosval * v54 + v63.__sinval * v64;
      v66 = exp(-(v61 * v260));
      v67 = v66 * v65;
      v68 = v62 * (v63.__cosval * v64) - v62 * (v54 * v63.__sinval);
    }

    v73 = v66 * v68;
    v74 = v65 * v61;
LABEL_52:
    v77 = v73 - v66 * v74;
    v53 = v12 + v67;
    *(v4 + 16) = v12 + v67;
    *(v4 + 24) = v77;
    goto LABEL_53;
  }

  if (v16)
  {
LABEL_30:
    v256 = *(v4 + 40);
    v259 = *(v4 + 32);
    goto LABEL_54;
  }

  v53 = *(v4 + 16);
LABEL_53:
  v78 = 6.28318531 / v53 * (6.28318531 / v53);
  v79 = sqrt(v78);
  v256 = *v4 * (v79 + v79);
  v259 = v78;
  *(v4 + 32) = v78;
  *(v4 + 40) = v256;
LABEL_54:
  v80 = *(v4 + 392);
  *(v4 + 208) = *(v4 + 376);
  *(v4 + 224) = v80;
  v81 = *(v4 + 328);
  *(v4 + 144) = *(v4 + 312);
  *(v4 + 160) = v81;
  v82 = *(v4 + 360);
  *(v4 + 176) = *(v4 + 344);
  *(v4 + 192) = v82;
  v83 = *(v4 + 296);
  *(v4 + 112) = *v6;
  *(v4 + 128) = v83;
  v84 = *(v4 + 800);
  v366[6] = *(v4 + 784);
  v366[7] = v84;
  v85 = *(v4 + 736);
  v366[2] = *(v4 + 720);
  v366[3] = v85;
  v86 = *(v4 + 752);
  v366[5] = *(v4 + 768);
  v366[4] = v86;
  v87 = *(v4 + 688);
  v366[1] = *(v4 + 704);
  v366[0] = v87;
  v88 = *(v4 + 888);
  *(&v366[13] + 8) = *(v4 + 904);
  v89 = *(v4 + 936);
  *(&v366[14] + 8) = *(v4 + 920);
  *(&v366[15] + 8) = v89;
  v90 = *(v4 + 824);
  *(&v366[9] + 8) = *(v4 + 840);
  v91 = *(v4 + 872);
  *(&v366[10] + 8) = *(v4 + 856);
  *(&v366[11] + 8) = v91;
  *(&v366[12] + 8) = v88;
  *(&v366[8] + 8) = v90;
  v92 = *(v4 + 664);
  v365[6] = *(v4 + 648);
  v365[7] = v92;
  v93 = *(v4 + 600);
  v365[2] = *(v4 + 584);
  v365[3] = v93;
  v94 = *(v4 + 616);
  v365[5] = *(v4 + 632);
  v365[4] = v94;
  v95 = *(v4 + 552);
  v365[1] = *(v4 + 568);
  v365[0] = v95;
  v96 = *(v4 + 480);
  *(&v365[13] + 8) = *(v4 + 496);
  v97 = *(v4 + 528);
  *(&v365[14] + 8) = *(v4 + 512);
  *(&v365[15] + 8) = v97;
  v98 = *(v4 + 416);
  *(&v365[9] + 8) = *(v4 + 432);
  v99 = *(v4 + 464);
  *(&v365[10] + 8) = *(v4 + 448);
  *(&v365[11] + 8) = v99;
  *(&v365[12] + 8) = v96;
  *(v4 + 240) = *(v4 + 408);
  LOBYTE(v366[8]) = *(v4 + 816);
  BYTE8(v366[16]) = *(v4 + 952);
  LOBYTE(v365[8]) = *(v4 + 680);
  BYTE8(v365[16]) = *(v4 + 544);
  *(&v365[8] + 8) = v98;
  memcpy(v367, v366, 0x109uLL);
  memcpy(v368, v365, 0x109uLL);
  v100 = *(v4 + 392);
  v417 = *(v4 + 376);
  v418 = v100;
  v419 = *(v4 + 408);
  v101 = *(v4 + 328);
  v413 = *(v4 + 312);
  v414 = v101;
  v102 = *(v4 + 344);
  v416 = *(v4 + 360);
  v415 = v102;
  v103 = *v6;
  v412 = *(v4 + 296);
  v411 = v103;
  v104 = *(v4 + 264);
  if ((v7 & 1) == 0)
  {
    v106 = *(v4 + 248);
    v105 = *(v4 + 256);
    v107 = *(v4 + 800);
    v450 = *(v4 + 784);
    v451 = v107;
    v452 = *(v4 + 816);
    v108 = *(v4 + 736);
    v446 = *(v4 + 720);
    v447 = v108;
    v109 = *(v4 + 752);
    v449 = *(v4 + 768);
    v448 = v109;
    v110 = *(v4 + 688);
    v445 = *(v4 + 704);
    v444 = v110;
    if (!sub_188ABBAE8(&v444, &v411) || (v443 = 0, memset(v442, 0, sizeof(v442)), v440[6] = *(&v366[14] + 8), v440[7] = *(&v366[15] + 8), v441 = BYTE8(v366[16]), v440[2] = *(&v366[10] + 8), v440[3] = *(&v366[11] + 8), v440[5] = *(&v366[13] + 8), v440[4] = *(&v366[12] + 8), v440[1] = *(&v366[9] + 8), v440[0] = *(&v366[8] + 8), !sub_188ABBAE8(v440, v442)))
    {
      v249 = v106;
      v253 = v105;
      v111 = *(&v444 + 1);
      v112 = *&v445;
      v113 = *(&v411 + 1);
      v240 = *&v412;
      v114 = v419;
      v115 = 4u >> (v419 & 7);
      v116 = __sincos_stret(*&v444 - *&v411);
      v117 = atan2(v116.__sinval, v116.__cosval);
      if ((v114 & (v117 > 0.0)) != 0)
      {
        v117 = v117 + -6.28318531;
      }

      if ((v115 & (v117 < 0.0)) != 0)
      {
        v117 = v117 + 6.28318531;
      }

      v247 = v117;
      v118 = __sincos_stret(v111 - v113);
      v119 = atan2(v118.__sinval, v118.__cosval);
      if ((v114 & (v119 > 0.0)) != 0)
      {
        v119 = v119 + -6.28318531;
      }

      v120 = *(&v445 + 1);
      v121 = v446;
      v122 = *&v447;
      if ((v115 & (v119 < 0.0)) != 0)
      {
        v123 = v119 + 6.28318531;
      }

      else
      {
        v123 = v119;
      }

      v124 = *(&v447 + 1);
      v125 = v448;
      v126 = v449;
      v127 = v450;
      v128 = v451;
      v245 = v123;
      v241 = sub_188ABBBFC((v114 + 1), v112, v240);
      v129 = v413;
      v237 = sub_188ABBBFC(v104, v120, *(&v412 + 1));
      v235 = sub_188ABBBFC(v104, *&v121, *&v129);
      v233 = sub_188ABBBFC(v104, *(&v121 + 1), *(&v129 + 1));
      v130 = *(&v414 + 1);
      v131 = *&v415;
      v232 = sub_188ABBBFC(v104, v122, *&v414);
      v231 = sub_188ABBBFC(v104, v124, v130);
      v132 = sub_188ABBBFC(v104, *&v125, v131);
      v133 = v416;
      v134 = sub_188ABBBFC(v104, *(&v125 + 1), *(&v415 + 1));
      v135 = sub_188ABBBFC(v104, *&v126, *&v133);
      v136 = sub_188ABBBFC(v104, *(&v126 + 1), *(&v133 + 1));
      v137 = *(&v417 + 1);
      v138 = v418;
      v139 = sub_188ABBBFC(v104, *&v127, *&v417);
      v140 = sub_188ABBBFC(v104, *(&v127 + 1), v137);
      v141 = sub_188ABBBFC(v104, *&v128, *&v138);
      v142 = sub_188ABBBFC(v104, *(&v128 + 1), *(&v138 + 1));
      *&v431 = v247;
      *(&v431 + 1) = v245;
      *&v432 = v241;
      *(&v432 + 1) = v237;
      *&v433 = v235;
      *(&v433 + 1) = v233;
      *&v434 = v232;
      *(&v434 + 1) = v231;
      *&v435 = v132;
      *(&v435 + 1) = v134;
      *&v436 = v135;
      *(&v436 + 1) = v136;
      *&v437 = v139;
      *(&v437 + 1) = v140;
      *&v438 = v141;
      *(&v438 + 1) = v142;
      v439 = v114;
      v420[6] = *(&v366[14] + 8);
      v420[7] = *(&v366[15] + 8);
      v421 = BYTE8(v366[16]);
      v420[2] = *(&v366[10] + 8);
      v420[3] = *(&v366[11] + 8);
      v420[5] = *(&v366[13] + 8);
      v420[4] = *(&v366[12] + 8);
      v420[1] = *(&v366[9] + 8);
      v420[0] = *(&v366[8] + 8);
      v143 = sqrt(v249);
      v144 = v253 * 0.5;
      if (v253 * 0.5 >= v143)
      {
        if (v143 >= v144)
        {
          v352[6] = v437;
          v352[7] = v438;
          v353 = v439;
          v352[2] = v433;
          v352[3] = v434;
          v352[5] = v436;
          v352[4] = v435;
          v352[1] = v432;
          v352[0] = v431;
          sub_188AB3714(v253 * 0.5);
          sub_188AB35D4(v352, v420, v354);
          sub_188AB3714(v260);
          sub_188AB35D4(&v431, v354, v364);
          v154 = exp(-(v144 * v260));
          sub_188AB3714(v154);
          v349[6] = v437;
          v349[7] = v438;
          v350 = v439;
          v349[2] = v433;
          v349[3] = v434;
          v349[5] = v436;
          v349[4] = v435;
          v349[1] = v432;
          v349[0] = v431;
          sub_188AB3714(v144);
          sub_188AB35D4(v349, v420, v351);
          sub_188AB3714(v154);
          v345[6] = v437;
          v345[7] = v438;
          v346 = v439;
          v345[2] = v433;
          v345[3] = v434;
          v345[5] = v436;
          v345[4] = v435;
          v345[1] = v432;
          v345[0] = v431;
          sub_188AB3714(v144);
          sub_188AB35D4(v345, v420, v347);
          sub_188AB3714(v260);
          sub_188AB35D4(&v431, v347, v348);
          sub_188AB3714(-v144);
          sub_188AB3714(v154);
          v148 = v351;
          v149 = v348;
        }

        else
        {
          v150 = sqrt(v144 * v144 - v143 * v143);
          v151 = cosh(v150 * v260);
          v291[6] = v437;
          v291[7] = v438;
          v292 = v439;
          v291[2] = v433;
          v291[3] = v434;
          v291[5] = v436;
          v291[4] = v435;
          v291[1] = v432;
          v291[0] = v431;
          sub_188AB3714(v151);
          v288[6] = v437;
          v288[7] = v438;
          v289 = v439;
          v288[2] = v433;
          v288[3] = v434;
          v288[5] = v436;
          v288[4] = v435;
          v288[1] = v432;
          v288[0] = v431;
          sub_188AB3714(v144);
          sub_188AB35D4(v288, v420, v290);
          sub_188AB3714(1.0 / v150);
          v152 = sinh(v150 * v260);
          sub_188AB3714(v152);
          sub_188AB35D4(v291, v290, v364);
          v153 = exp(-(v144 * v260));
          sub_188AB3714(v153);
          v286[6] = v437;
          v286[7] = v438;
          v287 = v439;
          v286[2] = v433;
          v286[3] = v434;
          v286[5] = v436;
          v286[4] = v435;
          v286[1] = v432;
          v286[0] = v431;
          sub_188AB3714(v152);
          sub_188AB3714(v150);
          v283[6] = v437;
          v283[7] = v438;
          v284 = v439;
          v283[2] = v433;
          v283[3] = v434;
          v283[5] = v436;
          v283[4] = v435;
          v283[1] = v432;
          v283[0] = v431;
          sub_188AB3714(v144);
          sub_188AB35D4(v283, v420, v285);
          sub_188AB3714(1.0 / v150);
          sub_188AB3714(v151);
          sub_188AB3714(v150);
          sub_188AB35D4(v286, v285, &v355);
          sub_188AB3714(v153);
          v280[6] = v437;
          v280[7] = v438;
          v281 = v439;
          v280[2] = v433;
          v280[3] = v434;
          v280[5] = v436;
          v280[4] = v435;
          v280[1] = v432;
          v280[0] = v431;
          sub_188AB3714(v151);
          v277[6] = v437;
          v277[7] = v438;
          v278 = v439;
          v277[2] = v433;
          v277[3] = v434;
          v277[5] = v436;
          v277[4] = v435;
          v277[1] = v432;
          v277[0] = v431;
          sub_188AB3714(v144);
          sub_188AB35D4(v277, v420, v279);
          sub_188AB3714(1.0 / v150);
          sub_188AB3714(v152);
          sub_188AB35D4(v280, v279, v282);
          sub_188AB3714(-v144);
          sub_188AB3714(v153);
          v428 = v361;
          v429 = v362;
          v430 = v363;
          v424 = v357;
          v425 = v358;
          v427 = v360;
          v426 = v359;
          v423 = v356;
          v422 = v355;
          v148 = &v422;
          v149 = v282;
        }
      }

      else
      {
        v145 = sqrt(v143 * v143 - v144 * v144);
        v146 = __sincos_stret(v145 * v260);
        v275[6] = v437;
        v275[7] = v438;
        v276 = v439;
        v275[2] = v433;
        v275[3] = v434;
        v275[5] = v436;
        v275[4] = v435;
        v275[1] = v432;
        v275[0] = v431;
        sub_188AB3714(v146.__cosval);
        v272[6] = v437;
        v272[7] = v438;
        v273 = v439;
        v272[2] = v433;
        v272[3] = v434;
        v272[5] = v436;
        v272[4] = v435;
        v272[1] = v432;
        v272[0] = v431;
        sub_188AB3714(v144);
        sub_188AB35D4(v272, v420, v274);
        sub_188AB3714(1.0 / v145);
        sub_188AB3714(v146.__sinval);
        sub_188AB35D4(v275, v274, v364);
        v147 = exp(-(v144 * v260));
        sub_188AB3714(v147);
        v270[6] = v437;
        v270[7] = v438;
        v271 = v439;
        v270[2] = v433;
        v270[3] = v434;
        v270[5] = v436;
        v270[4] = v435;
        v270[0] = v431;
        v270[1] = v432;
        sub_188AB3714(-v146.__sinval);
        sub_188AB3714(v145);
        v267[6] = v437;
        v267[7] = v438;
        v268 = v439;
        v267[2] = v433;
        v267[3] = v434;
        v267[4] = v435;
        v267[5] = v436;
        v267[0] = v431;
        v267[1] = v432;
        sub_188AB3714(v144);
        sub_188AB35D4(v267, v420, v269);
        sub_188AB3714(1.0 / v145);
        sub_188AB3714(v146.__cosval);
        sub_188AB3714(v145);
        sub_188AB35D4(v270, v269, &v355);
        sub_188AB3714(v147);
        v264[6] = v437;
        v264[7] = v438;
        v265 = v439;
        v264[2] = v433;
        v264[3] = v434;
        v264[4] = v435;
        v264[5] = v436;
        v264[0] = v431;
        v264[1] = v432;
        sub_188AB3714(v146.__cosval);
        v261[6] = v437;
        v261[7] = v438;
        v262 = v439;
        v261[2] = v433;
        v261[3] = v434;
        v261[4] = v435;
        v261[5] = v436;
        v261[0] = v431;
        v261[1] = v432;
        sub_188AB3714(v144);
        sub_188AB35D4(v261, v420, v263);
        sub_188AB3714(1.0 / v145);
        sub_188AB3714(v146.__sinval);
        sub_188AB35D4(v264, v263, v266);
        sub_188AB3714(-v144);
        sub_188AB3714(v147);
        v428 = v361;
        v429 = v362;
        v430 = v363;
        v424 = v357;
        v425 = v358;
        v427 = v360;
        v426 = v359;
        v423 = v356;
        v422 = v355;
        v148 = &v422;
        v149 = v266;
      }

      sub_188AB35D4(v148, v149, &v355);
      sub_188AB35D4(v364, &v411, v367);
      *(&v367[13] + 8) = v360;
      *(&v367[14] + 8) = v361;
      *(&v367[15] + 8) = v362;
      *(&v367[9] + 8) = v356;
      *(&v367[10] + 8) = v357;
      *(&v367[11] + 8) = v358;
      *(&v367[12] + 8) = v359;
      BYTE8(v367[16]) = v363;
      *(&v367[8] + 8) = v355;
    }
  }

  v375 = v367[6];
  v376 = v367[7];
  v377 = v367[8];
  v371 = v367[2];
  v372 = v367[3];
  v374 = v367[5];
  v373 = v367[4];
  v370 = v367[1];
  v369 = v367[0];
  v408 = v368[6];
  v409 = v368[7];
  v410 = v368[8];
  v404 = v368[2];
  v405 = v368[3];
  v407 = v368[5];
  v406 = v368[4];
  v403 = v368[1];
  v402 = v368[0];
  if (!sub_188ABBAE8(&v402, &v369) || (v401 = 0, memset(v400, 0, sizeof(v400)), v399 = BYTE8(v368[16]), v398[6] = *(&v368[14] + 8), v398[7] = *(&v368[15] + 8), v398[2] = *(&v368[10] + 8), v398[3] = *(&v368[11] + 8), v398[5] = *(&v368[13] + 8), v398[4] = *(&v368[12] + 8), v398[1] = *(&v368[9] + 8), v398[0] = *(&v368[8] + 8), !sub_188ABBAE8(v398, v400)))
  {
    v155 = *(&v402 + 1);
    v156 = *&v403;
    v157 = *(&v369 + 1);
    v158 = *&v370;
    v159 = v377;
    v160 = 4u >> (v377 & 7);
    v161 = __sincos_stret(*&v402 - *&v369);
    v162 = atan2(v161.__sinval, v161.__cosval);
    if ((v159 & (v162 > 0.0)) != 0)
    {
      v162 = v162 + -6.28318531;
    }

    if ((v160 & (v162 < 0.0)) != 0)
    {
      v162 = v162 + 6.28318531;
    }

    v254 = v162;
    v163 = __sincos_stret(v155 - v157);
    v164 = atan2(v163.__sinval, v163.__cosval);
    if ((v159 & (v164 > 0.0)) != 0)
    {
      v164 = v164 + -6.28318531;
    }

    if ((v160 & (v164 < 0.0)) != 0)
    {
      v164 = v164 + 6.28318531;
    }

    v250 = v164;
    v165 = __sincos_stret(v156 - v158);
    v166 = atan2(v165.__sinval, v165.__cosval);
    if ((v159 & (v166 > 0.0)) != 0)
    {
      v166 = v166 + -6.28318531;
    }

    if ((v160 & (v166 < 0.0)) != 0)
    {
      v166 = v166 + 6.28318531;
    }

    v248 = v166;
    v167 = v404;
    v168 = *(&v405 + 1);
    v169 = *&v405;
    v242 = *&v406;
    v170 = v371;
    if ((v104 - 1) >= 3)
    {
      v244 = *&v404 - *&v371;
      v246 = *(&v403 + 1) - *(&v370 + 1);
      v239 = *(&v404 + 1) - *(&v371 + 1);
      v178 = *(&v372 + 1);
      v179 = *&v373;
      v181 = *&v405 - *&v372;
    }

    else
    {
      v171 = *(&v405 + 1);
      v172 = __sincos_stret(*(&v403 + 1) - *(&v370 + 1));
      v173 = atan2(v172.__sinval, v172.__cosval);
      if (v104 == 2 && v173 > 0.0)
      {
        v173 = v173 + -6.28318531;
      }

      if (v104 == 3 && v173 < 0.0)
      {
        v173 = v173 + 6.28318531;
      }

      v246 = v173;
      v174 = __sincos_stret(*&v167 - *&v170);
      v175 = atan2(v174.__sinval, v174.__cosval);
      if (v104 == 2 && v175 > 0.0)
      {
        v175 = v175 + -6.28318531;
      }

      if (v104 == 3 && v175 < 0.0)
      {
        v175 = v175 + 6.28318531;
      }

      v244 = v175;
      v176 = __sincos_stret(*(&v167 + 1) - *(&v170 + 1));
      v177 = atan2(v176.__sinval, v176.__cosval);
      if (v104 == 2 && v177 > 0.0)
      {
        v177 = v177 + -6.28318531;
      }

      if (v104 == 3 && v177 < 0.0)
      {
        v177 = v177 + 6.28318531;
      }

      v239 = v177;
      v178 = *(&v372 + 1);
      v179 = *&v373;
      v180 = __sincos_stret(v169 - *&v372);
      v181 = atan2(v180.__sinval, v180.__cosval);
      v168 = v171;
      if (v104 == 2 && v181 > 0.0)
      {
        v181 = v181 + -6.28318531;
      }

      if (v104 == 3 && v181 < 0.0)
      {
        v181 = v181 + 6.28318531;
      }
    }

    v238 = v181;
    v182 = *(&v406 + 1);
    v183 = v407;
    v184 = v408;
    v234 = v409;
    v236 = sub_188ABBBFC(v104, v168, v178);
    v243 = sub_188ABBBFC(v104, v242, v179);
    v185 = v374;
    v186 = sub_188ABBBFC(v104, v182, *(&v373 + 1));
    v187 = sub_188ABBBFC(v104, *&v183, *&v185);
    v188 = sub_188ABBBFC(v104, *(&v183 + 1), *(&v185 + 1));
    v189 = *(&v375 + 1);
    v190 = v376;
    v191 = sub_188ABBBFC(v104, *&v184, *&v375);
    v192 = sub_188ABBBFC(v104, *(&v184 + 1), v189);
    v193 = sub_188ABBBFC(v104, *&v234, *&v190);
    v194 = sub_188ABBBFC(v104, *(&v234 + 1), *(&v190 + 1));
    *&v389 = v254;
    *(&v389 + 1) = v250;
    *&v390 = v248;
    *(&v390 + 1) = v246;
    *&v391 = v244;
    *(&v391 + 1) = v239;
    *&v392 = v238;
    *(&v392 + 1) = v236;
    *&v393 = v243;
    *(&v393 + 1) = v186;
    *&v394 = v187;
    *(&v394 + 1) = v188;
    *&v395 = v191;
    *(&v395 + 1) = v192;
    *&v396 = v193;
    *(&v396 + 1) = v194;
    v397 = v159;
    v379 = BYTE8(v368[16]);
    v378[7] = *(&v368[15] + 8);
    v378[6] = *(&v368[14] + 8);
    v378[5] = *(&v368[13] + 8);
    v378[4] = *(&v368[12] + 8);
    v378[3] = *(&v368[11] + 8);
    v378[2] = *(&v368[10] + 8);
    v378[1] = *(&v368[9] + 8);
    v378[0] = *(&v368[8] + 8);
    v195 = sqrt(v259);
    v196 = v256 * 0.5;
    if (v256 * 0.5 >= v195)
    {
      if (v195 >= v196)
      {
        v332[6] = v395;
        v332[7] = v396;
        v333 = v397;
        v332[2] = v391;
        v332[3] = v392;
        v332[5] = v394;
        v332[4] = v393;
        v332[1] = v390;
        v332[0] = v389;
        sub_188AB3714(v256 * 0.5);
        sub_188AB35D4(v332, v378, v334);
        sub_188AB3714(v260);
        sub_188AB35D4(&v389, v334, v344);
        v206 = exp(-(v196 * v260));
        sub_188AB3714(v206);
        v329[6] = v395;
        v329[7] = v396;
        v330 = v397;
        v329[2] = v391;
        v329[3] = v392;
        v329[5] = v394;
        v329[4] = v393;
        v329[1] = v390;
        v329[0] = v389;
        sub_188AB3714(v196);
        sub_188AB35D4(v329, v378, v331);
        sub_188AB3714(v206);
        v325[6] = v395;
        v325[7] = v396;
        v326 = v397;
        v325[2] = v391;
        v325[3] = v392;
        v325[5] = v394;
        v325[4] = v393;
        v325[1] = v390;
        v325[0] = v389;
        sub_188AB3714(v196);
        sub_188AB35D4(v325, v378, v327);
        sub_188AB3714(v260);
        sub_188AB35D4(&v389, v327, v328);
        sub_188AB3714(-v196);
        sub_188AB3714(v206);
        v200 = v331;
        v201 = v328;
      }

      else
      {
        v202 = sqrt(v196 * v196 - v195 * v195);
        v203 = cosh(v202 * v260);
        v323[6] = v395;
        v323[7] = v396;
        v324 = v397;
        v323[2] = v391;
        v323[3] = v392;
        v323[5] = v394;
        v323[4] = v393;
        v323[1] = v390;
        v323[0] = v389;
        sub_188AB3714(v203);
        v320[6] = v395;
        v320[7] = v396;
        v321 = v397;
        v320[2] = v391;
        v320[3] = v392;
        v320[5] = v394;
        v320[4] = v393;
        v320[1] = v390;
        v320[0] = v389;
        sub_188AB3714(v196);
        sub_188AB35D4(v320, v378, v322);
        sub_188AB3714(1.0 / v202);
        v204 = sinh(v202 * v260);
        sub_188AB3714(v204);
        sub_188AB35D4(v323, v322, v344);
        v205 = exp(-(v196 * v260));
        sub_188AB3714(v205);
        v318[6] = v395;
        v318[7] = v396;
        v319 = v397;
        v318[2] = v391;
        v318[3] = v392;
        v318[5] = v394;
        v318[4] = v393;
        v318[1] = v390;
        v318[0] = v389;
        sub_188AB3714(v204);
        sub_188AB3714(v202);
        v315[6] = v395;
        v315[7] = v396;
        v316 = v397;
        v315[2] = v391;
        v315[3] = v392;
        v315[5] = v394;
        v315[4] = v393;
        v315[1] = v390;
        v315[0] = v389;
        sub_188AB3714(v196);
        sub_188AB35D4(v315, v378, v317);
        sub_188AB3714(1.0 / v202);
        sub_188AB3714(v203);
        sub_188AB3714(v202);
        sub_188AB35D4(v318, v317, &v335);
        sub_188AB3714(v205);
        v312[6] = v395;
        v312[7] = v396;
        v313 = v397;
        v312[2] = v391;
        v312[3] = v392;
        v312[5] = v394;
        v312[4] = v393;
        v312[1] = v390;
        v312[0] = v389;
        sub_188AB3714(v203);
        v309[6] = v395;
        v309[7] = v396;
        v310 = v397;
        v309[2] = v391;
        v309[3] = v392;
        v309[5] = v394;
        v309[4] = v393;
        v309[1] = v390;
        v309[0] = v389;
        sub_188AB3714(v196);
        sub_188AB35D4(v309, v378, v311);
        sub_188AB3714(1.0 / v202);
        sub_188AB3714(v204);
        sub_188AB35D4(v312, v311, v314);
        sub_188AB3714(-v196);
        sub_188AB3714(v205);
        v386 = v341;
        v387 = v342;
        v388 = v343;
        v382 = v337;
        v383 = v338;
        v385 = v340;
        v384 = v339;
        v381 = v336;
        v380 = v335;
        v200 = &v380;
        v201 = v314;
      }
    }

    else
    {
      v197 = sqrt(v195 * v195 - v196 * v196);
      v198 = __sincos_stret(v197 * v260);
      v307[6] = v395;
      v307[7] = v396;
      v308 = v397;
      v307[2] = v391;
      v307[3] = v392;
      v307[5] = v394;
      v307[4] = v393;
      v307[1] = v390;
      v307[0] = v389;
      sub_188AB3714(v198.__cosval);
      v304[6] = v395;
      v304[7] = v396;
      v305 = v397;
      v304[2] = v391;
      v304[3] = v392;
      v304[5] = v394;
      v304[4] = v393;
      v304[1] = v390;
      v304[0] = v389;
      sub_188AB3714(v196);
      sub_188AB35D4(v304, v378, v306);
      sub_188AB3714(1.0 / v197);
      sub_188AB3714(v198.__sinval);
      sub_188AB35D4(v307, v306, v344);
      v199 = exp(-(v196 * v260));
      sub_188AB3714(v199);
      v302[6] = v395;
      v302[7] = v396;
      v303 = v397;
      v302[2] = v391;
      v302[3] = v392;
      v302[5] = v394;
      v302[4] = v393;
      v302[1] = v390;
      v302[0] = v389;
      sub_188AB3714(-v198.__sinval);
      sub_188AB3714(v197);
      v299[6] = v395;
      v299[7] = v396;
      v300 = v397;
      v299[2] = v391;
      v299[3] = v392;
      v299[5] = v394;
      v299[4] = v393;
      v299[1] = v390;
      v299[0] = v389;
      sub_188AB3714(v196);
      sub_188AB35D4(v299, v378, v301);
      sub_188AB3714(1.0 / v197);
      sub_188AB3714(v198.__cosval);
      sub_188AB3714(v197);
      sub_188AB35D4(v302, v301, &v335);
      sub_188AB3714(v199);
      v296[6] = v395;
      v296[7] = v396;
      v297 = v397;
      v296[2] = v391;
      v296[3] = v392;
      v296[5] = v394;
      v296[4] = v393;
      v296[1] = v390;
      v296[0] = v389;
      sub_188AB3714(v198.__cosval);
      v293[6] = v395;
      v293[7] = v396;
      v294 = v397;
      v293[2] = v391;
      v293[3] = v392;
      v293[5] = v394;
      v293[4] = v393;
      v293[1] = v390;
      v293[0] = v389;
      sub_188AB3714(v196);
      sub_188AB35D4(v293, v378, v295);
      sub_188AB3714(1.0 / v197);
      sub_188AB3714(v198.__sinval);
      sub_188AB35D4(v296, v295, v298);
      sub_188AB3714(-v196);
      sub_188AB3714(v199);
      v386 = v341;
      v387 = v342;
      v388 = v343;
      v382 = v337;
      v383 = v338;
      v385 = v340;
      v384 = v339;
      v381 = v336;
      v380 = v335;
      v200 = &v380;
      v201 = v298;
    }

    sub_188AB35D4(v200, v201, &v335);
    sub_188AB35D4(v344, &v369, v368);
    *(&v368[14] + 8) = v341;
    *(&v368[15] + 8) = v342;
    BYTE8(v368[16]) = v343;
    *(&v368[10] + 8) = v337;
    *(&v368[11] + 8) = v338;
    *(&v368[12] + 8) = v339;
    *(&v368[13] + 8) = v340;
    *(&v368[8] + 8) = v335;
    *(&v368[9] + 8) = v336;
  }

  v207 = v368[5];
  v208 = v368[6];
  v209 = v368[7];
  *(v4 + 648) = v368[6];
  *(v4 + 664) = v209;
  v210 = v368[1];
  v211 = v368[2];
  v212 = v368[3];
  *(v4 + 584) = v368[2];
  *(v4 + 600) = v212;
  v213 = v368[3];
  v214 = v368[4];
  v215 = v368[5];
  *(v4 + 616) = v368[4];
  *(v4 + 632) = v215;
  v216 = v368[1];
  v217 = v368[0];
  *(v4 + 552) = v368[0];
  *(v4 + 568) = v216;
  v218 = *(&v368[15] + 8);
  *(v4 + 512) = *(&v368[14] + 8);
  *(v4 + 528) = v218;
  v219 = *(&v368[11] + 8);
  *(v4 + 448) = *(&v368[10] + 8);
  *(v4 + 464) = v219;
  v220 = *(&v368[13] + 8);
  *(v4 + 480) = *(&v368[12] + 8);
  *(v4 + 496) = v220;
  v221 = *(&v368[9] + 8);
  *(v4 + 416) = *(&v368[8] + 8);
  *(v4 + 432) = v221;
  v222 = v367[7];
  *(v4 + 784) = v367[6];
  *(v4 + 800) = v222;
  v223 = v367[3];
  *(v4 + 720) = v367[2];
  *(v4 + 736) = v223;
  v224 = v367[5];
  *(v4 + 752) = v367[4];
  *(v4 + 768) = v224;
  v225 = v367[1];
  *(v4 + 688) = v367[0];
  *(v4 + 704) = v225;
  v226 = *(&v367[13] + 8);
  v227 = *(&v367[15] + 8);
  *(v4 + 920) = *(&v367[14] + 8);
  *(v4 + 936) = v227;
  v228 = *(&v367[9] + 8);
  v229 = *(&v367[11] + 8);
  *(v4 + 856) = *(&v367[10] + 8);
  *(v4 + 872) = v229;
  *(v4 + 888) = *(&v367[12] + 8);
  *(v4 + 904) = v226;
  *(v4 + 824) = *(&v367[8] + 8);
  *(v4 + 840) = v228;
  v230 = v368[7];
  *(v5 + 96) = v208;
  *(v5 + 112) = v230;
  *(v5 + 32) = v211;
  *(v5 + 48) = v213;
  *(v5 + 64) = v214;
  *(v5 + 80) = v207;
  *(v4 + 680) = v368[8];
  *(v4 + 544) = BYTE8(v368[16]);
  *(v4 + 816) = v367[8];
  *(v4 + 952) = BYTE8(v367[16]);
  *(v5 + 128) = v368[8];
  *v5 = v217;
  *(v5 + 16) = v210;
}

BOOL sub_188AB6990()
{
  v1 = *(v0 + 664);
  v94 = *(v0 + 648);
  v95 = v1;
  v96 = *(v0 + 680);
  v2 = *(v0 + 600);
  v90 = *(v0 + 584);
  v91 = v2;
  v3 = *(v0 + 632);
  v92 = *(v0 + 616);
  v93 = v3;
  v4 = *(v0 + 568);
  v88 = *(v0 + 552);
  v89 = v4;
  if ((~v88 & 0x7FF0000000000000) == 0)
  {
    return 1;
  }

  result = 1;
  if ((~*(&v88 + 1) & 0x7FF0000000000000) != 0 && (v89 & 0x7FF0000000000000) != 0x7FF0000000000000 && (~*(&v89 + 1) & 0x7FF0000000000000) != 0 && (~v90 & 0x7FF0000000000000) != 0 && (*(&v90 + 1) & 0x7FF0000000000000) != 0x7FF0000000000000 && (~v91 & 0x7FF0000000000000) != 0 && (~*(&v91 + 1) & 0x7FF0000000000000) != 0 && (v92 & 0x7FF0000000000000) != 0x7FF0000000000000 && (~*(&v92 + 1) & 0x7FF0000000000000) != 0 && (~v93 & 0x7FF0000000000000) != 0 && (*(&v93 + 1) & 0x7FF0000000000000) != 0x7FF0000000000000 && (~v94 & 0x7FF0000000000000) != 0 && (~*(&v94 + 1) & 0x7FF0000000000000) != 0 && (v95 & 0x7FF0000000000000) != 0x7FF0000000000000 && (*(&v95 + 1) & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v7 = *(v0 + 512);
    v6 = *(v0 + 528);
    v9 = *(v0 + 480);
    v8 = *(v0 + 496);
    v11 = *(v0 + 448);
    v10 = *(v0 + 464);
    v13 = *(v0 + 416);
    v12 = *(v0 + 432);
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = vnegq_f64(v14);
    v16 = vdupq_n_s64(0x7FF0000000000000uLL);
    if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgeq_s64(vandq_s8(v13, v15), v16), vcgeq_s64(vandq_s8(v12, v15), v16)), vuzp1q_s32(vcgeq_s64(vandq_s8(v11, v15), v16), vcgeq_s64(vandq_s8(v10, v15), v16))), vuzp1q_s16(vuzp1q_s32(vcgeq_s64(vandq_s8(v9, v15), v16), vcgeq_s64(vandq_s8(v8, v15), v16)), vuzp1q_s32(vcgeq_s64(vandq_s8(v7, v15), v16), vcgeq_s64(vandq_s8(v6, v15), v16))))) & 1) == 0)
    {
      v17 = *(v0 + 544);
      v87 = *(v0 + 408);
      v18 = *(v0 + 392);
      v86[6] = *(v0 + 376);
      v86[7] = v18;
      v19 = *(v0 + 328);
      v86[2] = *(v0 + 312);
      v86[3] = v19;
      v20 = *(v0 + 360);
      v86[4] = *(v0 + 344);
      v86[5] = v20;
      v21 = *(v0 + 296);
      v86[0] = *(v0 + 280);
      v86[1] = v21;
      v50 = v7;
      v52 = v6;
      v46 = v9;
      v48 = v8;
      v42 = v11;
      v44 = v10;
      v39 = v13;
      v40 = v12;
      sub_188AAA46C(v86, &v88, &v63);
      v22 = v71;
      v54 = v39;
      v55 = v40;
      v56 = v42;
      v57 = v44;
      v58 = v46;
      v59 = v48;
      v60 = v50;
      v61 = v52;
      v62 = v17;
      sub_188AB3714(*(v0 + 272));
      v54 = vmulq_f64(v54, v54);
      v55 = vmulq_f64(v55, v55);
      v56 = vmulq_f64(v56, v56);
      v57 = vmulq_f64(v57, v57);
      v58 = vmulq_f64(v58, v58);
      v59 = vmulq_f64(v59, v59);
      v60 = vmulq_f64(v60, v60);
      v61 = vmulq_f64(v61, v61);
      v97[0] = vmulq_f64(v63, v63);
      v97[1] = vmulq_f64(v64, v64);
      v97[2] = vmulq_f64(v65, v65);
      v97[3] = vmulq_f64(v66, v66);
      v97[4] = vmulq_f64(v67, v67);
      v97[5] = vmulq_f64(v68, v68);
      v97[6] = vmulq_f64(v69, v69);
      v97[7] = vmulq_f64(v70, v70);
      v98 = v22;
      sub_188AB35D4(v97, &v54, &v72);
      result = 1;
      if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v73 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v74 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v75 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v77 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v79 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v80 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v81 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v83 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        v24 = vnegq_f64(v23);
        v25 = vdupq_n_s64(0x7FF0000000000000uLL);
        if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(v84, v24), v25), vcgeq_s64(vandq_s8(v85, v24), v25)))) & 1) == 0)
        {
          v26 = fabs(v72);
          v27 = fabs(v73);
          v28 = fabs(v74);
          v29 = fabs(v75);
          v30 = fabs(v76);
          v31 = fabs(v77);
          v32 = fabs(v78);
          v41 = fabs(v79);
          v45 = fabs(v80);
          v47 = fabs(v81);
          v49 = fabs(v82);
          v51 = fabs(v83);
          v53 = vabsq_f64(v85);
          v43 = vabsq_f64(v84);
          v33 = objc_opt_self();
          v34 = +[(UIScreen *)v33];
          [v34 scale];
          v36 = v35;

          v37 = 1.0 / v36 * (1.0 / v36);
          v38 = v26 <= 0.0001;
          if (v27 > 0.0001)
          {
            v38 = 0;
          }

          if (v28 > 0.0001)
          {
            v38 = 0;
          }

          if (v29 > 0.000001)
          {
            v38 = 0;
          }

          if (v30 > 0.000001)
          {
            v38 = 0;
          }

          if (v31 > 0.000001)
          {
            v38 = 0;
          }

          if (v32 > v37)
          {
            v38 = 0;
          }

          if (v41 > v37)
          {
            v38 = 0;
          }

          if (v45 > v37)
          {
            v38 = 0;
          }

          if (v47 > 0.000001)
          {
            v38 = 0;
          }

          if (v49 > 0.000001)
          {
            v38 = 0;
          }

          if (v51 > 0.000001)
          {
            v38 = 0;
          }

          if (v43.f64[0] > 0.000001)
          {
            v38 = 0;
          }

          if (v43.f64[1] > 0.000001)
          {
            v38 = 0;
          }

          if (v53.f64[0] > 0.000001)
          {
            v38 = 0;
          }

          return v53.f64[1] <= 0.000001 && v38;
        }
      }
    }
  }

  return result;
}

double sub_188AB6F20@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936778, &qword_18A650ED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936780, &qword_18A650ED8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = *(*v1 + 104);
  swift_beginAccess();
  sub_188A3F29C(v1 + v9, v8, &qword_1EA936780, &qword_18A650ED8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v8, v5, &qword_1EA936778, &qword_18A650ED0);
      sub_188EF66AC(&v25);
      sub_188A3F5FC(v5, &qword_1EA936778, &qword_18A650ED0);
      goto LABEL_9;
    }

    v16 = *(v8 + 216);
    v17 = *(v8 + 248);
    v31 = *(v8 + 232);
    v32 = v17;
    v33 = v8[264];
    v18 = *(v8 + 152);
    v19 = *(v8 + 184);
    v27 = *(v8 + 168);
    v28 = v19;
    v29 = *(v8 + 200);
    v30 = v16;
    v15 = *(v8 + 136);
    v26 = v18;
LABEL_8:
    v25 = v15;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    v33 = 0;
    v15 = 0uLL;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    goto LABEL_8;
  }

  v11 = *(v8 + 33);
  v31 = *(v8 + 32);
  v32 = v11;
  v33 = v8[544];
  v12 = *(v8 + 29);
  v27 = *(v8 + 28);
  v28 = v12;
  v13 = *(v8 + 31);
  v29 = *(v8 + 30);
  v30 = v13;
  v14 = *(v8 + 27);
  v25 = *(v8 + 26);
  v26 = v14;
LABEL_9:
  v20 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v20;
  *(a1 + 128) = v33;
  v21 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v21;
  v22 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v22;
  v23 = v26;
  *a1 = v25;
  *(a1 + 16) = v23;
  swift_endAccess();
  return result;
}

double sub_188AB715C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936658, &qword_18A650DE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936660, &qword_18A650DE8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - v5);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  sub_188A3F29C(v0 + v7, v6, &qword_1EA936660, &qword_18A650DE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_188A3F704(v6, v3, &qword_1EA936658, &qword_18A650DE0);
      v9 = sub_188EF5AA8();
      sub_188A3F5FC(v3, &qword_1EA936658, &qword_18A650DE0);
    }

    else
    {
      v9 = v6[1];
    }
  }

  else
  {
    v9 = 0.0;
    if (!EnumCaseMultiPayload)
    {
      v9 = v6[20];
    }
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_188AB7304(uint64_t a1, uint64_t a2)
{
  v6 = *(v3 + 352);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 352) = v8;
    swift_beginAccess();
    v2 = *(*(v3 + 136) + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    swift_beginAccess();
    v5 = *(v3 + 136);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 136) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v5 = sub_188AAD600(0, v5[2] + 1, 1, v5);
  *(v3 + 136) = v5;
LABEL_3:
  v13 = v5[2];
  v12 = v5[3];
  if (v13 >= v12 >> 1)
  {
    v5 = sub_188AAD600((v12 > 1), v13 + 1, 1, v5);
  }

  v5[2] = v13 + 1;
  v14 = &v5[2 * v13];
  v14[4] = sub_188AA92CC;
  v14[5] = v4;
  *(v3 + 136) = v5;
  swift_endAccess();
  return v2;
}

uint64_t sub_188AB743C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188AB7478(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188A5E664(a2 & 1, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188FA1C48();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188AAD624(v18, a5 & 1);
    v13 = sub_188A5E664(a2 & 1, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    sub_188AAD8E8(v13, a2 & 1, a3, a4, a1, v23);
  }
}

void sub_188AB75BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = [(UIView *)v4 __swiftAnimationInfo];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  signpost_c2_entryLock_start();
  os_unfair_lock_lock(v11[2] + 4);
  signpost_c2_entryLock_start();
  swift_beginAccess();
  v12 = v11[7];
  if (v12[2] && (v13 = sub_188A5E664(a1 & 1, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 8 * v13);
    swift_endAccess();
    swift_beginAccess();
    v16 = v15;

    sub_188B5D644(0, a1 & 1, a2, a3);
    swift_endAccess();
    if (sub_188AAD93C())
    {
      v17 = v11[4];
      if (v17)
      {
        v18 = v11[5];
        v11[4] = 0;
        v11[5] = 0;
        v17();
        sub_188A55B8C(v17, v18);
      }
    }
  }

  else
  {
    swift_endAccess();
    v15 = 0;
  }

  swift_beginAccess();
  v19 = v11[8];
  if (!v19[2] || (v20 = sub_188A5E664(a1 & 1, a2, a3), (v21 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_18;
  }

  v22 = *(v19[7] + 8 * v20);
  swift_endAccess();
  v23 = *(a4 + 352);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 352) = v25;
    swift_beginAccess();
    v19 = *(a4 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 136) = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v19 = sub_189212B24(v19);
  *(a4 + 136) = v19;
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_13:
  if (v22 >= v19[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = &v19[2 * v22];
  v27[4] = signpost_c2_entryLock_start;
  v27[5] = 0;
  *(a4 + 136) = v19;
  swift_endAccess();

  swift_beginAccess();

  sub_188AB79D4(0, 1, a1 & 1, a2, a3);
  swift_endAccess();
  if (sub_188AAD93C())
  {
    v28 = v11[4];
    if (v28)
    {
      v29 = v11[5];
      v11[4] = 0;
      v11[5] = 0;
      v28();
      sub_188A55B8C(v28, v29);
    }
  }

LABEL_18:
  os_unfair_lock_unlock(v11[2] + 4);
  if (!v15)
  {

    return;
  }

  if (pthread_main_np() != 1)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = v11;
    *(v33 + 24) = v15;

    v34 = v15;
    sub_188A32084(sub_188B0B648, v33);

    return;
  }

  signpost_c2_entryLock_start();
  v30 = [v5 _outermostLayer];
  if (!v30)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = [v5 layer];
  [v32 removePresentationModifier_];
  sub_188A34624(0, &qword_1ED48E970, 0x1E6979398);
  if ((sub_18A4A7C88() & 1) == 0)
  {
    [v31 removePresentationModifier_];
  }

  signpost_c2_entryLock_start();
}

uint64_t sub_188AB79D4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_188A5E664(a3 & 1, a4, a5);
    v12 = v11;

    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v6;
      v18 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA1C48();
        v15 = v18;
      }

      result = sub_188AB7AD4(v10, v15);
      *v6 = v15;
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v6;
    sub_188AB7478(a1, a3 & 1, a4, a5, v17);

    *v6 = v19;
  }

  return result;
}

uint64_t sub_188AB7AD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 24 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);

      sub_18A4A7348();
      v10 = sub_18A4A88E8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

int *_UIUpdateInputSetSyncAggregate(int *result, uint64_t a2)
{
  if (result[10] != a2)
  {
    v3 = a2;
    v4 = result;
    result[10] = a2;
    result[2] = 0;
    result[6] = 0;
    for (i = *(result + 9); i; i = *(i + 56))
    {
      _UIUpdateInputAggregateInput(v4 + 8, i, v3);
    }

    return _UIUpdateInputAggregateComplete((v4 + 8));
  }

  return result;
}

uint64_t _UIUpdateInputScopeAggregate(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 16);
  if (v4 == *a1)
  {
    if (*(a1 + 48) == a2)
    {
      return a1 + 16;
    }
  }

  else
  {
    *a1 = v4;
  }

  *(a1 + 16) = 0;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  if (v5)
  {
    v7 = 8 * v5;
    do
    {
      v8 = *(v6 + v7);
      _UIUpdateInputSetSyncAggregate(v8, a2);
      _UIUpdateInputAggregateCombine((a1 + 16), (v8 + 2));
      v7 -= 8;
    }

    while (v7);
  }

  return a1 + 16;
}

uint64_t _UIUpdateInputAggregateInput(uint64_t result, int *a2, unsigned int a3)
{
  v3 = *a2;
  if (*a2)
  {
    if (v3 == 2)
    {
      v4 = *(a2 + 1) + *&a2[2 * a3 + 8];
      v5 = (result + 16 * (a2[6] & 1));
      v6 = *v5;
    }

    else
    {
      v5 = (result + 16 * (a2[6] & 1));
      v6 = *v5;
      if (v3 == 1)
      {
        if (v6)
        {
          return result;
        }

        v7 = 1;
        goto LABEL_12;
      }

      v4 = 0;
    }

    if (v6 == 2)
    {
      if (v4 < *(v5 + 1))
      {
        *(v5 + 1) = v4;
      }

      return result;
    }

    *(v5 + 1) = v4;
    v7 = 2;
LABEL_12:
    *v5 = v7;
  }

  return result;
}

int *_UIUpdateInputAggregateComplete(int *result)
{
  if (result[4])
  {
    v1 = *result;
    if (result[4] == 1)
    {
      if (v1)
      {
        return result;
      }

      v3 = 1;
LABEL_10:
      *result = v3;
      return result;
    }

    v2 = *(result + 3);
    if (v1 != 2)
    {
      *(result + 1) = v2;
      v3 = 2;
      goto LABEL_10;
    }

    if (v2 < *(result + 1))
    {
      *(result + 1) = v2;
    }
  }

  return result;
}

int *_UIUpdateInputAggregateCombine(int *result, uint64_t a2)
{
  if (*a2)
  {
    v2 = *result;
    if (*a2 == 1)
    {
      if (v2)
      {
        goto LABEL_10;
      }

      v3 = 1;
      goto LABEL_9;
    }

    v4 = *(a2 + 8);
    if (v2 != 2)
    {
      *(result + 1) = v4;
      v3 = 2;
LABEL_9:
      *result = v3;
      goto LABEL_10;
    }

    if (v4 < *(result + 1))
    {
      *(result + 1) = v4;
    }
  }

LABEL_10:
  if (!*(a2 + 16))
  {
    return result;
  }

  v5 = result[4];
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      return result;
    }

    v7 = 1;
LABEL_19:
    result[4] = v7;
    return result;
  }

  v6 = *(a2 + 24);
  if (v5 != 2)
  {
    *(result + 3) = v6;
    v7 = 2;
    goto LABEL_19;
  }

  if (v6 < *(result + 3))
  {
    *(result + 3) = v6;
  }

  return result;
}

uint64_t inputGroupSignaledCallback(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return UCDriverSignal();
  }

  return result;
}

double applyTimingChanges(void *a1)
{
  [(_UIUpdateTarget *)a1[60] sync];
  v2 = a1[60];
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  if (_UIVariableFrameDurationEnabled() && !word_1ED4A3776)
  {
    v4 = [(_UIUpdateTarget *)a1[60] syncedRequestedMaxFrameDuration];
    v5 = a1[81];
    if (v4 < v5)
    {
      v5 = v4;
    }

    if (v5 >= a1[83])
    {
      v5 = a1[83];
    }

    if (v5 > v3)
    {
      v3 = v5;
    }
  }

  a1[61] = v3;
  a1[62] = v3 / 2;
  if (qword_1ED49FB58 != -1)
  {
    dispatch_once(&qword_1ED49FB58, &__block_literal_global_36_2);
  }

  a1[63] = qword_1ED49FB50;
  result = v3 * 1.75;
  a1[80] = result;
  return result;
}

double frameSourceGetTiming(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = *(a2 + 488);
  if (!v8)
  {
    v9 = a3;
    goto LABEL_8;
  }

  if (v8 < 1)
  {
    v9 = 0x8000000000000000;
    if ((0x8000000000000000 - v8) >= a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v9 = v8 + a3;
    goto LABEL_8;
  }

  if ((v8 ^ 0x7FFFFFFFFFFFFFFFLL) > a3)
  {
    goto LABEL_7;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  v10 = *(a2 + 689);
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(_UIUpdateTarget *)*(a2 + 480) requestPresentaionForMode:v10 earliestReferenceDeadlineTime:v9 earliestCommitDeadlineTime:a4, &v15];
  v12 = *(&v15 + 1);
  *a1 = v15 - v8;
  a1[1] = v12;
  a1[2] = *(&v16 + 1);
  if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v11))
  {
    kdebug_trace();
  }

  v13 = v16;
  *a5 = v15;
  a5[1] = v13;
  result = *&v17;
  a5[2] = v17;
  return result;
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_188AB83DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void __eventFetcherSourceCallback(uint64_t a1)
{
  _UIApplicationDrainManagedAutoreleasePool();
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    v2 = *(a1 + 8);
    v3 = objc_autoreleasePoolPush();
    [(UIEventFetcher *)*(a1 + 16) drainEventsIntoEnvironment:v2];
    objc_autoreleasePoolPop(v3);
    v4 = _UIMachTimeForMediaTime(*(v2 + 72));
    v5 = _UIMachTimeForMediaTime(*(v2 + 80));
    _UIQOSProcessingBegin("HIDDrain", 0, v4, v5);
    [*(v2 + 16) count];
    kdebug_trace();
    __processEventQueue(v2, 4);
    [*(v2 + 16) count];
    kdebug_trace();
    _UIQOSProcessingEnd();
  }

  if (_UIUpdateCycleEnabled())
  {
    v6 = *(a1 + 16);

    [(UIEventFetcher *)v6 drainEvents:?];
  }
}

void _UIApplicationDrainManagedAutoreleasePool()
{
  if (pthread_main_np() != 1)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    [v1 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void _UIApplicationDrainManagedAutoreleasePool(void)") description:{@"UIApplication+AutoreleasePool.m", 170, @"%s must be called on the main thread", "void _UIApplicationDrainManagedAutoreleasePool(void)"}];
  }

  if (__caCommitState)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void _UIApplicationDrainManagedAutoreleasePool(void)") description:{@"UIApplication+AutoreleasePool.m", 171, @"unexpected start state"}];
  }

  if (_MergedGlobals_1112)
  {
    memset(&context, 0, sizeof(context));
    CFRunLoopObserverGetContext(_MergedGlobals_1112, &context);
    info = context.info;
    if (context.info)
    {
      _popAutoreleasePool(context.info);
      _pushAutoreleasePool(info);
    }
  }
}

void ____eventFetcherSourceCallback_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = +[(_UIEventBus *)0x1ED47D000];
  [(_UIEventBus *)v3 addEvents:a2];
}

uint64_t _UIUpdateInputGroupBatchChanges(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = v3 + 1;
  if (!v3)
  {
    *(a1 + 4) = *a1;
  }

  result = (*(a2 + 16))(a2);
  v5 = *(a1 + 8) - 1;
  *(a1 + 8) = v5;
  if (!v5 && (*a1 & ~*(a1 + 4)) != 0)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);

    return v7(a1, v6);
  }

  return result;
}

double _UIUpdateSetCurrentTiming(unint64_t *a1, unsigned int a2)
{
  if (!dword_1ED49FC8C || (v3 = dword_1ED49FC90 - 1, a2))
  {
    if (dword_1ED49FC8C <= 3)
    {
      ++dword_1ED49FC8C;
    }

    v3 = dword_1ED49FC90 & 3;
    dword_1ED49FC90 = v3 + 1;
  }

  kdebug_trace();
  v4 = &_MergedGlobals_1238[24 * v3];
  v5 = *a1;
  *(v4 + 16) = a1[2];
  *(v4 + 7) = v5;
  v6 = *a1;
  qword_1ED49FCA8 = v6;
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  result = v6 / *&qword_1ED49FCC0;
  *&_currentModelMediaTime = result;
  return result;
}

void schedulerStepScheduledBegin(void *a1)
{
  if (_UIUpdateScheduledSequence != &_UIUpdateSequenceScheduledItemInternal || _UIUpdateSequenceScheduledItemInternal != 0)
  {
    v3 = UCTimeToSeconds();
    v5 = v4;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v3))
    {
      kdebug_trace();
      _UIUpdateSequenceRun(&_UIUpdateScheduledSequence, (a1 + 68), v5);
      kdebug_trace();
    }

    else
    {
      _UIUpdateSequenceRun(&_UIUpdateScheduledSequence, (a1 + 68), v5);
    }
  }

  JUMPOUT(0x18CFE7DB0);
}

uint64_t schedulerModeScheduledWaitingMainInputs(uint64_t a1)
{
  applyRequestRegistryChanges(a1);
  UCDriverReset();
  mainGroup &= ~1u;
  if (*(a1 + 692))
  {
    _UIUpdateMainStats = mach_absolute_time();
  }

  else
  {
    v8 = 0;
    v2 = *(a1 + 160);
    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = *(a1 + 576);
    v4 = *(a1 + 612);
    v5 = 8 * v2;
    v6 = 1;
    do
    {
      v6 = _UIUpdateInputSetReadyForModelTimeCombine(*(a1 + 160 + v5), v3, 0, v4, v6 & 1, &v8);
      v5 -= 8;
    }

    while (v5);
    if ((v6 & 1) != 0 || mach_absolute_time() >= v8)
    {
LABEL_9:
      _UIUpdateMainStats = 0x8000000000000000;
    }

    else
    {
      _UIUpdateMainStats = v8;
      UCDriverTimerArm();
    }
  }

  return a1;
}

uint64_t _UIUpdateInputSetReadyForModelTimeCombine(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char a5, void *a6)
{
  v9 = a1;
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 0;
    v10 = *(a1 + 68) + 1;
    a1 = malloc_type_realloc(*(a1 + 48), 16 * v10, 0x2004093837F09uLL);
    v11 = (a1 + 8 * v10);
    v9[6] = a1;
    v9[7] = v11;
    for (i = v9[9]; i; i = *(i + 56))
    {
      if (*(i + 72))
      {
        *a1 = i;
        a1 += 8;
        if (*(i + 24))
        {
          *v11++ = i;
        }
      }
    }

    *a1 = 0;
    *v11 = 0;
  }

  v13 = v9[6];
  if (v13)
  {
    if (a3)
    {
      v13 = v9[7];
    }

    v14 = *v13;
    if (*v13)
    {
      v15 = v13 + 1;
      do
      {
        v23 = 0;
        v16 = *(v14 + 8 * a4 + 32);
        if (a2 - v16 <= *(v14 + 16))
        {
          v17 = 1;
        }

        else
        {
          a1 = (*(v14 + 72))(v14, *(v14 + 80), a2 - v16, a4, &v23);
          v17 = a1;
        }

        if (_UIUpdateCycleDebugTracingCheck)
        {
          a1 = _UIUpdateCycleDebugTracingCheck(a1);
          if (a1)
          {
            v20 = a1;
            strncpy(__dst, *(v14 + 88), 8uLL);
            a1 = kdebug_trace();
            if (v20 != 1)
            {
              a1 = getppid();
            }
          }
        }

        if ((v17 & 1) == 0)
        {
          if ((a5 & 1) != 0 || *a6 < v23)
          {
            a5 = 0;
            *a6 = v23;
          }

          else
          {
            a5 = 0;
          }
        }

        v18 = *v15++;
        v14 = v18;
      }

      while (v18);
    }
  }

  return a5 & 1;
}

void schedulerModeScheduledWaitingMainInputsEnter(uint64_t a1)
{
  UCDriverSetMask();

  JUMPOUT(0x18CFE7E10);
}

uint64_t inputDisplayLinksReadyForModelTimeCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ([MEMORY[0x1E6979330] supportsExpectedWakeupBeforeCommitDeadline])
  {
    UCTimeToSeconds();
    [MEMORY[0x1E6979330] expectedWakeupBeforeCommitDeadline:?];
    v8 = UCTimeFromSeconds();
    if (v8 < 1)
    {
      objc_opt_class();
      v10 = objc_opt_respondsToSelector();
      v11 = 0.0;
      if (v10)
      {
        [MEMORY[0x1E6979330] earlyWakeupOffset];
      }

      v8 = _UIMachDurationForMediaDuration(v11);
      v9 = a3 - v8;
    }

    else
    {
      v9 = a2[69];
    }

    *a5 = v9;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v8))
    {
      kdebug_trace();
    }
  }

  else
  {
    *a5 = a2[85] + a3;
  }

  return 0;
}

uint64_t _UIUpdateHIDDigitizerReadyForModelTime(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v6 = *(a2 + 104);
  v7 = 9;
  if (*(a2 + 160))
  {
    v7 = 10;
  }

  v8 = v6[v7];
  if (v8)
  {
    if (*(v8 + 8) == 1)
    {
      v9 = *(a2 + 152);
      v10 = v6[7];
      v11 = a3 - (*(a2 + 136) + v9);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v12 = -((*(a2 + 136) + v9 - a3) / v10);
      }

      else if (v11 % v10)
      {
        v12 = v11 / v10 + 1;
      }

      else
      {
        v12 = v11 / v10;
      }

      v29 = v6[8];
      v30 = v29 / v10;
      if ((v12 & 0x8000000000000000) != 0)
      {
        v31 = -(-v12 / v30);
      }

      else if (v12 % v30)
      {
        v31 = v12 / v30 + 1;
      }

      else
      {
        v31 = v12 / v30;
      }

      *a5 = v9 + v31 * v29 + *(a2 + 144);
      if (!_UIUpdateCycleDebugTracingCheck)
      {
        return 0;
      }

      result = _UIUpdateCycleDebugTracingCheck(a1);
      if (result)
      {
        mach_absolute_time();
        v37 = *(__UILogGetCategoryCachedImpl("EventBus", &qword_1ED4A0960) + 8);
        result = os_signpost_enabled(v37);
        if (result)
        {
          *buf = 0u;
          v55 = 0u;
          v56 = 0u;
          UCTimeToSeconds();
          v39 = v38;
          UCTimeToSeconds();
          v41 = v40;
          v42 = v39 - v40;
          v21 = v37;
          snprintf(buf, 0x30uLL, "%.06f(%+.06f)s", v39, v42);
          memset(v53, 0, sizeof(v53));
          UCTimeToSeconds();
          snprintf(v53, 0x30uLL, "%.06f(%+.06f)s", v43, v43 - v41);
          *v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          UCTimeToSeconds();
          snprintf(v50, 0x30uLL, "%.06f(%+.06f)s", v44, v44 - v41);
          *v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          UCTimeToSeconds();
          snprintf(v47, 0x30uLL, "%.06f(%+.06f)s", v45, v45 - v41);
          UCTimeToSeconds();
          *__str = 136316162;
          *&__str[4] = buf;
          *&__str[12] = 2080;
          *&__str[14] = v53;
          *&__str[22] = 2080;
          *&__str[24] = v50;
          *v58 = 2080;
          *&v58[2] = v47;
          *&v58[10] = 2048;
          *&v58[12] = v46;
          v25 = "modelTime=%s, readyTime=%s, eventPhaseTime=%s, nextEventTime=%s, deadline=%.06f";
          v26 = __str;
          v27 = v21;
          v28 = 52;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v14 = *v8 - *v6;
      if (a4 == 1)
      {
        v14 += v6[5];
      }

      *a5 = v14 + a3;
      if (!_UIUpdateCycleDebugTracingCheck)
      {
        return 0;
      }

      result = _UIUpdateCycleDebugTracingCheck(a1);
      if (result)
      {
        mach_absolute_time();
        v15 = *(__UILogGetCategoryCachedImpl("EventBus", &qword_1ED4A0968) + 8);
        result = os_signpost_enabled(v15);
        if (result)
        {
          memset(__str, 0, sizeof(__str));
          *v58 = 0u;
          UCTimeToSeconds();
          v17 = v16;
          UCTimeToSeconds();
          v19 = v18;
          v20 = v17 - v18;
          v21 = v15;
          snprintf(__str, 0x30uLL, "%.06f(%+.06f)s", v17, v20);
          *buf = 0u;
          v55 = 0u;
          v56 = 0u;
          UCTimeToSeconds();
          snprintf(buf, 0x30uLL, "%.06f(%+.06f)s", v22, v22 - v19);
          v23 = *(a2 + 160);
          UCTimeToSeconds();
          *v53 = 136315906;
          *&v53[4] = __str;
          *&v53[12] = 2080;
          *&v53[14] = buf;
          *&v53[22] = 1024;
          *&v53[24] = v23;
          *&v53[28] = 2048;
          *&v53[30] = v24;
          v25 = "modelTime=%s, ready=0, readyTime=%s, expecting=%u, deadline=%.06f";
          v26 = v53;
          v27 = v21;
          v28 = 38;
LABEL_33:
          _os_signpost_emit_with_name_impl(&dword_188A29000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HIDDigitizerInputReady", v25, v26, v28);

          return 0;
        }
      }
    }
  }

  else
  {
    if (_UIUpdateCycleDebugTracingCheck)
    {
      if (_UIUpdateCycleDebugTracingCheck(a1))
      {
        v32 = *(__UILogGetCategoryCachedImpl("EventBus", &_MergedGlobals_1283) + 8);
        if (os_signpost_enabled(v32))
        {
          v33 = v32;
          mach_absolute_time();
          memset(__str, 0, sizeof(__str));
          *v58 = 0u;
          UCTimeToSeconds();
          v35 = v34;
          UCTimeToSeconds();
          snprintf(__str, 0x30uLL, "%.06f(%+.06f)s", v35, v35 - v36);
          *buf = 136315138;
          *&buf[4] = __str;
          _os_signpost_emit_with_name_impl(&dword_188A29000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HIDDigitizerInputReady", "modelTime=%s, ready=1", buf, 0xCu);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_188AB933C(uint64_t a1)
{
  if (qword_1ED48FBB8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  MEMORY[0x1EEE9AC00](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940828, &qword_18A675930);
  sub_18A4A7A78();
  v1 = *(v7 + 16);
  if (v1)
  {
    v2 = v7 + 40;
    do
    {
      v3 = *(v2 - 8);

      v3(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }
}

uint64_t _runAfterCACommitDeferredBlocks(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1[11] count];
  if (v2)
  {
    v3 = [v1[11] copy];
    [v1[11] removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * v8++) run];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v9 = [qword_1EA992E70 flush];
  if (v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

uint64_t _cleanUpAfterCAFlushAndRunDeferredBlocks(void *a1, int a2)
{
  v3 = a1;
  if (pthread_main_np() != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _cleanUpAfterCAFlushAndRunDeferredBlocks(UIApplication *__strong, BOOL)"}];
    [v6 handleFailureInFunction:v7 file:@"UIApplication.m" lineNumber:3270 description:@"Call must be made on main thread"];
  }

  __caCommitState = 0;
  +[UIWindow _checkPreCommitHandlersAfterCAFlush];
  v4 = 0;
  if (a2)
  {
    v4 = _runAfterCACommitDeferredBlocks(v3);
  }

  __UIApplicationLastCAFlushTime = CFAbsoluteTimeGetCurrent();

  return v4;
}

void _UIViewControllerAccumulateSafeAreaInsetsIncludingChildrenIntoParentView(float64x2_t *a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = 0.0;
  if (!v5)
  {
    v8 = 0uLL;
LABEL_5:
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0uLL;
    goto LABEL_6;
  }

  v8 = 0uLL;
  if ((*(v5 + 94) & 3u) - 1 > 1)
  {
    goto LABEL_5;
  }

  v9 = [*(v5 + 3) isHidden];
  v8 = 0uLL;
  if (v9)
  {
    goto LABEL_5;
  }

  [*(v5 + 3) alpha];
  v8 = 0uLL;
  if (v10 < 0.01)
  {
    goto LABEL_5;
  }

  v15 = [*(v5 + 3) isDescendantOfView:v6];
  v8 = 0uLL;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0uLL;
  if (v15)
  {
    v98 = a1;
    [*(v5 + 3) safeAreaInsets];
    v17 = fmax(v16, 0.0);
    v19 = fmax(v18, 0.0);
    v21 = fmax(v20, 0.0);
    v23 = fmax(v22, 0.0);
    [v5 _overlayInsetsAdjustment];
    v111 = v25;
    v113 = v24;
    rect_24a = v27;
    v109 = v26;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v28 = *(v5 + 58);
    v29 = [v28 countByEnumeratingWithState:&v120 objects:v124 count:16];
    v30.f64[0] = v111;
    v30.f64[1] = rect_24a;
    v112 = v30;
    v30.f64[0] = v113;
    v30.f64[1] = v109;
    v114 = v30;
    if (v29)
    {
      v31 = v29;
      v32 = *v121;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v121 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v120 + 1) + 8 * i);
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          _UIViewControllerAccumulateSafeAreaInsetsIncludingChildrenIntoParentView(&v116, v34, *(v5 + 3));
          v35 = [v34 edgesForExtendedLayout];
          v36 = v35;
          v37 = fmax(v17, v116.f64[0]);
          if (v35)
          {
            v17 = v37;
          }

          v38 = fmax(v19, v116.f64[1]);
          if ((v35 & 2) != 0)
          {
            v19 = v38;
          }

          v39 = fmax(v23, *(&v117 + 1));
          if ((v35 & 8) != 0)
          {
            v23 = v39;
          }

          if ((v35 & 4) != 0)
          {
            v21 = fmax(v21, *&v117);
          }

          else if (([v5 _isNavigationController] & 1) != 0 || objc_msgSend(v5, "_isTabBarController"))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v40 = v36 & 0xB ^ 0xF;
              v115 = 0;
              [v34 setEdgesForExtendedLayout:v40];
              [v5 _edgeInsetsForChildViewController:v34 insetsAreAbsolute:&v115];
              v42 = v41;
              v44 = v43;
              v46 = v45;
              v48 = v47;
              [v34 setEdgesForExtendedLayout:v36];
              v49 = v42 + 0.0;
              if ((v40 & 1) == 0)
              {
                v49 = 0.0;
              }

              v50 = v44 + 0.0;
              if ((v40 & 2) == 0)
              {
                v50 = 0.0;
              }

              v51 = v46 + 0.0;
              v52 = v48 + 0.0;
              if (v40 < 8)
              {
                v52 = 0.0;
              }

              if ((v115 & 1) == 0)
              {
                v49 = v17 + v49;
                v50 = v19 + v50;
                v51 = v21 + v51;
                v52 = v23 + v52;
              }

              v23 = v52;
              v21 = v51;
              v19 = v50;
              v17 = v49;
            }
          }

          v112 = vaddq_f64(v112, v119);
          v114 = vaddq_f64(v114, v118);
        }

        v31 = [v28 countByEnumeratingWithState:&v120 objects:v124 count:16];
      }

      while (v31);
    }

    v53 = *(v5 + 3);
    v54 = v6;
    [v53 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    [v53 convertRect:v54 toView:?];
    v110 = v63;
    rect_16 = v65;
    rect_24 = v64;
    rect_8 = v66;
    [v53 convertRect:v54 toView:{v19 + v56, v17 + v58, v60 - (v23 + v19), v62 - (v21 + v17)}];
    v102 = v68;
    v103 = v67;
    v100 = v70;
    v101 = v69;

    [v54 bounds];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    [v54 safeAreaInsets];
    v13 = v79;
    v12 = v80;
    v11 = v81;
    v7 = v82;

    v99 = v72;
    v126.origin.x = v110;
    v126.size.width = rect_16;
    v126.origin.y = rect_24;
    v126.size.height = rect_8;
    MinY = CGRectGetMinY(v126);
    v95 = v78 - (v13 + v11);
    rect = v72 + v12;
    v127.origin.x = v72 + v12;
    v96 = v76 - (v12 + v7);
    v97 = v74 + v13;
    v127.origin.y = v74 + v13;
    v127.size.width = v96;
    v127.size.height = v95;
    if (MinY <= CGRectGetMinY(v127))
    {
      v128.origin.y = v102;
      v128.origin.x = v103;
      v128.size.height = v100;
      v128.size.width = v101;
      v83 = CGRectGetMinY(v128);
      v129.origin.y = v74;
      v129.origin.x = v99;
      v129.size.height = v78;
      v129.size.width = v76;
      v84 = v83 - CGRectGetMinY(v129);
      if (v13 < v84)
      {
        v13 = v84;
      }
    }

    v130.origin.x = v110;
    v130.size.width = rect_16;
    v130.origin.y = rect_24;
    v130.size.height = rect_8;
    MinX = CGRectGetMinX(v130);
    v131.origin.x = rect;
    v131.origin.y = v97;
    v131.size.width = v76 - (v12 + v7);
    v131.size.height = v95;
    if (MinX <= CGRectGetMinX(v131))
    {
      v132.origin.y = v102;
      v132.origin.x = v103;
      v132.size.height = v100;
      v132.size.width = v101;
      v86 = CGRectGetMinX(v132);
      v133.origin.y = v74;
      v133.origin.x = v99;
      v133.size.height = v78;
      v133.size.width = v76;
      v87 = v86 - CGRectGetMinX(v133);
      if (v12 < v87)
      {
        v12 = v87;
      }
    }

    v134.origin.x = v110;
    v134.size.width = rect_16;
    v134.origin.y = rect_24;
    v134.size.height = rect_8;
    MaxY = CGRectGetMaxY(v134);
    v135.origin.x = rect;
    v135.origin.y = v97;
    v135.size.width = v96;
    v135.size.height = v95;
    a1 = v98;
    if (MaxY >= CGRectGetMaxY(v135))
    {
      v136.origin.y = v74;
      v136.origin.x = v99;
      v136.size.height = v78;
      v136.size.width = v76;
      v89 = CGRectGetMaxY(v136);
      v137.origin.y = v102;
      v137.origin.x = v103;
      v137.size.height = v100;
      v137.size.width = v101;
      v90 = v89 - CGRectGetMaxY(v137);
      if (v11 < v90)
      {
        v11 = v90;
      }
    }

    v138.origin.x = v110;
    v138.size.width = rect_16;
    v138.origin.y = rect_24;
    v138.size.height = rect_8;
    MaxX = CGRectGetMaxX(v138);
    v139.origin.x = rect;
    v139.origin.y = v97;
    v139.size.width = v96;
    v139.size.height = v95;
    if (MaxX >= CGRectGetMaxX(v139))
    {
      v140.origin.y = v74;
      v140.origin.x = v99;
      v140.size.height = v78;
      v140.size.width = v76;
      v92 = CGRectGetMaxX(v140);
      v141.origin.y = v102;
      v141.origin.x = v103;
      v141.size.height = v100;
      v141.size.width = v101;
      v93 = v92 - CGRectGetMaxX(v141);
      if (v7 < v93)
      {
        v7 = v93;
      }
    }

    v14 = v112;
    v8 = v114;
  }

LABEL_6:
  a1->f64[0] = v13;
  a1->f64[1] = v12;
  a1[1].f64[0] = v11;
  a1[1].f64[1] = v7;
  a1[2] = v8;
  a1[3] = v14;
}

void schedulerModeSchedulingEnter(uint64_t a1)
{
  UCDriverSetMask();

  JUMPOUT(0x18CFE7E10);
}

uint64_t schedulerModeScheduling(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  UCDriverReset();
  if (!**a1 || !UCDriverReset())
  {
    goto LABEL_58;
  }

  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v2 = +[UIScene _unsafeScenesIncludingInternal];
  v3 = [v2 countByEnumeratingWithState:&v72 objects:&v82 count:16];
  v71 = a1;
  if (!v3)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v73;
  v7 = (a1 + 472);
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v73 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v72 + 1) + 8 * i);
      if ([v9 _hostsWindows])
      {
        v10 = [v9 _visibleWindows];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 _effectiveSettings];
          if ([v9 _hasLifecycle] && !objc_msgSend(v12, "isForeground"))
          {
            v13 = v12;
          }

          else
          {
            v13 = [v12 displayConfiguration];

            if (!v13)
            {
              continue;
            }

            v14 = [v13 identity];
            v15 = [v14 displayID];

            v16 = v7;
            while (1)
            {
              v16 = *v16;
              if (!v16)
              {
                break;
              }

              if (v16[6] == v15)
              {
                goto LABEL_21;
              }
            }

            v17 = [v13 CADisplay];
            v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00405421CD5EuLL);
            v18 = *(v16 + 2);
            *(v16 + 2) = v17;

            v16[6] = v15;
            v19 = *v7;
            *v16 = *v7;
            if (v19)
            {
              *(v19 + 8) = v16;
            }

            *v7 = v16;
            *(v16 + 1) = v7;
            v5 = 1;
LABEL_21:
            v16[7] = 1;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v72 objects:&v82 count:16];
  }

  while (v4);
LABEL_27:

  a1 = v71;
  v20 = *(v71 + 472);
  if (v20)
  {
    do
    {
      v21 = *v20;
      if (v20[7])
      {
        v20[7] = 0;
      }

      else
      {
        v22 = *(v20 + 1);
        if (v21)
        {
          *(v21 + 8) = v22;
        }

        *v22 = v21;
        v23 = *(v20 + 2);
        *(v20 + 2) = 0;

        free(v20);
        v5 = 1;
      }

      v20 = v21;
    }

    while (v21);
  }

  if (v5)
  {
    v24 = *(__UILogGetCategoryCachedImpl("UpdateScheduler", &qword_1ED49FB38) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v26 = *(v71 + 472);
      if (v26)
      {
        v27 = 0;
        do
        {
          if (v27)
          {
            v28 = ", ";
          }

          else
          {
            v28 = "";
          }

          [v25 appendFormat:@"%s%@", v28, v26[2]];
          v26 = *v26;
          --v27;
        }

        while (v26);
      }

      *buf = 138412290;
      v77 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Target list changed: %@", buf, 0xCu);
    }

LABEL_45:
    v29 = *(v71 + 472);
    if (v29 && !*v29)
    {
      v30 = *(v29 + 16);
    }

    else
    {
      v30 = [MEMORY[0x1E6979328] mainDisplay];
    }

    v31 = v30;
    v32 = *(v71 + 480);
    if (v32)
    {
      v33 = *(v32 + 24);
    }

    else
    {
      v33 = 0;
    }

    if (v33 != [v30 displayId])
    {
      if (v31)
      {
        v34 = [_UIUpdateTarget targetWithCADisplay:v31];
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v71 + 480);
      *(v71 + 480) = v34;

      v36 = *(__UILogGetCategoryCachedImpl("UpdateScheduler", &qword_1ED49FB40) + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [v31 name];
        v39 = [v38 UTF8String];
        v40 = [v31 deviceName];
        v41 = [v40 UTF8String];
        v42 = [v31 displayId];
        *buf = 136315650;
        v77 = v39;
        v78 = 2080;
        v79 = v41;
        v80 = 1024;
        v81 = v42;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "Selected display: name=%s (%s), id=%x", buf, 0x1Cu);
      }
    }
  }

  else if (!*(v71 + 480))
  {
    goto LABEL_45;
  }

LABEL_58:
  applyRequestRegistryChanges(a1);
  if (*(a1 + 280) && ![MEMORY[0x1E6979518] currentState])
  {
    *(a1 + 280) = 0;
    _UIUpdateInputSetInputChanged(*(a1 + 328), a1 + 280);
  }

  UCDriverReset();
  mainGroup &= ~1u;
  v43 = _UIUpdateInputScopeAggregate(a1 + 104, *(a1 + 612));
  v44 = *v43;
  if (*v43 == 2)
  {
    v48 = v43;
    applyTimingChanges(a1);
    v49 = mach_absolute_time();
    v50 = v49;
    v51 = *(v48 + 1);
    if (*(a1 + 688) == 1)
    {
      v52 = *(v48 + 3);
      v53 = *(a1 + 496);
      v54 = v53 | 0x8000000000000000;
      v55 = v52 - v53;
      v56 = v54 <= v52;
      v57 = 0x8000000000000000;
      if (v56)
      {
        v57 = v55;
      }

      if (v51 >= v57)
      {
        v51 = v57;
      }
    }

    v58 = *(a1 + 488);
    v59 = v51;
    if (v58)
    {
      if (v58 < 1)
      {
        v59 = 0x8000000000000000;
        if ((0x8000000000000000 - v58) >= v51)
        {
          goto LABEL_84;
        }
      }

      else if ((v58 ^ 0x7FFFFFFFFFFFFFFFLL) <= v51)
      {
        v59 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_84;
      }

      v59 = v58 + v51;
    }

LABEL_84:
    v60 = *(a1 + 640);
    if (!v60)
    {
      v61 = v59;
      goto LABEL_91;
    }

    if (v60 < 1)
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
      if (v60 + 0x7FFFFFFFFFFFFFFFLL <= v59)
      {
        goto LABEL_91;
      }
    }

    else if ((v60 | 0x8000000000000000) >= v59)
    {
LABEL_93:
      v62 = *(a1 + 480);
      if (!v62 || (v62[28] & 1) == 0)
      {
        [(_UIUpdateTarget *)v62 start];
      }

      if (*(a1 + 520) && v51 <= *(a1 + 672) + *(a1 + 528))
      {
        v51 = *(a1 + 672) + *(a1 + 528);
      }

      v63 = *(a1 + 504);
      v83 = 0u;
      v84 = 0u;
      v82 = 0u;
      v72 = 0uLL;
      *&v73 = 0;
      frameSourceGetTiming(&v72, a1, v51, v63 + v50, &v82);
      v64 = v82;
      v65 = v82 - *(a1 + 640);
      if (v50 >= v65)
      {
        *(a1 + 544) = v72;
        *(a1 + 560) = v73;
        *(a1 + 568) = 1;
        v66 = v83;
        *(a1 + 624) = *(&v84 + 1);
        *(a1 + 632) = v66;
        *(a1 + 576) = *(a1 + 544);
        *(a1 + 592) = *(a1 + 552);
        *(a1 + 584) = v64;
        *(a1 + 608) = 0;
        *(a1 + 616) = *(a1 + 520);
        _UIUpdateSetCurrentTiming((a1 + 544), 1u);
        UCTimeToSeconds();
        v68 = v67;
        UCTimeToSeconds();
        *(a1 + 512) = [MEMORY[0x1E6979518] startFrameWithReason:35 beginTime:v68 commitDeadline:v69];
      }

      else
      {
        UCDriverTimerArm();
        _UIUpdateMainStats = v65;
      }

      return a1;
    }

    v61 = v59 - v60;
LABEL_91:
    if (v49 < v61)
    {
      UCDriverTimerArm();
      _UIUpdateMainStats = v61;
      return a1;
    }

    goto LABEL_93;
  }

  if (v44 == 1)
  {
    v47 = *(a1 + 480);
    if (!v47 || (v47[28] & 1) == 0)
    {
      [(_UIUpdateTarget *)v47 start];
    }

LABEL_104:
    if (mach_absolute_time() < *(a1 + 536))
    {
      _UIUpdateMainStats = *(a1 + 536);
    }
  }

  else if (!v44)
  {
    v45 = *(a1 + 480);
    if (!v45 || v45[28] != 1)
    {
      goto LABEL_104;
    }

    v46 = *(a1 + 624);
    if (v46 >= 1)
    {
      if (mach_absolute_time() < v46)
      {
        UCDriverTimerArm();
        goto LABEL_104;
      }

      v45 = *(a1 + 480);
    }

    [(_UIUpdateTarget *)v45 stop];
    *(a1 + 568) = 0;
    *(a1 + 624) = 0x8000000000000000;
    goto LABEL_104;
  }

  return a1;
}

uint64_t _UIVariableFrameDurationEnabled()
{
  if (qword_1ED49FCA0 != -1)
  {
    dispatch_once(&qword_1ED49FCA0, &__block_literal_global_2_13);
  }

  return byte_1ED49FC89;
}

void *_UIUpdateCompletionObservationInvokeObservers(void *result)
{
  v1 = *result;
  if (*result && v1[3])
  {
    v2 = result;
    *result = result[1];
    result[1] = v1;
    v5 = v1[2];
    v3 = v5;
    result[2] = &v5;
    if (v3)
    {
      do
      {
        v4 = v3[2];
        v5 = *v3;
        [v4 _updateCompleted];

        v3 = v5;
      }

      while (v5);
    }

    result = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::clear(v1);
    v2[2] = 0;
  }

  return result;
}

void applyRequestRegistryChanges(uint64_t **result)
{
  if (!**result)
  {
    return;
  }

  v2 = UCDriverReset();
  if (!v2)
  {
    return;
  }

  v3 = mainRegistry;
  if ((mainRegistry & 2) != 0)
  {
    mainRegistry &= ~2u;
    *(result + 46) = 2 * (dword_1ED4A3784 != 0);
    v2 = _UIUpdateInputSetInputChanged(result[29], (result + 23));
    v3 = mainRegistry;
    if ((mainRegistry & 4) == 0)
    {
LABEL_5:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((mainRegistry & 4) == 0)
  {
    goto LABEL_5;
  }

  v3 &= ~4u;
  mainRegistry = v3;
  v4 = dword_1ED4A3788 != 0;
  *(result + 688) = v4;
  *(result + 153) = v4;
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v3 &= ~0x80u;
    mainRegistry = v3;
    *(result + 690) = dword_1ED4A3790 != 0;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    mainRegistry = v3 & 0xFFFFFFDF;
    if (qword_1ED4A3768)
    {
      v5 = qword_1ED4A3768;
    }

    else
    {
      v5 = &unk_1ED4A3770;
    }

    v6 = word_1ED4A3776;
    if (_UIUpdateCycleDebugTracingCheck)
    {
      v31 = v5;
      v25 = word_1ED4A3776;
      v26 = _UIUpdateCycleDebugTracingCheck(v2);
      v6 = v25;
      v5 = v31;
      if (v26)
      {
        v27 = 0;
        memset(v32, 0, sizeof(v32));
        v28 = emitUpdateReasonsTracepoint_serial++;
        LODWORD(v32[0]) = v28;
        v29 = 1;
        while (1)
        {
          if (v27 >= v25)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v31 + v27++);
          }

          *(v32 + v29++) = v30;
          if (v29 == 8)
          {
            kdebug_trace();
            v29 = 1;
            if (v27 >= v25)
            {
              break;
            }
          }
        }

        v5 = v31;
        v6 = v25;
      }
    }

    v7 = result[60];
    if (v7)
    {
      [v7[2] setHighFrameRateReasons:v5 count:v6];
    }

    goto LABEL_8;
  }

LABEL_13:
  v3 &= ~0x10u;
  mainRegistry = v3;
  *(result + 689) = dword_1ED4A378C != 0;
  if ((v3 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (_UIVariableFrameDurationEnabled() && (mainRegistry & 0x40) != 0)
  {
    mainRegistry &= ~0x40u;
    *&v9 = _UIUpdateRequestRegistryArbitratedRateRange(&mainRegistry);
    v12 = v11;
    v13 = *&v10;
    if (*&v10 == 0.0)
    {
      v14 = 120.0;
    }

    else
    {
      v14 = *&v10;
    }

    if (v14 < v11)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    v16 = 60.0;
    if (v14 <= 60.0)
    {
      v16 = v14;
    }

    if (v12 == 0.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    v18 = 30.0;
    if (v17 <= 30.0)
    {
      v18 = v17;
    }

    HIDWORD(v19) = 0;
    if (v17 < *&v9 || *&v9 == 0.0)
    {
      v21 = v18;
    }

    else
    {
      v21 = *&v9;
    }

    if (*&v9 <= 0.0)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = UCTimeFromSeconds();
      v22 = v8;
    }

    if (v13 <= 0.0)
    {
      v23 = 0;
    }

    else
    {
      v8 = UCTimeFromSeconds();
      v23 = v8;
    }

    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v8))
    {
      kdebug_trace();
    }

    v24 = result[60];
    if (v24)
    {
      *&v9 = v21;
      *&v10 = v14;
      *&v19 = v17;
      [v24[2] setPreferredFrameRateRange:{v9, v10, v19}];
    }

    result[81] = v22;
    result[82] = v23;
  }
}

void _UIQOSProcessingEnd()
{
  _MergedGlobals_1364 = 0;
  if (qword_1ED4A28F8 != -1)
  {
    dispatch_once(&qword_1ED4A28F8, &__block_literal_global_7_4);
  }

  if (!--dword_1ED4A2908)
  {
    _tracepointArg4(&qword_1ED4A2900);
    kdebug_trace();
    if (word_1ED4A2938 == 1)
    {
      if ([MEMORY[0x1E6979518] currentState])
      {
        HIBYTE(word_1ED4A2938) = 1;

        _waitCommitEnd();
      }

      else
      {

        _endInterval(&qword_1ED4A2900);
      }
    }

    else
    {
      HIBYTE(word_1ED4A2938) = 0;
      qword_1ED4A2940 = 0;
    }
  }
}

uint64_t schedulerModeScheduledWaitingLowLatencyInputs(uint64_t a1)
{
  applyRequestRegistryChanges(a1);
  UCDriverReset();
  if (*(a1 + 688) == 1)
  {
    UCDriverReset();
    mainGroup &= ~1u;
    if ((*(a1 + 608) & 1) == 0)
    {
      v2 = *(a1 + 496) + *(a1 + 544);
      *(a1 + 544) = v2;
      *(a1 + 576) = v2;
      *(a1 + 608) = 1;
      _UIUpdateSetCurrentTiming((a1 + 544), 0);
    }

    v9 = 0;
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = *(a1 + 576);
      v5 = *(a1 + 612);
      v6 = 8 * v3;
      v7 = 1;
      do
      {
        v7 = _UIUpdateInputSetReadyForModelTimeCombine(*(a1 + 160 + v6), v4, v5 != 0, 1u, v7 & 1, &v9);
        v6 -= 8;
      }

      while (v6);
      if ((v7 & 1) == 0 && mach_absolute_time() < v9)
      {
        UCDriverTimerArm();
      }
    }
  }

  return a1;
}

void schedulerModeScheduledWaitingLowLatencyInputsEnter(uint64_t a1)
{
  UCDriverSetMask();

  JUMPOUT(0x18CFE7E10);
}

void schedulerStepScheduledDone(uint64_t a1)
{
  [MEMORY[0x1E6979518] finishFrameWithToken:*(a1 + 512)];
  if (_UIUpdateDoneSequence != &_UIUpdateSequenceDoneItemInternal || _UIUpdateSequenceDoneItemInternal != 0)
  {
    v3 = UCTimeToSeconds();
    v5 = v4;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v3))
    {
      kdebug_trace();
      _UIUpdateSequenceRun(&_UIUpdateScheduledSequence, a1 + 544, v5);
      kdebug_trace();
    }

    else
    {
      _UIUpdateSequenceRun(&_UIUpdateScheduledSequence, a1 + 544, v5);
    }
  }

  *(a1 + 512) = 0;
  _UIUpdateCompletionObservationInvokeObservers(mainCompletionObservation);
  *(a1 + 528) = *(a1 + 576);
  *(a1 + 536) = *(a1 + 592);
  xmmword_1ED4A37C8 = vnegq_f64(0);
  qword_1ED4A37D8 = 0x8000000000000000;
  qword_1ED4A37E8 = 0x8000000000000000;
  *(a1 + 568) = 0;
  ++*(a1 + 520);

  JUMPOUT(0x18CFE7DB0);
}

uint64_t sub_188ABB430(_DWORD *a1, uint64_t a2, uint64_t *a3)
{
  sub_188AA8CD8();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  if ((*(a2 + 393) & 1) == 0)
  {
    swift_beginAccess();

    *(a2 + 80) = sub_188ABC430(v9);

    *(a2 + 393) = 1;
  }

  *a3 = *(a2 + 80);
}

void *sub_188ABB4E0(uint64_t a1)
{
  v2 = sub_188ABB64C(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_188AB120C(v6);
    v10 = v2[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v2[3] >= v13)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v8;
        sub_188FA2688();
        v8 = v21;
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_188D4A540(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_188AB120C(v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_20;
      }
    }

    if (v14)
    {
      goto LABEL_11;
    }

LABEL_9:
    v2[(v8 >> 6) + 8] |= 1 << v8;
    *(v2[6] + 4 * v8) = v5;
    *(v2[7] + 8 * v8) = 0;
    v16 = v2[2];
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v12)
    {
      goto LABEL_19;
    }

    v2[2] = v17;
LABEL_11:
    v18 = v2[7];
    v19 = *(v18 + 8 * v8);
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v12)
    {
      goto LABEL_18;
    }

    *(v18 + 8 * v8) = v20;
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

unint64_t sub_188ABB64C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1A0, &qword_18A64E710);
    v3 = sub_18A4A8488();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_188AB120C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

_DWORD *_C2UpdateRequestSetRateRange(_DWORD *result, float a2, float a3, float a4)
{
  result[1] = a2;
  result[2] = a4;
  result[3] = a3;
  return result;
}

void requestRegistrySignaledCallback(_DWORD *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    if ((*result & 8) == 0)
    {
      goto LABEL_3;
    }

    *result &= ~8u;
    v5 = result[33];
    v6 = v5 != 0;
    if (v5)
    {
      if ((*(v2 + 691) & 1) == 0)
      {
        _UIQOSManagedCommitsBegin(@"HighFidelity", @"HighFidelity");
      }
    }

    else if (*(v2 + 691))
    {
      _UIQOSManagedCommitsEnd(@"HighFidelity", @"HighFidelity");
    }

    *(v2 + 691) = v6;
    if (*result)
    {
      if (*a2)
      {
LABEL_3:

        UCDriverSignal();
      }
    }
  }
}

float _UIUpdateRequestRegistryArbitratedRateRange(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 4);
  if (v2)
  {
    *(a1 + 4) = v2 & 0xFFFFFFFE;
    if (*(a1 + 32))
    {
      a1 = arbitrateRecordSet(a1 + 8);
    }

    if (*(v1 + 72))
    {
      a1 = arbitrateRecordSet(v1 + 48);
    }

    v3 = *(v1 + 80);
    v4 = *(v1 + 84);
    v5 = *(v1 + 36);
    if (v5 <= *(v1 + 76))
    {
      v5 = *(v1 + 76);
    }

    v6 = v5;
    v7 = *(v1 + 44);
    if (v7 <= v4)
    {
      v7 = v4;
    }

    v8 = v7;
    v9 = *(v1 + 40);
    if (v9 - 1 >= v3 - 1)
    {
      v9 = v3;
    }

    v10 = v9;
    v11 = v6;
    v12 = v10;
    if (v10 >= v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v10;
    }

    if (v12 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    if (v12)
    {
      v11 = v13;
    }

    v15 = v11;
    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = v8;
    }

    v17 = v16;
    v18 = v15;
    if (v17 > v15)
    {
      v18 = v17;
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    *(v1 + 104) = v15;
    *(v1 + 108) = v10;
    *(v1 + 112) = v19;
    if (_UIUpdateCycleDebugTracingCheck)
    {
      v21 = _UIUpdateCycleDebugTracingCheck(a1);
      if (v21)
      {
        v22 = v21;
        kdebug_trace();
        if (v22 != 1)
        {
          getppid();
        }
      }
    }
  }

  return *(v1 + 104);
}

BOOL sub_188ABBAE8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = 0;
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    v5 = 0;
    if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
    {
      v5 = 0;
      if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
      {
        return *(a1 + 128) == *(a2 + 128);
      }
    }
  }

  return v5;
}

double sub_188ABBC00(unsigned __int8 a1, double a2, double a3)
{
  v3 = a1;
  result = a2 - a3;
  if (a1 - 1 <= 2)
  {
    v5 = __sincos_stret(result);
    result = atan2(v5.__sinval, v5.__cosval);
    if (result > 0.0 && v3 == 2)
    {
      result = result + -6.28318531;
    }

    if (result < 0.0 && v3 == 3)
    {
      return result + 6.28318531;
    }
  }

  return result;
}

uint64_t _UIUpdateRequestRegistryAddRecord(uint64_t a1, int *a2, uint64_t a3)
{
  if (_UIUpdateCycleDebugTracingCheck)
  {
    v29 = _UIUpdateCycleDebugTracingCheck(a1);
    if (v29)
    {
      v30 = v29;
      kdebug_trace();
      if (v30 != 1)
      {
        getppid();
      }
    }
  }

  v6 = *(a1 + 102) == 0;
  v7 = 8;
  if ((*a2 & 1) == 0)
  {
    v7 = 48;
  }

  v8 = a1 + v7;
  if (_UIUpdateRequestRecordSortedSetAddRecord(a1 + v7, a2, a3))
  {
    v9 = *a2;
    v10 = 64;
    if ((*a2 & 4) != 0)
    {
      v24 = *(a1 + 116);
      *(a1 + 116) = v24 + 1;
      if (v24)
      {
        v10 = 64;
      }

      else
      {
        v10 = 66;
      }

      if ((v9 & 0x10) == 0)
      {
LABEL_7:
        if ((v9 & 0x20) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }
    }

    else if ((v9 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    v25 = *(a1 + 120);
    *(a1 + 120) = v25 + 1;
    if (!v25)
    {
      v10 |= 4u;
    }

    if ((v9 & 0x20) == 0)
    {
LABEL_8:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }

LABEL_38:
    v26 = *(a1 + 132);
    *(a1 + 132) = v26 + 1;
    if (!v26)
    {
      v10 |= 8u;
    }

    if ((v9 & 0x40) == 0)
    {
LABEL_9:
      if ((v9 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }

LABEL_41:
    v27 = *(a1 + 124);
    *(a1 + 124) = v27 + 1;
    if (!v27)
    {
      v10 |= 0x10u;
    }

    if ((v9 & 0x80) == 0)
    {
LABEL_10:
      if ((v9 & 1) == 0)
      {
LABEL_12:
        if ((*(v8 + 24) & 1) == 0)
        {
          v11 = a2[1];
          v12 = a2[3];
          v13 = a2[2];
          if (*(v8 + 8) != 1)
          {
            v14 = *(v8 + 32);
            v15 = *(v8 + 36);
            v16 = *(v8 + 28);
            if (v16 <= v11)
            {
              v16 = v11;
            }

            v11 = v16;
            v17 = v15;
            if (v15 <= v13)
            {
              v17 = v13;
            }

            v13 = v17;
            v18 = v14;
            if (v14 - 1 >= v12 - 1)
            {
              v18 = v12;
            }

            v12 = v18;
          }

          *(v8 + 28) = v11;
          *(v8 + 32) = v12;
          *(v8 + 36) = v13;
        }

        *(a1 + 4) |= 1u;
        v6 |= v10;
        goto LABEL_23;
      }

LABEL_11:
      *a2 = v9 | 2;
      goto LABEL_12;
    }

LABEL_44:
    v28 = *(a1 + 128);
    *(a1 + 128) = v28 + 1;
    if (!v28)
    {
      v10 |= 0x80u;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  result = _UIUpdateReasonSortedSetAddReason(a1 + 88, a3);
  v20 = v6 | 0x20;
  if (!result)
  {
    v20 = v6;
  }

  v21 = *a1 | v20;
  if (v21 != *a1)
  {
    *a1 = v21;
    v22 = *(a1 + 136);
    if (v22)
    {
      v23 = *(a1 + 144);

      return v22(a1, v23);
    }
  }

  return result;
}

char *_UICArrayInsert(char *__src, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, const void **a6)
{
  v8 = __src;
  v9 = __src - *a6;
  v10 = a3 * a2;
  v11 = *a6 - __src + *a4 * a3;
  v12 = *a4 + a2;
  if (*a5 >= v12)
  {
    memmove(&__src[v10], __src, v11);
  }

  else
  {
    if (2 * *a5 > v12)
    {
      v12 = 2 * *a5;
    }

    *a5 = v12;
    v14 = malloc_type_malloc(v12 * a3, 0x52DAB9CAuLL);
    v15 = v14;
    if (*a6)
    {
      memcpy(v14, *a6, v9);
      memcpy(&v15[v9 + v10], v8, v11);
      free(*a6);
    }

    *a6 = v15;
    v8 = &v15[v9];
  }

  *a4 += a2;
  return v8;
}

uint64_t _UIUpdateRequestRecordSortedSetAddRecord(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = &v6[24 * v7];
  while (v7)
  {
    v9 = v7 >> 1;
    v10 = &v6[24 * (v7 >> 1)];
    v12 = *v10;
    v11 = (v10 + 3);
    v7 += ~(v7 >> 1);
    if (v12 < a2)
    {
      v6 = v11;
    }

    else
    {
      v7 = v9;
    }
  }

  if (v8 != v6 && *v6 == a2)
  {
    _UIUpdateReasonSortedSetAddReason((v6 + 8), a3);
    return 0;
  }

  else
  {
    v13 = 1;
    v14 = _UICArrayInsert(v6, 1, 24, (a1 + 8), (a1 + 16), a1);
    *v14 = a2;
    *(v14 + 1) = 0;
    *(v14 + 4) = v3;
    *(v14 + 5) = 65537;
  }

  return v13;
}

uint64_t _UIUpdateReasonSortedSetAddReason(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 12);
  }

  else
  {
    v4 = (a1 + 8);
    v5 = 1;
  }

  v7 = (a1 + 14);
  v6 = *(a1 + 14);
  if (*(a1 + 14))
  {
    v8 = v4;
    v9 = *(a1 + 14);
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[4 * (v9 >> 1)];
      v13 = *v11;
      v12 = (v11 + 1);
      v9 += ~(v9 >> 1);
      if (v13 < a2)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  else
  {
    v8 = v4;
  }

  v14 = v8 - v4;
  v15 = (v8 - v4) >> 2;
  if (&v4[4 * v6] == v8 || *v8 != a2)
  {
    if (v5 < (v6 + 1))
    {
      if (2 * v5 <= (v6 + 1))
      {
        v17 = v6 + 1;
      }

      else
      {
        v17 = 2 * v5;
      }

      v5 = v17;
      v18 = malloc_type_malloc(6 * v5, 0x100004052888210uLL);
      v4 = v18;
      v19 = &v18[4 * v5];
      if (*a1)
      {
        memcpy(v18, *a1, 4 * *(a1 + 14));
        memcpy(v19, (*a1 + 4 * *(a1 + 12)), 2 * *(a1 + 14));
        free(*a1);
      }

      else
      {
        *v18 = *(a1 + 8);
        *v19 = *(a1 + 12);
      }

      *a1 = v4;
      *(a1 + 12) = v17;
      v6 = *(a1 + 14);
    }

    v20 = &v4[v14];
    v21 = &v4[4 * v5 + 2 * v15];
    v22 = v6 - v15;
    memmove(v20 + 4, v20, 4 * (v6 - v15));
    memmove(v21 + 2, v21, 2 * v22);
    *v20 = a2;
    result = 1;
    *v21 = 1;
  }

  else
  {
    result = 0;
    v7 = &v4[4 * v5 + 2 * v15];
  }

  ++*v7;
  return result;
}

uint64_t sub_188ABC250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_18A4A7F68();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_18A4A7F68();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_188ABC354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_18A4A7F68();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = sub_18A4A7F68();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_188AB3790(result, 1);
    return sub_188ABC250(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_188ABC430(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v11 = MEMORY[0x1E69E7CD0];
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_188AA8490(&v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9)))))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_188ABC518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9349C0, &qword_18A64D508);
  v4 = sub_18A4A8068();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x18CFE37B0](*(v5 + 40), v16, 4);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_188ABC70C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_188AA8578(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_188E79C04();
      a2 = v7;
      goto LABEL_12;
    }

    sub_188ABC518(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x18CFE37B0](*(*v3 + 40), v4, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_18A4A8798();
  __break(1u);
}

char *sub_188ABC874()
{
  v1 = *v0;

  v2 = *(*v0 + 104);
  v4 = type metadata accessor for RunningInProcessAnimation(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = sub_188EB09A0(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  MEMORY[0x18CFEA6E0](v0 + *(*v0 + 136), v5);
  return v0;
}

void sub_188ABCF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSString *__cdecl NSStringFromUIEdgeInsets(UIEdgeInsets insets)
{
  v1 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, *&insets.top, 17, *&insets.left, 17, *&insets.bottom, 17, *&insets.right);

  return v1;
}

double sub_188ABD010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_188ABD064(char a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6[OBJC_IVAR____TtCE5UIKitCSo6UIView23InProcessAnimationState_retargeted];
    v9 = v6;
    a3(a1 & 1, v8);
  }
}

unint64_t _UIMachDurationForMediaDuration(double a1)
{
  if (qword_1ED49FCB8 != -1)
  {
    dispatch_once(&qword_1ED49FCB8, &__block_literal_global_46_2);
  }

  return llround(*&qword_1ED49FCC0 * a1);
}

void _afterCACommitHandler(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    v5 = a3;
    if (_cleanUpAfterCAFlushAndRunDeferredBlocks(v5, 1))
    {
      _UIApplicationDrainManagedAutoreleasePool();
      [MEMORY[0x1E6979518] flush];
      _cleanUpAfterCAFlushAndRunDeferredBlocks(v5, 0);
      if ([v5[11] count])
      {
        Main = CFRunLoopGetMain();
        CFRunLoopWakeUp(Main);
      }
    }
  }
}

uint64_t schedulerStepScheduledMainSectionBegin(uint64_t a1)
{
  if (*(a1 + 689) == 1)
  {
    v2 = *(a1 + 688) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 609) = v2 & 1;
  UCTimeToSeconds();
  v4 = v3;
  v5 = mach_absolute_time();
  v6 = mach_continuous_time();
  v7 = _UIQOSProcessingBegin("UIUCMain", 0, v5, *(a1 + 592));
  kdebug_trace();
  qword_1ED4A37D8 = v5;
  qword_1ED4A37E0 = v6;
  *(a1 + 744) = v7;
  *(a1 + 712) = v4;
  *(a1 + 720) = a1 + 544;
  *(a1 + 728) = _UIUpdateMainSequence;
  *(a1 + 736) = 0;
  UCDriverUpdateMask();
  return a1;
}