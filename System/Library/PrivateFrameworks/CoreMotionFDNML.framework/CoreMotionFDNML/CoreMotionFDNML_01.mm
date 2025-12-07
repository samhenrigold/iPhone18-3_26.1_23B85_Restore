void sub_245F728B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v13 = *(v4 + v12);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = sub_245F6C2D8(a1, a2);
  if ((v15 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_245F6896C(*(v13 + 56) + *(v9 + 72) * v14, v11);

  v16 = *(v11 + 3);
  v17 = *(v11 + 4);
  sub_245F688C4(v16, v17);
  sub_245F68AA4(v11);
  if ((a4 & 0x8000000000000000) == 0)
  {
    sub_245F764C8();
    sub_245F68918(v16, v17);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t AdaptorError.localizedDescription.getter()
{
  v1 = 0xD000000000000014;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    sub_245F769C8();

    MEMORY[0x24C1951C0](v3, v2);
    MEMORY[0x24C1951C0](0x203A65766168202CLL, 0xE800000000000000);
    if (qword_27EE38B58 != -1)
    {
      swift_once();
    }

    v4 = sub_245F76828();
    MEMORY[0x24C1951C0](v4);

    return 0xD000000000000021;
  }

  return v1;
}

id static CMCoreMLModel.fromBundlePath(_:)(uint64_t a1)
{
  v1 = sub_245F768B8();
  v3 = sub_245F75200(v1, v2);

  return v3;
}

id sub_245F72DA0(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_);
  v4 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  swift_beginAccess();
  v5 = *(a1 + v4);
  type metadata accessor for TensorFeatureProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v12[0] = 0;

  v7 = [v3 predictionFromFeatures:v6 error:v12];

  v8 = v12[0];
  if (v7)
  {
    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v9 = v8;
    v8 = sub_245F74B74(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v12[0];
    sub_245F76438();

    swift_willThrow();
  }

  return v8;
}

void sub_245F72ED8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_245F72FA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_245F72FC0, 0, 0);
}

uint64_t sub_245F72FC0()
{
  v1 = sub_245F71B48();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_245F73074;

  return MEMORY[0x282111988](v1);
}

uint64_t sub_245F73074(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_245F73308, 0, 0);
  }

  else
  {

    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v6 = swift_task_alloc();
    *(v4 + 56) = v6;
    *v6 = v5;
    v6[1] = sub_245F73208;

    return sub_245F70FA8(a1);
  }
}

uint64_t sub_245F73208(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_245F73308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245F734F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_245F73580, 0, 0);
}

uint64_t sub_245F73580()
{
  v1 = sub_245F71B48();
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_245F73634;

  return MEMORY[0x282111988](v1);
}

uint64_t sub_245F73634(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_245F73968, 0, 0);
  }

  else
  {

    objc_allocWithZone(type metadata accessor for CMWrappedArrays());
    v6 = swift_task_alloc();
    *(v4 + 64) = v6;
    *v6 = v5;
    v6[1] = sub_245F737C8;

    return sub_245F70FA8(a1);
  }
}

uint64_t sub_245F737C8(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_245F738C8, 0, 0);
}

uint64_t sub_245F738C8()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  v4 = *(v0 + 72);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_245F73968()
{
  v1 = v0[7];
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  v5 = sub_245F76428();
  (*(v2 + 16))(v2, 0, v5);
  v6 = v0[4];

  _Block_release(v6);
  v7 = v0[1];

  return v7();
}

id sub_245F73AD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_245F73B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_245F763C8;

  return v6();
}

uint64_t sub_245F73C04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_245F73CEC;

  return v7();
}

uint64_t sub_245F73CEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245F73DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_245F75EE4(a3, v23 - v10);
  v12 = sub_245F76928();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_245F75F54(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245F76918();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_245F76908();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_245F76888() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_245F75F54(a3);

    return v21;
  }

LABEL_8:
  sub_245F75F54(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_245F7409C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_245F74194;

  return v6(a1);
}

uint64_t sub_245F74194()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245F7428C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_245F76A88();
  sub_245F76898();
  v8 = sub_245F76A98();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_245F76A08() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_245F7463C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_245F743DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  result = sub_245F769B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_245F76A88();
      sub_245F76898();
      result = sub_245F76A98();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_245F7463C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_245F743DC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_245F747BC();
      goto LABEL_16;
    }

    sub_245F74918(v8 + 1);
  }

  v10 = *v4;
  sub_245F76A88();
  sub_245F76898();
  result = sub_245F76A98();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_245F76A08();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_245F76A18();
  __break(1u);
  return result;
}

void *sub_245F747BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  v2 = *v0;
  v3 = sub_245F769A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_245F74918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38DD0, &qword_245F79A50);
  result = sub_245F769B8();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_245F76A88();

      sub_245F76898();
      result = sub_245F76A98();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

