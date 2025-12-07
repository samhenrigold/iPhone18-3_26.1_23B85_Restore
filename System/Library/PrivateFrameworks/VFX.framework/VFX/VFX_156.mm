uint64_t sub_1AFCEDB40()
{
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for VFXScene(0);
      if (swift_dynamicCastClass())
      {
        v1 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
        v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
        if (v1 != -1 || v2 != 0)
        {
          v4 = sub_1AF9F8EF8(v1 | (v2 << 32));

          swift_unknownObjectRelease();
          return v4;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1AFCEDC50(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if ([a1 asset])
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = v8, (v10 = [v8 entityObject]) != 0) && (v12 = *&v10[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity], v11 = *&v10[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4], v10, __PAIR64__(v11, v12) == a3))
    {
      v13[3] = sub_1AF0D4478(0, &unk_1EB644058, &off_1E7A77A68);
      v13[0] = v9;
      swift_unknownObjectRetain();
      sub_1AF7E8BCC(v13, a4);
      *a2 = 1;
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFCEDD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v8 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v9 = *(v7 + 4);

    sub_1AFCF26B8(&v71);
    v10 = v75;
    if (v75)
    {
      v11 = v71;
      v12 = v76;
      v13 = v77;
      v15 = v78;
      v14 = v79;
      if (v71)
      {
        v68 = v74;
        v69 = v73;
        v66 = v72;
        v16 = v8 == -1 && v9 == 0;
        if (v16 || (v17 = v8 | (v9 << 32), , v18 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v17), , !v18))
        {
        }

        else
        {
          v59 = v15;
          v60 = v13;
          v61 = v12;
          v62 = a1;
          v63 = v14;
          v58 = sub_1AF80E468(v11, v17, v6);
          v20 = v68;
          v19 = v69;
          v65 = *(v58 + 16);
          if (v65)
          {
            v21 = 0;
            v64 = v10;
            while (1)
            {
              if (!qword_1ED730448)
              {
                result = sub_1AFDFE518();
                __break(1u);
                return result;
              }

              v67 = v21;
              v22 = v58 + 32 + 16 * v21;
              v24 = *v22;
              v23 = *(v22 + 4);
              v25 = *v22;
              v26 = *(v22 + 8);

              v27 = MEMORY[0x1B27189E0](v66, v19, v20, v10);
              v29 = sub_1AF6DC144(v27, v28, 0, 1);

              if (!v29)
              {
                break;
              }

              v30 = swift_conformsToProtocol2();
              if (!v30)
              {
                break;
              }

              v31 = v30;

              if (v24 == -1 && !v23 || v24 < 0 || *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v24 || (v32 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 != -1) && *(v32 + 8) != v23 || (v33 = *(*(*(v26 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = *(v33 + 128), !*(v34 + 16)) || (v35 = sub_1AF449CB8(v29), (v36 & 1) == 0))
              {

                goto LABEL_12;
              }

              v37 = *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * v35) + 32);

              if (v37 == v29)
              {
                v38 = *(v31 + 8);
                type metadata accessor for VFXAttribute();
                v39 = swift_allocObject();

                swift_unownedRetain();

                *(v39 + 16) = v26;
                *(v39 + 24) = v24;
                *(v39 + 28) = v23;
                *(v39 + 32) = v29;
                *(v39 + 40) = v38;
LABEL_54:
                v55 = sub_1AFCF1B84(v62, v39, v61, v60, v59, v63);

                if (v55)
                {

                  return 1;
                }
              }

LABEL_12:
              v21 = v67 + 1;
              if (v67 + 1 == v65)
              {
                goto LABEL_61;
              }
            }

            v40 = v24 == -1 && v23 == 0;
            if (!v40 && (v24 & 0x80000000) == 0 && *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v24 && ((v41 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 == -1) || *(v41 + 8) == v23))
            {
              v42 = *(*(*(*(v26 + 88) + 8 * *(v41 + 6) + 32) + 16) + 32);

              v43 = *(v42 + 16);
              if (v43)
              {
LABEL_35:
                v70 = MEMORY[0x1E69E7CC0];
                sub_1AFDFE368();
                type metadata accessor for VFXAttribute();
                v44 = v42 + 40;
                do
                {
                  v45 = *(v44 - 8);
                  v46 = *(*v44 + 8);
                  v47 = swift_allocObject();
                  *(v47 + 16) = v26;
                  *(v47 + 24) = v24;
                  *(v47 + 28) = v23;
                  *(v47 + 32) = v45;
                  *(v47 + 40) = v46;

                  swift_unownedRetain();

                  sub_1AFDFE328();
                  sub_1AFDFE398();
                  sub_1AFDFE3A8();
                  sub_1AFDFE348();
                  v44 += 16;
                  --v43;
                }

                while (v43);

                v48 = v70;
                v10 = v64;
                v20 = v68;
                v19 = v69;
                goto LABEL_41;
              }
            }

            else
            {

              v42 = MEMORY[0x1E69E7CC0];
              v43 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v43)
              {
                goto LABEL_35;
              }
            }

            v48 = MEMORY[0x1E69E7CC0];
LABEL_41:
            if (v48 >> 62)
            {
              v49 = sub_1AFDFE108();
              if (!v49)
              {
LABEL_11:

                goto LABEL_12;
              }
            }

            else
            {
              v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v49)
              {
                goto LABEL_11;
              }
            }

            v50 = 0;
            while (1)
            {
              if ((v48 & 0xC000000000000001) != 0)
              {
                v39 = MEMORY[0x1B2719C70](v50, v48);
              }

              else
              {
                v39 = *(v48 + 8 * v50 + 32);
              }

              v51 = *(v39 + 32);
              v52 = swift_conformsToProtocol2();
              if (v52 && v51 != 0)
              {
                (*(v52 + 16))(v51, v52);
                sub_1AF6DC518();
                sub_1AF4486E4();
                v20 = v68;
                v54 = sub_1AFDFDEC8();
                v19 = v69;

                if (!v54)
                {
                  break;
                }
              }

              ++v50;

              if (v49 == v50)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_54;
          }

LABEL_61:
        }
      }

      else
      {
        v56 = sub_1AF822474(v72, v73, v74, v75, v8 | (v9 << 32), v6);

        if (v56)
        {
          v57 = sub_1AFCF1B84(a1, v56, v12, v13, v15, v14);

          return v57 & 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFCEE474(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v8 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v9 = *(v7 + 4);

    sub_1AFCF26B8(&v71);
    v10 = v75;
    if (!v75)
    {
      return 0;
    }

    v11 = v71;
    v12 = v76;
    v13 = v77;
    v15 = v78;
    v14 = v79;
    if (v71)
    {
      v68 = v74;
      v69 = v73;
      v66 = v72;
      v16 = v8 == -1 && v9 == 0;
      if (v16 || (v17 = v8 | (v9 << 32), , v18 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v17), , !v18))
      {
      }

      else
      {
        v59 = v15;
        v60 = v13;
        v61 = v12;
        v62 = a3;
        v63 = v14;
        v58 = sub_1AF80E468(v11, v17, v6);
        v20 = v68;
        v19 = v69;
        v65 = *(v58 + 16);
        if (v65)
        {
          v21 = 0;
          v64 = v10;
          while (1)
          {
            if (!qword_1ED730448)
            {
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }

            v67 = v21;
            v22 = v58 + 32 + 16 * v21;
            v24 = *v22;
            v23 = *(v22 + 4);
            v25 = *v22;
            v26 = *(v22 + 8);

            v27 = MEMORY[0x1B27189E0](v66, v19, v20, v10);
            v29 = sub_1AF6DC144(v27, v28, 0, 1);

            if (!v29)
            {
              break;
            }

            v30 = swift_conformsToProtocol2();
            if (!v30)
            {
              break;
            }

            v31 = v30;

            if (v24 == -1 && !v23 || v24 < 0 || *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v24 || (v32 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 != -1) && *(v32 + 8) != v23 || (v33 = *(*(*(v26 + 88) + 8 * *(v32 + 6) + 32) + 16), v34 = *(v33 + 128), !*(v34 + 16)) || (v35 = sub_1AF449CB8(v29), (v36 & 1) == 0))
            {

              goto LABEL_12;
            }

            v37 = *(*(v33 + 24) + 16 * *(*(v34 + 56) + 8 * v35) + 32);

            if (v37 == v29)
            {
              v38 = *(v31 + 8);
              type metadata accessor for VFXAttribute();
              v39 = swift_allocObject();

              swift_unownedRetain();

              *(v39 + 16) = v26;
              *(v39 + 24) = v24;
              *(v39 + 28) = v23;
              *(v39 + 32) = v29;
              *(v39 + 40) = v38;
LABEL_54:
              v55 = sub_1AFCF20C8(v39, v61, v60, v59, v63, v62);

              if (v55 != 1)
              {

                return v55;
              }
            }

LABEL_12:
            v21 = v67 + 1;
            if (v67 + 1 == v65)
            {
              goto LABEL_63;
            }
          }

          v40 = v24 == -1 && v23 == 0;
          if (!v40 && (v24 & 0x80000000) == 0 && *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v24 && ((v41 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v25, v23 == -1) || *(v41 + 8) == v23))
          {
            v42 = *(*(*(*(v26 + 88) + 8 * *(v41 + 6) + 32) + 16) + 32);

            v43 = *(v42 + 16);
            if (v43)
            {
LABEL_35:
              v70 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              type metadata accessor for VFXAttribute();
              v44 = v42 + 40;
              do
              {
                v45 = *(v44 - 8);
                v46 = *(*v44 + 8);
                v47 = swift_allocObject();
                *(v47 + 16) = v26;
                *(v47 + 24) = v24;
                *(v47 + 28) = v23;
                *(v47 + 32) = v45;
                *(v47 + 40) = v46;

                swift_unownedRetain();

                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v44 += 16;
                --v43;
              }

              while (v43);

              v48 = v70;
              v10 = v64;
              v20 = v68;
              v19 = v69;
              goto LABEL_41;
            }
          }

          else
          {

            v42 = MEMORY[0x1E69E7CC0];
            v43 = *(MEMORY[0x1E69E7CC0] + 16);
            if (v43)
            {
              goto LABEL_35;
            }
          }

          v48 = MEMORY[0x1E69E7CC0];
LABEL_41:
          if (v48 >> 62)
          {
            v49 = sub_1AFDFE108();
            if (!v49)
            {
LABEL_11:

              goto LABEL_12;
            }
          }

          else
          {
            v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v49)
            {
              goto LABEL_11;
            }
          }

          v50 = 0;
          while (1)
          {
            if ((v48 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x1B2719C70](v50, v48);
            }

            else
            {
              v39 = *(v48 + 8 * v50 + 32);
            }

            v51 = *(v39 + 32);
            v52 = swift_conformsToProtocol2();
            if (v52 && v51 != 0)
            {
              (*(v52 + 16))(v51, v52);
              sub_1AF6DC518();
              sub_1AF4486E4();
              v20 = v68;
              v54 = sub_1AFDFDEC8();
              v19 = v69;

              if (!v54)
              {
                break;
              }
            }

            ++v50;

            if (v49 == v50)
            {
              goto LABEL_11;
            }
          }

          goto LABEL_54;
        }

LABEL_63:
      }

      goto LABEL_64;
    }

    v56 = sub_1AF822474(v72, v73, v74, v75, v8 | (v9 << 32), v6);

    if (!v56)
    {
LABEL_64:

      return 0;
    }

    v57 = sub_1AFCF20C8(v56, v12, v13, v15, v14, a3);

    if (v57 == 1)
    {
      return 0;
    }

    else
    {
      return v57;
    }
  }

  return result;
}

id EntityPropertyHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AFCEEC1C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_1AFCEEC98()
{
  v0 = sub_1AF92975C();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  if (v0 == 0xFFFFFFFF)
  {
    type metadata accessor for HeaderScript(0);
    return 0;
  }

  v4 = sub_1AF67CACC(&type metadata for HeaderFileAsset, &off_1F25423F0, v2);

  if (v4)
  {
    return 1;
  }

  v5 = type metadata accessor for HeaderScript(0);

  v6 = sub_1AF67CACC(v5, &off_1F25421A0, v2);

  return v6;
}

unint64_t sub_1AFCEEF50(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v8 = sub_1AFD04DDC(0x100000000uLL, **(v6 + v7), a2, a3, a4, a5, a1);
  if (v8 == 0xFFFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  ecs_stack_allocator_pop_snapshot(*(**(v6 + v7) + 32));
  return v9;
}

uint64_t sub_1AFCEF054(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v8 = a1 & 0xFFFFFFFF00000000;
  if (a1)
  {
    a1 = a1;
  }

  else
  {
    a1 = 0xFFFFFFFFLL;
  }

  sub_1AF68B2F4(a1 | v8, v6, a2);
  sub_1AF68B2D8(a1 | v8, v6, a3);
  sub_1AF68B310(a1 | v8, v6, a4);
  v9 = *(**(v6 + v7) + 32);

  return ecs_stack_allocator_pop_snapshot(v9);
}

uint64_t sub_1AFCEF188(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v5 = HIDWORD(a1);
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = -1;
  }

  if ((v6 != -1 || v5) && (v6 & 0x80000000) == 0 && *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v6)
  {
    v9 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
    if (v5 == 0xFFFFFFFF || v9[2] == HIDWORD(a1))
    {
      v10 = *(v9 + 2);
      v11 = *(*(v3 + 144) + 8 * *v9 + 32);
      if (*(v11 + 232) <= v10 && *(v11 + 240) > v10)
      {
        v13 = **(v3 + v4);
        v14 = *(v11 + 344);

        os_unfair_lock_lock(v14);
        ecs_stack_allocator_push_snapshot(*(v13 + 32));

        sub_1AF65CFA0(v13, v11, v10);

        ecs_stack_allocator_pop_snapshot(*(v13 + 32));
        os_unfair_lock_unlock(*(v11 + 344));
      }
    }
  }

  v7 = *(**(v3 + v4) + 32);

  return ecs_stack_allocator_pop_snapshot(v7);
}

uint64_t sub_1AFCEF350(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  ecs_stack_allocator_push_snapshot(*(**(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32));
  v7 = a1;
  if (!a1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  sub_1AF67F350(v7 | a1 & 0xFFFFFFFF00000000, v5, a2);
  v8 = *(**(v5 + v6) + 32);

  return ecs_stack_allocator_pop_snapshot(v8);
}

void sub_1AFCEF474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFCEF528(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1AFCEF5B4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1AFDFD458();
  }

  return result;
}

uint64_t sub_1AFCEF628(uint64_t result, uint64_t (*a2)(BOOL, uint64_t, uint64_t))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1, result + 1, 1);
    *v2 = result;
  }

  return result;
}

void sub_1AFCEF678(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(*(a2 + 88));
  *(a2 + 96) = MEMORY[0x1E69E7CC0];

  v4 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AF424C70(0, v4[2] + 1, 1, v4);
    *(a2 + 96) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AF424C70(v6 > 1, v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v8 = &v4[2 * v7];
  v8[4] = a1;
  v8[5] = &off_1F25378D8;
  *(a2 + 96) = v4;
  v9 = *(a2 + 88);

  os_unfair_lock_unlock(v9);
}

void sub_1AFCEF768(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  v9 = sub_1AF449D3C(a2);
  v11 = v10;
  v12 = v8[3];
  v13 = v8[2] + ((v10 & 1) == 0);
  if (v12 < v13 || (a3 & 1) == 0)
  {
    if (v12 < v13 || (a3 & 1) != 0)
    {
      sub_1AF83F150(v13, a3 & 1);
      v9 = sub_1AF449D3C(a2);
      if ((v11 & 1) != (v15 & 1))
      {
        sub_1AFDFF1A8();
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = v9;
      sub_1AF84E614();
      v9 = v14;
    }
  }

  v16 = *a4;
  if (v11)
  {
    v17 = v16[7] + 16 * v9;
    v18 = *v17;
    *v17 = a1;
    *(v17 + 8) = &off_1F256A548;
  }

  else
  {
    v16[(v9 >> 6) + 8] |= 1 << v9;
    *(v16[6] + 8 * v9) = a2;
    v19 = (v16[7] + 16 * v9);
    *v19 = a1;
    v19[1] = &off_1F256A548;
    ++v16[2];
  }
}

uint64_t sub_1AFCEF8B4(uint64_t result, char a2, uint64_t *a3, __n128 a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = result;
    sub_1AFCF4770(result + 32, v29, sub_1AFCF47D8);
    sub_1AF640200(v29, v28);
    sub_1AF640200(v30, v27);
    v8 = *a3;
    v9 = sub_1AF419F60(v28);
    LOBYTE(v11) = v10;
    v12 = *(v8 + 16) + ((v10 & 1) == 0);
    if (*(v8 + 24) >= v12)
    {
      goto LABEL_5;
    }

    sub_1AF8425F0(v12, a2 & 1);
    v9 = sub_1AF419F60(v28);
    if ((v11 & 1) == (v13 & 1))
    {
      goto LABEL_6;
    }

    while (1)
    {
      v9 = sub_1AFDFF1A8();
      __break(1u);
LABEL_5:
      if (a2)
      {
LABEL_6:
        if (v11)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v9;
        sub_1AF85048C();
        v9 = v16;
        if (v11)
        {
LABEL_7:
          v14 = *a3;
          v15 = 32 * v9;
          sub_1AF44596C(*(*a3 + 56) + 32 * v9, v26);
          sub_1AF4459C8(v27);
          sub_1AF4459C8(v28);
          result = sub_1AF9B3A74(v26, *(v14 + 56) + v15);
          v11 = v4 - 1;
          if (v4 == 1)
          {
            return result;
          }

          goto LABEL_12;
        }
      }

      v17 = *a3;
      *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v18 = 32 * v9;
      sub_1AF640200(v28, v17[6] + 32 * v9);
      result = sub_1AF640200(v27, v17[7] + v18);
      ++v17[2];
      v11 = v4 - 1;
      if (v4 == 1)
      {
        return result;
      }

LABEL_12:
      v7 += 96;
      v4 = 1;
      while (1)
      {
        sub_1AFCF4770(v7, v29, sub_1AFCF47D8);
        sub_1AF640200(v29, v28);
        sub_1AF640200(v30, v27);
        v20 = *a3;
        v21 = sub_1AF419F60(v28);
        a2 = v22;
        if (*(v20 + 24) < (*(v20 + 16) + ((v22 & 1) == 0)))
        {
          sub_1AF8425F0(*(v20 + 16) + ((v22 & 1) == 0), 1);
          v21 = sub_1AF419F60(v28);
          if ((a2 & 1) != (v23 & 1))
          {
            break;
          }
        }

        v24 = 32 * v21;
        if (a2)
        {
          v25 = *a3;
          sub_1AF44596C(*(*a3 + 56) + v24, v26);
          sub_1AF4459C8(v27);
          sub_1AF4459C8(v28);
          result = sub_1AF9B3A74(v26, *(v25 + 56) + v24);
        }

        else
        {
          v19 = *a3;
          *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
          sub_1AF640200(v28, v19[6] + v24);
          result = sub_1AF640200(v27, v19[7] + v24);
          ++v19[2];
        }

        v7 += 64;
        if (!--v11)
        {
          return result;
        }
      }
    }
  }

  return result;
}

void _s3VFX8VFXSceneC22updateVFX2RenderOutput11pointOfView13commandBuffer8renderer24particleMaterialOverrideyAA13VFXCoreCameraC_So010MTLCommandK0_pyXls6UInt64VtF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AF719C8C();
  v7[2] = *(a1 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v7[17] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a4 != -1)
  {
    v7[3] = a4;
  }

  type metadata accessor for Renderer();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;

    sub_1AFCEF678(v10, v9);

    *(v9 + 276) = 0;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1AFDFE518();
    __break(1u);
  }
}

void sub_1AFCEFCC0(uint64_t a1)
{
  if (!qword_1EB644010)
  {
    sub_1AF4498F4(255, &qword_1EB644008, &protocol descriptor for BridgeComponent, 1);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644010);
    }
  }
}

