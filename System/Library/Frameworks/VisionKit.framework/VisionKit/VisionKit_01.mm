unint64_t sub_23B2E7434(uint64_t a1)
{
  sub_23B2EADC0();
  sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_23B2EAEB0();

  return sub_23B2E74CC(a1, v2);
}

unint64_t sub_23B2E74CC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23B2EADC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23B2EA8D8(&qword_27E12E720, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_23B2EAED0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_23B2E768C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_23B2EADC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E718, &qword_23B2ECEA8);
  v39 = v4;
  result = sub_23B2EB180();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_23B2EAEB0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_23B2E7A68(int64_t a1, uint64_t a2)
{
  v40 = sub_23B2EADC0();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_23B2EB110();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_23B2EA8D8(&qword_27E12E710, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_23B2EAEB0();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

char *sub_23B2E7D88()
{
  v1 = v0;
  v31 = sub_23B2EADC0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E718, &qword_23B2ECEA8);
  v3 = *v0;
  v4 = sub_23B2EB170();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_23B2E7FFC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48) + 32 * result;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  *a4 = *v5;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
}

uint64_t sub_23B2E809C(uint64_t a1)
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

uint64_t sub_23B2E80D4(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView);
  if (v3)
  {
    if (a1 - 2 < 2 || a1 > 1)
    {
      [*(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) hideGuidance];
    }

    else
    {
      sub_23B2D2208(0, &qword_27E12E708, 0x277D78578);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v5 = objc_opt_self();
      v6 = v3;
      v7 = [v5 bundleForClass_];
      sub_23B2EAD70();

      v8 = sub_23B2EAEE0();

      [v6 showGuidanceWithText_];
    }
  }

  v9 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    if (a1 >= 4)
    {
      v12 = 0;
    }

    else
    {
      v12 = a1;
    }

    ObjectType = swift_getObjectType();
    v14 = v12;
    (*(v11 + 16))(v1, &v14, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_23B2E82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_23B2E8414(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_23B2D73B4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_23B2E82C0(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_23B2E84D4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E12E6F8, &unk_23B2ECE98);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E360, &unk_23B2EC560);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - v10;
  if (qword_27E12E120 != -1)
  {
    swift_once();
  }

  v11 = sub_23B2EAE70();
  __swift_project_value_buffer(v11, qword_27E12E420);
  v12 = a1;
  v13 = a2;
  v14 = sub_23B2EAE50();
  v15 = sub_23B2EB070();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2112;
    v18 = v12;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v16 + 14) = v20;
    v17[1] = v21;
    _os_log_impl(&dword_23B2CF000, v14, v15, "Received callback for capturePhoto() with image:%@ error:%@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6F0, &qword_23B2ECE90);
    swift_arrayDestroy();
    MEMORY[0x23EE99510](v17, -1, -1);
    MEMORY[0x23EE99510](v16, -1, -1);
  }

  v22 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (*(v23 + 16))
  {
    v24 = *(v9 + 16);
    v43 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v44 = v24;
    v25 = v46;
    v24(v46, v23 + v43, v8);
    if (a2)
    {
      v26 = a2;
      v27 = sub_23B2EAE50();
      v28 = sub_23B2EB060();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = a2;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_23B2CF000, v27, v28, "capturePhoto() error %@", v29, 0xCu);
        sub_23B2EAAEC(v30, &qword_27E12E6F0, &qword_23B2ECE90);
        v33 = v30;
        v25 = v46;
        MEMORY[0x23EE99510](v33, -1, -1);
        MEMORY[0x23EE99510](v29, -1, -1);
      }

      v47 = a2;
      sub_23B2EAFA0();
    }

    else
    {
      v37 = sub_23B2EAE50();
      v38 = sub_23B2EB070();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_23B2CF000, v37, v38, "capturePhoto() success. Calling continuation.", v39, 2u);
        MEMORY[0x23EE99510](v39, -1, -1);
      }

      v47 = v12;
      v40 = v12;
      sub_23B2EAFB0();
    }

    swift_beginAccess();
    v41 = *(v3 + v22);
    if (*(v41 + 16))
    {
      v42 = v45;
      v44(v45, v41 + v43, v8);
      (*(v9 + 56))(v42, 0, 1, v8);
      sub_23B2EAAEC(v42, &unk_27E12E6F8, &unk_23B2ECE98);
      if (*(v41 + 16))
      {
        sub_23B2E8414(0, 1);
        swift_endAccess();
        (*(v9 + 8))(v25, v8);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v34 = sub_23B2EAE50();
    v35 = sub_23B2EB060();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_23B2CF000, v34, v35, "Unexpected error. Missing continuation for capturePhoto()", v36, 2u);
      MEMORY[0x23EE99510](v36, -1, -1);
    }
  }
}