id sub_245F74B74(void *a1)
{
  v3 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  v56 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D00, &qword_245F79808);
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v61 = &v52 - v8;
  v9 = OBJC_IVAR____TtC15CoreMotionFDNML15CMWrappedArrays_arrays;
  v10 = MEMORY[0x277D84F90];
  *&v1[v9] = sub_245F6D310(MEMORY[0x277D84F90]);
  v11 = sub_245F6D310(v10);
  swift_beginAccess();
  v60 = v9;
  v63 = v1;
  *&v1[v9] = v11;

  v12 = [a1 featureNames];
  v13 = sub_245F76958();

  v14 = v13;
  v15 = 0;
  v18 = *(v13 + 56);
  v17 = v13 + 56;
  v16 = v18;
  v19 = 1 << *(v14 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v52 = (v7 + 8);
  v53 = v14;
  v55 = a1;
  while (v21)
  {
LABEL_10:
    v24 = (*(v14 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v21)))));
    v26 = *v24;
    v25 = v24[1];

    v27 = sub_245F76868();
    v28 = a1;
    v21 &= v21 - 1;
    v29 = [a1 featureValueForName_];

    if (v29)
    {
      v30 = v29;
      v31 = [v29 multiArrayValue];
      if (v31)
      {
        v59 = v29;
        v58 = v31;
        sub_245F767C8();
        v32 = v57;
        sub_245F70730(v57);
        v33 = v60;
        v34 = v63;
        swift_beginAccess();
        sub_245F689D0(v32, v62);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *&v34[v33];
        v36 = v65;
        *&v34[v33] = 0x8000000000000000;
        v38 = sub_245F6C2D8(v26, v25);
        v39 = v36[2];
        v40 = (v37 & 1) == 0;
        v41 = v39 + v40;
        if (__OFADD__(v39, v40))
        {
          goto LABEL_27;
        }

        v42 = v37;
        if (v36[3] >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v55;
            if (v37)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_245F6CCA0();
            a1 = v55;
            if (v42)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_245F6C408(v41, isUniquelyReferenced_nonNull_native);
          v43 = sub_245F6C2D8(v26, v25);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_29;
          }

          v38 = v43;
          a1 = v55;
          if (v42)
          {
LABEL_20:

            v45 = v65;
            sub_245F762BC(v62, v65[7] + *(v56 + 72) * v38);
            goto LABEL_24;
          }
        }

        v45 = v65;
        v65[(v38 >> 6) + 8] |= 1 << v38;
        v46 = (v45[6] + 16 * v38);
        *v46 = v26;
        v46[1] = v25;
        sub_245F689D0(v62, v45[7] + *(v56 + 72) * v38);
        v47 = v45[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_28;
        }

        v45[2] = v49;
LABEL_24:
        *&v63[v60] = v45;

        swift_endAccess();

        (*v52)(v61, v54);
        v14 = v53;
      }

      else
      {
        a1 = v28;
      }
    }

    else
    {

      a1 = v28;
    }
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      v50 = type metadata accessor for CMWrappedArrays();
      v64.receiver = v63;
      v64.super_class = v50;
      return objc_msgSendSuper2(&v64, sel_init);
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_245F76A28();
  __break(1u);
  return result;
}

id sub_245F75094(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_245F76468();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_245F76498();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_245F76438();

    swift_willThrow();
    v11 = sub_245F76498();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_245F751F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

id sub_245F75200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_245F76498();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_245F76458();
  v11 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v11 setComputeUnits_];
  sub_245F76320(0, &qword_27EE38DD8, 0x277CBFF20);
  (*(v5 + 16))(v8, v10, v4);
  v12 = v11;
  v13 = sub_245F75094(v8, v12);
  if (v2)
  {

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    v14 = v13;

    v15 = type metadata accessor for CMCoreMLModel();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC15CoreMotionFDNML13CMCoreMLModel_model_] = v14;
    v18.receiver = v16;
    v18.super_class = v15;
    v3 = objc_msgSendSuper2(&v18, sel_init);

    (*(v5 + 8))(v10, v4);
  }

  return v3;
}

uint64_t sub_245F75404(uint64_t a1)
{
  v2 = sub_245F768B8();
  v4 = v3;
  if (qword_27EE38B58 != -1)
  {
    swift_once();
  }

  if (!*(off_27EE38D40 + 2))
  {
    goto LABEL_12;
  }

  sub_245F6C2D8(v2, v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_245F76868();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (!v7)
  {

LABEL_12:
    sub_245F76368();
    swift_allocError();
    *v15 = v2;
    v15[1] = v4;
    swift_willThrow();
    return v2;
  }

  v8 = v7;
  v9 = sub_245F76868();

  v10 = sub_245F76868();
  v11 = [v8 pathForResource:v9 ofType:v10];

  if (!v11)
  {

    goto LABEL_12;
  }

  v2 = sub_245F76878();
  v13 = v12;

  v14 = sub_245F75200(v2, v13);
  if (!v1)
  {
    v2 = v14;
  }

  return v2;
}

uint64_t sub_245F757A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F757F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_245F7584C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_245F75868(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of CMCoreMLModel.predictAsync(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245F75A28;

  return v7(a1);
}

uint64_t sub_245F75A28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_245F75B24()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_245F75B6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_245F75C20;

  return sub_245F734F4(v2, v3, v4);
}

uint64_t sub_245F75C20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_245F75D18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_245F763CC;

  return sub_245F73B1C(v2, v3, v4);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_245F75E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_245F763D0;

  return sub_245F73C04(a1, v4, v5, v6);
}

uint64_t sub_245F75EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F75F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245F75FBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_245F75FF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245F763D4;

  return sub_245F7409C(a1, v4);
}

uint64_t sub_245F760AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_245F76164;

  return sub_245F7409C(a1, v4);
}

uint64_t sub_245F76164()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_245F76258()
{
  result = qword_27EE38DC8;
  if (!qword_27EE38DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE38D00, &qword_245F79808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38DC8);
  }

  return result;
}

uint64_t sub_245F762BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMotionFoundationModel_Array(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F76320(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_245F76368()
{
  result = qword_27EE38DE0;
  if (!qword_27EE38DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE38DE0);
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}