uint64_t sub_1AFCEFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFCEFDCC(int a1, int32x4_t a2, float32x4_t a3, __n128 a4, float a5, float a6)
{
  v169 = a5;
  v171 = a4;
  v172 = a2;
  v167 = a3;
  v262 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  v195 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v194 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1AFDFC298();
  v11 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v216 = qword_1ED73B840;
  v217 = 0;
  v218 = 2;
  v219 = 0;
  v220 = 2;
  v221 = 0;
  sub_1AF5C7EC8(v209);
  v214[0] = v209[0];
  v214[1] = v209[1];
  v215 = v210;
  sub_1AF6B06C0(v13, v214, 0x200000000, v229);
  v177 = *&v229[0];
  if (!*&v229[0])
  {
    return sub_1AFCF466C(v209, sub_1AFB53AE0);
  }

  v176 = *(&v229[2] + 1);
  v14 = *(&v230 + 1);
  v183 = *(&v231 + 1);
  v250 = *(v229 + 8);
  v251 = *(&v229[1] + 8);
  if (v232 <= 0 || !*(&v230 + 1))
  {
    sub_1AFCF466C(v209, sub_1AFB53AE0);
    return sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  v197 = v13;
  v15 = v183[4];
  v16 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v228[2] = v229[2];
  v228[3] = v230;
  v228[4] = v231;
  v228[5] = v232;
  v228[0] = v229[0];
  v228[1] = v229[1];
  sub_1AF5DD298(v228, &v254);
  v17 = 0;
  v18 = 0;
  v188 = vdupq_lane_s32(*v172.i8, 1);
  v189 = vdupq_lane_s32(*v172.i8, 0);
  v187 = vdupq_laneq_s32(v172, 2);
  v19 = *&v172.i32[2];
  v20 = v167;
  v21 = vmulq_f32(v20, v20);
  v22 = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
  v23 = v171;
  v23.n128_f32[0] = v22 * v171.n128_f32[0];
  v164 = v23;
  v165 = v22;
  v166 = v172.i32[1];
  v23.n128_f32[0] = fmaxf(v22, 0.00001);
  v162 = vdiv_f32(*v167.f32, vdup_lane_s32(v23.n128_u64[0], 0));
  v163 = v167.f32[2];
  v160 = a6 + a6;
  v161 = v167.f32[2] / v23.n128_f32[0];
  v158 = vnegq_f32(v167);
  v159 = vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL);
  v198 = 0x80000001AFF48D10;
  v190 = (v11 + 32);
  v204 = 0u;
  v191 = a1;
  v174 = v15;
  v175 = v14;
  v173 = v16;
  while (2)
  {
    v181 = v18;
    v182 = v17;
    v24 = (v176 + 48 * v17);
    v203.i64[0] = *v24;
    v200.i64[0] = v24[1];
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v27 = *(v24 + 4);
    v196 = *(v24 + 5);
    if (v16)
    {
      v28 = *(v196 + 47);

      v29 = v28;
      v30 = v196;
      os_unfair_lock_lock(v29);
      os_unfair_lock_lock(*(v30 + 43));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v15);

    v32 = v183;
    sub_1AF630914(v31, v183, v233);

    v33 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v26, v25, v27, v32);
    v34 = sub_1AF64B110(&type metadata for ForceFieldRuntime, &off_1F2560FC0, v26, v25, v27, v32);
    v35 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v26, v25, v27, v32);
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_122;
      }

      v36 = v35 + 32;
      v37 = (v34 + 16);
      v38 = v206;
      while (1)
      {
        if ((*(v33 + 8) & a1) == 0 || (v33[8] & 1) == 0)
        {
          goto LABEL_76;
        }

        v206 = v38;
        v265.columns[0] = *(v36 - 2);
        v265.columns[2] = *v36;
        v265.columns[3] = *(v36 + 1);
        v202 = *(v36 - 1);
        v265.columns[1] = v202;
        v203 = v265.columns[0];
        v200 = v265.columns[3];
        v201 = v265.columns[2];
        v266 = __invert_f4(v265);
        v107 = v266.columns[0];
        v199 = *(v33 + 6);
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        *&v226 = 0;
        *(&v226 + 1) = 1;
        v227 = 0uLL;
        if (*v33 == 9)
        {
          v184 = v266.columns[2];
          v185 = v266.columns[1];
          v186 = v266.columns[0];
          v205 = v266.columns[3];
          sub_1AF8E60EC(*(v33 + 132), 1, v234);
          if (!v237)
          {
            goto LABEL_92;
          }

          v244[0] = v234[0];
          v244[1] = v234[1];
          v244[2] = v235;
          v245 = v236;
          v246 = v237;
          v207 = v235;
          v208 = v236;
          if (sub_1AF8FE1C4(&v207) != 7)
          {
            sub_1AFCEFD2C(v234, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
LABEL_92:
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v135 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v136 = qword_1ED73B890;
            sub_1AF6EFB60(0);
            v137 = swift_allocObject();
            *(v137 + 16) = xmmword_1AFE431C0;
            *(v137 + 56) = MEMORY[0x1E69E6158];
            *(v137 + 64) = sub_1AF0D544C();
            *(v137 + 32) = 0xD00000000000001ELL;
            *(v137 + 40) = v198;
            sub_1AFDFC4C8(v135, &dword_1AF0CE000, v136, "%{public}s", 10, 2, v137);

            v205.i32[0] = v135;
            v138 = v192;
            sub_1AFDFC288();
            v139 = v194;
            v203.i64[0] = v195[12];
            v140 = v195[16];
            v141 = &v194[v195[20]];
            (*v190)(v194, v138, v193);
            *(v139 + v203.i64[0]) = v205.i8[0];
            *(v139 + v140) = 0;
            *v141 = 0xD00000000000001ELL;
            *(v141 + 1) = v198;
            sub_1AFDFC608();

            sub_1AFCF466C(v139, sub_1AF0D4E74);
            v38 = v206;
            a1 = v191;
            goto LABEL_76;
          }

          sub_1AF478ACC(v244, 2, 1, v238);
          v224 = v238[2];
          v225 = v238[3];
          v226 = v238[4];
          v227 = v238[5];
          v222 = v238[0];
          v223 = v238[1];
          v266.columns[3] = v205;
          v266.columns[1] = v185;
          v107 = v186;
          v266.columns[2] = v184;
        }

        v108 = *(v33 + 4);
        v109 = *(v33 + 6);
        v252[5] = *(v33 + 5);
        v252[6] = v109;
        v253[0] = *(v33 + 7);
        *(v253 + 12) = *(v33 + 124);
        v110 = *(v33 + 1);
        v112 = *(v33 + 3);
        v111 = *(v33 + 4);
        v252[2] = *(v33 + 2);
        v252[3] = v112;
        v252[4] = v111;
        v252[0] = *v33;
        v252[1] = v110;
        v113 = *&v252[0];
        v114 = *(v252 + 3);
        v115 = *(v252 + 3);
        v116 = *&v253[0];
        if (*(&v110 + 1) > 0.0)
        {
          v118 = *(v37 - 2);
          v117 = *(v37 - 1);
          v119 = *v37 ^ v118;
          v120 = v37[1] ^ v117;
          *(v37 - 2) = v120 ^ v118;
          *(v37 - 1) = v119 ^ v117;
          *v37 = v119 ^ (v117 << 17);
          v37[1] = __ROR8__(v120, 19);
          v121 = vcvts_n_f32_u64((9 * ((((5 * v117) >> 32) >> 25) | (640 * v117))) & 0xFFFFFFLL, 0x18uLL);
          v115 = v114 + (*(&v110 + 1) * ((v121 + v121) + -1.0));
        }

        v122 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v266.columns[3], v266.columns[2], v187), v266.columns[1], v188), v107, v189);
        v123 = v122;
        v123.i32[3] = v206.i32[3];
        v205 = v122;
        v206 = v123;
        sub_1AFB4EB3C(v252, v123);
        v104 = 0uLL;
        if ((v115 * v124.n128_f32[0]) == 0.0)
        {
          goto LABEL_74;
        }

        v125 = vmulq_f32(v201, v201);
        *&v126 = v125.f32[2] + vaddv_f32(*v125.f32);
        *v125.f32 = vrsqrte_f32(v126);
        *v125.f32 = vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32)));
        v127 = vmulq_n_f32(v201, vmul_f32(*v125.f32, vrsqrts_f32(v126, vmul_f32(*v125.f32, *v125.f32))).f32[0]);
        v128 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v127, 2), xmmword_1AFE20160, *v127.f32, 1), xmmword_1AFE20150, v127.f32[0]);
        v129 = v203;
        v129.f32[0] = (v115 * v124.n128_f32[0]) * a6;
        v130 = vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v200, 2), xmmword_1AFE20160, *v200.f32, 1), xmmword_1AFE20150, v200.f32[0]), vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v201, v199, 2), v202, *v199.f32, 1), v203, v199.f32[0]));
        if (v113 <= 4)
        {
          break;
        }

        if (v113 <= 6)
        {
          if (v113 == 5)
          {
            v146 = vsub_f32(*v172.i8, *v130.f32);
            v147 = sqrtf(((v19 - v130.f32[2]) * (v19 - v130.f32[2])) + vaddv_f32(vmul_f32(v146, v146)));
            *v104.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v146), v147), v171.n128_f32[0]), v129.f32[0]);
            v105 = (((0.0 - (v19 - v130.f32[2])) * v147) * v171.n128_f32[0]) * v129.f32[0];
          }

          else
          {
            v151 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL), v158), v128, v159);
            v152 = vsub_f32(*v172.i8, *v130.f32);
            v153 = (1.0 / sqrtf(((v19 - v130.f32[2]) * (v19 - v130.f32[2])) + vaddv_f32(vmul_f32(v152, v152)))) * v129.f32[0];
            v152.i32[0] = vextq_s8(v151, v151, 8uLL).u32[0];
            v152.i32[1] = v151.i32[0];
            *v104.f32 = vmul_n_f32(v152, v153);
            v105 = vmuls_lane_f32(v153, *v151.i8, 1);
          }

          goto LABEL_73;
        }

        v142 = v108 * a6;
        if (v113 != 7)
        {
          if (v113 != 8)
          {
            if (v113 != 9)
            {
              goto LABEL_127;
            }

            v38 = v206;
            if (*(&v226 + 1) != 1)
            {
              v124.n128_u64[0] = vadd_f32(vmul_f32(*v205.f32, 0x3F0000003F000000), 0x3F0000003F000000);
              v124.n128_f32[2] = vmuls_lane_f32(0.5, v205, 2) + 0.5;
              v205 = v129;
              *v150.i64 = (*(&v226 + 1))(&v222, v124);
              v38 = v206;
              v104.i64[0] = vmulq_n_f32(v150, v205.f32[0]).u64[0];
              v104.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v205.f32[0], v150, 2));
            }

            goto LABEL_75;
          }

          v143 = v114 * a6;
          if (v114 > 2.0)
          {
            v143 = v160;
          }

          if (v142 > 2.0)
          {
            v142 = 2.0;
          }

          v134 = -(v124.n128_f32[0] * v165) * (v142 + (v165 * v143));
          *v104.f32 = vmul_n_f32(v162, v134);
          v132 = v161;
LABEL_107:
          v105 = v132 * v134;
          goto LABEL_73;
        }

        v102 = (v142 * -2.0) * sqrtf(fabsf(v114));
        v103 = v163 * v102;
        *v104.f32 = vsub_f32(vmul_n_f32(*v167.f32, v102), vmul_n_f32(vsub_f32(*v172.i8, *v130.f32), v129.f32[0]));
        v105 = v103 - ((v19 - v130.f32[2]) * v129.f32[0]);
LABEL_73:
        v104.i64[1] = LODWORD(v105);
LABEL_74:
        v38 = v206;
LABEL_75:
        v106 = vaddq_f32(v204, v104);
        v106.i32[3] = 0;
        v204 = v106;
LABEL_76:
        v33 += 144;
        v36 += 64;
        v37 += 4;
        if (!--v27)
        {
          v206 = v38;
          goto LABEL_122;
        }
      }

      if (v113 > 2)
      {
        v144 = 0.0;
        if (*&v116 >= 0.0)
        {
          v144 = *&v116;
        }

        v207 = 0uLL;
        v205 = v129;
        v145 = srdnoise3(&v207, *v172.i32 * ((1.25 / (v144 + 0.083333)) + -1.0), *&v166 * ((1.25 / (v144 + 0.083333)) + -1.0), v19 * ((1.25 / (v144 + 0.083333)) + -1.0), *(&v116 + 1) * v169);
        *v104.f32 = vmul_n_f32(vmul_n_f32(*v207.f32, v145), v205.f32[0]);
        v105 = v205.f32[0] * vmuls_lane_f32(v145, v207, 2);
        if (v113 == 4)
        {
          *v104.f32 = vmul_n_f32(*v104.f32, v164.n128_f32[0]);
          v105 = v164.n128_f32[0] * v105;
        }

        goto LABEL_73;
      }

      v131 = v129.f32[0] * v171.n128_f32[0];
      if (!v113)
      {
        *v104.f32 = vmul_n_f32(*v128.f32, v131);
        v105 = vmuls_lane_f32(v131, v128, 2);
        goto LABEL_73;
      }

      if (v113 != 1)
      {
        if (v113 != 2)
        {
          goto LABEL_127;
        }

        v148.i32[3] = v172.i32[3];
        *v148.i8 = vsub_f32(*v172.i8, *v130.f32);
        *&v148.i32[2] = v19 - v130.f32[2];
        v149 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v148, v148), v148, 0xCuLL), vnegq_f32(v128)), v148, vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL));
        v148.i32[0] = vextq_s8(v149, v149, 8uLL).u32[0];
        v148.i32[1] = v149.i32[0];
        *v104.f32 = vmul_n_f32(*v148.i8, v129.f32[0]);
        v105 = vmuls_lane_f32(v129.f32[0], *v149.i8, 1);
        goto LABEL_73;
      }

      v132 = v19 - v130.f32[2];
      v133 = vsub_f32(*v172.i8, *v130.f32);
      v134 = v131 / fmaxf(sqrtf((v132 * v132) + vaddv_f32(vmul_f32(v133, v133))), 0.00001);
      *v104.f32 = vmul_n_f32(v133, v134);
      goto LABEL_107;
    }

    v39 = v200.i64[0];
    v40 = v203.i64[0];
    if (v203.i32[0] == v200.i32[0])
    {
      goto LABEL_122;
    }

    v41 = v34 + 16;
    v42 = v35 + 32;
    v43 = v180;
    v168 = v41;
    v185.i64[0] = (v35 + 32);
    while (2)
    {
      v170 = v43;
      v44 = &v33[144 * v40];
      v45 = &v41[32 * v40];
      v46 = &v42[64 * v40++];
      while ((*(v44 + 32) & a1) == 0 || *(v44 + 8) != 1)
      {
        if (v39 == v40)
        {
          goto LABEL_70;
        }

LABEL_18:
        ++v40;
        v44 += 144;
        v45 += 32;
        v46 += 64;
      }

      v263.columns[0] = *(v46 - 32);
      v263.columns[2] = *v46;
      v263.columns[3] = *(v46 + 16);
      v201 = *(v46 - 16);
      v263.columns[1] = v201;
      v202 = v263.columns[0];
      v199 = v263.columns[2];
      v186 = v263.columns[3];
      v205.i64[0] = v44;
      v264 = __invert_f4(v263);
      v47 = v205.i64[0];
      v48 = v264.columns[0];
      v49 = *(v205.i64[0] + 96);
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      *&v226 = 0;
      *(&v226 + 1) = 1;
      v227 = 0uLL;
      if (*v205.i64[0] != 9)
      {
        v60 = vmulq_f32(v199, v199);
        *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
        *v60.f32 = vrsqrte_f32(v61);
        *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
        v62 = vmulq_n_f32(v199, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
        v157 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v62, 2), xmmword_1AFE20160, *v62.f32, 1), xmmword_1AFE20150, v62.f32[0]);
        v186 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v186, 2), xmmword_1AFE20160, *v186.f32, 1), xmmword_1AFE20150, v186.f32[0]);
        v202 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v199, v49, 2), v201, *v49.f32, 1), v202, v49.f32[0]);
        goto LABEL_35;
      }

      v178 = v49;
      v179 = v264.columns[2];
      v180 = v264.columns[1];
      v184 = v264.columns[0];
      v203 = v264.columns[3];
      sub_1AF8E60EC(*(v205.i64[0] + 132), 1, v239);
      if (!v242)
      {
        goto LABEL_25;
      }

      v247[0] = v239[0];
      v247[1] = v239[1];
      v247[2] = v240;
      v248 = v241;
      v249 = v242;
      v207 = v240;
      v208 = v241;
      if (sub_1AF8FE1C4(&v207) == 7)
      {
        v63 = vmulq_f32(v199, v199);
        *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
        *v63.f32 = vrsqrte_f32(v64);
        *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
        v65 = vmulq_n_f32(v199, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
        v157 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(xmmword_1AFE20180, v65, 2), xmmword_1AFE20160, *v65.f32, 1), xmmword_1AFE20150, v65.f32[0]);
        v186 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, xmmword_1AFE20180, v186, 2), xmmword_1AFE20160, *v186.f32, 1), xmmword_1AFE20150, v186.f32[0]);
        v202 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v199, v178, 2), v201, *v178.f32, 1), v202, v178.f32[0]);
        sub_1AF478ACC(v247, 2, 1, v243);
        v224 = v243[2];
        v225 = v243[3];
        v226 = v243[4];
        v227 = v243[5];
        v222 = v243[0];
        v223 = v243[1];
        v47 = v205.i64[0];
        v264.columns[3] = v203;
        v48 = v184;
        v264.columns[2] = v179;
        v264.columns[1] = v180;
LABEL_35:
        v66 = *(v47 + 16);
        v259 = *(v47 + 80);
        v260 = *(v47 + 96);
        v261[0] = *(v47 + 112);
        *(v261 + 12) = *(v47 + 124);
        v255 = *(v47 + 16);
        v256 = *(v47 + 32);
        v257 = *(v47 + 48);
        v258 = *(v47 + 64);
        v254 = *v47;
        v67 = v254;
        v68 = *(&v254 + 3);
        v69 = *(&v255 + 1);
        v70 = *&v261[0];
        v71 = *(&v254 + 3);
        if (*(&v255 + 1) > 0.0)
        {
          v73 = *(v45 - 2);
          v72 = *(v45 - 1);
          v74 = *v45 ^ v73;
          v75 = *(v45 + 1) ^ v72;
          *(v45 - 2) = v75 ^ v73;
          *(v45 - 1) = v74 ^ v72;
          *v45 = v74 ^ (v72 << 17);
          *(v45 + 1) = __ROR8__(v75, 19);
          v76 = vcvts_n_f32_u64((9 * ((((5 * v72) >> 32) >> 25) | (640 * v72))) & 0xFFFFFFLL, 0x18uLL);
          v71 = v68 + (v69 * ((v76 + v76) + -1.0));
        }

        v203 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v264.columns[3], v264.columns[2], v187), v264.columns[1], v188), v48, v189);
        v77 = v203;
        v77.i32[3] = v170.i32[3];
        v180 = v77;
        sub_1AFB4EB3C(&v254, v77);
        v80 = 0uLL;
        if ((v71 * v78.n128_f32[0]) != 0.0)
        {
          v79.f32[0] = (v71 * v78.n128_f32[0]) * a6;
          v81 = vaddq_f32(v186, v202);
          if (v67 > 4)
          {
            if (v67 <= 6)
            {
              if (v67 == 5)
              {
                v92 = vsub_f32(*v172.i8, *v81.f32);
                v81.f32[0] = sqrtf(((v19 - v81.f32[2]) * (v19 - v81.f32[2])) + vaddv_f32(vmul_f32(v92, v92)));
                *v80.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v92), v81.f32[0]), v171.n128_f32[0]), v79.f32[0]);
                v85 = (((0.0 - (v19 - v81.f32[2])) * v81.f32[0]) * v171.n128_f32[0]) * v79.f32[0];
              }

              else
              {
                v98 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL), v158), v157, v159);
                v99 = vsub_f32(*v172.i8, *v81.f32);
                v100 = (1.0 / sqrtf(((v19 - v81.f32[2]) * (v19 - v81.f32[2])) + vaddv_f32(vmul_f32(v99, v99)))) * v79.f32[0];
                v99.i32[0] = vextq_s8(v98, v98, 8uLL).u32[0];
                v99.i32[1] = v98.i32[0];
                *v80.f32 = vmul_n_f32(v99, v100);
                v85 = vmuls_lane_f32(v100, *v98.i8, 1);
              }
            }

            else
            {
              v86 = v66 * a6;
              switch(v67)
              {
                case 7:
                  v93 = (v86 * -2.0) * sqrtf(fabsf(v68));
                  v94 = v163 * v93;
                  *v80.f32 = vsub_f32(vmul_n_f32(*v167.f32, v93), vmul_n_f32(vsub_f32(*v172.i8, *v81.f32), v79.f32[0]));
                  v85 = v94 - ((v19 - v81.f32[2]) * v79.f32[0]);
                  break;
                case 8:
                  v87 = v68 * a6;
                  if (v68 > 2.0)
                  {
                    v87 = v160;
                  }

                  if (v86 <= 2.0)
                  {
                    v88 = v66 * a6;
                  }

                  else
                  {
                    v88 = 2.0;
                  }

                  v89 = -(v78.n128_f32[0] * v165) * (v88 + (v165 * v87));
                  *v80.f32 = vmul_n_f32(v162, v89);
                  v85 = v161 * v89;
                  break;
                case 9:
                  v43 = v180;
                  v41 = v168;
                  if (*(&v226 + 1) != 1)
                  {
                    v78.n128_u64[0] = vadd_f32(vmul_f32(*v203.f32, 0x3F0000003F000000), 0x3F0000003F000000);
                    v78.n128_f32[2] = vmuls_lane_f32(0.5, v203, 2) + 0.5;
                    v205 = v79;
                    *v97.i64 = (*(&v226 + 1))(&v222, v78);
                    v43 = v180;
                    v80.i64[0] = vmulq_n_f32(v97, v205.f32[0]).u64[0];
                    v80.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v205.f32[0], v97, 2));
                  }

                  goto LABEL_68;
                default:
LABEL_127:
                  result = sub_1AFDFE518();
                  __break(1u);
                  return result;
              }
            }
          }

          else if (v67 > 2)
          {
            v90 = 0.0;
            if (*&v70 >= 0.0)
            {
              v90 = *&v70;
            }

            v207 = 0uLL;
            v205 = v79;
            v91 = srdnoise3(&v207, *v172.i32 * ((1.25 / (v90 + 0.083333)) + -1.0), *&v166 * ((1.25 / (v90 + 0.083333)) + -1.0), v19 * ((1.25 / (v90 + 0.083333)) + -1.0), *(&v70 + 1) * v169);
            *v80.f32 = vmul_n_f32(vmul_n_f32(*v207.f32, v91), v205.f32[0]);
            v85 = v205.f32[0] * vmuls_lane_f32(v91, v207, 2);
            if (v67 == 4)
            {
              *v80.f32 = vmul_n_f32(*v80.f32, v164.n128_f32[0]);
              v85 = v164.n128_f32[0] * v85;
            }
          }

          else
          {
            v82 = v79.f32[0] * v171.n128_f32[0];
            if (v67)
            {
              if (v67 == 1)
              {
                v83 = vsub_f32(*v172.i8, *v81.f32);
                v84 = v82 / fmaxf(sqrtf(((v19 - v81.f32[2]) * (v19 - v81.f32[2])) + vaddv_f32(vmul_f32(v83, v83))), 0.00001);
                *v80.f32 = vmul_n_f32(v83, v84);
                v85 = (v19 - v81.f32[2]) * v84;
              }

              else
              {
                if (v67 != 2)
                {
                  goto LABEL_127;
                }

                v95.i32[3] = v172.i32[3];
                *v95.i8 = vsub_f32(*v172.i8, *v81.f32);
                *&v95.i32[2] = v19 - v81.f32[2];
                v96 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), vnegq_f32(v157)), v95, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL));
                v95.i32[0] = vextq_s8(v96, v96, 8uLL).u32[0];
                v95.i32[1] = v96.i32[0];
                *v80.f32 = vmul_n_f32(*v95.i8, v79.f32[0]);
                v85 = vmuls_lane_f32(v79.f32[0], *v96.i8, 1);
              }
            }

            else
            {
              *v80.f32 = vmul_n_f32(*v157.f32, v82);
              v85 = vmuls_lane_f32(v82, v157, 2);
            }
          }

          v80.i64[1] = LODWORD(v85);
        }

        v43 = v180;
        v41 = v168;
LABEL_68:
        v101 = vaddq_f32(v204, v80);
        v101.i32[3] = 0;
        v204 = v101;
        if (v39 == v40)
        {
          goto LABEL_122;
        }

        continue;
      }

      break;
    }

    sub_1AFCEFD2C(v239, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
LABEL_25:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v50 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v201.i64[0] = v46;
    v202.i64[0] = v45;
    v203.i64[0] = v40;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    v51 = qword_1ED73B890;
    sub_1AF6EFB60(0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1AFE431C0;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = sub_1AF0D544C();
    v53 = v198;
    *(v52 + 32) = 0xD00000000000001ELL;
    *(v52 + 40) = v53;
    sub_1AFDFC4C8(v50, &dword_1AF0CE000, v51, "%{public}s", 10, 2, v52);

    v54 = v50;
    v55 = v192;
    sub_1AFDFC288();
    v56 = v194;
    v57 = v195[12];
    v58 = v195[16];
    v59 = &v194[v195[20]];
    (*v190)(v194, v55, v193);
    *(v56 + v57) = v54;
    *(v56 + v58) = 0;
    *v59 = 0xD00000000000001ELL;
    *(v59 + 1) = v53;
    sub_1AFDFC608();

    sub_1AFCF466C(v56, sub_1AF0D4E74);
    v39 = v200.i64[0];
    v40 = v203.i64[0];
    a1 = v191;
    v42 = v185.i64[0];
    v45 = v202.i64[0];
    v44 = v205.i64[0];
    v46 = v201.i64[0];
    if (v200.i64[0] != v203.i64[0])
    {
      goto LABEL_18;
    }

LABEL_70:
    v180 = v170;
LABEL_122:
    v211 = v177;
    v212 = v250;
    v213 = v251;
    v18 = v181;
    sub_1AF630994(v183, &v211, v233);
    v154 = v196;
    sub_1AF62D29C(v196);
    v15 = v174;
    ecs_stack_allocator_pop_snapshot(v174);
    v16 = v173;
    if (v173)
    {
      os_unfair_lock_unlock(*(v154 + 43));
      os_unfair_lock_unlock(*(v154 + 47));
    }

    v17 = v182 + 1;
    if (v182 + 1 != v175)
    {
      continue;
    }

    break;
  }

  sub_1AFCF466C(v209, sub_1AFB53AE0);
  v156 = MEMORY[0x1E69E6720];
  sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  return sub_1AFCEFD2C(v229, &qword_1ED725EA0, &type metadata for QueryResult, v156, sub_1AFCF4720);
}