uint64_t sub_23B2E8A4C()
{
  v0 = sub_23B2EAE80();
  v12 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23B2EAEA0();
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B2D2208(0, &qword_27E12E6D0, 0x277D85C78);
  v10 = sub_23B2EB080();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23B2EA870;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B2EACDC;
  aBlock[3] = &block_descriptor_186;
  v7 = _Block_copy(aBlock);

  sub_23B2EAE90();
  v13 = MEMORY[0x277D84F90];
  sub_23B2EA8D8(&qword_27E12E6D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E6E0, &qword_23B2ECE88);
  sub_23B2EAA34(&qword_27E12E6E8, &qword_27E12E6E0, &qword_23B2ECE88, MEMORY[0x277D83970]);
  sub_23B2EB0F0();
  v8 = v10;
  MEMORY[0x23EE98E10](0, v5, v2, v7);
  _Block_release(v7);

  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);
}

void sub_23B2E8D58(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_internalDataType) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_cantFindItemsTimer) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_pinchGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_tapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidBeginPinchToZoom) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_respondsToDidEndPinchToZoom) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textProcessor) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeProcessor) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_homographyProcessor) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_optFlowTextProcessor) = 0;
  v2 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_hitTestView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_impl;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for DataScannerViewController.Impl()) init];
  v4 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_bridge;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277D78540]) init];
  v5 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_textItems) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_barcodeItems) = v5;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_currentRecognizedItems) = v5;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_reticleView) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_highlightViewForItemUUID) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_guidanceView) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_capturePhotoCompletions) = v5;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_recognizedItemsContinuations) = v5;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_initialPinchZoom) = 0;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_overlayContainerView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_regionOfInterest;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_privateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_processingInterval;
  v9 = objc_opt_self();
  [v9 defaultProcessingInterval];
  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_infrequentProcessingInterval;
  [v9 defaultInfrequentProcessingInterval];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_customWords) = v5;
  *(v1 + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_usesLanguageDetection) = 1;
  sub_23B2EB150();
  __break(1u);
}

double sub_23B2E9000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
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

unint64_t sub_23B2E90A8()
{
  result = qword_27E12E598;
  if (!qword_27E12E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E598);
  }

  return result;
}

unint64_t sub_23B2E9100()
{
  result = qword_27E12E5A8;
  if (!qword_27E12E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5A8);
  }

  return result;
}

unint64_t sub_23B2E9158()
{
  result = qword_27E12E5B0;
  if (!qword_27E12E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5B0);
  }

  return result;
}

unint64_t sub_23B2E91B0()
{
  result = qword_27E12E5B8;
  if (!qword_27E12E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5B8);
  }

  return result;
}

unint64_t sub_23B2E9208()
{
  result = qword_27E12E5C0;
  if (!qword_27E12E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5C0);
  }

  return result;
}

unint64_t sub_23B2E9260()
{
  result = qword_27E12E5C8;
  if (!qword_27E12E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E5C8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

double keypath_get_14Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of DataScannerViewController.regionOfInterest.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x3B8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DataScannerViewController.capturePhoto()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x560);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23B2E9E04;

  return v5();
}

uint64_t sub_23B2E9E04(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23B2EA004(uint64_t a1, int a2)
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

uint64_t sub_23B2EA04C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DataScannerViewController.QualityLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.QualityLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataScannerViewController.TextContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.TextContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataScannerViewController.SceneStabilityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataScannerViewController.SceneStabilityState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B2EA4A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23B2EA538(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B2EA60C()
{
  result = qword_27E12E6A8;
  if (!qword_27E12E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6A8);
  }

  return result;
}

unint64_t sub_23B2EA664()
{
  result = qword_27E12E6B0;
  if (!qword_27E12E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6B0);
  }

  return result;
}

unint64_t sub_23B2EA6BC()
{
  result = qword_27E12E6B8;
  if (!qword_27E12E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6B8);
  }

  return result;
}

unint64_t sub_23B2EA714()
{
  result = qword_27E12E6C0;
  if (!qword_27E12E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6C0);
  }

  return result;
}

unint64_t sub_23B2EA76C()
{
  result = qword_27E12E6C8;
  if (!qword_27E12E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E12E6C8);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_139Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23B2EA878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B2EA8D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B2EA920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_23B2EA988()
{
  v1 = *(v0 + 16);
  [v1 setReticleRect:*(v0 + 24) angle:{*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56)}];

  return [v1 setReticleAlpha_];
}

id sub_23B2EA9E4()
{
  v1 = *(v0 + 16);
  [v1 collapseReticleRect];

  return [v1 setReticleAlpha_];
}

uint64_t sub_23B2EAA34(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B2EAA7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E12E730, &qword_23B2ECEB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B2EAAEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B2EAB4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}