id _s3VFX8VFXSceneC24cloneAndSetupReplication10modelWorldAA26VFXBidirectionalRemapTableCSo8VFXWorldC_tFZ_0(void *a1)
{
  v43 = [objc_allocWithZone(type metadata accessor for VFXBidirectionalRemapTable()) init];
  v2 = [a1 scene];
  v38 = [a1 worldRef];
  v4 = sub_1AF1CF878(v38, v3);
  v41 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v39 = v4;
  v5 = *&v4[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2Presentation) = 1;
  v6 = **(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v42 = v2;
  v40 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v7 = *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RemapContext();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = sub_1AF42B4D0(v8);

  v11 = sub_1AF42B590(v8);
  *(v10 + 24) = v9;
  *(v10 + 32) = v11;

  *(v10 + 16) = 0;
  v12 = (v7 + OBJC_IVAR____TtC3VFX13EntityManager_lock);
  os_unfair_lock_lock(*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v13 = (v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v14 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v14)
  {
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v17 = *v13 + v15;
      if ((*(v17 + 6) & 0x80000000) == 0)
      {
        sub_1AF65B02C(i | (*(v17 + 8) << 32), v10);
      }

      v15 += 12;
    }
  }

  os_unfair_lock_unlock(v12[3]);
  v46 = 1;
  sub_1AF630BA4(v10, v7, 0x100000000uLL, 0, v6);

  sub_1AF6C8EC8(v18);

  v37 = [a1 worldRef];
  v19 = *&v39[v41];
  v20 = type metadata accessor for DefaultRemapper();
  v21 = objc_allocWithZone(v20);
  swift_weakInit();
  swift_weakAssign();
  v21[OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed] = 0;
  *&v21[OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager] = v19;

  swift_unownedRetain();
  v45.receiver = v21;
  v45.super_class = v20;
  v22 = objc_msgSendSuper2(&v45, sel_init);
  v23 = *&v42[v40];
  v24 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
  v25 = *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v25 || (type metadata accessor for ReplicationStream(), v26 = swift_allocObject(), *(v26 + 32) = 0, *(v26 + 16) = MEMORY[0x1E69E7CC0], *(v26 + 24) = 0, swift_weakInit(), *(v26 + 56) = 0, swift_unknownObjectWeakInit(), *(v26 + 72) = 0, swift_unknownObjectWeakInit(), *(v26 + 80) = 0, swift_unknownObjectWeakInit(), *(v23 + v24) = v26, , (v25 = *(v23 + v24)) != 0))
  {
    swift_weakAssign();
    *(v25 + 24) = v22;
    *(v25 + 32) = &off_1F2535DF0;

    swift_unknownObjectRelease();
    *(v25 + 80) = 1;
    *(v25 + 56) = 0;
    swift_unknownObjectWeakAssign();
    *(v25 + 72) = &off_1F255E0C0;
    swift_unknownObjectWeakAssign();

    *(v25 + 81) = 1;
    v27 = v37;
    swift_unknownObjectWeakAssign();
  }

  else
  {

    v27 = v37;
  }

  v28 = *&v42[v40];
  v29 = objc_allocWithZone(v20);
  swift_weakInit();
  swift_weakAssign();
  v29[OBJC_IVAR____TtC3VFX15DefaultRemapper_isReversed] = 1;
  *&v29[OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager] = v28;
  swift_unownedRetain();
  v44.receiver = v29;
  v44.super_class = v20;
  v30 = objc_msgSendSuper2(&v44, sel_init);
  v31 = *&v39[v41];
  v32 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
  if (!*(v31 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    type metadata accessor for ReplicationStream();
    v34 = swift_allocObject();
    *(v34 + 32) = 0;
    *(v34 + 16) = MEMORY[0x1E69E7CC0];
    *(v34 + 24) = 0;
    swift_weakInit();
    *(v34 + 56) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 80) = 0;
    swift_unknownObjectWeakInit();

    *(v31 + v32) = v34;

    v33 = *(v31 + v32);
    if (v33)
    {
      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v31 + v32);
  if (!v33)
  {
    goto LABEL_13;
  }

LABEL_11:
  swift_weakAssign();
  *(v33 + 24) = v30;
  *(v33 + 32) = &off_1F2535DF0;

  swift_unknownObjectRelease();
  *(v33 + 80) = 0;
  *(v33 + 56) = 0;
  swift_unknownObjectWeakAssign();
  *(v33 + 72) = 0;
  swift_unknownObjectWeakAssign();
  *(v33 + 81) = 1;
  swift_unknownObjectWeakAssign();

LABEL_14:
  v35 = *&v39[v41];

  swift_unknownObjectRelease();
  *(v35 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;

  return v43;
}

uint64_t sub_1AFCF1B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 32);
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_14;
  }

  v15 = v13;
  swift_unownedRetainStrong();
  sub_1AF67E3AC(v12, v15, *(a2 + 24), v40);

  v16 = v41;
  if (!v41)
  {
    sub_1AFCF466C(v40, sub_1AF80E170);
LABEL_14:
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_15;
  }

  v17 = v42;
  v18 = sub_1AF441150(v40, v41);
  *(&v47 + 1) = v16;
  v48 = *(v17 + 8);
  v19 = sub_1AF585714(&v46);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
  if (!*(&v47 + 1))
  {
LABEL_15:
    sub_1AFCF466C(&v46, sub_1AF645A60);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_16;
  }

  sub_1AF4498F4(0, &qword_1ED7270D0, &protocol descriptor for Component, 1);
  sub_1AF4498F4(0, &unk_1ED7259B0, &protocol descriptor for ComponentMeta, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_16;
  }

  if (!*(&v44 + 1))
  {
LABEL_16:
    sub_1AFCF466C(&v43, sub_1AFCF4480);
    return 0;
  }

  sub_1AF0FBA54(&v43, &v46);
  v20 = *(&v47 + 1);
  v21 = v48;
  sub_1AF441150(&v46, *(&v47 + 1));
  v22 = (*(*(v21 + 8) + 40))(a3, a4, a5, a6, v20);
  if (!v22)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
    return 0;
  }

  v23 = v22;
  v24 = *(a2 + 24);
  v25 = *(a2 + 28);
  v26 = *(a2 + 16);
  swift_unownedRetainStrong();

  if (*(v23 + 40) == &type metadata for Entity)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      if (*(v23 + 80))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

    v32 = [v31 entityObject];
    if (!v32)
    {
      if (*(v23 + 80))
      {
        v35 = *(v23 + 88);
        ObjectType = swift_getObjectType();
        *(&v44 + 1) = &type metadata for Entity;
        *&v43 = 0xFFFFFFFFLL;
LABEL_31:
        v37 = *(v35 + 16);
        swift_unknownObjectRetain();
        v37(v24 | (v25 << 32), v26, &v43, ObjectType, v35);

        swift_unknownObjectRelease();
        goto LABEL_32;
      }

LABEL_34:

      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v33 = v32;
    v34 = *&v32[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    if (!swift_weakLoadStrong())
    {
      if (*&v33[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
LABEL_29:

        if (*(v23 + 80))
        {
          v35 = *(v23 + 88);
          ObjectType = swift_getObjectType();
          *(&v44 + 1) = &type metadata for Entity;
          *&v43 = v34;
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v38 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v39 = v38;
        swift_once();
        v38 = v39;
      }

      *&v43 = 0;
      sub_1AF0D4F18(v38, &v43, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager(0);
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }

    goto LABEL_29;
  }

  if (*(v23 + 80))
  {
LABEL_12:
    v27 = *(v23 + 88);
    v28 = swift_getObjectType();
    *(&v44 + 1) = swift_getObjectType();
    *&v43 = a1;
    v29 = *(v27 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29(v24 | (v25 << 32), v26, &v43, v28, v27);

LABEL_32:
    swift_unknownObjectRelease();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
    goto LABEL_33;
  }

LABEL_25:

LABEL_33:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
  return 1;
}

uint64_t sub_1AFCF20C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a1[4];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_13;
  }

  v15 = v13;
  swift_unownedRetainStrong();
  sub_1AF67E3AC(v12, v15, a1[3], &v46);

  v16 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    sub_1AFCF466C(&v46, sub_1AF80E170);
LABEL_13:
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    goto LABEL_14;
  }

  v17 = v48;
  v18 = sub_1AF441150(&v46, *(&v47 + 1));
  *(&v50 + 1) = v16;
  v51 = *(v17 + 8);
  v19 = sub_1AF585714(&v49);
  (*(*(v16 - 8) + 16))(v19, v18, v16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v46);
  if (!*(&v50 + 1))
  {
LABEL_14:
    sub_1AFCF466C(&v49, sub_1AF645A60);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_15;
  }

  sub_1AF4498F4(0, &qword_1ED7270D0, &protocol descriptor for Component, 1);
  sub_1AF4498F4(0, &unk_1ED7259B0, &protocol descriptor for ComponentMeta, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_15;
  }

  if (!*(&v42 + 1))
  {
LABEL_15:
    sub_1AFCF466C(&v41, sub_1AFCF4480);
    return 1;
  }

  sub_1AF0FBA54(&v41, &v49);
  v20 = *(&v50 + 1);
  v21 = v51;
  sub_1AF441150(&v49, *(&v50 + 1));
  v22 = (*(*(v21 + 8) + 40))(a2, a3, a4, a5, v20);
  if (!v22)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
    return 1;
  }

  v23 = v22;
  v26 = a1 + 2;
  v25 = a1[2];
  v24 = v26[1];
  swift_unownedRetainStrong();

  if (*(v23 + 80))
  {
    v27 = *(v23 + 88);
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 8);
    swift_unknownObjectRetain();
    v29(&v46, v24, v25, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v31 = MEMORY[0x1E69E7CA0];
  if (*(v23 + 40) == &type metadata for Entity)
  {
    sub_1AFCF415C(&v46, &v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    if (!*(&v42 + 1))
    {

      sub_1AFCEFD2C(&v41, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
      goto LABEL_22;
    }

    if (swift_dynamicCast())
    {
      v36 = v45;
      sub_1AFCEFD2C(&v46, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
      v46 = 0u;
      v47 = 0u;
      v37 = [a6 assetRegistry];
      v38 = [v37 rootNode];

      v33 = swift_allocObject();
      *(v33 + 16) = v36;
      *(v33 + 24) = &v46;
      v39 = swift_allocObject();
      v32 = sub_1AFCF44EC;
      *(v39 + 16) = sub_1AFCF44EC;
      *(v39 + 24) = v33;
      v43 = sub_1AFBF7FC8;
      v44 = v39;
      *&v41 = MEMORY[0x1E69E9820];
      *(&v41 + 1) = 1107296256;
      *&v42 = sub_1AF92EF7C;
      *(&v42 + 1) = &unk_1F256E130;
      v40 = _Block_copy(&v41);

      [v38 enumerateHierarchyUsingBlock_];

      _Block_release(v40);
      swift_isEscapingClosureAtFileLocation();

      goto LABEL_23;
    }
  }

LABEL_22:
  v32 = 0;
  v33 = 0;
LABEL_23:
  sub_1AFCF415C(&v46, &v41, &qword_1ED726850, v31 + 8);
  v34 = MEMORY[0x1E69E6720];
  sub_1AFCF4720(0, &qword_1ED726850, v31 + 8, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    v35 = v45;
  }

  else
  {
    v35 = 0;
  }

  sub_1AFCEFD2C(&v46, &qword_1ED726850, v31 + 8, v34, sub_1AFCF4720);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v49);
  sub_1AF0FB8EC(v32, v33);
  return v35;
}

uint64_t sub_1AFCF26B8@<X0>(void *a1@<X8>)
{
  sub_1AF4486E4();
  v2 = sub_1AFDFDF28();
  if (v2[2] == 3)
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2;

    v8 = sub_1AF48F460(v3, v4, v5, v6);
    if (v8 == 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v20 = v9;
    v10 = v7[8];
    v11 = v7[9];
    v13 = v7[10];
    v12 = v7[11];
    v14 = v7[12];
    v15 = v7[13];
    v17 = v7[14];
    v16 = v7[15];

    v19 = v20;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v19 = 0;
  }

  *a1 = v19;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v15;
  a1[7] = v17;
  a1[8] = v16;
  return result;
}

unint64_t sub_1AFCF27E4()
{
  result = qword_1EB644020;
  if (!qword_1EB644020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VFXSceneLoadPurpose, &type metadata for VFXSceneLoadPurpose, v0, v1);
    atomic_store(result, &qword_1EB644020);
  }

  return result;
}

uint64_t sub_1AFCF33B0()
{
  v104 = sub_1AFDFCA88();
  v1 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1AFDFCAC8();
  v3 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (!v5)
  {
    goto LABEL_42;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_42;
  }

  if (!*(v5 + 24))
  {

LABEL_42:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v74 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v84 = v74;
      swift_once();
      v74 = v84;
    }

    v133[0] = 0;
    return sub_1AF0D4F18(v74, v133, 0xD000000000000029, 0x80000001AFF4E950);
  }

  v86 = Strong;

  swift_unknownObjectRetain();
  v7 = sub_1AF9A30B4();
  v134 = &type metadata for Entity;
  v135 = &off_1F2535EA8;
  v133[0] = v7;
  v8 = sub_1AF441150(v133, &type metadata for Entity);
  *(&v120[1] + 1) = &type metadata for Entity;
  *&v120[2] = &off_1F2535EA8;
  v9 = sub_1AF585714(v120);
  *v9 = sub_1AF6C97E0(*v8);
  swift_unknownObjectRelease();
  sub_1AF4498F4(0, &qword_1ED722510, &protocol descriptor for ReplicationRemappable, 1);
  swift_dynamicCast();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v133);
  v100 = v117[0];
  v10 = DWORD1(v117[0]);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v145 = qword_1ED73B840;
  v146 = 0;
  v147 = 2;
  v148 = 0;
  v149 = 2;
  v150 = 0;
  sub_1AF705294(2, v118);
  v129[0] = v118[0];
  v129[1] = v118[1];
  v130 = v119;
  sub_1AF6B06C0(v86, v129, 0x200000000, v120);
  v91 = *&v120[0];
  if (!*&v120[0])
  {

    v76 = &unk_1EB644030;
    v77 = &off_1F256EF88;
    v78 = type metadata accessor for AudioPlayerComponent;
    v79 = sub_1AFCF42B0;
    v80 = v118;
LABEL_50:
    sub_1AFCEFD2C(v80, v76, v78, v77, v79);
  }

  v11 = *(&v121 + 1);
  v89 = *(&v120[2] + 1);
  v96 = *(&v122 + 1);
  v90 = v122;
  v124 = *(v120 + 8);
  v125 = *(&v120[1] + 8);
  v88 = v123;
  if (v123 <= 0)
  {
    sub_1AFCF415C(v120, v133, &qword_1ED725EA0, &type metadata for QueryResult);

    sub_1AFCEFD2C(v118, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);
    v83 = MEMORY[0x1E69E6720];
    sub_1AFCEFD2C(v120, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
    v80 = v120;
    v76 = &qword_1ED725EA0;
    v78 = &type metadata for QueryResult;
    v77 = v83;
    v79 = sub_1AFCF4720;
    goto LABEL_50;
  }

  if (!*(&v121 + 1))
  {

    sub_1AFCEFD2C(v118, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);

    v82 = MEMORY[0x1E69E6720];
    return sub_1AFCEFD2C(v120, &qword_1ED725EA0, &type metadata for QueryResult, v82, sub_1AFCF4720);
  }

  v85[1] = v5;
  v95 = v96[4];
  v94 = *(v90 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v117[2] = v120[2];
  v117[3] = v121;
  v117[4] = v122;
  v117[5] = v123;
  v117[0] = v120[0];
  v117[1] = v120[1];
  sub_1AF5DD298(v117, v133);
  v12 = 0;
  v13 = 0;
  v98 = (v1 + 8);
  v99 = &v113;
  v97 = (v3 + 8);
  v14 = v100;
  v87 = v11;
  v105 = v10;
  while (1)
  {
    v109 = v13;
    v93 = v12;
    v15 = (v89 + 48 * v12);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = *(v15 + 2);
    v108 = *(v15 + 3);
    v21 = *(v15 + 4);
    v20 = *(v15 + 5);
    if (v94)
    {
      v22 = *(v20 + 376);

      os_unfair_lock_lock(v22);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v95);
    v23 = v96;
    v24 = *(v96 + 4);
    v131[0] = *(v96 + 3);
    v131[1] = v24;
    v132 = v96[10];
    v25 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    v23[6] = ecs_stack_allocator_allocate(v96[4], 48 * v25, 8);
    v23[7] = v25;
    v23[9] = 0;
    v23[10] = 0;
    v23[8] = 0;
    LOBYTE(v111) = 1;
    v133[0] = v90;
    v133[1] = v20;
    v133[2] = v23;
    v134 = v18;
    v135 = (v17 - v16 + v18);
    v136 = v88;
    v137 = v16;
    v138 = v17;
    v139 = 0;
    v140 = 0;
    v141 = 1;
    v142 = v19;
    v26 = v109;
    v143 = v108;
    v144 = v21;
    v27 = sub_1AF705B18(v20, v133);
    v28 = v142;
    v29 = v20;
    v108 = v20;
    v92 = v26;
    if (!v142)
    {
      break;
    }

    v30 = v144;
    v31 = v105;
    v32 = &unk_1ED72C000;
    if (v144)
    {
      v109 = *(*(type metadata accessor for AudioPlayerComponent(0) - 8) + 72);
      do
      {
        v34 = *v28++;
        v33 = v34;

        if (*(v29 + 184))
        {
          goto LABEL_53;
        }

        v36 = *(*(v29 + 168) + 4 * v33);
        v37 = *(*(v35 + v32[284]) + 12 * v36 + 8);

        if (v36 == v14 && v37 == v31)
        {
          v39 = *v27;
          if (*v27)
          {
            v40 = *&v39[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
            sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
            v41 = v40;
            v107 = sub_1AFDFDB08();
            v42 = swift_allocObject();
            *(v42 + 16) = v41;
            v115 = sub_1AFCF49A4;
            v116 = v42;
            v111 = MEMORY[0x1E69E9820];
            v112 = 1107296256;
            v113 = sub_1AFCDA044;
            v114 = &unk_1F256DF78;
            v43 = _Block_copy(&v111);
            v106 = v41;
            v44 = v101;
            sub_1AFDFCAA8();
            v110 = MEMORY[0x1E69E7CC0];
            sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
            sub_1AF6CB2E0(0);
            sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
            v45 = v103;
            v46 = v104;
            v32 = &unk_1ED72C000;
            sub_1AFDFE058();
            v47 = v107;
            MEMORY[0x1B2719530](0, v44, v45, v43);
            v48 = v43;
            v29 = v108;
            _Block_release(v48);

            v49 = v46;
            v31 = v105;
            (*v98)(v45, v49);
            v50 = v44;
            v14 = v100;
            (*v97)(v50, v102);

            v39 = *v27;
          }

          *v27 = 0;
        }

        v27 = &v109[v27];
      }

      while (--v30);
    }

LABEL_28:
    v13 = v92;
    v126 = v91;
    v127 = v124;
    v128 = v125;
    sub_1AF630994(v96, &v126, v131);
    sub_1AF62D29C(v29);
    ecs_stack_allocator_pop_snapshot(v95);
    if (v94)
    {
      os_unfair_lock_unlock(*(v29 + 344));
      os_unfair_lock_unlock(*(v29 + 376));
    }

    v12 = v93 + 1;
    if (v93 + 1 == v87)
    {
      v81 = MEMORY[0x1E69E6720];
      sub_1AFCEFD2C(v120, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);

      sub_1AFCEFD2C(v118, &unk_1EB644030, type metadata accessor for AudioPlayerComponent, &off_1F256EF88, sub_1AFCF42B0);

      v82 = v81;
      return sub_1AFCEFD2C(v120, &qword_1ED725EA0, &type metadata for QueryResult, v82, sub_1AFCF4720);
    }
  }

  v51 = v137;
  v52 = v138;
  v53 = v105;
  v54 = &unk_1ED72C000;
  if (v137 == v138)
  {
    goto LABEL_28;
  }

  v55 = type metadata accessor for AudioPlayerComponent(0);
  v56 = &v27[*(*(v55 - 8) + 72) * v51];
  v57 = *(*(v55 - 8) + 72);
  v106 = v57;
  v107 = v52;
  while (1)
  {

    if (*(v29 + 184))
    {
      break;
    }

    v59 = *(*(v29 + 168) + 4 * v51);
    v60 = *(*(v58 + v54[284]) + 12 * v59 + 8);

    if (v59 == v14 && v60 == v53)
    {
      v62 = *v56;
      if (*v56)
      {
        v63 = *&v62[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
        sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
        v64 = v63;
        v65 = sub_1AFDFDB08();
        v66 = swift_allocObject();
        *(v66 + 16) = v64;
        v115 = sub_1AFCF41DC;
        v116 = v66;
        v111 = MEMORY[0x1E69E9820];
        v112 = 1107296256;
        v113 = sub_1AFCDA044;
        v114 = &unk_1F24E6370;
        v67 = _Block_copy(&v111);
        v109 = v64;
        v68 = v101;
        sub_1AFDFCAA8();
        v110 = MEMORY[0x1E69E7CC0];
        sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1AF6CB2E0(0);
        sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
        v69 = v103;
        v70 = v104;
        v54 = &unk_1ED72C000;
        sub_1AFDFE058();
        MEMORY[0x1B2719530](0, v68, v69, v67);
        v71 = v67;
        v52 = v107;
        _Block_release(v71);

        v57 = v106;
        v72 = v70;
        v53 = v105;
        (*v98)(v69, v72);
        v73 = v68;
        v14 = v100;
        (*v97)(v73, v102);

        v62 = *v56;
      }

      *v56 = 0;
    }

    ++v51;
    v56 = &v57[v56];
    v29 = v108;
    if (v52 == v51)
    {
      goto LABEL_28;
    }
  }

LABEL_53:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCF415C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFCF4720(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1AFCF41E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AFCF4228(unsigned __int16 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = (*(v1 + 16))();
  *v3 = 1;
  if (*(v4 + 24) == 1)
  {
    if (*(a1 + 3))
    {
      v7 = 0x1000000;
    }

    else
    {
      v7 = 0;
    }

    *v5 = *a1 | (*(a1 + 2) << 16) | v7;
  }

  return result;
}

void sub_1AFCF42B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for Query1(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AFCF4314(uint64_t a1, __n128 a2)
{
  sub_1AFCF46CC(0, &qword_1EB632BF0, &type metadata for Seed, &off_1F2563E60, type metadata accessor for Query1);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1AFCF43A8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1AFCF43EC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8 = a1;
  v7 = a2;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

void sub_1AFCF4480(uint64_t a1)
{
  if (!qword_1EB63D018)
  {
    sub_1AF4498F4(255, &unk_1ED7259B0, &protocol descriptor for ComponentMeta, 1);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63D018);
    }
  }
}

uint64_t sub_1AFCF44F4(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  result = (*(v1 + 16))();
  *v3 = 1;
  if (*(v4 + 24) == 1)
  {
    sub_1AFCEFD2C(v5, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
    return sub_1AF442324(a1, v5);
  }

  return result;
}

void sub_1AFCF45A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFC260D8(255, a3, a4, a5);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFCF4600(uint64_t a1)
{
  if (!qword_1EB644078)
  {
    sub_1AF4498F4(255, &qword_1EB644070, &protocol descriptor for FileAssetEntityComponent, 1);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644078);
    }
  }
}

uint64_t sub_1AFCF466C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFCF46CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFCF4720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFCF4770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AFCF47D8()
{
  if (!qword_1EB634108)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB634108);
    }
  }
}

uint64_t sub_1AFCF4834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ResizingMode.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 2u) << 8);
}

unint64_t sub_1AFCF4A2C()
{
  result = qword_1EB644090;
  if (!qword_1EB644090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResizingMode, &type metadata for ResizingMode, v0, v1);
    atomic_store(result, &qword_1EB644090);
  }

  return result;
}

void sub_1AFCF4AC8()
{
  if (!qword_1EB6440A0)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6440A0);
    }
  }
}

void sub_1AFCF4B90(uint64_t a1, char a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect);
    v7 = Strong;
    v11 = v6;

    if (v6)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {

        sub_1AFC7C4B8();
        v9 = swift_allocObject();
        *(v9 + 16) = v11;
        *(v9 + 24) = a2;
        v10 = v11;
        sub_1AF66D948(a3, v9);
      }
    }
  }
}

double sub_1AFCF4C94()
{
  MEMORY[0x1B271E060](v0 + 16);

  swift_deallocClassInstance();
  return result;
}

void sub_1AFCF566C(char *a1)
{
  v2 = v1;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      sub_1AFC7C4B8();
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = 0;
      v6 = a1;
      sub_1AF66D948(sub_1AFCF7CF8, v5);
    }
  }

  v7 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect;
  if (*(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect))
  {
    v8 = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene);
  *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene) = v8;
  v10 = v8;

  sub_1AFCF6DBC();
  v11 = *(v2 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v12 = *(v2 + v7);
  if (v12 && (v13 = (v12 + OBJC_IVAR____TtC3VFX9VFXEffect_effectID), (v13[1] & 1) == 0))
  {
    v16 = *v13;
    v17 = v11;
    v15 = v16;
  }

  else
  {
    v14 = v11;
    v15 = sub_1AF80F414(0);
  }

  sub_1AF752E24(v15);

  v18 = *(v2 + v7);
  if (v18)
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = v18;

      sub_1AFC7C4B8();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = 1;
      v23 = v21;
      sub_1AF66D948(sub_1AFCF7CF8, v22);
    }
  }
}

id sub_1AFCF5890(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

void sub_1AFCF5A1C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView;
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView);
  *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
  if (v6)
  {
    v7 = v4 == 0;
    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = -1;
    }

    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = HIDWORD(v5);
    }

    *(v6 + 24) = v8;
    *(v6 + 28) = v9;
  }
}

void sub_1AFCF5C14(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = a1;
  if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
  {
    v3 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
      if (v5)
      {
        v6 = *(v3 + 88);
        v7 = v2;

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v8);
        v12[2] = v5;
        v12[3] = &off_1F2537A78;
        v9 = sub_1AF66DE98(sub_1AF755B70, v12);
        sub_1AF64DF20(v9, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *&v2[v4] = 0;
      }

      else
      {
        v10 = v2;
      }

      v11 = sub_1AF7525A8();
      *&v2[v4] = v11;
      swift_retain_n();

      sub_1AFCF7B3C(v11, v3, &off_1F2537A78);
    }
  }
}

void sub_1AFCF6220(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor;
  *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = a1;
  v22 = v2;
  v4 = [v22 window];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    [v6 begin];
    [v6 setDisableActions_];
    v7 = *&v2[v3];
    v8 = [v5 screen];
    [v8 nativeScale];
    v10 = v9;

    [v22 setContentScaleFactor_];
    [v22 bounds];
    v12 = v11;
    v14 = v13;
    [v22 contentScaleFactor];
    v16 = v12 * v15;
    [v22 contentScaleFactor];
    v18 = v14 * v17;
    v19 = ceil(v16);
    v20 = ceil(v18);
    if (*&v22[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] != v19 || *&v22[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize + 8] != v20)
    {
      sub_1AF753FAC(v19, v20);
    }

    [v6 commit];
  }
}

void sub_1AFCF6524(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v3 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  if (a1 < 1)
  {
    *v3 = 0;
    v3[8] = 1;
    if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
    {
      v4 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
      if (v4)
      {
        v5 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        v11 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        if (v11)
        {
          v12 = *(v4 + 88);
          v13 = v2;

          os_unfair_lock_lock(v12);
          MEMORY[0x1EEE9AC00](v14);
          v19 = v11;
          v20 = &off_1F2537A78;
          v10 = sub_1AF755B40;
          goto LABEL_10;
        }

LABEL_11:
        v16 = v2;

        goto LABEL_12;
      }
    }
  }

  else
  {
    *v3 = a1;
    v3[8] = 0;
    if (*&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer])
    {
      v4 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
      if (v4)
      {
        v5 = &v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        v6 = *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput];
        if (v6)
        {
          v7 = *(v4 + 88);
          v8 = v2;

          os_unfair_lock_lock(v7);
          MEMORY[0x1EEE9AC00](v9);
          v19 = v6;
          v20 = &off_1F2537A78;
          v10 = sub_1AF755B70;
LABEL_10:
          v15 = sub_1AF66DE98(v10, &v18);
          sub_1AF64DF20(v15, *(*(v4 + 96) + 16));
          os_unfair_lock_unlock(*(v4 + 88));

          *v5 = 0;

LABEL_12:
          v17 = sub_1AF7525A8();
          *v5 = v17;
          swift_retain_n();

          sub_1AFCF7B3C(v17, v4, &off_1F2537A78);

          return;
        }

        goto LABEL_11;
      }
    }
  }
}

char *sub_1AFCF6900(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_delegateImpl;
  type metadata accessor for VFXViewLegacy.VFXViewDelagate();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v13 = objc_allocWithZone(type metadata accessor for VFXCoreView());
  *&v5[v12] = sub_1AF753390(0, 0.0, 0.0, 0.0, 0.0);
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene] = 0;
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect] = 0;
  *&v5[OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView] = 0;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for VFXViewLegacy();
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v16 = *&v14[OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView];
  v17 = v14;
  v18 = v16;
  [v17 bounds];
  [v18 setFrame_];

  [v17 addSubview_];
  swift_unknownObjectWeakAssign();
  *(*&v14[v15] + OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8) = &off_1F256E4B0;
  swift_unknownObjectWeakAssign();
  [*&v14[v15] setAutoresizingMask_];

  return v17;
}

char *sub_1AFCF6B7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_delegateImpl;
  type metadata accessor for VFXViewLegacy.VFXViewDelagate();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
  v7 = objc_allocWithZone(type metadata accessor for VFXCoreView());
  *&v2[v6] = sub_1AF753390(0, 0.0, 0.0, 0.0, 0.0);
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene] = 0;
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect] = 0;
  *&v2[OBJC_IVAR____TtC3VFX13VFXViewLegacy_pointOfView] = 0;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for VFXViewLegacy();
  v8 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
    v11 = *&v8[OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView];
    [v9 bounds];
    [v11 setFrame_];

    [v9 addSubview_];
    swift_unknownObjectWeakAssign();
    *(*&v9[v10] + OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8) = &off_1F256E4B0;
    swift_unknownObjectWeakAssign();
    v12 = *&v9[v10];
    v13 = v9;
    [v12 setAutoresizingMask_];
  }

  return v9;
}

void sub_1AFCF6DBC()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene];
  if (v1)
  {
    v2 = v0;
    v3 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
    v4 = OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView;
    swift_weakAssign();
    v5 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];
    if (v5)
    {
      v6 = *&v0[v4];
      swift_retain_n();
      v7 = v1;

      v8 = v6;
      sub_1AF7553D0();
      *&v8[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer] = v5;

      sub_1AF751F94();
    }

    else
    {
      v9 = v1;
    }

    if (*(*&v2[v4] + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
    {

      sub_1AFCD1FAC(v10);
    }

    v11 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11 != 0;
    *(v13 + 32) = v2;
    if (v11)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1AFCF7B14;
      *(v14 + 24) = v13;
      v15 = v2;

      sub_1AF66D814(sub_1AF6FC894, v14);
    }

    else
    {
      v16 = v2;

      sub_1AF66C204(v3, sub_1AFCF7B14, v13);
    }
  }
}

void sub_1AFCF7030(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1AFDFCA88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFCAC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v31 = v10;
    v32 = v6;
    v15 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    v16 = v15 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
    v17 = (v15 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    if (*v17)
    {

      if (a2)
      {
LABEL_8:
        v22 = swift_allocObject();
        *(v22 + 16) = a3;
        *(v22 + 24) = v15;
        v23 = objc_opt_self();

        v24 = a3;
        if ([v23 isMainThread])
        {
          v25 = sub_1AFDFD638();
          MEMORY[0x1EEE9AC00](v25);
          *(&v29 - 2) = v24;
          *(&v29 - 1) = v15;
          sub_1AFCF7640(sub_1AFCF7C84, (&v29 - 4), "VFX/VFXViewLegacy.swift", 23, 2u, 270);
        }

        else
        {
          sub_1AF615168();
          v30 = sub_1AFDFDB08();
          v26 = swift_allocObject();
          *(v26 + 16) = sub_1AFCF7C14;
          *(v26 + 24) = v22;
          aBlock[4] = sub_1AFCF7C1C;
          aBlock[5] = v26;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AFCDA044;
          aBlock[3] = &unk_1F24E6398;
          v27 = _Block_copy(aBlock);

          sub_1AFDFCAA8();
          v33 = MEMORY[0x1E69E7CC0];
          sub_1AFCF7C3C(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          sub_1AF6CB2E0(0);
          sub_1AFCF7C3C(&qword_1ED72F990, sub_1AF6CB2E0, MEMORY[0x1E69E6328]);
          sub_1AFDFE058();
          v28 = v30;
          MEMORY[0x1B2719530](0, v12, v8, v27);
          _Block_release(v27);

          (*(v32 + 8))(v8, v5);
          (*(v31 + 8))(v12, v9);
        }

        return;
      }
    }

    else
    {
      v18 = *(v16 + 88);
      *(v16 + 68) = v18;
      *(v16 + 83) = 0;
      ++*v16;
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;

      *(v16 + 32) = CACurrentMediaTime();
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 40) = 0;
      *(v16 + 64) = 0;
      *(v16 + 72) = 1;
      if (a2)
      {
        goto LABEL_8;
      }
    }

    v19 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
    if (!*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      type metadata accessor for RuntimeThread();
      swift_allocObject();

      v21 = sub_1AF6D1E38(v20, 0, 0);

      *(v15 + v19) = v21;
    }

    goto LABEL_8;
  }
}

uint64_t sub_1AFCF7504(uint64_t a1, uint64_t a2)
{
  sub_1AFDFD638();
  v5[2] = a1;
  v5[3] = a2;
  return sub_1AFCF7640(sub_1AFCF7CDC, v5, "VFX/VFXViewLegacy.swift", 23, 2u, 270);
}

uint64_t sub_1AFCF7580(uint64_t a1)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_weakAssign();
}

uint64_t sub_1AFCF7640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1AFDFD628();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1AFCF7CA0();
    swift_isEscapingClosureAtFileLocation();
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF4EB70);
    v10 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCF77B0(void (*a1)(uint64_t))
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

id sub_1AFCF7A10(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VFXViewLegacy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AFCF7B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(*(a2 + 88));
  v6 = *(a2 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 96) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1AF424C70(0, v6[2] + 1, 1, v6);
    *(a2 + 96) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1AF424C70(v8 > 1, v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a3;
  *(a2 + 96) = v6;
  v11 = *(a2 + 88);

  os_unfair_lock_unlock(v11);
}

double sub_1AFCF7C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AFCF7C3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double sub_1AFCF7D04()
{
  sub_1AF0FBDE0(v0 + 16);

  swift_deallocClassInstance();
  return result;
}

void *sub_1AFCF7D60(void *a1)
{
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD04A54(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  *&v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF69504C(2031, v11, v12))
  {
    *&v21 = v4;
    sub_1AF441150(a1, a1[3]);
    sub_1AF445B90();
    result = sub_1AFDFF3B8();
    if (!v1)
    {
      *&v23 = 0;
      BYTE8(v23) = 1;
      *&v24 = 0x7465737361;
      *(&v24 + 1) = 0xE500000000000000;
      sub_1AFD040A0(&qword_1EB633060, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      sub_1AFDFE768();
      v14 = sub_1AFDFC028();
      v16 = v15;
      (*(v21 + 8))(v6, v3);
      sub_1AF8DA36C(v14, v16);
      return (*(v22 + 8))(v10, v8);
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    result = sub_1AFDFF398();
    if (!v1)
    {
      sub_1AF441150(v27, v27[3]);
      sub_1AF5DE134();
      sub_1AFDFEE88();
      v21 = v24;
      v22 = v23;
      v17 = v25;
      v18 = v26;
      v19 = v27[6];

      v20 = v21;
      *v19 = v22;
      *(v19 + 16) = v20;
      *(v19 + 32) = v17;
      *(v19 + 40) = v18;
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
    }
  }

  return result;
}

char *sub_1AFCF819C(void *a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = &v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_frameTime];
  v7 = MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  *v6 = *MEMORY[0x1E6960C70];
  *(v6 + 1) = *(v7 + 8);
  *(v6 + 2) = v8;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture] = 0;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E6987110]) init];
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session] = v9;
  cacheOut = 0;
  CVMetalTextureCacheCreate(0, 0, a1, 0, &cacheOut);
  v10 = cacheOut;
  *&v3[OBJC_IVAR____TtC3VFX19VideoCaptureSession_metalTextureCache] = cacheOut;
  v80.receiver = v3;
  v80.super_class = type metadata accessor for VideoCaptureSession();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v80, sel_init);
  v78 = OBJC_IVAR____TtC3VFX19VideoCaptureSession_session;
  v79 = v12;
  v13 = *&v12[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session];
  v74 = v12;
  [v13 beginConfiguration];
  v14 = objc_opt_self();
  v73 = *MEMORY[0x1E6987608];
  v77 = [v14 defaultDeviceWithMediaType_];
  v75 = a3;
  v84 = *(a3 + 24);
  v15 = *(&v84 + 1);
  v16 = &unk_1ED731000;
  if (*(&v84 + 1))
  {
    v17 = v84;
    sub_1AFA9C3FC(&v84, v82, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1AFD04A04);
    v18 = sub_1AFCFF70C();
    v19 = v18;
    if (v18 >> 62)
    {
      v20 = sub_1AFDFE108();
      if (v20)
      {
LABEL_4:
        v21 = 0;
        while (1)
        {
          v22 = (v19 & 0xC000000000000001) != 0 ? MEMORY[0x1B2719C70](v21, v19) : *(v19 + 8 * v21 + 32);
          v23 = v22;
          v24 = [v22 uniqueID];
          v25 = sub_1AFDFCEF8();
          v27 = v26;

          if (v25 == v17 && v15 == v27)
          {
            break;
          }

          v29 = sub_1AFDFEE28();

          if (v29)
          {
            goto LABEL_16;
          }

          if (v20 == ++v21)
          {
            goto LABEL_18;
          }
        }

LABEL_16:

        sub_1AFD03C74(&v84, &qword_1ED726CC0, MEMORY[0x1E69E6158]);

        v16 = &unk_1ED731000;
        v30 = off_1ED730000;
        v31 = v23;
        goto LABEL_21;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_4;
      }
    }

LABEL_18:

    sub_1AFD03C74(&v84, &qword_1ED726CC0, MEMORY[0x1E69E6158]);
    v16 = &unk_1ED731000;
  }

  v30 = off_1ED730000;
  if (v77)
  {
    v31 = v77;
LABEL_21:
    v32 = v31;
    v33 = objc_allocWithZone(MEMORY[0x1E69870B0]);
    v82[0] = 0;
    v34 = v32;
    v35 = [v33 initWithDevice:v34 error:v82];
    if (v35)
    {
      v36 = v35;
      v37 = v82[0];

      v38 = *&v79[v78];
      [v38 addInput_];
    }

    else
    {
      v40 = v82[0];
      v41 = sub_1AFDFBF58();

      swift_willThrow();
      v30 = off_1ED730000;

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v42 = sub_1AFDFDA08();
      if (v16[11] != -1)
      {
        v72 = v42;
        swift_once();
        v42 = v72;
      }

      v82[0] = 0;
      sub_1AF0D4F18(v42, v82, 0xD000000000000019, 0x80000001AFF4EF60);
    }

    goto LABEL_34;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v39 = sub_1AFDFDA08();
  if (v16[11] != -1)
  {
    v71 = v39;
    swift_once();
    v39 = v71;
  }

  v82[0] = 0;
  sub_1AF0D4F18(v39, v82, 0xD000000000000019, 0x80000001AFF4EE70);
  v32 = 0;
LABEL_34:
  if (v30[468] != -1)
  {
    swift_once();
  }

  strcpy(v82, "videoDevice ");
  BYTE5(v82[1]) = 0;
  HIWORD(v82[1]) = -5120;
  v81 = v32;
  sub_1AFD03B24(0);
  v43 = v32;
  v44 = sub_1AFDFCF88();
  MEMORY[0x1B2718AE0](v44);

  v46 = v82[0];
  v45 = v82[1];
  v47 = sub_1AFDFDA28();
  if (v16[11] != -1)
  {
    v70 = v47;
    swift_once();
    v47 = v70;
  }

  v82[0] = 0;
  sub_1AF0D4F18(v47, v82, v46, v45);

  v48 = [objc_allocWithZone(MEMORY[0x1E6987178]) init];
  [v48 setAlwaysDiscardsLateVideoFrames_];
  v49 = MEMORY[0x1E69E7CA0];
  sub_1AFD03B8C(0, &qword_1ED722F10, &qword_1ED7232A0, MEMORY[0x1E69E7CA0] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = sub_1AFDFCEF8();
  *(inited + 40) = v51;
  *(inited + 72) = MEMORY[0x1E69E7668];
  *(inited + 48) = 1111970369;
  sub_1AF440858(inited);
  swift_setDeallocating();
  sub_1AFD03BE4(inited + 32, &qword_1ED7232A0, v49 + 8);
  v52 = sub_1AFDFCBE8();

  [v48 setVideoSettings_];

  v53 = a2;
  [v48 setSampleBufferDelegate:v74 queue:a2];
  if ([*&v79[v78] canAddOutput_])
  {
    [*&v79[v78] addOutput_];
    v54 = "mirroring not supported";
    v55 = sub_1AFDFDA28();
    v82[0] = 0;
    v56 = 0xD00000000000001BLL;
  }

  else
  {
    v54 = "failed to create a device";
    v55 = sub_1AFDFDA08();
    v82[0] = 0;
    v56 = 0xD00000000000002ELL;
  }

  sub_1AF0D4F18(v55, v82, v56, v54 | 0x8000000000000000);
  [*&v79[v78] commitConfiguration];
  v57 = [v48 connectionWithMediaType_];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1AFDFDA28();
    v82[0] = 0;
    sub_1AF0D4F18(v59, v82, 0xD00000000000001CLL, 0x80000001AFF4EF00);
    if ([v58 isVideoOrientationSupported])
    {
      [v58 setVideoOrientation_];
    }

    if ([v58 isVideoMirroringSupported])
    {
      strcpy(v82, "mirroring : ");
      BYTE5(v82[1]) = 0;
      HIWORD(v82[1]) = -5120;
      v60 = *(v75 + 2);
      if (*(v75 + 2))
      {
        v61 = 1702195828;
      }

      else
      {
        v61 = 0x65736C6166;
      }

      if (*(v75 + 2))
      {
        v62 = 0xE400000000000000;
      }

      else
      {
        v62 = 0xE500000000000000;
      }

      MEMORY[0x1B2718AE0](v61, v62);
      sub_1AFD03C40(v75);

      v63 = v82[0];
      v64 = v82[1];
      v65 = sub_1AFDFDA28();
      v82[0] = 0;
      sub_1AF0D4F18(v65, v82, v63, v64);
      v53 = a2;

      [v58 setAutomaticallyAdjustsVideoMirroring_];
      [v58 setVideoMirrored_];
    }

    else
    {
      sub_1AFD03C40(v75);
      v67 = sub_1AFDFDA28();
      v82[0] = 0;
      sub_1AF0D4F18(v67, v82, 0xD000000000000017, 0x80000001AFF4EF20);
    }
  }

  else
  {
    sub_1AFD03C40(v75);
    v66 = sub_1AFDFDA08();
    v82[0] = 0;
    sub_1AF0D4F18(v66, v82, 0xD000000000000032, 0x80000001AFF4EEC0);
  }

  [*&v79[v78] startRunning];
  v68 = sub_1AFDFDA28();
  v82[0] = 0;
  sub_1AF0D4F18(v68, v82, 0x6E75527472617473, 0xEC000000676E696ELL);

  swift_unknownObjectRelease();
  return v74;
}

uint64_t sub_1AFCF8D54()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF8E4C(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCF8F30(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFCF9024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFCFF968(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFCF9054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65727574706163;
  v5 = 0xE800000000000000;
  v6 = 0x6465726F7272696DLL;
  v7 = 0xEA00000000007265;
  v8 = 0x696669746E656469;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001AFF22DC0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7461746E6569726FLL;
    v3 = 0xEF65646F4D6E6F69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AFCF9108()
{
  v1 = *v0;
  v2 = 0x65727574706163;
  v3 = 0x6465726F7272696DLL;
  v4 = 0x696669746E656469;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1AFCF91B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFCFF968(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFCF91E0(uint64_t a1)
{
  v2 = sub_1AFD0413C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCF921C(uint64_t a1)
{
  v2 = sub_1AFD0413C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCF9258(void *a1, double a2)
{
  v4 = v2;
  sub_1AFD04A54(0, &unk_1EB6442B0, sub_1AFD0413C, &type metadata for VideoCapture.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0413C();
  sub_1AFDFF3F8();
  LOBYTE(v12) = 0;
  sub_1AFDFE8C8();
  if (!v3)
  {
    LOBYTE(v12) = *(v4 + 1);
    v13 = 1;
    sub_1AF51C608();
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8B8();
    v12 = *(v4 + 24);
    v13 = 4;
    sub_1AFD04A04(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1AFD04190();
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1AFCF94C4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFD016F4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AFCF9524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1AFCFF528(v5, v7) & 1;
}

uint64_t sub_1AFCF9570@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  BYTE6(v11) = 1;
  sub_1AFDFC308();
  v6 = sub_1AFDFC2B8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = BYTE6(v11);
  *a1 = v12;
  *(a1 + 2) = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

void sub_1AFCF9674(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  if (!*v4)
  {
    goto LABEL_8;
  }

  v9 = *(v4 + 8) == (*a3 & 1) && *(v4 + 9) == *(a3 + 1);
  if (!v9 || *(v4 + 10) != (*(a3 + 2) & 1))
  {
    goto LABEL_8;
  }

  v13 = *(v4 + 32);
  v12 = *(v4 + 40);
  if ((*(v4 + 16) != *(a3 + 8) || *(v4 + 24) != *(a3 + 16)) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a3 + 32);
  if (!v12)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v14 || (v13 != *(a3 + 24) || v12 != v14) && (sub_1AFDFEE28() & 1) == 0)
  {
LABEL_8:
    sub_1AFC4AEA8(a3, v15);

    v10 = *(a3 + 16);
    *(v4 + 8) = *a3;
    *(v4 + 24) = v10;
    *(v4 + 40) = *(a3 + 32);
    objc_allocWithZone(type metadata accessor for VideoCaptureSession());
    sub_1AFC4AEA8(a3, v15);
    swift_unknownObjectRetain();
    v11 = sub_1AFCF819C(a1, a2, a3);

    *v4 = v11;
  }
}

double sub_1AFCF97E8@<D0>(_OWORD *a2@<X8>)
{
  sub_1AFCFF604(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

void sub_1AFCF9828(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  v44[0] = *(v3 + 16);
  v44[1] = v7;
  v45 = *(v3 + 48);
  sub_1AF6B06C0(a1, v44, 0x200000000, &v14);
  if (v14)
  {
    v13 = &v13;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v38 = v15;
    v39 = v16;
    v43 = v20;
    v37 = v14;
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = a1;
    v10[3] = a2;
    v11 = a3;
    v12 = a1;
    sub_1AF5D5D48(sub_1AFD03B00, v10);
    sub_1AFD03C74(&v14, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v9 = *(v3 + 72);
  v35[0] = *(v3 + 56);
  v35[1] = v9;
  v36 = *(v3 + 88);
  sub_1AF6B06C0(a1, v35, 0x200000000, &v21);
  if (v21)
  {
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v29 = v22;
    v30 = v23;
    v34 = v27;
    v28 = v21;
    sub_1AFD06CD8(&v28);
    sub_1AFD03C74(&v21, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFCF99F4(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v10 = CFXGPUDeviceGetMTLDevice(*(a5 + 16));
    if (*a2 == 1)
    {
      v11 = *(a7 + OBJC_IVAR____TtC3VFX13EntityManager_updateQueue);
      v12 = *(a2 + 16);
      v14[0] = *a2;
      v14[1] = v12;
      v15 = *(a2 + 32);
      sub_1AFCF9674(v10, v11, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = *a3;
      if (*a3)
      {
        [*&v13[OBJC_IVAR____TtC3VFX19VideoCaptureSession_session] stopRunning];
      }

      swift_unknownObjectRelease();
      *a3 = 0;
    }
  }
}

uint64_t sub_1AFCF9AE8()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED73B840;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  sub_1AF7033B8(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v10 | 4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AF7033CC(1, v12);
  v5 = v12[1];
  *(v0 + 56) = v12[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v13;
  return v0;
}

uint64_t sub_1AFCF9C20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCF9CCC(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCF9D64(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFCF9E0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFCFFB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFCF9E3C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7465737361;
  v4 = 0xE400000000000000;
  v5 = 1702131053;
  if (*v1 != 2)
  {
    v5 = 0x73706F6F6CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 2036427888;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AFCF9EA4()
{
  v1 = 0x7465737361;
  v2 = 1702131053;
  if (*v0 != 2)
  {
    v2 = 0x73706F6F6CLL;
  }

  if (*v0)
  {
    v1 = 2036427888;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFCF9F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFCFFB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFCF9F30(uint64_t a1)
{
  v2 = sub_1AFD040E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCF9F6C(uint64_t a1)
{
  v2 = sub_1AFD040E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCF9FA8(void *a1, double a2)
{
  v4 = v2;
  sub_1AFD04A54(0, &qword_1EB644290, sub_1AFD040E8, &type metadata for MovieFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD040E8();
  sub_1AFDFF3F8();
  v11 = v4[1];
  v13[0] = *v4;
  v13[1] = v11;
  v13[2] = v4[2];
  v14 = 0;
  sub_1AF5DE27C();
  sub_1AFDFE918();
  if (!v3)
  {
    LOBYTE(v13[0]) = 1;
    sub_1AFDFE8C8();
    LOBYTE(v13[0]) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v13[0]) = 3;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1AFCFA198@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFD0209C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = v7[0];
    *(a1 + 32) = *v7;
    *(a1 + 47) = *(&v7[1] + 7);
  }

  return result;
}

void sub_1AFCFA200(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 49) = 257;
}

double sub_1AFCFA220()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFCFA288@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC128();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for MovieRuntime(0);
  *(a1 + v3[5]) = 0;
  *(a1 + v3[6]) = 0;
  *(a1 + v3[7]) = 0;
  v4 = a1 + v3[8];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + v3[9]) = 0;
  *(a1 + v3[10]) = 0;
  *(a1 + v3[11]) = 0;
  v5 = v3[12];
  type metadata accessor for IOSurfaceWrapper();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(a1 + v5) = result;
  *(a1 + v3[13]) = 0;
  return result;
}

id sub_1AFCFA364()
{
  v1 = *(type metadata accessor for MovieRuntime(0) + 52);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E6530];
    sub_1AFD03B8C(0, &qword_1EB644230, &unk_1EB644238, MEMORY[0x1E69E6530]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = sub_1AFDFCEF8();
    *(inited + 40) = v6;
    *(inited + 48) = 1111970369;
    v7 = sub_1AF43F7A8(inited);
    swift_setDeallocating();
    sub_1AFD03BE4(inited + 32, &unk_1EB644238, v4);
    sub_1AF3DA2E8(v7);

    v8 = objc_allocWithZone(MEMORY[0x1E69880D8]);
    sub_1AF4436C4();
    v9 = sub_1AFDFCBE8();

    v10 = [v8 initWithPixelBufferAttributes_];

    *(v0 + v1) = v10;
    v3 = v10;
    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1AFCFA4D0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    v5 = *(v2 + 32);
    v37[0] = *(v2 + 16);
    v37[1] = v5;
    v38 = *(v2 + 48);

    sub_1AF6B06C0(v4, v37, 0x200000000, &v7);
    if (v7)
    {
      v33 = v10;
      v34 = v11;
      v35 = v12;
      v31 = v8;
      v32 = v9;
      v36 = v13;
      v30 = v7;

      sub_1AFD17C54(&v30, v4, a2);

      sub_1AFD03C74(&v7, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v6 = *(v2 + 72);
    v28[0] = *(v2 + 56);
    v28[1] = v6;
    v29 = *(v2 + 88);
    sub_1AF6B06C0(v4, v28, 0x200000000, &v14);
    if (v14)
    {
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v22 = v15;
      v23 = v16;
      v27 = v20;
      v21 = v14;

      sub_1AFD14FC4(&v21, v4);

      return sub_1AFD03C74(&v14, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AFCFA694(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6)
{
  v37 = a3;
  v38 = a6;
  v34 = a4;
  sub_1AF0D1094(0, &qword_1ED726C10, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v31 - v10;
  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFD638();
  v35 = sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = HIDWORD(a5);
  v15 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v16 = sub_1AFDFC048();
  v17 = [v15 initWithURL:v16 options:0];
  v33 = v17;

  v18 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
  [v18 addOutput_];
  (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = (v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v37;
  *(v22 + 16) = v37;
  v24 = v32;
  *(v22 + 24) = a5;
  *(v22 + 28) = v24;
  (*(v12 + 32))(v22 + v19, v14, v11);
  v25 = v22 + v20;
  *v25 = v18;
  *(v25 + 8) = v34 & 1;
  *(v22 + v21) = v38;
  v26 = sub_1AFDFD668();
  v27 = v36;
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v23;
  v28[5] = sub_1AFD03E08;
  v28[6] = v22;
  swift_retain_n();
  v29 = v18;

  sub_1AF727F34(0, 0, v27, &unk_1AFEAA638, v28);
}

void sub_1AFCFAA38(uint64_t a1, char *a2, void *a3, int a4, uint64_t a5)
{
  v49 = a3;
  v50 = a5;
  v48 = a4;
  v55 = a2;
  cacheOut[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF90C24C(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E6968FB0];
  v14 = MEMORY[0x1E69E6720];
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v51 = a1;
  v23 = v54;
  sub_1AFA9C3FC(a1, &v46 - v21, &qword_1ED7315E0, v13, v14, sub_1AF0D1094);
  v24 = v53;
  (*(v23 + 16))(v19, v55, v53);
  (*(v23 + 56))(v19, 0, 1, v24);
  v25 = *(v10 + 56);
  sub_1AFA9C3FC(v22, v12, &qword_1ED7315E0, v13, v14, sub_1AF0D1094);
  sub_1AFA9C3FC(v19, &v12[v25], &qword_1ED7315E0, v13, v14, sub_1AF0D1094);
  v26 = *(v23 + 48);
  if (v26(v12, 1, v24) != 1)
  {
    v55 = v22;
    v27 = v52;
    sub_1AFA9C3FC(v12, v52, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
    if (v26(&v12[v25], 1, v24) != 1)
    {
      v28 = v47;
      (*(v23 + 32))(v47, &v12[v25], v24);
      sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v29 = sub_1AFDFCE58();
      v30 = *(v23 + 8);
      v30(v28, v24);
      sub_1AF456B8C(v19);
      sub_1AF456B8C(v55);
      v30(v27, v24);
      sub_1AF456B8C(v12);
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_1AF456B8C(v19);
    sub_1AF456B8C(v55);
    (*(v23 + 8))(v27, v24);
LABEL_6:
    sub_1AFD03CE4(v12);
    return;
  }

  sub_1AF456B8C(v19);
  sub_1AF456B8C(v22);
  if (v26(&v12[v25], 1, v24) != 1)
  {
    goto LABEL_6;
  }

  sub_1AF456B8C(v12);
LABEL_8:
  v31 = objc_allocWithZone(MEMORY[0x1E6988098]);
  v32 = v49;
  v33 = [v31 initWithPlayerItem_];
  [v33 setMuted_];
  v34 = type metadata accessor for MovieRuntime(0);
  v35 = v51;
  *(v51 + v34[5]) = 0;
  v36 = v34[6];

  *(v35 + v36) = v33;
  v37 = v34[7];

  *(v35 + v37) = v32;
  cacheOut[0] = 0;
  v38 = *MEMORY[0x1E695E480];
  v39 = CFXGPUDeviceGetMTLDevice(*(v50 + 16));
  LODWORD(v38) = CVMetalTextureCacheCreate(v38, 0, v39, 0, cacheOut);
  swift_unknownObjectRelease();
  if (v38)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v40 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v45 = v40;
      swift_once();
      v40 = v45;
    }

    v56 = 0;
    sub_1AF0D4F18(v40, &v56, 0xD000000000000021, 0x80000001AFF4EFA0);
  }

  else
  {
    v41 = cacheOut[0];
    v42 = v34[11];
    v43 = *(v35 + v42);
    v44 = cacheOut[0];

    *(v35 + v42) = v41;
  }
}

uint64_t sub_1AFCFB088()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED73B840;
  v15 = 0;
  v16 = 2;
  v17 = 0;
  v18 = 2;
  v19 = 0;
  sub_1AF7031CC(1, &v7);
  v1 = v8;
  v2 = v9;
  v3 = v11;
  v4 = v10 | 4;
  *(v0 + 16) = v7;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AFCC3958(1, 1, v12);
  v5 = v12[1];
  *(v0 + 56) = v12[0];
  *(v0 + 72) = v5;
  *(v0 + 88) = v13;
  return v0;
}

void sub_1AFCFB1B8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX11AudioPlayer_player);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v9[4] = sub_1AFD04224;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AFCDA044;
  v9[3] = &unk_1F256F320;
  v6 = _Block_copy(v9);
  v7 = v3;
  v8 = a1;

  [v7 scheduleFile:v8 atTime:0 completionHandler:v6];
  _Block_release(v6);
}

void sub_1AFCFB2D8(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC3VFX11AudioPlayer_loops) == 1)
    {
      v5 = Strong;
      sub_1AFCFB1B8(a2);
      v4 = v5;
    }
  }
}

id sub_1AFCFB384(void *a1, SEL *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  [*&v4[*a1] *a2];
  v8.receiver = v4;
  v8.super_class = a4(a3);
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1AFCFB414(char *a1, uint64_t a2, void *a3, SEL *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v9 = *&a1[*a3];
  v10 = a1;
  [v9 *a4];
  v12.receiver = v10;
  v12.super_class = a6(a5);
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

char *sub_1AFCFB564(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFC128();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = 1;
  v36 = OBJC_IVAR____TtC3VFX11AudioPlayer_isValid;
  v1[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] = 1;
  v37 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw] = 0;
  v6 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount] = 0;
  v7 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime] = 0;
  v8 = OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate;
  *&v1[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate] = 0x40E5888000000000;
  v9 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v11 = sub_1AFDFCEC8();
  [v10 setName_];

  *&v2[v9] = v10;
  v41 = v4;
  v12 = *(v4 + 16);
  v38 = v3;
  v39 = v12;
  v12(&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_url], v42, v3);
  v13 = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  v14 = OBJC_IVAR____TtC3VFX11AudioPlayer_engine;
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_engine] = v13;
  v15 = [v13 mainMixerNode];
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] = v15;
  *&v2[v37] = 0;
  *&v2[v6] = 0;
  *&v2[v7] = 0;
  *&v2[v8] = 0x40E5888000000000;
  [*&v2[v14] prepare];
  v16 = *&v2[v14];
  v44 = 0;
  if ([v16 startAndReturnError_])
  {
    v17 = v44;
    v18 = v42;
  }

  else
  {
    v19 = v44;
    v20 = sub_1AFDFBF58();

    swift_willThrow();
    v2[v36] = 0;
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF4F020);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v22 = v44;
    v21 = v45;
    v23 = sub_1AFDFDA08();
    v18 = v42;
    if (qword_1ED731058 != -1)
    {
      v35 = v23;
      swift_once();
      v23 = v35;
    }

    v44 = 0;
    sub_1AF0D4F18(v23, &v44, v22, v21);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E6958458]) init];
  *&v2[OBJC_IVAR____TtC3VFX11AudioPlayer_player] = v24;
  v25 = type metadata accessor for AudioPlayer(0);
  v43.receiver = v2;
  v43.super_class = v25;
  v26 = objc_msgSendSuper2(&v43, sel_init);
  v27 = v40;
  v28 = v38;
  v39(v40, v18, v38);
  objc_allocWithZone(MEMORY[0x1E6958408]);
  v29 = v26;
  v30 = sub_1AFCFF258(v27);
  v31 = [v30 processingFormat];
  v32 = OBJC_IVAR____TtC3VFX11AudioPlayer_engine;
  v33 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
  [*&v29[OBJC_IVAR____TtC3VFX11AudioPlayer_engine] attachNode_];
  [*&v29[v32] connect:*&v29[v33] to:*&v29[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] format:v31];
  sub_1AFCFB1B8(v30);

  (*(v41 + 8))(v18, v28);
  return v29;
}

void sub_1AFCFBB50(void *a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v6 = [a1 floatChannelData];
    if (v6)
    {
      v7 = *v6;
      v8 = [a1 frameLength];
      v9 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
      [*&v13[OBJC_IVAR____TtC3VFX11AudioPlayer__lock] lock];
      *&v13[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw] = v7;
      *&v13[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount] = v8;
      info = 0;
      v10 = mach_timebase_info(&info);
      v11 = -1.0;
      if (!v10)
      {
        v11 = (mach_absolute_time() * info.numer / info.denom) * 0.000000001;
      }

      *&v13[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime] = v11;
      [a2 sampleRate];
      *&v13[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate] = v12;
      [*&v13[v9] unlock];
    }

    else
    {
    }
  }
}

void sub_1AFCFBCE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_1AFCFBD98(uint64_t a1)
{
  result = sub_1AFDFC128();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFCFBE5C(void *a1)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 stop];
}

uint64_t sub_1AFCFBF00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 20);
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a2[v3], 1, 1, v4);
}

uint64_t sub_1AFCFBF74(void *a1, unsigned int a2, double a3)
{
  sub_1AFD04A54(0, &unk_1EB644270, sub_1AFD0404C, &type metadata for AudioController.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0404C();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8C8();
  if (!v3)
  {
    v13 = 1;
    sub_1AFDFE8C8();
    v12 = 2;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFCFC120(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702131053;
  if (v2 != 1)
  {
    v5 = 0x73706F6F6CLL;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2036427888;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1702131053;
  if (*a2 != 1)
  {
    v8 = 0x73706F6F6CLL;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFCFC200()
{
  v1 = 1702131053;
  if (*v0 != 1)
  {
    v1 = 0x73706F6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t sub_1AFCFC248@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFCFFBB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFCFC270(uint64_t a1)
{
  v2 = sub_1AFD0404C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFC2AC(uint64_t a1)
{
  v2 = sub_1AFD0404C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFC2E8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>, double a3@<D0>)
{
  result = sub_1AFD025E0(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result) & 1;
  }

  return result;
}

uint64_t sub_1AFCFC328(void *a1, double a2)
{
  if (v2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1AFCFBF74(a1, v4 | *v2 | v3, a2);
}

uint64_t sub_1AFCFC37C(void *a1, unsigned int a2, double a3)
{
  sub_1AFD04A54(0, &qword_1EB644258, sub_1AFD03FF8, &type metadata for AudioAnalyzer.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD03FF8();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8C8();
  if (!v3)
  {
    v14 = 1;
    sub_1AFDFE8C8();
    v13 = 2;
    sub_1AFDFE8C8();
    v12 = 3;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1AFCFC554()
{
  v1 = 0x6D726F6665766177;
  v2 = 0x6D75727463657073;
  if (*v0 != 2)
  {
    v2 = 7564658;
  }

  if (*v0)
  {
    v1 = 0x6D75727463657073;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFCFC5D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AFCFF9B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AFCFC5FC(uint64_t a1)
{
  v2 = sub_1AFD03FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFC638(uint64_t a1)
{
  v2 = sub_1AFD03FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFC674@<X0>(_BYTE *a1@<X8>, void *a2@<X0>, double a3@<D0>)
{
  result = sub_1AFD01AA8(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
    a1[2] = BYTE2(result) & 1;
    a1[3] = BYTE3(result) & 1;
  }

  return result;
}

uint64_t sub_1AFCFC6BC(void *a1, double a2)
{
  if (v2[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AFCFC37C(a1, v5 | *v2 | v4 | v3, a2);
}

vDSP_DFT_Setup sub_1AFCFC720()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  result = vDSP_DFT_zop_CreateSetup(0, 0x800uLL, vDSP_DFT_FORWARD);
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_1AFCFC764(const vDSP_DFT_SetupStruct *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFD488();
  *(v3 + 16) = 2048;
  v4 = (v3 + 32);
  bzero((v3 + 32), 0x2000uLL);
  v5 = sub_1AFDFD488();
  *(v5 + 16) = 2048;
  bzero((v5 + 32), 0x2000uLL);
  v6 = *v1;
  if ((v3 - *v1) >= 0x20)
  {
    v9 = (v6 + 48);
    v10 = (v3 + 48);
    v11 = 2048;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 8;
    }

    while (v11);
  }

  else
  {
    v7 = 0;
    v8 = v6 + 32;
    do
    {
      v4[v7] = *(v8 + v7 * 4);
      ++v7;
    }

    while (v7 != 2048);
  }

  v13 = v1[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AF41FDF8(0, *(v13 + 2), 0, v13);
  }

  v14 = v1[4];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AF41FDF8(0, *(v14 + 2), 0, v14);
  }

  v1[4] = v14;
  vDSP_DFT_Execute(a1, v4, (v5 + 32), v13 + 8, v14 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[5] = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1AFC0DB20(v13);
    v1[5] = v13;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1AFC0DB20(v14);
  }

  v1[4] = v14;
  v1[5] = v13;
  __A.realp = (v13 + 32);
  __A.imagp = (v14 + 32);

  v16 = sub_1AFDFD488();
  *(v16 + 16) = 1024;
  bzero((v16 + 32), 0x1000uLL);
  vDSP_zvabs(&__A, 1, (v16 + 32), 1, 0x400uLL);
  v17 = sub_1AFDFD488();
  *(v17 + 16) = 720;
  bzero((v17 + 32), 0xB40uLL);
  if ((v17 - v16 - 24) >= 0x20)
  {
    v19 = (v16 + 72);
    v20 = (v17 + 48);
    v21 = 720;
    v22 = vdupq_n_s32(0x3CC80000u);
    do
    {
      v23 = vmulq_f32(*v19, v22);
      v20[-1] = vmulq_f32(v19[-1], v22);
      *v20 = v23;
      v19 += 2;
      v20 += 2;
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    for (i = 0; i != 2880; i += 4)
    {
      *(v17 + 32 + i) = *(v16 + 56 + i) * 0.024414;
    }
  }

  return v17;
}

uint64_t sub_1AFCFCA54()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFCFCB18(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFCFCBC8(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFCFCC88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFCFFB20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFCFCCB8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6D726F6665766177;
  v4 = 0x80000001AFF22450;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 7564658;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x647574696E67616DLL;
    v2 = 0xEA00000000007365;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AFCFCD38()
{
  v1 = 0x6D726F6665766177;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 7564658;
  }

  if (*v0)
  {
    v1 = 0x647574696E67616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFCFCDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFCFFB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFCFCDDC(uint64_t a1)
{
  v2 = sub_1AFD049B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFCFCE18(uint64_t a1)
{
  v2 = sub_1AFD049B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFCFCE54(void *a1, double a2)
{
  v4 = v2;
  sub_1AFD04A54(0, &unk_1EB644350, sub_1AFD049B0, &type metadata for AudioSpectrum.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD049B0();
  sub_1AFDFF3F8();
  v14 = *v4;
  v13 = 0;
  sub_1AFD04A04(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  sub_1AFD04ABC(&qword_1EB63D188, MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  if (!v3)
  {
    v14 = v4[1];
    v13 = 1;
    sub_1AFDFE918();
    v14 = v4[2];
    v13 = 2;
    sub_1AFDFE918();
    LOBYTE(v14) = 3;
    sub_1AFDFE8E8();
  }

  return (*(v8 + 8))(v10, v7);
}

double sub_1AFCFD0B0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFD01CF8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

void sub_1AFCFD114(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFD488();
  *(v2 + 16) = 2048;
  bzero((v2 + 32), 0x2000uLL);
  v3 = sub_1AFDFD488();
  *(v3 + 16) = 2048;
  bzero((v3 + 32), 0x2000uLL);
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

void sub_1AFCFD1B8(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  v10 = *(v4 + 40);

  os_unfair_lock_unlock(v10);
}

uint64_t getEnumTagSinglePayload for AudioAnalyzer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioAnalyzer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void **sub_1AFCFD424(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_1AFDFC128();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    v11 = v4;
    if (v10(a2 + v7, 1, v8))
    {
      sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(v6 + v7, a2 + v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(v6 + v7, a2 + v7, v8);
      (*(v9 + 56))(v6 + v7, 0, 1, v8);
    }
  }

  return v6;
}

uint64_t sub_1AFCFD5C8(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1AFDFC128();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void **sub_1AFCFD69C(void **a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v5;
  if (v9(a2 + v6, 1, v7))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v6, a2 + v6, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void **sub_1AFCFD7E0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = *(a3 + 20);
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v6) = v12(a1 + v9, 1, v10);
  v13 = v12(a2 + v9, 1, v10);
  if (!v6)
  {
    if (!v13)
    {
      (*(v11 + 24))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v9, a2 + v9, *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 16))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

char *sub_1AFCFD98C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

void **sub_1AFCFDAC4(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_1AFDFC128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (!v11)
  {
    if (!v12)
    {
      (*(v9 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v9 + 32))(a1 + v7, a2 + v7, v8);
  (*(v9 + 56))(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_1AFCFDCB4(uint64_t a1)
{
  sub_1AF0D1094(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *sub_1AFCFDD9C(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AFDFC128();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v12 = *(a2 + v11);
    *(a1 + v11) = v12;
    v13 = a3[7];
    v14 = a3[8];
    v15 = *(a2 + v13);
    *(a1 + v13) = v15;
    v16 = a1 + v14;
    v17 = a2 + v14;
    *v16 = *v17;
    v16[8] = v17[8];
    v18 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    v19 = *(a2 + v18);
    *(a1 + v18) = v19;
    v20 = a3[11];
    v21 = a3[12];
    v22 = *(a2 + v20);
    *(a1 + v20) = v22;
    *(a1 + v21) = *(a2 + v21);
    v23 = a3[13];
    v24 = *(a2 + v23);
    *(a1 + v23) = v24;
    v25 = v12;
    v26 = v15;
    v27 = v19;
    v28 = v22;

    v29 = v24;
  }

  return a1;
}

void sub_1AFCFDFC0(uint64_t a1, int *a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a1 + a2[13]);
}

char *sub_1AFCFE0C8(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v10 = *&a2[v9];
  *&a1[v9] = v10;
  v11 = a3[7];
  v12 = a3[8];
  v13 = *&a2[v11];
  *&a1[v11] = v13;
  v14 = &a1[v12];
  v15 = &a2[v12];
  *v14 = *v15;
  v14[8] = v15[8];
  v16 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  v17 = *&a2[v16];
  *&a1[v16] = v17;
  v18 = a3[11];
  v19 = a3[12];
  v20 = *&a2[v18];
  *&a1[v18] = v20;
  *&a1[v19] = *&a2[v19];
  v21 = a3[13];
  v22 = *&a2[v21];
  *&a1[v21] = v22;
  v23 = v10;
  v24 = v13;
  v25 = v17;
  v26 = v20;

  v27 = v22;
  return a1;
}

char *sub_1AFCFE2A0(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[a3[5]] = a2[a3[5]];
  v12 = a3[6];
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  *&a1[v12] = v14;
  v15 = v14;

  v16 = a3[7];
  v17 = *&a1[v16];
  v18 = *&a2[v16];
  *&a1[v16] = v18;
  v19 = v18;

  v20 = a3[8];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *v22;
  v21[8] = v22[8];
  *v21 = v23;
  a1[a3[9]] = a2[a3[9]];
  v24 = a3[10];
  v25 = *&a1[v24];
  v26 = *&a2[v24];
  *&a1[v24] = v26;
  v27 = v26;

  v28 = a3[11];
  v29 = *&a1[v28];
  v30 = *&a2[v28];
  *&a1[v28] = v30;
  v31 = v30;

  *&a1[a3[12]] = *&a2[a3[12]];

  v32 = a3[13];
  v33 = *&a1[v32];
  v34 = *&a2[v32];
  *&a1[v32] = v34;
  v35 = v34;

  return a1;
}

char *sub_1AFCFE514(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v11[8] = v12[8];
  v13 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v14] = *&a2[v14];
  *&a1[a3[13]] = *&a2[a3[13]];
  return a1;
}

char *sub_1AFCFE6C8(char *a1, char *a2, int *a3)
{
  v6 = sub_1AFDFC128();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v13 = *&a1[v12];
  *&a1[v12] = *&a2[v12];

  v14 = a3[7];
  v15 = *&a1[v14];
  *&a1[v14] = *&a2[v14];

  v16 = a3[8];
  v17 = a3[9];
  v18 = &a1[v16];
  v19 = &a2[v16];
  *v18 = *v19;
  v18[8] = v19[8];
  a1[v17] = a2[v17];
  v20 = a3[10];
  v21 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22 = a3[11];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  *&a1[a3[12]] = *&a2[a3[12]];

  v24 = a3[13];
  v25 = *&a1[v24];
  *&a1[v24] = *&a2[v24];

  return a1;
}

void sub_1AFCFE960(uint64_t a1)
{
  sub_1AF0D1094(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeWithCopy for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v7 = *(a2 + 32);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);

  v5 = v7;
  return a1;
}

uint64_t assignWithCopy for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 32) = v4;
  v7 = v4;

  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

__n128 initializeWithTake for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for MovieFileAsset(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  return a1;
}

uint64_t getEnumTagSinglePayload for MovieFileAsset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t storeEnumTagSinglePayload for MovieFileAsset(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for VideoCaptureRuntime(id *a1)
{
}

uint64_t initializeWithCopy for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = v3;

  return a1;
}

uint64_t assignWithCopy for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for VideoCaptureRuntime(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t initializeWithCopy for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t assignWithCopy for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for VideoCapture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for VideoCapture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoCapture(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1AFCFF048()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED73B840;
  v24 = 0;
  v25 = 2;
  v26 = 0;
  v27 = 2;
  v28 = 0;
  sub_1AFCC34C4(1, 1, &v11);
  v1 = v12;
  v2 = v13;
  v3 = v15;
  v4 = v14 | 4;
  *(v0 + 16) = v11;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  sub_1AFCC34E8(2, 1, &v16);
  v5 = v17;
  v6 = v18;
  v7 = v20;
  v8 = v19 | 4;
  *(v0 + 56) = v16;
  *(v0 + 64) = v5;
  *(v0 + 68) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = 2;
  *(v0 + 88) = v7;
  sub_1AFCC3518(1, 1, v21);
  v9 = v21[1];
  *(v0 + 96) = v21[0];
  *(v0 + 112) = v9;
  *(v0 + 128) = v22;
  return v0;
}

uint64_t sub_1AFCFF174()
{
  v0 = swift_allocObject();
  sub_1AFCFF048();
  return v0;
}

double sub_1AFCFF1C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_1AFCF7D60(a1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v2)
  {
  }

  else
  {
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xE000000000000000;
    *(a2 + 32) = 0uLL;
  }

  return result;
}

id sub_1AFCFF258(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1AFDFC048();
  v13[0] = 0;
  v5 = [v2 initForReading:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1AFDFC128();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1AFDFBF58();

    swift_willThrow();
    v11 = sub_1AFDFC128();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1AFCFF3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AFCFF3C8, 0, 0);
}

uint64_t sub_1AFCFF3C8()
{
  v1 = *(v0 + 24);
  type metadata accessor for EntityManagerActor();
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  sub_1AFD040A0(&qword_1EB644228, type metadata accessor for EntityManagerActor, asc_1AFE6DA94);
  v4 = sub_1AFDFD5B8();

  return MEMORY[0x1EEE6DFA0](sub_1AFCFF4A0, v4, v3);
}

uint64_t sub_1AFCFF4A0()
{
  v1 = *(v0 + 16);
  (*(v0 + 32))();

  *v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1AFCFF528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || a1[1] != a2[1] || ((a1[2] ^ a2[2]))
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v3 || (v4 = a1, v5 = a2, v6 = sub_1AFDFEE28(), a2 = v5, v7 = v6, a1 = v4, (v7 & 1) != 0))
  {
    v8 = *(a1 + 4);
    v9 = *(a2 + 4);
    if (v8)
    {
      if (v9 && (*(a1 + 3) == *(a2 + 3) && v8 == v9 || (sub_1AFDFEE28() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AFCFF604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AFDFC318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  BYTE6(v12) = 1;
  sub_1AFDFC308();
  v6 = sub_1AFDFC2B8();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v10 = v13;
  v11 = BYTE6(v12);
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 10) = v11;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AFCFF70C()
{
  sub_1AF0D1094(0, &qword_1EB638150, type metadata accessor for DeviceType, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C5E0;
  v1 = *MEMORY[0x1E6986950];
  v2 = *MEMORY[0x1E6986948];
  v3 = MEMORY[0x1E6986900];
  *(inited + 32) = *MEMORY[0x1E6986950];
  *(inited + 40) = v2;
  v4 = *v3;
  v5 = *MEMORY[0x1E6986938];
  *(inited + 48) = *v3;
  *(inited + 56) = v5;
  v6 = *MEMORY[0x1E6986928];
  v7 = *MEMORY[0x1E6986940];
  *(inited + 64) = *MEMORY[0x1E6986928];
  *(inited + 72) = v7;
  v8 = *MEMORY[0x1E6986918];
  v9 = *MEMORY[0x1E6986960];
  v10 = MEMORY[0x1E6986968];
  *(inited + 80) = *MEMORY[0x1E6986918];
  *(inited + 88) = v9;
  v11 = *v10;
  *(inited + 96) = *v10;
  v12 = *MEMORY[0x1E6986958];
  v13 = v1;
  v14 = v2;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v22 = v12;
  v23 = sub_1AF420764(1, 10, 1, inited);
  v23[2] = 10;
  v23[13] = v22;
  v24 = *MEMORY[0x1E6987608];
  type metadata accessor for DeviceType(0);
  v25 = v24;
  v26 = sub_1AFDFD3F8();

  v27 = [objc_opt_self() discoverySessionWithDeviceTypes:v26 mediaType:v25 position:0];

  v28 = [v27 devices];
  sub_1AF0D4478(0, &qword_1EB6441F8, 0x1E69870A0);
  v29 = sub_1AFDFD418();

  return v29;
}

unint64_t sub_1AFCFF968(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFCFF9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6665766177 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D75727463657073 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D75727463657073 && a2 == 0xEE00736552776F4CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7564658 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1AFCFFB20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFCFFB6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFCFFBB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036427888 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702131053 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73706F6F6CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

void sub_1AFCFFCCC(void *a1, uint64_t a2, id *a3)
{
  sub_1AF90C24C(0);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v54 - v16;
  v66 = sub_1AFDFC128();
  v17 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v56 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v23 = a1[2];
  v22 = a1[3];
  v24 = a1[4];
  v65 = a3;
  v57 = v11;
  if (v24)
  {
    v25 = a1[5];
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v23, v22, ObjectType, v25);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v23, v22);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v28 = v67;
    v27 = v68;
    v29 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v67 = 0;
    sub_1AF0D4F18(v29, &v67, v28, v27);

    sub_1AFDFC018();
    a3 = v65;
  }

  v30 = type metadata accessor for AudioPlayerComponent(0);
  v31 = MEMORY[0x1E6968FB0];
  v32 = MEMORY[0x1E69E6720];
  v60 = *(v30 + 20);
  v33 = v69;
  sub_1AFA9C3FC(a3 + v60, v69, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v34 = *(v17 + 16);
  v35 = v14;
  v64 = v21;
  v36 = v17;
  v37 = v14;
  v38 = v66;
  v34(v35, v21, v66);
  v58 = *(v36 + 56);
  v59 = v36 + 56;
  v58(v37, 0, 1, v38);
  v39 = *(v62 + 48);
  v40 = v33;
  v41 = v63;
  sub_1AFA9C3FC(v40, v63, &qword_1ED7315E0, v31, v32, sub_1AF0D1094);
  v62 = v39;
  sub_1AFA9C3FC(v37, v41 + v39, &qword_1ED7315E0, v31, v32, sub_1AF0D1094);
  v42 = *(v36 + 48);
  if (v42(v41, 1, v38) == 1)
  {
    sub_1AF456B8C(v37);
    sub_1AF456B8C(v69);
    v43 = v36;
    if (v42(v41 + v62, 1, v38) == 1)
    {
      sub_1AF456B8C(v41);
      (*(v36 + 8))(v64, v38);
      return;
    }

    goto LABEL_13;
  }

  v55 = v37;
  v44 = v57;
  sub_1AFA9C3FC(v41, v57, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v45 = v62;
  if (v42(v41 + v62, 1, v38) == 1)
  {
    sub_1AF456B8C(v55);
    sub_1AF456B8C(v69);
    v43 = v36;
    (*(v36 + 8))(v44, v38);
LABEL_13:
    sub_1AFD03CE4(v41);
    v46 = *(v43 + 32);
    v47 = v64;
LABEL_14:
    v48 = v61;
    v46(v61, v47, v38);
    v58(v48, 0, 1, v38);
    v49 = v65;
    sub_1AF456BE8(v48, v65 + v60);

    *v49 = 0;
    return;
  }

  v50 = v36;
  v46 = *(v36 + 32);
  v51 = v56;
  v46(v56, (v41 + v45), v38);
  sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v52 = sub_1AFDFCE58();
  v53 = *(v50 + 8);
  v53(v51, v38);
  sub_1AF456B8C(v55);
  sub_1AF456B8C(v69);
  v53(v44, v38);
  sub_1AF456B8C(v41);
  if ((v52 & 1) == 0)
  {
    v47 = v64;
    v38 = v66;
    goto LABEL_14;
  }

  v53(v64, v66);
}

void sub_1AFD003D8(char **a1, _BYTE *a2, uint64_t *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*a1)
  {

    v18 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];

    a3[1] = v18;

    a3[2] = v18;
    *(a3 + 6) = 0;
    return;
  }

  v6 = OBJC_IVAR____TtC3VFX11AudioPlayer__lock;
  v7 = *&v4[OBJC_IVAR____TtC3VFX11AudioPlayer__lock];
  v8 = v4;
  [v7 lock];
  v9 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRaw];
  if (v9)
  {
    if ((*a2 & 1) == 0 && (a2[1] & 1) == 0 && a2[2] != 1)
    {
LABEL_26:
      if (a2[2] != 1)
      {
        goto LABEL_35;
      }

LABEL_27:
      v29 = sub_1AFCFC720();
      v30 = sub_1AFCFC764(v29);

      a3[1] = v30;
      if (a2[2] != 1)
      {
        goto LABEL_35;
      }

      if (*(v30 + 16) >= 0x14uLL)
      {
        v32 = *(v30 + 16) / 0x14uLL;
        v31 = sub_1AFDFD488();
        *(v31 + 16) = v32;
        bzero((v31 + 32), 4 * v32);
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
        v32 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v32)
        {
LABEL_34:

          a3[2] = v31;
LABEL_35:
          if (a2[3] == 1)
          {
            v35 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount];
            info.numer = 0;
            vDSP_measqv(v9, 1, &info, v35);
            v36 = ((log10f(*&info.numer) * 10.0) + 40.0) * 0.0075;
            if (v36 <= 0.0)
            {
              v36 = 0.0;
            }

            if (v36 > 1.0)
            {
              v36 = 1.0;
            }

            *(a3 + 6) = v36;
          }

          goto LABEL_41;
        }
      }

      v33 = (v30 + 56);
      v34 = 32;
      do
      {
        *(v31 + v34) = ((((((((((((((((((((*(v33 - 6) + 0.0) + *(v33 - 5)) + *(v33 - 4)) + *(v33 - 3)) + *(v33 - 2)) + *(v33 - 1)) + *v33) + v33[1]) + v33[2]) + v33[3]) + v33[4]) + v33[5]) + v33[6]) + v33[7]) + v33[8]) + v33[9]) + v33[10]) + v33[11]) + v33[12]) + v33[13]) * 0.05;
        v34 += 4;
        v33 += 20;
        --v32;
      }

      while (v32);
      goto LABEL_34;
    }

    v10 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawCount];
    info = 0;
    v11 = -1.0;
    if (!mach_timebase_info(&info))
    {
      v11 = (mach_absolute_time() * info.numer / info.denom) * 0.000000001;
    }

    v12 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawTime];
    v13 = *&v8[OBJC_IVAR____TtC3VFX11AudioPlayer_samplesRawSampleRate];
    v14 = sub_1AFDFD488();
    *(v14 + 16) = 2048;
    bzero((v14 + 32), 0x2000uLL);
    if (v10 >= 2049)
    {
      v15 = ((v11 - v12) * v13);
      if (v10 - 2048 < v15)
      {
        v15 = v10 - 2048;
      }

      v16 = &v9[v15 & ~(v15 >> 63)];
      if ((v14 - v16) < 0xFFFFFFFFFFFFFFE0)
      {
        v25 = (v16 + 4);
        v26 = (v14 + 48);
        v27 = 2048;
        do
        {
          v28 = *v25;
          *(v26 - 1) = *(v25 - 1);
          *v26 = v28;
          v25 += 2;
          v26 += 2;
          v27 -= 8;
        }

        while (v27);
      }

      else
      {
        for (i = 0; i != 2048; ++i)
        {
          *(v14 + 32 + i * 4) = v16[i];
        }
      }

LABEL_25:

      *a3 = v14;
      if (a2[1])
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v10)
    {
      goto LABEL_25;
    }

    if (v10 > 7 && (v14 - v9) < 0xFFFFFFFFFFFFFFE0)
    {
      v19 = v10 & 0xFFFFFFFFFFFFFFF8;
      v37 = (v9 + 4);
      v38 = (v14 + 48);
      v39 = v10 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v40 = *v37;
        *(v38 - 1) = *(v37 - 1);
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 8;
      }

      while (v39);
      if (v10 == v19)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v10 - v19;
    v21 = v19;
    v22 = (4 * v19 + v14 + 32);
    v23 = &v9[v21];
    do
    {
      v24 = *v23++;
      *v22++ = v24;
      --v20;
    }

    while (v20);
    goto LABEL_25;
  }

LABEL_41:
  [*&v4[v6] unlock];
}

uint64_t sub_1AFD00848(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v103 = a6;
  v102 = a5;
  v109 = sub_1AFDFCA88();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1AFDFCAC8();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF90C24C(0);
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v94 - v14;
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v95 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v94 - v28;
  v121 = sub_1AFDFC128();
  v123 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v110 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - v31;

  v117 = sub_1AF6496EC(a2);

  v34 = a3[2];
  v33 = a3[3];
  v35 = a3[4];
  v119 = a4;
  v101 = a3;
  v99 = v21;
  if (v35)
  {
    v36 = a3[5];
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(v34, v33, ObjectType, v36);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    aBlock = 0;
    v125 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v34, v33);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v38 = aBlock;
    v39 = v125;
    v40 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    aBlock = 0;
    sub_1AF0D4F18(v40, &aBlock, v38, v39);

    sub_1AFDFC018();
    a4 = v119;
  }

  v41 = MEMORY[0x1E6968FB0];
  v42 = MEMORY[0x1E69E6720];
  v43 = v120;
  sub_1AFA9C3FC(a4, v120, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v44 = v123;
  v45 = *(v123 + 16);
  v122 = v32;
  v46 = v32;
  v47 = v121;
  v115 = v45;
  v116 = v123 + 16;
  v45(v26, v46, v121);
  v113 = *(v44 + 56);
  v114 = v44 + 56;
  v113(v26, 0, 1, v47);
  v48 = *(v118 + 48);
  v49 = v43;
  v50 = v112;
  sub_1AFA9C3FC(v49, v112, &qword_1ED7315E0, v41, v42, sub_1AF0D1094);
  v111 = v48;
  sub_1AFA9C3FC(v26, &v48[v50], &qword_1ED7315E0, v41, v42, sub_1AF0D1094);
  v51 = *(v44 + 48);
  if ((v51)(v50, 1, v47) != 1)
  {
    v53 = v97;
    sub_1AFA9C3FC(v50, v97, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
    v54 = v111;
    if ((v51)(&v111[v50], 1, v47) != 1)
    {
      v55 = v123;
      v56 = &v54[v50];
      v57 = v110;
      (*(v123 + 32))(v110, v56, v121);
      sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v111 = v51;
      v58 = v50;
      v59 = sub_1AFDFCE58();
      v60 = v55;
      v47 = v121;
      v61 = *(v60 + 8);
      v61(v57, v121);
      sub_1AF456B8C(v26);
      sub_1AF456B8C(v120);
      v61(v53, v47);
      v51 = v111;
      sub_1AF456B8C(v58);
      v52 = v119;
      if ((v59 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_1AF456B8C(v26);
    sub_1AF456B8C(v120);
    (*(v123 + 8))(v53, v47);
LABEL_13:
    sub_1AFD03CE4(v50);
    v52 = v119;
    goto LABEL_17;
  }

  sub_1AF456B8C(v26);
  sub_1AF456B8C(v120);
  if ((v51)(&v111[v50], 1, v47) != 1)
  {
    goto LABEL_13;
  }

  sub_1AF456B8C(v50);
  v52 = v119;
LABEL_15:
  if (*(v52 + *(type metadata accessor for MovieRuntime(0) + 24)))
  {
    return (*(v123 + 8))(v122, v47);
  }

LABEL_17:
  v63 = *(type metadata accessor for MovieRuntime(0) + 20);
  if (*(v52 + v63) != 1)
  {
LABEL_24:
    v118 = HIDWORD(v117);
    sub_1AF456B8C(v52);
    v73 = v122;
    v74 = v115;
    v115(v52, v122, v47);
    v113(v52, 0, 1, v47);
    *(v52 + v63) = 1;
    sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
    v120 = sub_1AFDFDB08();
    LODWORD(v114) = *(v101 + 49);
    v75 = sub_1AFCFA364();
    v76 = v110;
    v74(v110, v73, v47);
    v77 = v123;
    v78 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v79 = (v100 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    (*(v77 + 32))(v81 + v78, v76, v47);
    *(v81 + v79) = v75;
    v82 = v81 + v80;
    *v82 = v102;
    *(v82 + 8) = v114;
    v83 = v118;
    *(v82 + 12) = v117;
    *(v82 + 16) = v83;
    *(v81 + ((v80 + 27) & 0xFFFFFFFFFFFFFFF8)) = v103;
    v128 = sub_1AFD03D40;
    v129 = v81;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_1AFCDA044;
    v127 = &unk_1F24E63C0;
    v84 = _Block_copy(&aBlock);
    v85 = v75;

    v86 = v104;
    sub_1AFDFCAA8();
    v130 = MEMORY[0x1E69E7CC0];
    sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1AF6FD510();
    v87 = v106;
    v88 = v109;
    sub_1AFDFE058();
    v89 = v120;
    MEMORY[0x1B2719530](0, v86, v87, v84);
    _Block_release(v84);

    (*(v108 + 8))(v87, v88);
    (*(v105 + 8))(v86, v107);
    (*(v77 + 8))(v122, v47);
  }

  v120 = v63;
  v111 = v51;
  v64 = MEMORY[0x1E6968FB0];
  v65 = MEMORY[0x1E69E6720];
  v66 = v99;
  sub_1AFA9C3FC(v52, v99, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  v67 = v98;
  v115(v98, v122, v47);
  v113(v67, 0, 1, v47);
  v68 = *(v118 + 48);
  v69 = v96;
  sub_1AFA9C3FC(v66, v96, &qword_1ED7315E0, v64, v65, sub_1AF0D1094);
  v70 = v64;
  v71 = v111;
  sub_1AFA9C3FC(v67, v69 + v68, &qword_1ED7315E0, v70, v65, sub_1AF0D1094);
  if (v71(v69, 1, v47) == 1)
  {
    sub_1AF456B8C(v67);
    sub_1AF456B8C(v66);
    if (v71(v69 + v68, 1, v47) == 1)
    {
      sub_1AF456B8C(v69);
      return (*(v123 + 8))(v122, v47);
    }

    goto LABEL_23;
  }

  v72 = v95;
  sub_1AFA9C3FC(v69, v95, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
  if (v71(v69 + v68, 1, v47) == 1)
  {
    sub_1AF456B8C(v98);
    sub_1AF456B8C(v99);
    (*(v123 + 8))(v72, v47);
LABEL_23:
    sub_1AFD03CE4(v69);
    v52 = v119;
    v63 = v120;
    goto LABEL_24;
  }

  v90 = v123;
  v91 = v110;
  (*(v123 + 32))(v110, v69 + v68, v47);
  sub_1AFD040A0(&qword_1EB6327A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v92 = sub_1AFDFCE58();
  v93 = *(v90 + 8);
  v93(v91, v47);
  sub_1AF456B8C(v98);
  sub_1AF456B8C(v99);
  v93(v72, v47);
  sub_1AF456B8C(v69);
  v52 = v119;
  v63 = v120;
  if ((v92 & 1) == 0)
  {
    goto LABEL_24;
  }

  return (v93)(v122, v47);
}

uint64_t sub_1AFD016F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1AFD04A54(0, &qword_1EB644298, sub_1AFD0413C, &type metadata for VideoCapture.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_1AFDFC318();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v35 = 1;
  sub_1AFDFC308();
  sub_1AFDFC2B8();
  v28 = v14;
  (*(v11 + 8))(v13, v10);
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0413C();
  sub_1AFDFF3B8();
  if (v3)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v15 = v27;
    v36 = 0;
    v29 = sub_1AFDFE718() & 1;
    v33 = 1;
    sub_1AF51C5B4();
    sub_1AFDFE768();
    v16 = v34;
    v32 = 2;
    v35 = sub_1AFDFE718() & 1;
    v31 = 3;
    v17 = sub_1AFDFE708();
    v19 = v18;
    v26 = v17;

    v30 = 4;
    v28 = sub_1AFDFE698();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = v29;
    v23 = v35;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    *v15 = v22;
    *(v15 + 1) = v16;
    *(v15 + 2) = v23;
    *(v15 + 8) = v26;
    *(v15 + 16) = v19;
    *(v15 + 24) = v28;
    *(v15 + 32) = v21;
  }

  return result;
}

uint64_t sub_1AFD01AA8(void *a1, double a2)
{
  sub_1AFD04A54(0, &qword_1EB644248, sub_1AFD03FF8, &type metadata for AudioAnalyzer.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD03FF8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v21 = 0;
  v9 = sub_1AFDFE718();
  v20 = 1;
  v10 = sub_1AFDFE718();
  v19 = 2;
  v11 = sub_1AFDFE718();
  v18 = 3;
  v13 = sub_1AFDFE718();
  (*(v6 + 8))(v8, v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v13)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (v10)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 0xFFFFFFFE | v9 & 1 | v15 | v14;
}

uint64_t sub_1AFD01CF8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1AFD04A54(0, &qword_1EB644340, sub_1AFD049B0, &type metadata for AudioSpectrum.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1AFDFD488();
  *(v8 + 16) = 2048;
  bzero((v8 + 32), 0x2000uLL);
  v9 = sub_1AFDFD488();
  *(v9 + 16) = 2048;
  bzero((v9 + 32), 0x2000uLL);
  v31 = 1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD049B0();
  sub_1AFDFF3B8();
  if (v3)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v26 = 0;
    v27 = v8;
    v28 = v9;
    v29 = 0;
    v30 = v31;
    return sub_1AF5871B8(&v23);
  }

  else
  {
    v10 = v18;
    sub_1AFD04A04(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    LOBYTE(v20) = 0;
    sub_1AFD04ABC(&qword_1ED723208, MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
    sub_1AFDFE768();

    LOBYTE(v20) = 1;
    sub_1AFDFE768();

    LOBYTE(v20) = 2;
    sub_1AFDFE768();

    v32 = 3;
    sub_1AFDFE738();
    (*(v10 + 8))(v7, v19);
    v11 = MEMORY[0x1E69E7CC0];
    *&v20 = MEMORY[0x1E69E7CC0];
    *(&v20 + 1) = MEMORY[0x1E69E7CC0];
    *&v21 = MEMORY[0x1E69E7CC0];
    DWORD2(v21) = 0;
    *v22 = v8;
    *&v22[8] = v9;
    *&v22[16] = 0;
    v12 = v31;
    v22[24] = v31;
    sub_1AF58715C(&v20, &v23);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v23 = v11;
    v24 = v11;
    v25 = v11;
    v26 = 0;
    v27 = v8;
    v28 = v9;
    v29 = 0;
    v30 = v12;
    result = sub_1AF5871B8(&v23);
    v14 = v21;
    v15 = v17;
    *v17 = v20;
    v15[1] = v14;
    v15[2] = *v22;
    *(v15 + 41) = *&v22[9];
  }

  return result;
}

double sub_1AFD0209C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1AFDFC128();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFD04A54(0, &qword_1EB644280, sub_1AFD040E8, &type metadata for MovieFileAsset.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD040E8();
  v10 = v42;
  sub_1AFDFF3B8();
  v43 = a1;
  if (v10)
  {
    v42 = v10;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    v47 = 0;
    v48 = 0xE000000000000000;
    v49 = 0;
    v50 = 0xE000000000000000;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    v55 = 1;
    sub_1AF586868(&v47);
  }

  else
  {
    v11 = v40;
    v12 = a1[3];
    v13 = a1[4];
    sub_1AF441150(a1, v12);
    if (sub_1AF69504C(2031, v12, v13))
    {
      LOBYTE(v47) = 0;
      sub_1AFD040A0(&qword_1EB633060, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      v14 = v5;
      v15 = v7;
      v16 = v9;
      sub_1AFDFE768();
      v17 = sub_1AFDFC028();
      v19 = v18;
      (*(v11 + 8))(v14, v3);

      v20 = 0;
      v21 = v19;
      v22 = v17;
      v23 = v16;
      v24 = 0;
    }

    else
    {
      LOBYTE(v44) = 0;
      sub_1AF5DE134();
      v15 = v7;
      v23 = v9;
      sub_1AFDFE768();
      v22 = v47;
      v21 = v48;
      v17 = v49;
      v19 = v50;
      v20 = v51;
      v24 = v52;
    }

    v40 = v20;
    LOBYTE(v47) = 1;
    v25 = sub_1AFDFE718() & 1;
    LOBYTE(v47) = 2;
    v26 = sub_1AFDFE718();
    v38 = v24;
    v28 = v15;
    v29 = v26 & 1;
    v57 = 3;
    v56 = sub_1AFDFE718();
    v42 = 0;
    (*(v41 + 8))(v23, v28);
    v30 = v56 & 1;
    *&v44 = v22;
    *(&v44 + 1) = v21;
    *&v45 = v17;
    *(&v45 + 1) = v19;
    v31 = v22;
    v32 = v17;
    v33 = v40;
    v34 = v38;
    *v46 = v40;
    *&v46[8] = v38;
    v46[16] = v25;
    v46[17] = v29;
    v46[18] = v56 & 1;
    sub_1AF58680C(&v44, &v47);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v43);
    v47 = v31;
    v48 = v21;
    v49 = v32;
    v50 = v19;
    v51 = v33;
    v52 = v34;
    v53 = v25;
    v54 = v29;
    v55 = v30;
    sub_1AF586868(&v47);
    v35 = v45;
    v36 = v39;
    *v39 = v44;
    v36[1] = v35;
    result = *v46;
    v36[2] = *v46;
    *(v36 + 47) = *&v46[15];
  }

  return result;
}

uint64_t sub_1AFD025E0(void *a1, double a2)
{
  sub_1AFD04A54(0, &qword_1EB644260, sub_1AFD0404C, &type metadata for AudioController.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFD0404C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v18 = 0;
  v9 = sub_1AFDFE718();
  v17 = 1;
  v10 = sub_1AFDFE718();
  v16 = 2;
  v12 = sub_1AFDFE718();
  (*(v6 + 8))(v8, v5);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v12)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 0xFFFFFFFE | v9 & 1 | v13;
}

void sub_1AFD027F8(uint64_t a1)
{
  v2 = v1;
  v4 = 0;
  v124 = sub_1AFDFCA88();
  v5 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1AFDFCAC8();
  v7 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D1094(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = v95 - v12;
  v116 = sub_1AFDFC128();
  v13 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v103 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v108 = v95 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v113 = v95 - v18;
  v19 = *(v1 + 32);
  v163[0] = *(v1 + 16);
  v163[1] = v19;
  v164 = *(v1 + 48);
  v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v163, 0x200000000, &v128);
  if (v128)
  {
    v159 = v131;
    v160 = v132;
    v161 = v133;
    v157 = v129;
    v158 = v130;
    v162 = v134;
    v156 = v128;
    sub_1AFD06988(&v156);
    sub_1AFD03C74(&v128, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v21 = *(v2 + 72);
  v154[0] = *(v2 + 56);
  v154[1] = v21;
  v155 = *(v2 + 88);
  sub_1AF6B06C0(a1, v154, 0x200000000, v135);
  if (*&v135[0])
  {
    if (v138 <= 0 || (v102 = *(&v136 + 1)) == 0)
    {
      sub_1AFD03C74(v135, &qword_1ED725EA0, &type metadata for QueryResult);
      goto LABEL_58;
    }

    v95[1] = v20;
    v96 = v2;
    v97 = a1;
    v101 = *(&v135[2] + 1);
    v22 = *(&v137 + 1);
    v23 = *(v137 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v112 = *(*(&v137 + 1) + 32);
    v146 = *&v135[0];
    v147 = *(v135 + 8);
    v148 = *(&v135[1] + 8);
    v24 = type metadata accessor for AudioPlayerComponent(0);
    v149[2] = v135[2];
    v149[3] = v136;
    v149[4] = v137;
    v149[5] = v138;
    v149[0] = v135[0];
    v149[1] = v135[1];
    sub_1AF5DD298(v149, &v139);
    v25 = 0;
    v117 = v24;
    v98 = v24 - 8;
    v125 = &v140 + 8;
    v119 = (v7 + 8);
    v120 = (v5 + 8);
    v115 = (v13 + 48);
    v106 = (v13 + 16);
    v107 = (v13 + 32);
    v105 = (v13 + 8);
    v100 = v22;
    v99 = v23;
    while (1)
    {
      v110 = v25;
      v111 = v4;
      v26 = (v101 + 48 * v25);
      v27 = *v26;
      v127 = v26[1];
      v28 = *(v26 + 2);
      v29 = *(v26 + 3);
      v30 = *(v26 + 4);
      v31 = *(v26 + 5);
      if (v23)
      {
        v32 = *(v31 + 376);

        os_unfair_lock_lock(v32);
        os_unfair_lock_lock(*(v31 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v112);
      v33 = *(v22 + 4);
      v152[0] = *(v22 + 3);
      v152[1] = v33;
      v153 = v22[10];
      v34 = v22[4];
      v35 = *(*(*(*(v31 + 40) + 16) + 32) + 16) + 1;
      v36 = v31;

      v22[6] = ecs_stack_allocator_allocate(v34, 48 * v35, 8);
      v22[7] = v35;
      v22[9] = 0;
      v22[10] = 0;
      v22[8] = 0;

      v37 = sub_1AF64B110(v117, &off_1F256EF88, v28, v29, v30, v22);
      v109 = v36;
      v38 = sub_1AF64B110(&type metadata for AudioController, &off_1F256EED0, v28, v29, v30, v22);
      if (!v28)
      {
        break;
      }

      if (v30)
      {
        v40 = *(*v98 + 72);
        v41 = v38 + 1;
        v118 = v40;
        while (1)
        {
          v42 = *v37;
          if (*(v41 - 1) != 1)
          {
            if (v42)
            {
              v43 = *&v42[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
              sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
              v44 = v43;
              v127 = sub_1AFDFDB08();
              v45 = swift_allocObject();
              *(v45 + 16) = v44;
              *(&v141 + 1) = sub_1AFCF49A4;
              *&v142 = v45;
              v139 = MEMORY[0x1E69E9820];
              *&v140 = 1107296256;
              *(&v140 + 1) = sub_1AFCDA044;
              *&v141 = &unk_1F256F2A8;
              v46 = _Block_copy(&v139);
              v126 = v44;
              v47 = v121;
              sub_1AFDFCAA8();
              *&v150[0] = MEMORY[0x1E69E7CC0];
              sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
              sub_1AF6FD510();
              v49 = v123;
              v48 = v124;
              sub_1AFDFE058();
              v50 = v127;
              MEMORY[0x1B2719530](0, v47, v49, v46);
              _Block_release(v46);

              (*v120)(v49, v48);
              v51 = v47;
              v40 = v118;
              (*v119)(v51, v122);

              v42 = *v37;
            }

            *v37 = 0;

            goto LABEL_16;
          }

          if (v42)
          {
            goto LABEL_19;
          }

          v52 = v114;
          sub_1AFA9C3FC(&v37[*(v117 + 20)], v114, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
          v53 = v116;
          if ((*v115)(v52, 1, v116) != 1)
          {
            break;
          }

          sub_1AF456B8C(v52);
          v42 = *v37;
          if (*v37)
          {
            goto LABEL_19;
          }

LABEL_16:
          v41 += 3;
          v37 = &v40[v37];
          if (!--v30)
          {
            goto LABEL_34;
          }
        }

        v54 = v113;
        (*v107)(v113, v52, v53);
        v55 = v108;
        (*v106)(v108, v54, v53);
        v56 = objc_allocWithZone(type metadata accessor for AudioPlayer(0));
        v57 = sub_1AFCFB564(v55);
        v58 = *v37;
        *v37 = v57;

        v59 = *v37;
        if (*v37)
        {
          v127 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
          v60 = *&v59[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
          v61 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(&v141 + 1) = sub_1AFD04CF0;
          *&v142 = v61;
          v139 = MEMORY[0x1E69E9820];
          *&v140 = 1107296256;
          *(&v140 + 1) = sub_1AFCFBCE4;
          *&v141 = &unk_1F256F2D0;
          v62 = _Block_copy(&v139);
          v63 = v59;
          v64 = v60;

          [v64 installTapOnBus:0 bufferSize:4192 format:0 block:v62];
          _Block_release(v62);

          if (v63[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] == 1)
          {
            [*&v59[v127] play];
          }

          v40 = v118;
        }

        (*v105)(v113, v53);
        v42 = *v37;
        if (!*v37)
        {
          goto LABEL_16;
        }

LABEL_19:
        v42[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = v41[1];
        if (*v41 == 1)
        {
          v39 = 0.0;
        }

        else
        {
          LODWORD(v39) = 1.0;
        }

        [*&v42[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] setOutputVolume_];
        goto LABEL_16;
      }

LABEL_34:
      v22 = v100;
      v4 = v111;
      sub_1AF630994(v100, &v146, v152);
      v65 = v109;
      sub_1AF62D29C(v109);
      ecs_stack_allocator_pop_snapshot(v112);
      v23 = v99;
      if (v99)
      {
        os_unfair_lock_unlock(*(v65 + 43));
        os_unfair_lock_unlock(*(v65 + 47));
      }

      v25 = v110 + 1;
      if (v110 + 1 == v102)
      {
        sub_1AFD03C74(v135, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AFD03C74(v135, &qword_1ED725EA0, &type metadata for QueryResult);
        v2 = v96;
        a1 = v97;
        goto LABEL_58;
      }
    }

    if (v27 == v127)
    {
      goto LABEL_34;
    }

    v66 = *(*v98 + 72);
    v67 = v127 - v27;
    v68 = &v38[3 * v27 + 1];
    v69 = &v37[v66 * v27];
    while (1)
    {
      v70 = *v69;
      if (*(v68 - 1) != 1)
      {
        if (v70)
        {
          v71 = *&v70[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
          sub_1AF0D4478(0, &qword_1ED72F8A0, 0x1E69E9610);
          v72 = v71;
          v127 = sub_1AFDFDB08();
          v73 = swift_allocObject();
          *(v73 + 16) = v72;
          *(&v141 + 1) = sub_1AFCF41DC;
          *&v142 = v73;
          v139 = MEMORY[0x1E69E9820];
          *&v140 = 1107296256;
          *(&v140 + 1) = sub_1AFCDA044;
          *&v141 = &unk_1F256F208;
          v118 = _Block_copy(&v139);
          v126 = v72;
          v74 = v121;
          sub_1AFDFCAA8();
          *&v150[0] = MEMORY[0x1E69E7CC0];
          sub_1AFD040A0(&qword_1ED72F9D0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          sub_1AF0D1094(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
          sub_1AF6FD510();
          v75 = v123;
          v76 = v66;
          v77 = v124;
          sub_1AFDFE058();
          v78 = v118;
          v79 = v127;
          MEMORY[0x1B2719530](0, v74, v75, v118);
          _Block_release(v78);

          v80 = v77;
          v66 = v76;
          (*v120)(v75, v80);
          (*v119)(v74, v122);

          v70 = *v69;
        }

        *v69 = 0;

        goto LABEL_39;
      }

      if (v70)
      {
        goto LABEL_42;
      }

      v81 = v104;
      sub_1AFA9C3FC(v69 + *(v117 + 20), v104, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1AF0D1094);
      v82 = v116;
      if ((*v115)(v81, 1, v116) != 1)
      {
        break;
      }

      sub_1AF456B8C(v81);
      v70 = *v69;
      if (*v69)
      {
        goto LABEL_42;
      }

LABEL_39:
      v68 += 3;
      v69 = (v69 + v66);
      if (!--v67)
      {
        goto LABEL_34;
      }
    }

    v83 = v103;
    (*v107)(v103, v81, v82);
    v84 = v108;
    (*v106)(v108, v83, v82);
    v85 = objc_allocWithZone(type metadata accessor for AudioPlayer(0));
    v86 = sub_1AFCFB564(v84);
    v87 = *v69;
    *v69 = v86;

    v88 = *v69;
    if (*v69)
    {
      v127 = OBJC_IVAR____TtC3VFX11AudioPlayer_player;
      v89 = *&v88[OBJC_IVAR____TtC3VFX11AudioPlayer_player];
      v90 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(&v141 + 1) = sub_1AFD03FF0;
      *&v142 = v90;
      v139 = MEMORY[0x1E69E9820];
      *&v140 = 1107296256;
      *(&v140 + 1) = sub_1AFCFBCE4;
      *&v141 = &unk_1F256F258;
      v91 = _Block_copy(&v139);
      v92 = v88;
      v93 = v89;

      [v93 installTapOnBus:0 bufferSize:4192 format:0 block:v91];
      _Block_release(v91);

      if (v92[OBJC_IVAR____TtC3VFX11AudioPlayer_isValid] == 1)
      {
        [*&v88[v127] play];
      }
    }

    (*v105)(v103, v116);
    v70 = *v69;
    if (!*v69)
    {
      goto LABEL_39;
    }

LABEL_42:
    v70[OBJC_IVAR____TtC3VFX11AudioPlayer_loops] = v68[1];
    if (*v68 == 1)
    {
      v39 = 0.0;
    }

    else
    {
      LODWORD(v39) = 1.0;
    }

    [*&v70[OBJC_IVAR____TtC3VFX11AudioPlayer_mixer] setOutputVolume_];
    goto LABEL_39;
  }

LABEL_58:
  v94 = *(v2 + 112);
  v150[0] = *(v2 + 96);
  v150[1] = v94;
  v151 = *(v2 + 128);
  sub_1AF6B06C0(a1, v150, 0x200000000, &v139);
  if (v139)
  {
    *(&v149[2] + 8) = v142;
    *(&v149[3] + 8) = v143;
    *(&v149[4] + 8) = v144;
    *(v149 + 8) = v140;
    *(&v149[1] + 8) = v141;
    *(&v149[5] + 1) = v145;
    *&v149[0] = v139;
    sub_1AFD069B4(v149);
    sub_1AFD03C74(&v139, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFD03840(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  image[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = CMSampleBufferGetImageBuffer(a2);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_metalTextureCache);
      if (v7)
      {
        v8 = v7;
        Width = CVPixelBufferGetWidth(v6);
        Height = CVPixelBufferGetHeight(v6);
        image[0] = 0;
        if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], v8, v6, 0, MTLPixelFormatBGRA8Unorm_sRGB, Width, Height, 0, image))
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v11 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v19 = v11;
            swift_once();
            v11 = v19;
          }

          v20.value = 0;
          sub_1AF0D4F18(v11, &v20.value, 0xD00000000000002DLL, 0x80000001AFF4F080);
        }

        else
        {
          v12 = CVMetalTextureGetTexture(image[0]);
          v13 = *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer);
          *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_sampleBuffer) = a2;
          v14 = a2;

          *(v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_outputTexture) = v12;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          CMSampleBufferGetPresentationTimeStamp(&v20, v14);
          value = v20.value;
          epoch = v20.epoch;
          v17 = *&v20.timescale;

          swift_unknownObjectRelease();
          v18 = (v2 + OBJC_IVAR____TtC3VFX19VideoCaptureSession_frameTime);
          *v18 = value;
          v18[1] = v17;
          v18[2] = epoch;
        }
      }

      else
      {
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

unint64_t sub_1AFD03AAC()
{
  result = qword_1EB644200;
  if (!qword_1EB644200)
  {
    result = swift_getWitnessTable(byte_1AFEAAC64, &type metadata for VideoCapture.OrientationMode, v0, v1);
    atomic_store(result, &qword_1EB644200);
  }

  return result;
}

void sub_1AFD03B24(uint64_t a1)
{
  if (!qword_1EB644210)
  {
    sub_1AF0D4478(255, &qword_1EB6441F8, 0x1E69870A0);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB644210);
    }
  }
}

void sub_1AFD03B8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF0D8160(255, a3, a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AFD03BE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF0D8160(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFD03C40(uint64_t a1)
{

  return a1;
}

uint64_t sub_1AFD03C74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFD04A04(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFD03CE4(uint64_t a1)
{
  sub_1AF90C24C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AFD03D40()
{
  v1 = *(sub_1AFDFC128() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 12);
  v9 = *(v0 + ((v4 + 27) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AFCFA694(v0 + v2, v5, v6, v7, v8, v9);
}

double sub_1AFD03DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AFD03E08@<X0>(_BYTE *a1@<X8>)
{
  sub_1AFDFC128();
  result = sub_1AFC419BC(*(v1 + 24), sub_1AFD03FCC);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AFD03EF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AF7401F8;

  return sub_1AFCFF3A4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1AFD03FF8()
{
  result = qword_1EB644250;
  if (!qword_1EB644250)
  {
    result = swift_getWitnessTable(byte_1AFEAAC14, &type metadata for AudioAnalyzer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644250);
  }

  return result;
}

unint64_t sub_1AFD0404C()
{
  result = qword_1EB644268;
  if (!qword_1EB644268)
  {
    result = swift_getWitnessTable(byte_1AFEAABC4, &type metadata for AudioController.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644268);
  }

  return result;
}

uint64_t sub_1AFD040A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFD040E8()
{
  result = qword_1EB644288;
  if (!qword_1EB644288)
  {
    result = swift_getWitnessTable(aE_9, &type metadata for MovieFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644288);
  }

  return result;
}

unint64_t sub_1AFD0413C()
{
  result = qword_1EB6442A0;
  if (!qword_1EB6442A0)
  {
    result = swift_getWitnessTable(byte_1AFEAAB24, &type metadata for VideoCapture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6442A0);
  }

  return result;
}

unint64_t sub_1AFD04190()
{
  result = qword_1EB6442C0;
  if (!qword_1EB6442C0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AFD04A04(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4[0] = MEMORY[0x1E69E6160];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EB6442C0);
  }

  return result;
}

uint64_t destroy for AudioSpectrum(void *a1)
{
}

uint64_t initializeWithCopy for AudioSpectrum(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 6);
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t *assignWithCopy for AudioSpectrum(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  a1[4] = a2[4];

  a1[5] = a2[5];

  v4 = a2[6];
  *(a1 + 56) = *(a2 + 56);
  a1[6] = v4;
  return a1;
}

uint64_t assignWithTake for AudioSpectrum(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

unint64_t sub_1AFD044BC()
{
  result = qword_1EB6442C8;
  if (!qword_1EB6442C8)
  {
    sub_1AFD04A04(255, &qword_1EB6442D0, &type metadata for VideoCapture.OrientationMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB6442C8);
  }

  return result;
}

unint64_t sub_1AFD0453C()
{
  result = qword_1EB6442D8;
  if (!qword_1EB6442D8)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for VideoCapture.OrientationMode, v0, v1);
    atomic_store(result, &qword_1EB6442D8);
  }

  return result;
}

unint64_t sub_1AFD04594()
{
  result = qword_1EB6442E0;
  if (!qword_1EB6442E0)
  {
    result = swift_getWitnessTable(byte_1AFEAA864, &type metadata for AudioAnalyzer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6442E0);
  }

  return result;
}

unint64_t sub_1AFD045EC()
{
  result = qword_1EB6442E8;
  if (!qword_1EB6442E8)
  {
    result = swift_getWitnessTable(asc_1AFEAA91C, &type metadata for AudioController.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6442E8);
  }

  return result;
}

unint64_t sub_1AFD04644()
{
  result = qword_1EB6442F0;
  if (!qword_1EB6442F0)
  {
    result = swift_getWitnessTable(asc_1AFEAAA0C, &type metadata for MovieFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6442F0);
  }

  return result;
}

unint64_t sub_1AFD0469C()
{
  result = qword_1EB6442F8;
  if (!qword_1EB6442F8)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for VideoCapture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6442F8);
  }

  return result;
}

unint64_t sub_1AFD046F4()
{
  result = qword_1EB644300;
  if (!qword_1EB644300)
  {
    result = swift_getWitnessTable(byte_1AFEAAA34, &type metadata for VideoCapture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644300);
  }

  return result;
}

unint64_t sub_1AFD0474C()
{
  result = qword_1EB644308;
  if (!qword_1EB644308)
  {
    result = swift_getWitnessTable(byte_1AFEAAA5C, &type metadata for VideoCapture.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644308);
  }

  return result;
}

unint64_t sub_1AFD047A4()
{
  result = qword_1EB644310;
  if (!qword_1EB644310)
  {
    result = swift_getWitnessTable(byte_1AFEAA944, &type metadata for MovieFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644310);
  }

  return result;
}

unint64_t sub_1AFD047FC()
{
  result = qword_1EB644318;
  if (!qword_1EB644318)
  {
    result = swift_getWitnessTable(byte_1AFEAA96C, &type metadata for MovieFileAsset.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644318);
  }

  return result;
}

unint64_t sub_1AFD04854()
{
  result = qword_1EB644320;
  if (!qword_1EB644320)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for AudioController.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644320);
  }

  return result;
}

unint64_t sub_1AFD048AC()
{
  result = qword_1EB644328;
  if (!qword_1EB644328)
  {
    result = swift_getWitnessTable(asc_1AFEAA8B4, &type metadata for AudioController.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644328);
  }

  return result;
}

unint64_t sub_1AFD04904()
{
  result = qword_1EB644330;
  if (!qword_1EB644330)
  {
    result = swift_getWitnessTable(byte_1AFEAA7D4, &type metadata for AudioAnalyzer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644330);
  }

  return result;
}

unint64_t sub_1AFD0495C()
{
  result = qword_1EB644338;
  if (!qword_1EB644338)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for AudioAnalyzer.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644338);
  }

  return result;
}

unint64_t sub_1AFD049B0()
{
  result = qword_1EB644348;
  if (!qword_1EB644348)
  {
    result = swift_getWitnessTable(byte_1AFEAADD8, &type metadata for AudioSpectrum.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644348);
  }

  return result;
}

void sub_1AFD04A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AFD04A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AFD04ABC(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFD04A04(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFD04B64()
{
  result = qword_1EB644360;
  if (!qword_1EB644360)
  {
    result = swift_getWitnessTable(byte_1AFEAADB0, &type metadata for AudioSpectrum.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644360);
  }

  return result;
}

unint64_t sub_1AFD04BBC()
{
  result = qword_1EB644368;
  if (!qword_1EB644368)
  {
    result = swift_getWitnessTable(asc_1AFEAACE8, &type metadata for AudioSpectrum.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644368);
  }

  return result;
}

unint64_t sub_1AFD04C14()
{
  result = qword_1EB644370;
  if (!qword_1EB644370)
  {
    result = swift_getWitnessTable(asc_1AFEAAD10, &type metadata for AudioSpectrum.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB644370);
  }

  return result;
}

unint64_t sub_1AFD04D04(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 64, 8);
  *v4 = &type metadata for Position;
  v4[1] = &off_1F252EE70;
  v4[2] = &type metadata for Orientation;
  v4[3] = &off_1F252C8A8;
  v4[4] = &type metadata for Scale3;
  v4[5] = &off_1F252F998;
  v4[6] = &type metadata for Name;
  v4[7] = &off_1F2535068;
  v5 = sub_1AF63A844(v4, 4uLL, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

unint64_t sub_1AFD04DDC(unint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6, float32x4_t a7)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v9 = ecs_stack_allocator_allocate(*(a2 + 32), 96, 8);
  *v9 = &type metadata for Position;
  v9[1] = &off_1F252EE70;
  v9[2] = &type metadata for Orientation;
  v9[3] = &off_1F252C8A8;
  v9[4] = &type metadata for Scale3;
  v9[5] = &off_1F252F998;
  v9[6] = &type metadata for WorldTransform;
  v9[7] = &off_1F2529FC0;
  v9[8] = &type metadata for ParticlePlaneCollider;
  v9[9] = &off_1F25530C8;
  v9[10] = &type metadata for NotInHierarchy;
  v9[11] = &off_1F252A400;
  v10 = sub_1AF63A870(v9, 6uLL, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2, a3, a4, a5, a6, a7);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v10;
}

unint64_t sub_1AFD04EFC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 96, 8);
  *v4 = &type metadata for Name;
  v4[1] = &off_1F2535068;
  v4[2] = &type metadata for PointOfView;
  v4[3] = &off_1F2511E50;
  v4[4] = &type metadata for WorldTransform;
  v4[5] = &off_1F2529FC0;
  v4[6] = &type metadata for ProjectionMatrix;
  v4[7] = &off_1F2511DA0;
  v4[8] = &type metadata for LastFrameWorldTransform;
  v4[9] = &off_1F2529EB0;
  v4[10] = &type metadata for Beamed;
  v4[11] = &off_1F2529FA0;
  v5 = sub_1AF63B068(v4, 6uLL, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

unint64_t sub_1AFD04FFC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 48, 8);
  *v4 = &type metadata for VFXTag;
  v4[1] = &off_1F253D538;
  v4[2] = type metadata accessor for VFXObjectTag(0);
  v4[3] = &off_1F253D658;
  v4[4] = &type metadata for WorldTransform;
  v4[5] = &off_1F2529FC0;
  v5 = sub_1AF63C0AC(v4, 3uLL, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

uint64_t sub_1AFD05118(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = a2(0);
  v6 = sub_1AF64B03C(v5, *a3);
  v7 = 0;
  if ((v8 & 1) == 0)
  {
    v9 = *(v5 - 8);
    if (*(v9 + 64))
    {
      v10 = *(v9 + 72);
    }

    else
    {
      v10 = 0;
    }

    return v6 + v10 * a1;
  }

  return v7;
}

unint64_t sub_1AFD051BC(unint64_t a1, uint64_t a2)
{
  ecs_stack_allocator_push_snapshot(*(a2 + 32));
  v4 = ecs_stack_allocator_allocate(*(a2 + 32), 112, 8);
  *v4 = &type metadata for Position;
  v4[1] = &off_1F252EE70;
  v4[2] = &type metadata for Orientation;
  v4[3] = &off_1F252C8A8;
  v4[4] = &type metadata for Scale3;
  v4[5] = &off_1F252F998;
  v4[6] = &type metadata for Name;
  v4[7] = &off_1F2535068;
  v4[8] = &type metadata for PointOfView;
  v4[9] = &off_1F2511E50;
  v4[10] = &type metadata for WorldTransform;
  v4[11] = &off_1F2529FC0;
  v4[12] = &type metadata for ProjectionMatrix;
  v4[13] = &off_1F2511DA0;
  v5 = sub_1AF63E1F8(v4, 7uLL, MEMORY[0x1E69E7CC0], 1, a1 | ((HIDWORD(a1) & 1) << 32), a2);
  ecs_stack_allocator_pop_snapshot(*(a2 + 32));
  return v5;
}

double sub_1AFD052D0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = off_1F2529FC8;

  v3 = sub_1AF64B03C(&type metadata for WorldTransform, v2);
  v5 = v4;

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v3 + (v1 << 6));
  }

  v7 = off_1F2529FA8;

  sub_1AF64B03C(&type metadata for Beamed, v7);

  *v6 = xmmword_1AFE20150;
  v6[1] = xmmword_1AFE20160;
  result = 0.0;
  v6[2] = xmmword_1AFE20180;
  v6[3] = xmmword_1AFE201A0;
  return result;
}

__n128 sub_1AFD053A0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 48);
  v6 = off_1F25604B0;

  v7 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive, v6);
  v9 = v8;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 + 112 * v5;
  }

  v11 = off_1F2560490;

  v12 = sub_1AF64B03C(&type metadata for DebugInfoColor, v11);

  v13 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v13;
  *(v10 + 96) = *(a2 + 96);
  v14 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v14;
  result = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = result;
  *(v12 + 4 * v5) = a3;
  return result;
}

__n128 sub_1AFD05484(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v7 = *(a1 + 48);
  v8 = off_1F25604B0;

  v9 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive, v8);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9 + 112 * v7;
  }

  v13 = off_1F2529FC8;

  v14 = sub_1AF64B03C(&type metadata for WorldTransform, v13);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v14 + (v7 << 6));
  }

  v18 = off_1F2529FA8;

  sub_1AF64B03C(&type metadata for Beamed, v18);

  v19 = *(a2 + 80);
  *(v12 + 64) = *(a2 + 64);
  *(v12 + 80) = v19;
  *(v12 + 96) = *(a2 + 96);
  v20 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v20;
  v21 = *(a2 + 48);
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = v21;
  *v17 = a3;
  v17[1] = a4;
  result = a6;
  v17[2] = a5;
  v17[3] = a6;
  return result;
}

__n128 sub_1AFD055BC(uint64_t a1, __n128 a2, __n128 a3, float a4)
{
  v5 = *(a1 + 48);
  v6 = off_1F252EE78;

  v7 = sub_1AF64B03C(&type metadata for Position, v6);
  v9 = v8;

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v7 + 16 * v5);
  }

  v11 = off_1F252C8B0;

  v12 = sub_1AF64B03C(&type metadata for Orientation, v11);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v12 + 16 * v5);
  }

  v16 = off_1F252F790;

  v17 = sub_1AF64B03C(&type metadata for Scale1, v16);
  v19 = v18;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v17 + 4 * v5);
  }

  v21 = off_1F2529FC8;

  sub_1AF64B03C(&type metadata for WorldTransform, v21);

  v22 = a2;
  v22.n128_u32[3] = 1.0;
  *v10 = v22;
  result = a3;
  *v15 = a3;
  *v20 = a4;
  return result;
}

double sub_1AFD05724(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = off_1F252EE78;

  v3 = sub_1AF64B03C(&type metadata for Position, v2);
  v5 = v4;

  v6 = 16 * v1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v3 + 16 * v1);
  }

  v8 = off_1F252C8B0;

  v9 = sub_1AF64B03C(&type metadata for Orientation, v8);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v9 + v6);
  }

  v13 = off_1F252F9A0;

  v14 = sub_1AF64B03C(&type metadata for Scale3, v13);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v14 + v6);
  }

  v18 = off_1F2535070;

  v19 = sub_1AF64B03C(&type metadata for Name, v18);

  v20 = (v19 + v6);

  result = 0.0;
  *v7 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  *v17 = _Q1;
  *v12 = xmmword_1AFE201A0;
  *v20 = 0x746F6F72656874;
  v20[1] = 0xE700000000000000;
  return result;
}

__n128 sub_1AFD05898(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = *(a1 + 48);
  v10 = off_1F25604B0;

  v11 = sub_1AF64B03C(&type metadata for DebugInfoWireframePrimitive, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 + 112 * v9;
  }

  v15 = off_1F2560490;

  v16 = sub_1AF64B03C(&type metadata for DebugInfoColor, v15);
  v18 = v17;

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v16 + 4 * v9);
  }

  v20 = off_1F2529FC8;

  v21 = sub_1AF64B03C(&type metadata for WorldTransform, v20);
  v23 = v22;

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v21 + (v9 << 6));
  }

  v25 = off_1F2529FA8;

  sub_1AF64B03C(&type metadata for Beamed, v25);

  v26 = *(a2 + 80);
  *(v14 + 64) = *(a2 + 64);
  *(v14 + 80) = v26;
  *(v14 + 96) = *(a2 + 96);
  v27 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v27;
  v28 = *(a2 + 48);
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = v28;
  *v19 = a3;
  *v24 = a4;
  v24[1] = a5;
  result = a7;
  v24[2] = a6;
  v24[3] = a7;
  return result;
}

double sub_1AFD05A20(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, __n128 a5, float32x4_t a6)
{
  v6 = *(a1 + 48);
  v7 = off_1F252EE78;

  v8 = sub_1AF64B03C(&type metadata for Position, v7);
  v10 = v9;

  v11 = 16 * v6;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v8 + 16 * v6);
  }

  v13 = off_1F252C8B0;

  v14 = sub_1AF64B03C(&type metadata for Orientation, v13);
  v16 = v15;

  v17 = off_1F252F9A0;

  v18 = sub_1AF64B03C(&type metadata for Scale3, v17);
  v20 = v19;

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = (v18 + v11);
  }

  v22 = off_1F2529FC8;

  sub_1AF64B03C(&type metadata for WorldTransform, v22);

  v23 = off_1F25530D0;

  v24 = sub_1AF64B03C(&type metadata for ParticlePlaneCollider, v23);
  v26 = v25;

  v27 = off_1F252A408;

  sub_1AF64B03C(&type metadata for NotInHierarchy, v27);

  v28 = a5;
  v28.n128_u32[3] = 1.0;
  v29 = vmulq_f32(a2, a2);
  v30 = vmulq_f32(a3, a3);
  v31 = vmulq_f32(a4, a4);
  *&v32 = vmul_f32(*a6.f32, vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.f32), vzip2_s32(*v29.i8, *v30.f32)))));
  *(&v32 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(sqrtf(*&v31.i32[2] + vaddv_f32(*v31.i8)), a6, 2));
  *v12 = v28;
  *v21 = v32;
  v33 = vzip2q_s32(v29, v31);
  v34 = vzip1q_s32(vzip1q_s32(v29, v31), v30);
  v35 = vtrn2q_s32(v29, v30);
  v35.i32[2] = v31.i32[1];
  v36 = vaddq_f32(vzip1q_s32(v33, vdupq_laneq_s32(v30, 2)), vaddq_f32(v34, v35));
  v30.i64[0] = 0x80000000800000;
  v30.i64[1] = 0x80000000800000;
  v37 = vcgeq_f32(v30, v36);
  v36.i32[3] = 0;
  v38 = vrsqrteq_f32(v36);
  v39 = vmulq_f32(v38, vrsqrtsq_f32(v36, vmulq_f32(v38, v38)));
  v40 = v37;
  v40.i32[3] = 0;
  v41 = vbslq_s8(vcltzq_s32(v40), v36, vmulq_f32(v39, vrsqrtsq_f32(v36, vmulq_f32(v39, v39))));
  v42 = vmulq_n_f32(a2, v41.f32[0]);
  v43 = vmulq_lane_f32(a3, *v41.f32, 1);
  v44 = vmulq_laneq_f32(a4, v41, 2);
  v45 = vuzp1q_s32(v44, v44);
  v46 = vuzp1q_s32(v43, v43);
  v47 = v42;
  if (v37.i32[0])
  {
    v48 = vmlaq_f32(vmulq_f32(vextq_s8(v45, v44, 0xCuLL), vnegq_f32(v43)), v44, vextq_s8(v46, v43, 0xCuLL));
    v47 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
  }

  v49 = vuzp1q_s32(v42, v42);
  v50 = v43;
  if (v37.i32[1])
  {
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(v49, v42, 0xCuLL), vnegq_f32(v44)), v42, vextq_s8(v45, v44, 0xCuLL));
    v50 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  }

  if (v37.i32[2])
  {
    v52 = vmlaq_f32(vmulq_f32(vextq_s8(v46, v43, 0xCuLL), vnegq_f32(v42)), v43, vextq_s8(v49, v42, 0xCuLL));
    v44 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
  }

  v53 = (*v47.i32 + *&v50.i32[1]) + v44.f32[2];
  if (v53 > 0.0)
  {
    v54 = sqrtf(v53 + 1.0);
    *v55.f32 = vsub_f32(*&vzip2q_s32(v50, vuzp1q_s32(v50, v44)), *&vtrn2q_s32(v44, vzip2q_s32(v44, v47)));
    v55.f32[2] = *&v47.i32[1] - *v50.i32;
    v55.f32[3] = v54 * v54;
    v56 = 0.5 / v54;
LABEL_15:
    v57 = vmulq_n_f32(v55, v56);
    goto LABEL_24;
  }

  if (*v47.i32 < *&v50.i32[1] || *v47.i32 < v44.f32[2])
  {
    if (*&v50.i32[1] <= v44.f32[2])
    {
      v68 = vzip2q_s32(v47, v50).u64[0];
      v69 = __PAIR64__(v47.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v44.f32[2] + 1.0) - *v47.i32) - *&v50.i32[1])));
      v70 = vdup_lane_s32(*v50.i8, 0);
      v71 = vsub_f32(*v47.i8, v70);
      v70.i32[0] = v69.i32[0];
      v70.i32[0] = vmul_f32(v69, v70).u32[0];
      v70.i32[1] = v71.i32[1];
      *v55.f32 = vadd_f32(v68, *v44.f32);
      *&v55.u32[2] = v70;
      v56 = 0.5 / v69.f32[0];
      goto LABEL_15;
    }

    v60 = sqrtf(((*&v50.i32[1] + 1.0) - *v47.i32) - v44.f32[2]);
    v64.f32[0] = *&v47.i32[1] + *v50.i32;
    v59 = vzip2q_s32(v47, v50).u64[0];
    v64.f32[1] = v60 * v60;
    *&v64.u32[2] = vext_s8(vadd_f32(*v44.f32, v59), vsub_f32(*v44.f32, v59), 4uLL);
  }

  else
  {
    v60 = sqrtf(((*v47.i32 + 1.0) - *&v50.i32[1]) - v44.f32[2]);
    v64.f32[0] = v60 * v60;
    v61 = *&v47.i32[1] + *v50.i32;
    v62 = vzip2q_s32(v47, v50).u64[0];
    LODWORD(v63) = vadd_f32(v62, *v44.f32).u32[0];
    HIDWORD(v63) = vsub_f32(v62, *&v44).i32[1];
    v64.f32[1] = v61;
    v64.i64[1] = v63;
  }

  v57 = vmulq_n_f32(v64, 0.5 / v60);
LABEL_24:
  v65 = v24 + 28 * v6;
  if (v26)
  {
    v65 = 0;
  }

  v66 = (v14 + v11);
  if (v16)
  {
    v66 = 0;
  }

  *v66 = v57;
  *v65 = 0;
  *&result = 1065353216;
  *(v65 + 12) = 1065353216;
  return result;
}

uint64_t sub_1AFD05E78()
{
  v0 = off_1F2535070;

  sub_1AF64B03C(&type metadata for Name, v0);

  v1 = off_1F2511E58;

  sub_1AF64B03C(&type metadata for PointOfView, v1);

  v2 = off_1F2529FC8;

  sub_1AF64B03C(&type metadata for WorldTransform, v2);

  v3 = off_1F2511DA8;

  sub_1AF64B03C(&type metadata for ProjectionMatrix, v3);

  v4 = off_1F2529EB8;

  sub_1AF64B03C(&type metadata for LastFrameWorldTransform, v4);

  v5 = off_1F2529FA8;

  sub_1AF64B03C(&type metadata for Beamed, v5);
}

double sub_1AFD05FA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = off_1F252EE78;

  v3 = sub_1AF64B03C(&type metadata for Position, v2);
  v5 = v4;

  v6 = 16 * v1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v3 + 16 * v1);
  }

  v8 = off_1F252C8B0;

  v9 = sub_1AF64B03C(&type metadata for Orientation, v8);
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v9 + v6);
  }

  v13 = off_1F252F9A0;

  v14 = sub_1AF64B03C(&type metadata for Scale3, v13);
  v16 = v15;

  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v14 + v6);
  }

  v18 = off_1F2535070;

  v19 = sub_1AF64B03C(&type metadata for Name, v18);
  v21 = v20;

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = (v19 + v6);
  }

  v23 = off_1F2511E58;

  sub_1AF64B03C(&type metadata for PointOfView, v23);

  v24 = off_1F2529FC8;

  sub_1AF64B03C(&type metadata for WorldTransform, v24);

  v25 = off_1F2511DA8;

  sub_1AF64B03C(&type metadata for ProjectionMatrix, v25);

  *v22 = 0x6172656D6143;
  v22[1] = 0xE600000000000000;
  result = 0.0;
  *v7 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  *v17 = _Q1;
  *v12 = xmmword_1AFE201A0;
  return result;
}