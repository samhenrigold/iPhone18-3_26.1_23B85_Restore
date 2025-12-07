void sub_23A98E5D8(uint64_t a1)
{
  v39 = a1 + 64;
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 64);
  v38 = (v1 + 63) >> 6;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = &qword_27DFAF0F0;
  while (1)
  {
    if (!v3)
    {
      while (1)
      {
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v7 >= v38)
        {
          goto LABEL_48;
        }

        v3 = *(v39 + 8 * v7);
        ++v4;
        if (v3)
        {
          v4 = v7;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

LABEL_10:
    v8 = *(*(a1 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v3)))));
    swift_beginAccess();
    v9 = *(v8 + 48);
    v10 = *(v9 + 16);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v10;
      v11[3] = (2 * (v13 >> 3)) | 1;
      v44 = sub_23A9F409C(&v43, v11 + 4, v10, v9);
      v14 = v43;

      sub_23A8CA904(v14);
      if (v44 != v10)
      {
        goto LABEL_51;
      }

      v6 = &qword_27DFAF0F0;
      v15 = v11;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v16 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
    v17 = v16 ? sub_23AA0D7F4() : *(v15 + 16);
    v18 = v5 >> 62;
    if (v5 >> 62)
    {
      break;
    }

    v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v19 + v17;
    if (__OFADD__(v19, v17))
    {
      goto LABEL_47;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v44 = v17;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v18)
      {
LABEL_28:
        sub_23AA0D7F4();
      }

LABEL_29:
      v5 = sub_23AA0D8D4();
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }

    if (v18)
    {
      goto LABEL_28;
    }

    v22 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v20 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

LABEL_30:
    v23 = *(v22 + 16);
    v24 = *(v22 + 24);
    v42 = v15;
    if (v16)
    {
      v25 = v22;
      v26 = sub_23AA0D7F4();
      v22 = v25;
      v27 = v26;
    }

    else
    {
      v27 = *(v15 + 16);
    }

    v3 &= v3 - 1;
    if (v27)
    {
      if (((v24 >> 1) - v23) < v44)
      {
        goto LABEL_52;
      }

      v28 = v22 + 8 * v23 + 32;
      v40 = v22;
      if (v16)
      {
        if (v27 < 1)
        {
          goto LABEL_54;
        }

        sub_23A914008(&qword_27DFAF0F8, v6, &unk_23AA12A80);
        v29 = v6;
        for (i = 0; i != v27; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v6, &unk_23AA12A80);
          v31 = sub_23A9DC200(&v43, i, v42);
          v33 = *v32;

          (v31)(&v43, 0);
          *(v28 + 8 * i) = v33;
        }
      }

      else
      {
        type metadata accessor for CDTTriangle();
        swift_arrayInitWithCopy();
        v29 = v6;
      }

      v6 = v29;
      if (v44 >= 1)
      {
        v34 = *(v40 + 16);
        v35 = __OFADD__(v34, v44);
        v36 = v34 + v44;
        if (v35)
        {
          goto LABEL_53;
        }

        *(v40 + 16) = v36;
      }
    }

    else
    {

      if (v44 > 0)
      {
        goto LABEL_50;
      }
    }
  }

  v37 = sub_23AA0D7F4();
  v20 = v37 + v17;
  if (!__OFADD__(v37, v17))
  {
    goto LABEL_23;
  }

LABEL_47:
  __break(1u);
LABEL_48:
}

void *sub_23A98E9F8()
{

  return v0;
}

uint64_t sub_23A98EA68()
{
  sub_23A98E9F8();

  return swift_deallocClassInstance();
}

unint64_t sub_23A98EAC0(unint64_t a1, char *a2, __n128 a3)
{
  result = sub_23A99AA3C();
  if ((result & 1) == 0)
  {
LABEL_6:
    if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
    {
      v11 = sub_23A993944(a1, a2, 0, v10);
      if (!v11)
      {
LABEL_9:
        type metadata accessor for CDTPolygon();
        swift_allocObject();
        return sub_23A99A810(MEMORY[0x277D84F90]);
      }
    }

    else
    {
      v11 = sub_23A9908E8(a1, a2, 0, 1, 0.0001);
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    return v11;
  }

  v6 = 0;
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  while (1)
  {
    if (v8 == v6)
    {

      return a1;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v9 = v6 + 1;
    result = sub_23A8EDCD8(a2, 0.001, *(v7 + 32 + 8 * v6));
    v6 = v9;
    if (result)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A98EBE4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_41;
  }

  while (2)
  {

    if (v3 < 1)
    {
      return v1;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EE90360](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_42;
        }

        v7 = result;
        v8 = MEMORY[0x23EE90360](v4 + 1, v1);
        goto LABEL_10;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v5)
      {
        goto LABEL_33;
      }

      v6 = v4 + 1;
      if (v4 + 1 >= v5)
      {
        goto LABEL_34;
      }

      v7 = *(v1 + 32 + 8 * v4);
      v8 = *(v1 + 32 + 8 * v6);

LABEL_10:
      v9 = sub_23A9908E8(v7, v8, 1, 1, 0.0001);
      if (v9)
      {
        v10 = v9;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578();
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v10;

        if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_23A97E578();
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = *(v11 + 16);
        if (v4 >= v12)
        {
          goto LABEL_38;
        }

        v13 = v12 - 1;
        memmove((v11 + 8 * v4 + 32), (v11 + 8 * v4 + 40), 8 * (v12 - 1 - v4));
        *(v11 + 16) = v13;

        if (!(v1 >> 62))
        {
LABEL_21:
          v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v15 = v14 - 1;
          if (__OFSUB__(v14, 1))
          {
            goto LABEL_35;
          }

          goto LABEL_22;
        }
      }

      else
      {

        v4 = v6;
        if (!(v1 >> 62))
        {
          goto LABEL_21;
        }
      }

      v16 = sub_23AA0D7F4();
      v15 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v4 >= v15)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_23AA0D7F4();
    v3 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_23A98EE34(float32x2_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    goto LABEL_34;
  }

  v7 = a4;
  v211 = HIDWORD(a3);
  v204 = HIDWORD(a4);
  v8 = a3;

  sub_23A99AC40();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  inited = swift_initStackObject();
  if (v10)
  {
    v12 = inited;
    *(inited + 16) = xmmword_23AA11C20;
    v13 = vadd_f32(__PAIR64__(v211, v8), __PAIR64__(v204, v7));
    *(inited + 32) = __PAIR64__(v211, v8);
    *(inited + 40) = __PAIR64__(v13.u32[1], v8);
    *(inited + 48) = v13;
    v13.i32[1] = v211;
  }

  else
  {
    v12 = inited;
    *(inited + 16) = xmmword_23AA11C20;
    v13 = vadd_f32(__PAIR64__(v211, v8), __PAIR64__(v204, v7));
    *(inited + 32) = __PAIR64__(v211, v8);
    *(inited + 40) = __PAIR64__(v211, v13.u32[0]);
    *(inited + 48) = v13;
    v13.i32[0] = v8;
  }

  *(inited + 56) = v13;
  type metadata accessor for CDTPolygon();
  swift_allocObject();
  v14 = sub_23A99A810(v12);

  a1 = sub_23A98EAC0(a1, v14, v15);

  v16 = sub_23A98EBE4(a2);

  if (v16 >> 62)
  {
    goto LABEL_304;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v194 = v16;
  a2 = v16;
  if (v17)
  {
    v19 = 0;
    a2 = v16;
    v205 = v16 & 0xC000000000000001;
    v200 = v16 & 0xFFFFFFFFFFFFFF8;
    v198 = v16 + 32;
    do
    {
      if (v205)
      {
        v20 = MEMORY[0x23EE90360](v19, v194);
      }

      else
      {
        if (v19 >= *(v200 + 16))
        {
          goto LABEL_256;
        }

        v20 = *(v198 + 8 * v19);
      }

      isUniquelyReferenced_nonNull_native = sub_23A99AA3C();
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = 0;
        v22 = *(v20 + 16);
        v23 = *(v22 + 16);
        while (v23 != v21)
        {
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_240;
          }

          v24 = v21 + 1;
          isUniquelyReferenced_nonNull_native = sub_23A8EDCD8(a1, 0.001, *(v22 + 32 + 8 * v21));
          v21 = v24;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }
        }

        v27 = v20;
      }

      else
      {
LABEL_18:
        if (sub_23A99AA3C() & 1) != 0 && (sub_23A99AA3C())
        {
          v26 = sub_23A993944(v20, a1, 0, v25);
          if (v26)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v26 = sub_23A9908E8(v20, a1, 0, 1, 0.0001);
          if (v26)
          {
LABEL_23:
            v27 = v26;
            goto LABEL_25;
          }
        }

        swift_allocObject();
        v27 = sub_23A99A810(MEMORY[0x277D84F90]);
      }

LABEL_25:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a2 & 0x8000000000000000) != 0 || (a2 & 0x4000000000000000) != 0)
      {
        a2 = sub_23A97E578();
      }

      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_257;
      }

      *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20) = v27;

      ++v19;
    }

    while (v19 != v17);
  }

LABEL_34:
  isUniquelyReferenced_nonNull_native = a1[2];
  v187 = a2 >> 62;
  v188 = a1;
  if (a2 >> 62)
  {
    goto LABEL_262;
  }

  v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  v206 = isUniquelyReferenced_nonNull_native;

  v29 = MEMORY[0x277D84F90];
  v199 = a2;
  if (!v28)
  {
    goto LABEL_58;
  }

  v30 = 0;
  v31 = a2 & 0xC000000000000001;
  v32 = a2 & 0xFFFFFFFFFFFFFF8;
  v33 = MEMORY[0x277D84F90];
  while (v31)
  {
    a2 = MEMORY[0x23EE90360](v30, v199);
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_57;
    }

LABEL_43:
    v35 = *(a2 + 16);

    a2 = *(v35 + 16);
    v36 = *(v33 + 16);
    v37 = v36 + a2;
    if (__OFADD__(v36, a2))
    {
      goto LABEL_253;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v37 > *(v33 + 24) >> 1)
    {
      if (v36 <= v37)
      {
        v38 = v36 + a2;
      }

      else
      {
        v38 = v36;
      }

      isUniquelyReferenced_nonNull_native = sub_23A938A28(isUniquelyReferenced_nonNull_native, v38, 1, v33);
      v33 = isUniquelyReferenced_nonNull_native;
    }

    v29 = MEMORY[0x277D84F90];
    if (*(v35 + 16))
    {
      v39 = *(v33 + 16);
      if ((*(v33 + 24) >> 1) - v39 < a2)
      {
        goto LABEL_255;
      }

      memcpy((v33 + 8 * v39 + 32), (v35 + 32), 8 * a2);

      if (a2)
      {
        v40 = *(v33 + 16);
        v41 = __OFADD__(v40, a2);
        v42 = v40 + a2;
        if (v41)
        {
          goto LABEL_258;
        }

        *(v33 + 16) = v42;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_254;
      }
    }

    ++v30;
    if (v34 == v28)
    {
      goto LABEL_59;
    }
  }

  if (v30 >= *(v32 + 16))
  {
    goto LABEL_252;
  }

  a2 = *(v199 + 8 * v30 + 32);

  v34 = v30 + 1;
  if (!__OFADD__(v30, 1))
  {
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v33 = v29;
LABEL_59:
  v215 = v206;
  sub_23A911F44(v33);
  sub_23A9956C8(v215, 0.0001);
  v44 = v43;

  v45 = v188[3];

  v46 = sub_23A98E284(v199);
  v215 = v45;
  sub_23A912048(v46);
  v47 = v215;
  v49 = sub_23A9957B8(v44, v48);
  type metadata accessor for CDTTriangleEdgeManager();
  v50 = swift_initStackObject();
  *(v50 + 16) = MEMORY[0x277D84F98];
  v192 = (v50 + 16);
  sub_23A930E4C(v49);

  if (v47 >> 62)
  {
    v51 = sub_23AA0D7F4();
    v191 = v47;
    if (!v51)
    {
      goto LABEL_264;
    }

LABEL_61:
    v190 = v47 & 0xC000000000000001;
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v52 = 0;
    v185 = v47 + 32;
    v186 = v47 & 0xFFFFFFFFFFFFFF8;
    v189 = v51;
    while (1)
    {
      if (v190)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x23EE90360](v52, v47);
        v53 = isUniquelyReferenced_nonNull_native;
        v41 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v41)
        {
          goto LABEL_259;
        }
      }

      else
      {
        if (v52 >= *(v186 + 16))
        {
          goto LABEL_261;
        }

        v53 = *(v185 + 8 * v52);

        v41 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v41)
        {
          goto LABEL_259;
        }
      }

      v193 = v54;
      v55 = *v192;
      sub_23AA0DD14();
      v56 = v53[5];
      MEMORY[0x23EE907C0](*(*&v56 + 16));
      v57 = *(*&v56 + 16);
      if (v57)
      {
        v58 = *&v56 + 32;
        do
        {
          v58 += 8;
          sub_23AA0DD44();
          sub_23AA0DD44();
          --v57;
        }

        while (v57);
      }

      v59 = sub_23AA0DD54();
      if (*(v55 + 16))
      {
        sub_23A9EDF54(v59);
        if (v60)
        {
          goto LABEL_63;
        }
      }

      v215 = MEMORY[0x277D84F90];
      v61 = 1 << *(v55 + 32);
      if (v61 < 64)
      {
        v62 = ~(-1 << v61);
      }

      else
      {
        v62 = -1;
      }

      a2 = v62 & *(v55 + 64);
      v63 = (v61 + 63) >> 6;

      v65 = 0;
      while (a2)
      {
LABEL_85:
        v67 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v68 = *(*(v55 + 56) + ((v65 << 9) | (8 * v67)));
        v69 = v68[2];
        if (v53[4].i8[0] == 1)
        {
          v70 = v68[3];
LABEL_87:
          v71 = v53[2];
          v72 = v53[3];
          v73 = vsub_f32(v69, v71);
          v74 = vrev64_s32(vsub_f32(v70, v71));
          v75 = vmul_f32(v73, v74);
          LODWORD(v76) = vsub_f32(v75, vdup_lane_s32(v75, 1)).u32[0];
          v77 = fabsf(v76);
          v78 = vmul_f32(vsub_f32(v69, v72), vrev64_s32(vsub_f32(v70, v72)));
          LODWORD(v79) = vsub_f32(v78, vdup_lane_s32(v78, 1)).u32[0];
          if (fabsf(v79) >= 1.4211e-14)
          {
            if (v79 <= 0.0)
            {
              if (v77 < 1.4211e-14 || v76 > 0.0)
              {
                goto LABEL_89;
              }
            }

            else if (v77 < 1.4211e-14 || v76 <= 0.0)
            {
              goto LABEL_89;
            }
          }

          else if (v77 >= 1.4211e-14)
          {
LABEL_89:
            v80 = vsub_f32(v72, v71);
            LODWORD(v81) = vsub_f32(vmul_lane_f32(v80, v73, 1), vmul_lane_f32(v73, v80, 1)).u32[0];
            v82 = fabsf(v81);
            v83 = vmul_f32(v74, v80);
            LODWORD(v84) = vsub_f32(v83, vdup_lane_s32(v83, 1)).u32[0];
            if (fabsf(v84) >= 1.4211e-14)
            {
              if (v84 <= 0.0)
              {
                if (v82 < 1.4211e-14 || v81 > 0.0)
                {
LABEL_121:

                  sub_23AA0D944();
                  sub_23AA0D974();
                  sub_23AA0D984();
                  isUniquelyReferenced_nonNull_native = sub_23AA0D954();
                }
              }

              else if (v82 < 1.4211e-14 || v81 <= 0.0)
              {
                goto LABEL_121;
              }
            }

            else if (v82 >= 1.4211e-14)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
          v85 = v53[2];
          *&v64 = vsub_f32(v69, v85);
          if (fabsf(*&v64) >= 0.0001 || fabsf(*(&v64 + 1)) >= 0.0001)
          {
            v86 = v53[3];
            v87 = vsub_f32(v69, v86);
            if (fabsf(v87.f32[0]) >= 0.0001 || fabsf(v87.f32[1]) >= 0.0001)
            {
              v207 = v64;
              v88 = vsub_f32(v86, v85);
              if (fabsf(_simd_orient_vf2(*&v64, v88)) > 0.0001 || (*(&v64 + 1) = *(&v207 + 1), *&v64 = vmul_f32(*&v207, v88), vaddv_f32(*&v64) <= 0.0) || (v89 = vsub_f32(v85, v86), v90 = vmul_f32(v89, v89), (vcgt_f32(vadd_f32(v90, vdup_lane_s32(v90, 1)), vadd_f32(*&v64, vdup_lane_s32(*&v64, 1))).u8[0] & 1) == 0))
              {
                v70 = v68[3];
                *&v64 = vsub_f32(v70, v85);
                if (fabsf(*&v64) >= 0.0001 || fabsf(*(&v64 + 1)) >= 0.0001)
                {
                  v91 = vsub_f32(v70, v86);
                  if (fabsf(v91.f32[0]) >= 0.0001 || fabsf(v91.f32[1]) >= 0.0001)
                  {
                    v208 = v64;
                    if (fabsf(_simd_orient_vf2(*&v64, v88)) > 0.0001)
                    {
                      goto LABEL_87;
                    }

                    *(&v64 + 1) = *(&v208 + 1);
                    *&v64 = vmul_f32(v88, *&v208);
                    if (vaddv_f32(*&v64) <= 0.0)
                    {
                      goto LABEL_87;
                    }

                    v92 = vsub_f32(v85, v86);
                    v93 = vmul_f32(v92, v92);
                    if ((vcgt_f32(vadd_f32(v93, vdup_lane_s32(v93, 1)), vadd_f32(*&v64, vdup_lane_s32(*&v64, 1))).u8[0] & 1) == 0)
                    {
                      goto LABEL_87;
                    }
                  }
                }
              }
            }
          }
        }
      }

      while (1)
      {
        v66 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_239;
        }

        if (v66 >= v63)
        {
          break;
        }

        a2 = *(v55 + 64 + 8 * v66);
        ++v65;
        if (a2)
        {
          v65 = v66;
          goto LABEL_85;
        }
      }

      v94 = sub_23A9C8B58(v215);
      v95 = v94;
      v214[0] = v94;
      if (v94 >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
      }

      else
      {
        isUniquelyReferenced_nonNull_native = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (isUniquelyReferenced_nonNull_native + 0x4000000000000000 < 0)
      {
        goto LABEL_260;
      }

      a2 = 0;
      if (((2 * isUniquelyReferenced_nonNull_native) | 1) > 1)
      {
        v96 = 2 * isUniquelyReferenced_nonNull_native + 1;
      }

      else
      {
        v96 = 1;
      }

      v195 = v53;
      v196 = v96 - 1;
      while (2)
      {
        v97 = v95 >> 62;
        if (v95 >> 62)
        {
          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (isUniquelyReferenced_nonNull_native >= 1)
          {
            goto LABEL_133;
          }

LABEL_62:

LABEL_63:

          goto LABEL_64;
        }

        isUniquelyReferenced_nonNull_native = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (isUniquelyReferenced_nonNull_native < 1)
        {
          goto LABEL_62;
        }

LABEL_133:
        if (a2 != v196)
        {
          if (v97)
          {
            isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
            if (!isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_245;
            }

            isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
            if (!isUniquelyReferenced_nonNull_native)
            {
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
LABEL_261:
              __break(1u);
LABEL_262:
              v162 = isUniquelyReferenced_nonNull_native;
              v28 = sub_23AA0D7F4();
              isUniquelyReferenced_nonNull_native = v162;
              goto LABEL_36;
            }
          }

          else if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_244;
          }

          if ((v95 & 0xC000000000000001) != 0)
          {
            v98 = MEMORY[0x23EE90360](0, v95);
            v99 = v95 & 0xFFFFFFFFFFFFFF8;
            if (!v97)
            {
              goto LABEL_142;
            }
          }

          else
          {
            if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_241;
            }

            v98 = *(v95 + 32);

            v99 = v95 & 0xFFFFFFFFFFFFFF8;
            if (!v97)
            {
LABEL_142:
              isUniquelyReferenced_nonNull_native = *(v99 + 16);
              if (!isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_247;
              }

              v100 = isUniquelyReferenced_nonNull_native - 1;
              if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
              {
                goto LABEL_242;
              }

              goto LABEL_152;
            }
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_247;
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          if (isUniquelyReferenced_nonNull_native < 1)
          {
            goto LABEL_248;
          }

          isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
          v100 = isUniquelyReferenced_nonNull_native - 1;
          if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
          {
            goto LABEL_242;
          }

LABEL_152:
          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v97)
            {
              v101 = (v95 & 0xFFFFFFFFFFFFFF8);
              if (v100 > *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_158:
                v95 = sub_23AA0D8D4();
                v101 = (v95 & 0xFFFFFFFFFFFFFF8);
              }

              v209 = v98;

              if (v95 >> 62)
              {
                v161 = sub_23AA0D7F4();
                if (__OFSUB__(v161, 1))
                {
                  __break(1u);

                  __break(1u);
                  return;
                }

                memmove(v101 + 4, v101 + 5, 8 * (v161 - 1));
                isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
                v103 = isUniquelyReferenced_nonNull_native - 1;
                if (__OFSUB__(isUniquelyReferenced_nonNull_native, 1))
                {
                  goto LABEL_243;
                }
              }

              else
              {
                v102 = v101[2];
                isUniquelyReferenced_nonNull_native = memmove(v101 + 4, v101 + 5, 8 * v102 - 8);
                v103 = v102 - 1;
                if (__OFSUB__(v102, 1))
                {
                  goto LABEL_243;
                }
              }

              v101[2] = v103;
              v214[0] = v95;
              swift_beginAccess();
              v104 = v209[6];
              if (*(v104 + 16) == 2)
              {
                v197 = a2;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
                v105 = swift_allocObject();
                v106 = _swift_stdlib_malloc_size(v105);
                v107 = v106 - 32;
                if (v106 < 32)
                {
                  v107 = v106 - 25;
                }

                v105[2] = 2;
                v105[3] = 2 * (v107 >> 3);
                v108 = sub_23A9F3F9C(&v215, v105 + 4, 2, v104);
                v109 = v215;
                a2 = v216;

                isUniquelyReferenced_nonNull_native = sub_23A8CA904(v109);
                if (v108 != 2)
                {
                  goto LABEL_249;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
                isUniquelyReferenced_nonNull_native = swift_initStackObject();
                *(isUniquelyReferenced_nonNull_native + 16) = xmmword_23AA11C20;
                v110 = v105[2];
                if (!v110)
                {
                  goto LABEL_250;
                }

                v111 = isUniquelyReferenced_nonNull_native;
                *(isUniquelyReferenced_nonNull_native + 32) = v105[4];
                *(isUniquelyReferenced_nonNull_native + 40) = v209[2];
                if (v110 == 1)
                {
                  goto LABEL_251;
                }

                v112 = v105[5];

                *(v111 + 48) = v112;
                *(v111 + 56) = v209[3];
                type metadata accessor for CDTPolygon();
                swift_initStackObject();
                sub_23A99A810(v111);
                if (sub_23A99AA3C())
                {

                  v114 = sub_23A9C8A9C(v113);
                  sub_23A930738();
                  v116 = v115;
                  sub_23A930A2C(v114);

                  v117 = sub_23A930E4C(v116);

                  v215 = MEMORY[0x277D84F90];
                  a2 = v197;
                  if (v117 >> 62)
                  {
                    isUniquelyReferenced_nonNull_native = sub_23AA0D7F4();
                    v118 = isUniquelyReferenced_nonNull_native;
                  }

                  else
                  {
                    v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v118)
                  {
                    v119 = 0;
                    a2 = v117 & 0xFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      if ((v117 & 0xC000000000000001) != 0)
                      {
                        isUniquelyReferenced_nonNull_native = MEMORY[0x23EE90360](v119, v117);
                        v120 = isUniquelyReferenced_nonNull_native;
                        v121 = v119 + 1;
                        if (__OFADD__(v119, 1))
                        {
                          goto LABEL_237;
                        }
                      }

                      else
                      {
                        if (v119 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_238;
                        }

                        v120 = *(v117 + 8 * v119 + 32);

                        v121 = v119 + 1;
                        if (__OFADD__(v119, 1))
                        {
LABEL_237:
                          __break(1u);
LABEL_238:
                          __break(1u);
LABEL_239:
                          __break(1u);
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
LABEL_245:
                          __break(1u);
                          goto LABEL_246;
                        }
                      }

                      v122 = v120[2];
                      if (v195[4].i8[0] == 1)
                      {
                        v123 = v120[3];
                      }

                      else
                      {
                        v138 = v195[2];
                        v139 = vsub_f32(v122, v138);
                        v140 = fabsf(v139.f32[1]);
                        if (fabsf(v139.f32[0]) < 0.0001 && v140 < 0.0001)
                        {
                          goto LABEL_172;
                        }

                        v142 = v195[3];
                        v143 = vsub_f32(v122, v142);
                        v144 = fabsf(v143.f32[1]);
                        if (fabsf(v143.f32[0]) < 0.0001 && v144 < 0.0001)
                        {
                          goto LABEL_172;
                        }

                        v201 = v139;
                        v146 = vsub_f32(v142, v138);
                        if (fabsf(_simd_orient_vf2(v139, v146)) <= 0.0001)
                        {
                          v147 = vmul_f32(v201, v146);
                          if (vaddv_f32(v147) > 0.0)
                          {
                            v148 = vsub_f32(v138, v142);
                            v149 = vmul_f32(v148, v148);
                            if (vcgt_f32(vadd_f32(v149, vdup_lane_s32(v149, 1)), vadd_f32(v147, vdup_lane_s32(v147, 1))).u8[0])
                            {
                              goto LABEL_172;
                            }
                          }
                        }

                        v123 = v120[3];
                        v150 = vsub_f32(v123, v138);
                        v151 = fabsf(v150.f32[1]);
                        if (fabsf(v150.f32[0]) < 0.0001 && v151 < 0.0001)
                        {
                          goto LABEL_172;
                        }

                        v153 = vsub_f32(v123, v142);
                        v154 = fabsf(v153.f32[1]);
                        if (fabsf(v153.f32[0]) < 0.0001 && v154 < 0.0001)
                        {
                          goto LABEL_172;
                        }

                        v202 = v150;
                        if (fabsf(_simd_orient_vf2(v150, v146)) <= 0.0001)
                        {
                          v156 = vmul_f32(v146, v202);
                          if (vaddv_f32(v156) > 0.0)
                          {
                            v157 = vsub_f32(v138, v142);
                            v158 = vmul_f32(v157, v157);
                            if (vcgt_f32(vadd_f32(v158, vdup_lane_s32(v158, 1)), vadd_f32(v156, vdup_lane_s32(v156, 1))).u8[0])
                            {
                              goto LABEL_172;
                            }
                          }
                        }
                      }

                      v124 = v195[2];
                      v125 = v195[3];
                      v126 = vsub_f32(v122, v124);
                      v127 = vrev64_s32(vsub_f32(v123, v124));
                      v128 = vmul_f32(v126, v127);
                      LODWORD(v129) = vsub_f32(v128, vdup_lane_s32(v128, 1)).u32[0];
                      v130 = fabsf(v129);
                      v131 = vmul_f32(vsub_f32(v122, v125), vrev64_s32(vsub_f32(v123, v125)));
                      LODWORD(v132) = vsub_f32(v131, vdup_lane_s32(v131, 1)).u32[0];
                      if (fabsf(v132) >= 1.4211e-14)
                      {
                        if (v132 <= 0.0)
                        {
                          if (v130 >= 1.4211e-14 && v129 <= 0.0)
                          {
                            goto LABEL_172;
                          }
                        }

                        else if (v130 >= 1.4211e-14 && v129 > 0.0)
                        {
                          goto LABEL_172;
                        }
                      }

                      else if (v130 < 1.4211e-14)
                      {
                        goto LABEL_172;
                      }

                      v133 = vsub_f32(v125, v124);
                      LODWORD(v134) = vsub_f32(vmul_lane_f32(v133, v126, 1), vmul_lane_f32(v126, v133, 1)).u32[0];
                      v135 = fabsf(v134);
                      v136 = vmul_f32(v127, v133);
                      LODWORD(v137) = vsub_f32(v136, vdup_lane_s32(v136, 1)).u32[0];
                      if (fabsf(v137) >= 1.4211e-14)
                      {
                        if (v137 <= 0.0)
                        {
                          if (v135 < 1.4211e-14 || v134 > 0.0)
                          {
LABEL_183:
                            sub_23AA0D944();
                            sub_23AA0D974();
                            sub_23AA0D984();
                            isUniquelyReferenced_nonNull_native = sub_23AA0D954();
                            goto LABEL_173;
                          }
                        }

                        else if (v135 < 1.4211e-14 || v134 <= 0.0)
                        {
                          goto LABEL_183;
                        }
                      }

                      else if (v135 >= 1.4211e-14)
                      {
                        goto LABEL_183;
                      }

LABEL_172:

LABEL_173:
                      ++v119;
                      if (v121 == v118)
                      {
                        v160 = v215;
                        a2 = v197;
                        goto LABEL_229;
                      }
                    }
                  }

                  v160 = MEMORY[0x277D84F90];
LABEL_229:

                  sub_23A912030(v160);

LABEL_130:
                  ++a2;
                  v95 = v214[0];
                  continue;
                }

                MEMORY[0x23EE8FD70](v159);
                a2 = v197;
                if (*((v214[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_23AA0D314();
                }

                sub_23AA0D334();
              }

              goto LABEL_130;
            }
          }

          else if (!v97)
          {
            goto LABEL_158;
          }

          sub_23AA0D7F4();
          goto LABEL_158;
        }

        break;
      }

LABEL_64:
      v47 = v191;
      v29 = MEMORY[0x277D84F90];
      v52 = v193;
      if (v193 == v189)
      {
        goto LABEL_264;
      }
    }
  }

  v51 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v191 = v47;
  if (v51)
  {
    goto LABEL_61;
  }

LABEL_264:
  swift_beginAccess();
  v16 = *v192;

  a1 = 0;
  sub_23A98E5D8(v163);
  v165 = v164;

  v166 = sub_23A9F4E74(v165);

  v213 = v29;
  if ((v166 & 0xC000000000000001) != 0)
  {

    sub_23AA0D7B4();
    v16 = type metadata accessor for CDTTriangle();
    sub_23A995A94();
    sub_23AA0D424();
    v167 = v215;
    v168 = v216;
    v169 = v217;
    v170 = v218;
    v171 = v219;
  }

  else
  {
    v172 = -1 << *(v166 + 32);
    v168 = v166 + 56;
    v169 = ~v172;
    v173 = -v172;
    if (v173 < 64)
    {
      v174 = ~(-1 << v173);
    }

    else
    {
      v174 = -1;
    }

    v171 = v174 & *(v166 + 56);

    v170 = 0;
    v167 = v166;
  }

  v175 = (v169 + 64) >> 6;
  v203 = v167;
  while (2)
  {
    v176 = v170;
LABEL_273:
    if ((v167 & 0x8000000000000000) != 0)
    {
      if (!sub_23AA0D824())
      {
        goto LABEL_300;
      }

      type metadata accessor for CDTTriangle();
      swift_dynamicCast();
      a1 = v212;
      v170 = v176;
      v179 = v171;
      if (!v212)
      {
        goto LABEL_300;
      }

      goto LABEL_282;
    }

    v177 = v176;
    v178 = v171;
    v170 = v176;
    if (v171)
    {
LABEL_278:
      v179 = (v178 - 1) & v178;
      a1 = *(*(v167 + 48) + ((v170 << 9) | (8 * __clz(__rbit64(v178)))));

      if (!a1)
      {
        goto LABEL_300;
      }

LABEL_282:
      v210 = v179;
      if (v187)
      {
        v16 = sub_23AA0D7F4();
      }

      else
      {
        v16 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v180 = 0;
      while (v16 != v180)
      {
        if ((v199 & 0xC000000000000001) != 0)
        {
          v181 = MEMORY[0x23EE90360](v180, v199);
          if (__OFADD__(v180, 1))
          {
            goto LABEL_301;
          }
        }

        else
        {
          if (v180 >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_302;
          }

          v181 = *(v199 + 8 * v180 + 32);

          if (__OFADD__(v180, 1))
          {
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            v17 = sub_23AA0D7F4();
            goto LABEL_8;
          }
        }

        v182 = sub_23A8EDA7C(v181, 0.00000011921, a1[3]);

        ++v180;
        if (v182)
        {
          goto LABEL_272;
        }
      }

      if ((sub_23A8EDA7C(v188, 0.00000011921, a1[3]) & 1) != 0 && (a1[5].i8[0] & 1) == 0)
      {

        MEMORY[0x23EE8FD70](v183);
        if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        v16 = &v213;
        sub_23AA0D334();

        v167 = v203;
        v171 = v210;
        continue;
      }

LABEL_272:

      v176 = v170;
      v171 = v210;
      v167 = v203;
      goto LABEL_273;
    }

    break;
  }

  while (1)
  {
    v170 = v177 + 1;
    if (__OFADD__(v177, 1))
    {
      goto LABEL_303;
    }

    if (v170 >= v175)
    {
      break;
    }

    v178 = *(v168 + 8 * v170);
    ++v177;
    if (v178)
    {
      goto LABEL_278;
    }
  }

LABEL_300:
  sub_23A8CA904(v203);

  v212 = sub_23A8F28D8(v184);
  sub_23A98E208(&v212);
}

uint64_t sub_23A990564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6365737265746E69;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x6564697374756FLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656469736E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6365737265746E69;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x6564697374756FLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656469736E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A990674()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A99071C(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A9907B0()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A990854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A995F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A990884(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6365737265746E69;
  if (v2 != 1)
  {
    v5 = 0x6564697374756FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656469736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A9908E8(uint64_t a1, uint64_t a2, char a3, char a4, float a5)
{
  v8 = *(a2 + 16);
  v9 = v8[2];
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F98];
    while (1)
    {
      v12 = *&v8[v10 + 4];
      if (sub_23A8EDA7C(a1, 0.00000011921, *&v12))
      {
        if (a3)
        {
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = v11;
        v14 = 0;
      }

      else
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = v11;
        v14 = 2;
      }

      sub_23A9DA160(v14, v10, isUniquelyReferenced_nonNull_native, v12);
      v11 = v157;
LABEL_4:
      if (*&v9 == ++v10)
      {
        goto LABEL_11;
      }
    }
  }

  v11 = MEMORY[0x277D84F98];
LABEL_11:
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    v130 = MEMORY[0x277D84F98];
    while (1)
    {
      v19 = *(v18 + 8 * v17);
      if (sub_23A8EDA7C(a2, 0.00000011921, *&v19))
      {
        if ((a3 & 1) != 0 || sub_23A9AD3F4(v8, *&v19))
        {
          goto LABEL_14;
        }

        v20 = swift_isUniquelyReferenced_nonNull_native();
        v157 = v130;
        v21 = 0;
      }

      else
      {
        if ((a3 & 1) == 0 || sub_23A9AD3F4(v8, *&v19))
        {
          goto LABEL_14;
        }

        v20 = swift_isUniquelyReferenced_nonNull_native();
        v157 = v130;
        v21 = 2;
      }

      sub_23A9DA160(v21, v17, v20, v19);
      v130 = v157;
LABEL_14:
      if (v16 == ++v17)
      {
        goto LABEL_23;
      }
    }
  }

  v130 = MEMORY[0x277D84F98];
LABEL_23:
  v22 = *(a2 + 24);
  if (v22 >> 62)
  {
    v23 = sub_23AA0D7F4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = v11;
  v137 = a3;
  v136 = a1;
  if (v23)
  {
    v24 = 0;
    v133 = v22 & 0xFFFFFFFFFFFFFF8;
    v134 = v22 & 0xC000000000000001;
    v25 = MEMORY[0x277D84F98];
    v153 = MEMORY[0x277D84F98];
    v26 = MEMORY[0x277D84F98];
    v27 = MEMORY[0x277D84F98];
    v131 = v23;
    v132 = v22;
    while (1)
    {
      if (v134)
      {
        MEMORY[0x23EE90360](v24, v22);
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:

          v127 = sub_23A9908E8(v26, a2, v27 & 1, 0, a5 * 10.0);

          return v127;
        }
      }

      else
      {
        if (v24 >= *(v133 + 16))
        {
          goto LABEL_200;
        }

        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_199;
        }
      }

      v145 = v28;
      v29 = *(a1 + 24);
      if (!(v29 >> 62))
      {
        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_33;
        }

        goto LABEL_78;
      }

      v30 = sub_23AA0D7F4();
      if (v30)
      {
LABEL_33:
        v147 = v27;
        v149 = v26;
        v142 = v24;
        v26 = 0;
        v31 = v25;
        v27 = v153;
        while (1)
        {
          v153 = v27;
          v32 = v31;
          v33 = v26;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x23EE90360](v33, v29);
              v26 = (v33 + 1);
              if (__OFADD__(v33, 1))
              {
                goto LABEL_93;
              }
            }

            else
            {
              if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_94;
              }

              v34 = *(v29 + 8 * v33 + 32);

              v26 = (v33 + 1);
              if (__OFADD__(v33, 1))
              {
LABEL_93:
                __break(1u);
LABEL_94:
                __break(1u);
LABEL_95:
                type metadata accessor for CDTPolygon();
                swift_allocObject();
                a1 = sub_23A99A810(MEMORY[0x277D84F90]);

LABEL_194:

                return a1;
              }
            }

            v27 = sub_23A946DC8(v34, 1, 0.0001, v35, v36);
            if (*(v27 + 16))
            {
              break;
            }

            ++v33;
            if (v26 == v30)
            {
              v27 = v147;
              v31 = v149;
              v25 = v32;
              goto LABEL_27;
            }
          }

          if (*(v31 + 2) && (v37 = sub_23A9EDF54(v142), (v38 & 1) != 0))
          {
            v157 = *(*(v31 + 7) + 8 * v37);
          }

          else
          {
            v157 = MEMORY[0x277D84F90];
          }

          sub_23A911F44(v39);
          v140 = v157;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v156 = v149;
          v41 = sub_23A9EDF54(v142);
          v42 = *(v149 + 2);
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_201;
          }

          if (*(v149 + 3) >= v44)
          {
            if ((v138 & 1) == 0)
            {
              v151 = v40;
              sub_23A90D2F8();
              v40 = v151;
            }
          }

          else
          {
            v150 = v40;
            sub_23A906ED4(v44, v138);
            v45 = sub_23A9EDF54(v142);
            v47 = v46 & 1;
            v40 = v150;
            if ((v150 & 1) != v47)
            {
              goto LABEL_212;
            }

            v41 = v45;
          }

          v48 = v156;
          v139 = v156;
          if (v40)
          {
            *(*(v156 + 7) + 8 * v41) = v157;
          }

          else
          {
            *&v156[8 * (v41 >> 6) + 64] |= 1 << v41;
            *(*(v48 + 6) + 8 * v41) = v142;
            *(*(v48 + 7) + 8 * v41) = v140;
            v49 = *(v48 + 2);
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_204;
            }

            *(v48 + 2) = v51;
          }

          if (*(v153 + 16) && (v52 = sub_23A9EDF54(v33), (v53 & 1) != 0))
          {
            v156 = *(*(v153 + 56) + 8 * v52);
          }

          else
          {
            v156 = MEMORY[0x277D84F90];
          }

          sub_23A911F44(v27);
          v154 = v156;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v54 = sub_23A9EDF54(v33);
          v56 = *(v147 + 16);
          v57 = (v55 & 1) == 0;
          v50 = __OFADD__(v56, v57);
          v58 = v56 + v57;
          if (v50)
          {
            goto LABEL_202;
          }

          v59 = v55;
          if (*(v147 + 24) < v58)
          {
            break;
          }

          if (v27)
          {
            goto LABEL_67;
          }

          v61 = v54;
          sub_23A90D2F8();
          v54 = v61;
          v27 = v147;
          if ((v59 & 1) == 0)
          {
LABEL_70:
            *(v27 + 8 * (v54 >> 6) + 64) |= 1 << v54;
            *(*(v27 + 48) + 8 * v54) = v33;
            *(*(v27 + 56) + 8 * v54) = v154;
            v62 = *(v27 + 16);
            v50 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v50)
            {
              goto LABEL_205;
            }

            *(v27 + 16) = v63;

            goto LABEL_72;
          }

LABEL_68:
          *(*(v27 + 56) + 8 * v54) = v156;

LABEL_72:
          v31 = v139;
          v147 = v27;
          v149 = v139;
          v153 = v27;
          v25 = v139;
          if (v26 == v30)
          {
            goto LABEL_27;
          }
        }

        sub_23A906ED4(v58, v27);
        v54 = sub_23A9EDF54(v33);
        if ((v59 & 1) != (v60 & 1))
        {
          goto LABEL_212;
        }

LABEL_67:
        v27 = v147;
        if ((v59 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

LABEL_78:
      v31 = v26;
LABEL_27:

      v24 = v145;
      v26 = v31;
      v22 = v132;
      a1 = v136;
      a3 = v137;
      if (v145 == v131)
      {
        goto LABEL_80;
      }
    }
  }

  v25 = MEMORY[0x277D84F98];
  v153 = MEMORY[0x277D84F98];
LABEL_80:
  if ((a3 & 1) != 0 && !*(v153 + 16) && !*(v25 + 2))
  {

    return 0;
  }

  sub_23A994E70(a2, v25, v129);
  v65 = v64;

  v157 = v65;
  sub_23A99543C(&v157, a5);
  sub_23A994E70(a1, v153, v130);
  v67 = v66;

  v156 = v67;
  sub_23A99543C(&v156, a5);
  v68 = v157;
  v69 = *(v157 + 2);
  if (!v69)
  {
    if (!*(v156 + 2))
    {
      goto LABEL_95;
    }

    goto LABEL_194;
  }

  v26 = 0;
  v143 = v157 + 32;
  v27 = (v157 + 40);
  v152 = v157;
  while (1)
  {
    if (v26 >= *(v68 + 2))
    {
      goto LABEL_203;
    }

    v70 = *v27;
    if (*(v27 - 8))
    {
      if (*(v27 - 8) != 2)
      {
        break;
      }
    }

    v71 = sub_23AA0DBD4();

    if (v71)
    {
      goto LABEL_97;
    }

    ++v26;
    v27 += 16;
    if (v69 == v26)
    {
      goto LABEL_109;
    }
  }

LABEL_97:
  v72 = v156;
  v26 = *(v156 + 2);
  if (v26)
  {
    while (1)
    {
      v73 = *(v72 + 2);
      if (!v73)
      {
        goto LABEL_206;
      }

      v74 = *(v72 + 40);
      v75 = vsub_f32(v74, v70);
      v76 = fabsf(v75.f32[0]);
      v77 = fabsf(v75.f32[1]);
      if (v76 >= a5 || v77 >= a5)
      {
        v79 = v72[32];
        v80 = swift_isUniquelyReferenced_nonNull_native();
        if (!v80 || (v27 = *(v72 + 3), v81 = v27 >> 1, v27 >> 1 < v73 - 1))
        {
          v72 = sub_23A938F80(v80, v73, 1, v72);
          v27 = *(v72 + 3);
          v81 = v27 >> 1;
        }

        v82 = *(v72 + 2);
        memmove(v72 + 32, v72 + 48, 16 * v82 - 16);
        *(v72 + 2) = v82 - 1;
        if (v81 < v82)
        {
          v72 = sub_23A938F80((v27 > 1), v82, 1, v72);
        }

        *(v72 + 2) = v82;
        v83 = &v72[16 * v82 - 16];
        v83[4].i8[0] = v79;
        v83[5] = v74;
        v156 = v72;
        if (--v26)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_109:
  v155 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0x6564697374756FLL;
  if ((a3 & 1) == 0)
  {
    v86 = 0x656469736E69;
  }

  v135 = v86;
  v87 = 0xE600000000000000;
  if (a3)
  {
    v87 = 0xE700000000000000;
  }

  v141 = v87;
  v88 = MEMORY[0x277D84F90];
LABEL_114:
  while (2)
  {
    v89 = v84;
LABEL_115:
    v90 = 16 * v89;
    v146 = 16 * v89;
    v148 = v89;
LABEL_116:
    v84 = v89;
    v91 = v88;
    while (1)
    {
      if ((v85 & 1) == 0)
      {
        v100 = *(v152 + 2);
        if (v155 >= v100)
        {
          goto LABEL_193;
        }

        if (v155 < 0)
        {
          __break(1u);
          goto LABEL_210;
        }

        v101 = &v143[16 * v155];
        v102 = *v101;
        v103 = *(v101 + 8);
        v104 = v88[2];
        if (*&v104 && (v105 = vceq_f32(v103, v88[*&v104 + 3]), (v105.i32[0] & v105.i32[1] & 1) != 0))
        {
          LOBYTE(v27) = v137;
          v89 = v148;
        }

        else
        {
          LOBYTE(v27) = v137;
          v89 = v148;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_23A938A28(0, *&v104 + 1, 1, v88);
          }

          v107 = v88[2];
          v106 = v88[3];
          if (v107 >= v106 >> 1)
          {
            v88 = sub_23A938A28((v106 > 1), v107 + 1, 1, v88);
          }

          v88[2] = (v107 + 1);
          v88[v107 + 4] = v103;
          v100 = *(v152 + 2);
        }

        if (v155 + 1 >= v100)
        {
          v108 = 3;
          ++v155;
          if (!v102)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v108 = v143[16 * ++v155];
          if (!v102)
          {
            goto LABEL_149;
          }
        }

        if (v102 != 2)
        {

LABEL_172:
          v26 = v136;
          if (v89 >= *(v156 + 2))
          {
            goto LABEL_178;
          }

          if (v89 < 0)
          {
            goto LABEL_211;
          }

          v118 = vsub_f32(*&v156[16 * v89 + 40], v103);
          v119 = fabsf(v118.f32[0]);
          v120 = fabsf(v118.f32[1]);
          if (v119 < a5 && v120 < a5)
          {
            ++v89;
            if (v108 == 3)
            {
              goto LABEL_189;
            }
          }

          else
          {
LABEL_178:
            if (a4)
            {
              goto LABEL_207;
            }

            if (v108 == 3)
            {
LABEL_189:
              v84 = v89;
              v85 ^= 1u;
              goto LABEL_114;
            }
          }

          if (v108)
          {
            if (v108 == 1)
            {
LABEL_186:
              v124 = sub_23AA0DBD4();

              v84 = v89;
              if (v124)
              {
                goto LABEL_115;
              }

LABEL_191:
              v85 ^= 1u;
              goto LABEL_114;
            }

            v122 = 0xE700000000000000;
            v123 = 0x6564697374756FLL;
          }

          else
          {
            v122 = 0xE600000000000000;
            v123 = 0x656469736E69;
          }

          if (v123 == v135 && v122 == v141)
          {
            goto LABEL_168;
          }

          goto LABEL_186;
        }

LABEL_149:
        v109 = sub_23AA0DBD4();

        v90 = v146;
        if ((v109 & 1) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_172;
      }

      v92 = v84;
      v26 = v156;
      v93 = *(v156 + 2);
      if (v84 >= v93)
      {
        v88 = v91;
LABEL_193:
        v125 = sub_23A9937F8(v88, 0.0001);

        type metadata accessor for CDTPolygon();
        swift_allocObject();
        a1 = sub_23A99A810(v125);

        goto LABEL_194;
      }

      if (v84 < 0)
      {
        __break(1u);
        goto LABEL_199;
      }

      v94 = v156[v90 + 32];
      v95 = *&v156[v90 + 40];
      v27 = *(v91 + 2);
      if (!v27 || (v96 = vceq_f32(v95, *&v91[8 * v27 + 24]), (v96.i32[0] & v96.i32[1] & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_23A938A28(0, v27 + 1, 1, v91);
        }

        v98 = *(v91 + 2);
        v97 = *(v91 + 3);
        v27 = v98 + 1;
        if (v98 >= v97 >> 1)
        {
          v91 = sub_23A938A28((v97 > 1), v98 + 1, 1, v91);
        }

        *(v91 + 2) = v27;
        *&v91[8 * v98 + 32] = v95;
        v93 = *(v26 + 2);
      }

      v84 = v92 + 1;
      if (v92 + 1 >= v93)
      {
        break;
      }

      v99 = v26[v90 + 48];
      if (v94)
      {
        goto LABEL_132;
      }

LABEL_117:
      LOBYTE(v27) = sub_23AA0DBD4();

      v90 += 16;
      if (v27)
      {
        goto LABEL_152;
      }
    }

    v99 = 3;
    if (!v94)
    {
      goto LABEL_117;
    }

LABEL_132:
    if (v94 == 2)
    {
      goto LABEL_117;
    }

LABEL_152:
    v110 = v155;
    if (v155 >= *(v152 + 2))
    {
LABEL_160:
      v155 = v110;
      if (v99 == 3)
      {
        v84 = v92 + 1;
        v88 = v91;
        v85 ^= 1u;
        continue;
      }

      if (v99)
      {
        v115 = v99 == 1;
        v89 = v92 + 1;
        if (v115)
        {
LABEL_169:
          LOBYTE(v27) = sub_23AA0DBD4();

          v88 = v91;
          if ((v27 & 1) == 0)
          {
            goto LABEL_191;
          }

          goto LABEL_115;
        }

        v116 = 0xE700000000000000;
        v117 = 0x6564697374756FLL;
      }

      else
      {
        v116 = 0xE600000000000000;
        v117 = 0x656469736E69;
        v89 = v92 + 1;
      }

      if (v117 == v135 && v116 == v141)
      {
        v88 = v91;
LABEL_168:

        goto LABEL_115;
      }

      goto LABEL_169;
    }

    break;
  }

  if ((v155 & 0x8000000000000000) == 0)
  {
    v111 = vsub_f32(*&v143[16 * v155 + 8], v95);
    v112 = fabsf(v111.f32[0]);
    v113 = fabsf(v111.f32[1]);
    if (v112 < a5 && v113 < a5)
    {
      v110 = v155 + 1;
    }

    goto LABEL_160;
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A991890()
{

  return swift_deallocClassInstance();
}

void sub_23A9918EC(uint64_t a1, float32x2_t a2)
{
  v4 = *(a1 + 8);
  v5 = sub_23AA0DBA4();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v7 = sub_23AA0D324();
        v7[2] = (v4 / 2);
      }

      v9[0] = v7 + 4;
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_23A991C70(v9, a2, v10, a1, v6);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_23A991B0C(0, v4, 1, a1, a2);
  }
}

void sub_23A991A08(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23AA0DBA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for CDTTriangle();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23A992268(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_23A991BE0(0, v2, 1, a1);
  }
}

void sub_23A991B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, float32x2_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_5:
    v11 = *(v8 + 8 * v6);
    v12 = vsub_f32(v11, a5);
    v13 = atan2f(v12.f32[1], v12.f32[0]);
    v14 = v10;
    v15 = v9;
    while (1)
    {
      v16 = *v15;
      v17 = vsub_f32(*v15, a5);
      if (v13 >= atan2f(v17.f32[1], v17.f32[0]))
      {
LABEL_4:
        ++v6;
        v9 += 8;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      *v15 = v11;
      v15[1] = v16;
      --v15;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A991BE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = v7[3];
      v12 = (*v9)[3];
      v13 = fabsf(vsub_f32(v11, v12).f32[0]);
      v14 = vcgt_f32(v12, v11);
      if (v13 >= 0.00000011921)
      {
        if ((v14.i8[0] & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v14.i8[4] & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23A991C70(float32x2_t **a1, float32x2_t a2, uint64_t a3, float32x2_t **a4, uint64_t a5)
{
  v8 = a4[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v10 = sub_23A977E20(v10);
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a4)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_23A992850(&(*a4)[v87], &(*a4)[*&v10[16 * v86 + 16]], &(*a4)[v88], v6, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_23A977D94(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v6 = *a4;
      v12 = (*a4)[v9];
      v13 = (*a4)[v11];
      v14 = vsub_f32(v12, a2);
      v15 = atan2f(v14.f32[1], v14.f32[0]);
      v16 = vsub_f32(v13, a2);
      v17 = atan2f(v16.f32[1], v16.f32[0]);
      v18 = v11 + 2;
      while (v8 != v18)
      {
        v19 = *(v6 + 8 * v18);
        v20 = vsub_f32(v19, a2);
        v21 = atan2f(v20.f32[1], v20.f32[0]);
        v22 = vsub_f32(v12, a2);
        ++v18;
        v12 = v19;
        if (v15 < v17 == v21 >= atan2f(v22.f32[1], v22.f32[0]))
        {
          v9 = v18 - 1;
          if (v15 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v8;
      if (v15 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v23 = 8 * v9 - 8;
        v24 = v11;
        v25 = v9;
        v26 = v11;
        do
        {
          if (v26 != --v25)
          {
            v28 = *a4;
            if (!*a4)
            {
              goto LABEL_123;
            }

            v27 = v28[v24];
            v28[v24] = *(v28 + v23);
            *(v28 + v23) = v27;
          }

          ++v26;
          v23 -= 8;
          ++v24;
        }

        while (v26 < v25);
        v8 = a4[1];
      }
    }

LABEL_20:
    if (v9 < v8)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < a5)
      {
        if (__OFADD__(v11, a5))
        {
          goto LABEL_118;
        }

        if (v11 + a5 < v8)
        {
          v8 = v11 + a5;
        }

        if (v8 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v8)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
    }

    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v10 = sub_23A938B2C((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v41];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_107;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_106;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*a4)
        {
          goto LABEL_122;
        }

        v83 = *&v10[16 * v6 + 32];
        v84 = *&v10[16 * v45 + 40];
        sub_23A992850(&(*a4)[v83], &(*a4)[*&v10[16 * v45 + 32]], &(*a4)[v84], v44, a2);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v84 < v83)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v10[16 * v6];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        sub_23A977D94(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_108;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_112;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = a4[1];
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v29 = *a4;
  v30 = v11;
  v31 = &(*a4)[v9 - 1];
  v90 = v30;
  v32 = (v30 - v9);
LABEL_30:
  v33 = v29[v9];
  v34 = vsub_f32(v33, a2);
  v35 = atan2f(v34.f32[1], v34.f32[0]);
  v6 = v32;
  v36 = v31;
  while (1)
  {
    v37 = *v36;
    v38 = vsub_f32(*v36, a2);
    if (v35 >= atan2f(v38.f32[1], v38.f32[0]))
    {
LABEL_29:
      ++v9;
      v31 += 8;
      v32 = (v32 - 1);
      if (v9 != v8)
      {
        goto LABEL_30;
      }

      v9 = v8;
      v11 = v90;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    *v36 = v33;
    v36[1] = v37;
    --v36;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_23A992268(float32x2_t ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v94 = v10;
      v86 = *(v10 + 2);
      if (v86 >= 2)
      {
        while (*a3)
        {
          v87 = *&v10[16 * v86];
          v88 = *&v10[16 * v86 + 24];
          sub_23A992A90((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v86 + 16]), (*a3 + 8 * v88), v5);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v88 < v87)
          {
            goto LABEL_118;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v86 - 2 >= *(v10 + 2))
          {
            goto LABEL_119;
          }

          v89 = &v10[16 * v86];
          *v89 = v87;
          *(v89 + 1) = v88;
          v94 = v10;
          sub_23A977D94(v86 - 1);
          v10 = v94;
          v86 = *(v94 + 2);
          if (v86 <= 1)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_129;
      }

LABEL_103:

      return;
    }

LABEL_125:
    v10 = sub_23A977E20(v10);
    goto LABEL_95;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9++;
  if (v9 < v7)
  {
    v12 = 8 * v11;
    v13 = (*a3 + 8 * v11);
    v15 = *v13;
    v14 = v13 + 2;
    v16 = *(*(*a3 + 8 * v9) + 24);
    v17 = v15[3];
    v93 = vcgt_f32(v17, v16);
    v18 = *(&v93 | (4 * (fabsf(vsub_f32(v16, v17).f32[0]) < 0.00000011921)));
    v19 = v11 + 2;
    if (v7 > v11 + 2)
    {
      v19 = v7;
    }

    v20 = v19 - v11 - 2;
    while (v20)
    {
      v21 = *v14++;
      v22 = v21[3];
      v23 = fabsf(vsub_f32(v22, v16).f32[0]);
      v92 = vcgt_f32(v16, v22);
      --v20;
      ++v9;
      v16 = v22;
      if ((v18 & 1) != (*(&v92 | (4 * (v23 < 0.00000011921))) & 1))
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }
    }

    v9 = v19;
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v9 < v11)
    {
      goto LABEL_122;
    }

    if (v11 < v9)
    {
      v24 = 8 * v9 - 8;
      v25 = v9;
      v26 = v11;
      do
      {
        if (v26 != --v25)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v27 = *(v28 + v12);
          *(v28 + v12) = *(v28 + v24);
          *(v28 + v24) = v27;
        }

        ++v26;
        v24 -= 8;
        v12 += 8;
      }

      while (v26 < v25);
      v7 = a3[1];
    }
  }

LABEL_22:
  if (v9 >= v7)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_121;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_42;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_123;
  }

  if (v11 + v8 < v7)
  {
    v7 = v11 + v8;
  }

  if (v7 < v11)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v9 == v7)
  {
    goto LABEL_42;
  }

  v29 = *a3;
  v30 = *a3 + 8 * v9 - 8;
  v31 = v11 - v9;
LABEL_32:
  v32 = *(v29 + 8 * v9);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    v35 = *v34;
    v36 = v32[3];
    v37 = (*v34)[3];
    v38 = fabsf(vsub_f32(v36, v37).f32[0]);
    v39 = vcgt_f32(v37, v36);
    if (v38 >= 0.00000011921)
    {
      if ((v39.i8[0] & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if ((v39.i8[4] & 1) == 0)
    {
      goto LABEL_31;
    }

    if (!v29)
    {
      break;
    }

    *v34 = v32;
    v34[1] = v35;
    --v34;
    if (__CFADD__(v33++, 1))
    {
LABEL_31:
      ++v9;
      v30 += 8;
      --v31;
      if (v9 != v7)
      {
        goto LABEL_32;
      }

      v9 = v7;
LABEL_42:
      if (v9 < v11)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
      }

      v5 = *(v10 + 2);
      v41 = *(v10 + 3);
      v42 = v5 + 1;
      if (v5 >= v41 >> 1)
      {
        v10 = sub_23A938B2C((v41 > 1), v5 + 1, 1, v10);
      }

      *(v10 + 2) = v42;
      v43 = &v10[16 * v5];
      *(v43 + 4) = v11;
      *(v43 + 5) = v9;
      v44 = *a1;
      if (!*a1)
      {
        goto LABEL_130;
      }

      if (v5)
      {
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v10 + 4);
            v47 = *(v10 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_62:
            if (v49)
            {
              goto LABEL_109;
            }

            v62 = &v10[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_112;
            }

            v68 = &v10[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_116;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_83;
            }

            goto LABEL_76;
          }

          v72 = &v10[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_76:
          if (v67)
          {
            goto LABEL_111;
          }

          v75 = &v10[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_114;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_83:
          v5 = v45 - 1;
          if (v45 - 1 >= v42)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_127;
          }

          v83 = *&v10[16 * v5 + 32];
          v84 = *&v10[16 * v45 + 40];
          sub_23A992A90((*a3 + 8 * v83), (*a3 + 8 * *&v10[16 * v45 + 32]), (*a3 + 8 * v84), v44);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v84 < v83)
          {
            goto LABEL_105;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_23A977E20(v10);
          }

          if (v5 >= *(v10 + 2))
          {
            goto LABEL_106;
          }

          v85 = &v10[16 * v5];
          *(v85 + 4) = v83;
          *(v85 + 5) = v84;
          v94 = v10;
          sub_23A977D94(v45);
          v10 = v94;
          v42 = *(v94 + 2);
          if (v42 <= 1)
          {
            goto LABEL_3;
          }
        }

        v50 = &v10[16 * v42 + 32];
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = &v10[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v61 >= v53)
        {
          v79 = &v10[16 * v45 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_117;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_83;
        }

        goto LABEL_62;
      }

LABEL_3:
      v7 = a3[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_93;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_23A992850(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t a5)
{
  v5 = a4;
  v6 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v5[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v6)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = *v5;
      v20 = vsub_f32(*v8, a5);
      v21 = atan2f(v20.f32[1], v20.f32[0]);
      v22 = vsub_f32(v19, a5);
      if (v21 < atan2f(v22.f32[1], v22.f32[0]))
      {
        break;
      }

      v17 = v19;
      v18 = v9 == v5++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v5 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v5[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_24:
    v23 = v8 - 1;
    --v6;
    v24 = v16;
    do
    {
      v25 = v6 + 1;
      v26 = *(v24 - 8);
      v24 -= 8;
      v27 = v26;
      v28 = *v23;
      v29 = vsub_f32(v26, a5);
      v30 = atan2f(v29.f32[1], v29.f32[0]);
      v31 = vsub_f32(v28, a5);
      if (v30 < atan2f(v31.f32[1], v31.f32[0]))
      {
        if (v25 != v8)
        {
          *v6 = v28;
        }

        if (v16 <= v5 || (--v8, v23 <= v9))
        {
          v8 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v16)
      {
        *v6 = v27;
      }

      --v6;
      v16 = v24;
    }

    while (v24 > v5);
    v16 = v24;
  }

LABEL_35:
  if (v8 != v5 || v8 >= (v5 + ((v16 - v5 + (v16 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v5, 8 * (v16 - v5));
  }

  return 1;
}

uint64_t sub_23A992A90(float32x2_t **__src, float32x2_t **__dst, float32x2_t **a3, float32x2_t **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v21 = v6 - 1;
      --v5;
      v22 = v14;
      do
      {
        v24 = *(v22 - 8);
        v22 -= 8;
        v23 = v24;
        v25 = v24[3];
        v26 = (*v21)[3];
        v27 = fabsf(vsub_f32(v25, v26).f32[0]);
        v28 = vcgt_f32(v26, v25);
        if (v27 >= 0.00000011921)
        {
          if (v28.i8[0])
          {
LABEL_35:
            if (v5 + 1 != v6)
            {
              *v5 = *v21;
            }

            if (v14 <= v4 || (--v6, v21 <= v7))
            {
              v6 = v21;
              goto LABEL_42;
            }

            goto LABEL_27;
          }
        }

        else if (v28.i8[4])
        {
          goto LABEL_35;
        }

        if (v5 + 1 != v14)
        {
          *v5 = v23;
        }

        --v5;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        v16 = (*v6)[3];
        v17 = (*v4)[3];
        v18 = fabsf(vsub_f32(v16, v17).f32[0]);
        v19 = vcgt_f32(v17, v16);
        if (v18 >= 0.00000011921)
        {
          if ((v19.i8[0] & 1) == 0)
          {
LABEL_13:
            v15 = *v4;
            v20 = v7 == v4++;
            if (v20)
            {
              goto LABEL_15;
            }

LABEL_14:
            *v7 = v15;
            goto LABEL_15;
          }
        }

        else if ((v19.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v20 = v7 == v6++;
        if (!v20)
        {
          goto LABEL_14;
        }

LABEL_15:
        ++v7;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_42:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v29 >> 3));
  }

  return 1;
}

void sub_23A992CE8(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 16);
  if (v1)
  {
    v2 = 0;
    v3 = v1 - 1;
    do
    {
      v4 = v2 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_23AA10FC0;
      MEMORY[0x23EE8FCA0](0x2874696E692ELL, 0xE600000000000000);
      sub_23AA0D3F4();
      MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
      sub_23AA0D3F4();
      MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
      if (v2 >= v3)
      {
        v6 = 0;
      }

      else
      {
        v6 = 44;
      }

      if (v2 >= v3)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      MEMORY[0x23EE8FCA0](v6, v7);

      *(v5 + 56) = MEMORY[0x277D837D0];
      *(v5 + 32) = 0;
      *(v5 + 40) = 0xE000000000000000;
      sub_23AA0DCE4();

      v2 = v4;
    }

    while (v1 != v4);
  }
}

void sub_23A992E6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA10FC0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = 0xD000000000000027;
  *(v5 + 40) = 0x800000023AA20F00;
  sub_23AA0DCE4();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA10FC0;
  *(v7 + 56) = v6;
  *(v7 + 32) = 123;
  *(v7 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA10FC0;
  *(v8 + 56) = v6;
  *(v8 + 32) = 0x5B206E7275746572;
  *(v8 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  sub_23A992CE8(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA10FC0;
  *(v9 + 56) = v6;
  *(v9 + 32) = 93;
  *(v9 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA10FC0;
  *(v10 + 56) = v6;
  *(v10 + 32) = 125;
  *(v10 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA10FC0;
  *(v11 + 56) = v6;
  *(v11 + 32) = 0xD000000000000025;
  *(v11 + 40) = 0x800000023AA20F30;
  sub_23AA0DCE4();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA10FC0;
  *(v12 + 56) = v6;
  *(v12 + 32) = 123;
  *(v12 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23AA10FC0;
  *(v13 + 56) = v6;
  *(v13 + 32) = 0x5B206E7275746572;
  *(v13 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for CDTPolygon();
    swift_allocObject();
    v14 = sub_23A99A810(MEMORY[0x277D84F90]);
  }

  sub_23A992CE8(v14);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA10FC0;
  *(v15 + 56) = v6;
  *(v15 + 32) = 93;
  *(v15 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA10FC0;
  *(v16 + 56) = v6;
  *(v16 + 32) = 125;
  *(v16 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23AA10FC0;
  *(v17 + 56) = v6;
  *(v17 + 32) = 0xD000000000000025;
  *(v17 + 40) = 0x800000023AA20F60;
  sub_23AA0DCE4();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23AA10FC0;
  *(v18 + 56) = v6;
  *(v18 + 32) = 123;
  *(v18 + 40) = 0xE100000000000000;
  sub_23AA0DCE4();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA10FC0;
  *(v19 + 56) = v6;
  *(v19 + 32) = 0x5B206E7275746572;
  *(v19 + 40) = 0xE800000000000000;
  sub_23AA0DCE4();

  if (a3 >> 62)
  {
    goto LABEL_31;
  }

  v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = v20 - 1;
  if (!v20)
  {
LABEL_33:
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_23AA10FC0;
    *(v36 + 56) = v6;
    *(v36 + 32) = 93;
    *(v36 + 40) = 0xE100000000000000;
    sub_23AA0DCE4();

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_23AA10FC0;
    *(v37 + 56) = v6;
    *(v37 + 32) = 125;
    *(v37 + 40) = 0xE100000000000000;
    sub_23AA0DCE4();

    return;
  }

  while (2)
  {
    v21 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23EE90360](v21, a3);
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_29;
      }

LABEL_17:
      v40 = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23AA10FC0;
      *(v28 + 56) = v6;
      *(v28 + 32) = 91;
      *(v28 + 40) = 0xE100000000000000;
      sub_23AA0DCE4();

      v29 = *(*(v26 + 16) + 16);
      if (v29)
      {
        v30 = 0;
        v41 = v29 - 1;
        do
        {
          v31 = v30 + 1;
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_23AA10FC0;
          MEMORY[0x23EE8FCA0](0x2874696E692ELL, 0xE600000000000000);
          sub_23AA0D3F4();
          MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
          sub_23AA0D3F4();
          MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
          if (v30 >= v41)
          {
            v33 = 0;
          }

          else
          {
            v33 = 44;
          }

          if (v30 >= v41)
          {
            v34 = 0xE000000000000000;
          }

          else
          {
            v34 = 0xE100000000000000;
          }

          MEMORY[0x23EE8FCA0](v33, v34);

          *(v32 + 56) = MEMORY[0x277D837D0];
          *(v32 + 32) = 0;
          *(v32 + 40) = 0xE000000000000000;
          sub_23AA0DCE4();

          v30 = v31;
        }

        while (v29 != v31);
      }

      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23AA10FC0;
      if (v21 >= v39)
      {
        v23 = 0;
      }

      else
      {
        v23 = 44;
      }

      if (v21 >= v39)
      {
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0xE100000000000000;
      }

      MEMORY[0x23EE8FCA0](v23, v24);

      v25 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 32) = 93;
      *(v22 + 40) = 0xE100000000000000;
      sub_23AA0DCE4();

      v21 = v40;
      v6 = v25;
      if (v40 == v20)
      {
        goto LABEL_33;
      }
    }

    if (v21 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v26 = *(a3 + 32 + 8 * v21);

    v27 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v35 = sub_23AA0D7F4();
    v39 = v35 - 1;
    if (!__OFSUB__(v35, 1))
    {
      v20 = sub_23AA0D7F4();
      if (!v20)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  __break(1u);
}

void sub_23A99366C(uint64_t a1, double a2)
{
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  for (i = 0; v7; i = vadd_f32(i, *&a2))
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    a2 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v12 = *(a1 + 16);
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = sub_23A9EDA00(*(a1 + 16), 0);
      v14 = sub_23A9F3E9C(&v16, v13 + 4, v12, a1);
      v15 = v16;

      sub_23A8CA904(v15);
      if (v14 != v12)
      {
        __break(1u);
LABEL_14:
        v13 = MEMORY[0x277D84F90];
      }

      *&a2 = v12;
      v16 = v13;
      sub_23A98E18C(&v16, vdiv_f32(i, vdup_lane_s32(*&a2, 0)));
      return;
    }

    v7 = *(a1 + 56 + 8 * v10);
    ++v4;
    if (v7)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}

float32x2_t *sub_23A9937F8(float32x2_t *a1, float a2)
{
  v2 = a1;
  v3 = a1[2];
  if (!*&v3)
  {
LABEL_32:

    return v2;
  }

  v5 = *&v3 - 1;
  v6 = a1[*&v3 + 3];

  v7 = *&v3 - 2;
  if (*&v3 == 1)
  {
    v7 = 0;
  }

  if (v7 >= *&v3)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = vsub_f32(v6, v2[v7 + 4]);
  v9 = fabsf(v8.f32[0]);
  v10 = fabsf(v8.f32[1]);
  if (v9 < a2 && v10 < a2)
  {
    sub_23A9852D0(*&v3 - 1);
    if (*&v3 != 1)
    {
LABEL_10:
      v2 += *&v3 + 2;
      while (!__OFSUB__(v5--, 1))
      {
        if (v5)
        {
          v13 = v5 - 1;
          if (__OFSUB__(v5, 1))
          {
            goto LABEL_31;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v13 = *&a1[2] - 1;
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_30;
          }
        }

        if (v13 >= *&a1[2])
        {
          goto LABEL_28;
        }

        v14 = vsub_f32(*v2, a1[v13 + 4]);
        v15 = fabsf(v14.f32[0]);
        v16 = fabsf(v14.f32[1]);
        if (v15 < a2 && v16 < a2)
        {
          sub_23A9852D0(v5);
        }

        --v2;
        if (!v5)
        {
          return a1;
        }
      }

      goto LABEL_29;
    }
  }

  else if (*&v3 != 1)
  {
    goto LABEL_10;
  }

  return a1;
}

char *sub_23A993944(unint64_t a1, char *a2, char a3, double a4)
{
  v4 = a3;
  v6 = a1;
  v76 = MEMORY[0x277D84FA0];
  v7 = *(a1 + 16);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    LOBYTE(v71) = 1;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
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
        goto LABEL_121;
      }

      v10 = *(v7 + 32 + 8 * v9);
      v11 = v9 + 1;
      if (sub_23A8EDA7C(a2, 0.00000011921, *&v10))
      {
        break;
      }

      if (v4)
      {
        sub_23A9EF59C(v75, v10);
        v4 = a3;
        LOBYTE(v71) = 0;
        ++v9;
        if (v11 == v8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 == v8)
        {
LABEL_18:
          LOBYTE(v71) = 0;
          goto LABEL_20;
        }

        while (1)
        {
          if (v9 + 1 >= *(v7 + 16))
          {
            goto LABEL_116;
          }

          v10 = *(v7 + 40 + 8 * v9);
          if (sub_23A8EDA7C(a2, 0.00000011921, *&v10))
          {
            break;
          }

          if (v8 - 1 == ++v9)
          {
            goto LABEL_18;
          }
        }

        LOBYTE(v71) = 0;
        v9 += 2;
        if ((v4 & 1) == 0)
        {
LABEL_7:
          sub_23A9EF59C(v75, v10);
          v4 = a3;
        }

LABEL_3:
        if (v9 == v8)
        {
          goto LABEL_20;
        }
      }
    }

    ++v9;
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  LOBYTE(v71) = 1;
LABEL_20:
  v12 = *(a2 + 2);
  v13 = *(v12 + 16);
  if (!v13)
  {
    LOBYTE(v15) = 1;
LABEL_104:
    if (v4)
    {
      if (v71)
      {
        goto LABEL_115;
      }

      if (v15)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (v71)
      {
LABEL_109:

        return v6;
      }

LABEL_111:
      if (v15)
      {
        goto LABEL_115;
      }
    }

LABEL_38:
    v18 = *(v6 + 24);
    v63 = v18;
    if (v18 >> 62)
    {
      goto LABEL_122;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_40:
      v6 = *(a2 + 3);
      v62 = v19;
      if (!(v6 >> 62))
      {
        v67 = v6 & 0xFFFFFFFFFFFFFF8;
        v70 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_42;
      }

LABEL_126:
      v67 = v6 & 0xFFFFFFFFFFFFFF8;
      v59 = sub_23AA0D7F4();
      v18 = v63;
      v70 = v59;
LABEL_42:
      v20 = 0;
      v64 = v18 & 0xC000000000000001;
      v61 = v18 & 0xFFFFFFFFFFFFFF8;
      v68 = v6;
      v69 = v6 & 0xC000000000000001;
      v66 = v6 + 32;
      do
      {
        if (v64)
        {
          v21 = v20;
          MEMORY[0x23EE90360]();
          v22 = __OFADD__(v21, 1);
          a2 = (v21 + 1);
          if (v22)
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v20 >= *(v61 + 16))
          {
            __break(1u);
            goto LABEL_126;
          }

          v23 = v20;

          v22 = __OFADD__(v23, 1);
          a2 = (v23 + 1);
          if (v22)
          {
            goto LABEL_120;
          }
        }

        v65 = a2;
        if (v70)
        {
          v24 = 0;
          while (1)
          {
            if (v69)
            {
              v25 = MEMORY[0x23EE90360](v24, v6);
              v22 = __OFADD__(v24++, 1);
              if (v22)
              {
                goto LABEL_118;
              }
            }

            else
            {
              if (v24 >= *(v67 + 16))
              {
                goto LABEL_119;
              }

              v25 = *(v66 + 8 * v24);

              v22 = __OFADD__(v24++, 1);
              if (v22)
              {
                goto LABEL_118;
              }
            }

            v28 = sub_23A946DC8(v25, 1, 0.0001, v26, v27);
            a2 = v28;
            v29 = *(v28 + 2);
            if (v29)
            {
              break;
            }

LABEL_53:
            if (v24 == v70)
            {
              goto LABEL_43;
            }
          }

          v71 = v24;
          v15 = 0;
          v72 = v28 + 32;
          v30 = v76;
          while (2)
          {
            if (v15 >= *(a2 + 2))
            {
              __break(1u);
              goto LABEL_111;
            }

            v74 = *&v72[8 * v15];
            sub_23AA0DD14();
            sub_23AA0DD44();
            sub_23AA0DD44();
            v35 = sub_23AA0DD54();
            v36 = v30 + 56;
            v37 = -1 << *(v30 + 32);
            v6 = v35 & ~v37;
            if ((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v38 = ~v37;
              while (1)
              {
                a4 = COERCE_DOUBLE(vceq_f32(*(*(v30 + 48) + 8 * v6), v74));
                if (LOBYTE(a4) & 1) != 0 && (BYTE4(a4))
                {
                  break;
                }

                v6 = (v6 + 1) & v38;
                if (((*(v36 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_75;
                }
              }

LABEL_67:
              if (++v15 == v29)
              {
                v76 = v30;

                v6 = v68;
                v24 = v71;
                goto LABEL_53;
              }

              continue;
            }

            break;
          }

LABEL_75:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v30 + 16);
          if (*(v30 + 24) <= v40)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_23A9F07EC(v40 + 1);
            }

            else
            {
              sub_23A9F3020(v40 + 1);
            }

            v31 = v30;
            sub_23AA0DD14();
            sub_23AA0DD44();
            sub_23AA0DD44();
            v41 = sub_23AA0DD54();
            v42 = -1 << *(v30 + 32);
            v6 = v41 & ~v42;
            if ((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
            {
              v43 = ~v42;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
              v32 = v74;
              while (1)
              {
                a4 = COERCE_DOUBLE(vceq_f32(*(*(v30 + 48) + 8 * v6), v74));
                if (LOBYTE(a4) & 1) != 0 && (BYTE4(a4))
                {
                  break;
                }

                v6 = (v6 + 1) & v43;
                if (((*(v30 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                {
                  goto LABEL_65;
                }
              }

              result = sub_23AA0DC14();
              __break(1u);
              return result;
            }

            goto LABEL_64;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v30;
            goto LABEL_64;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
          v44 = sub_23AA0D854();
          v31 = v44;
          if (!*(v30 + 16))
          {
LABEL_101:

LABEL_64:
            v32 = v74;
LABEL_65:
            *(v31 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
            *(*(v31 + 48) + 8 * v6) = v32;
            v33 = *(v31 + 16);
            v22 = __OFADD__(v33, 1);
            v34 = v33 + 1;
            if (v22)
            {
              __break(1u);
              goto LABEL_114;
            }

            *(v31 + 16) = v34;
            v30 = v31;
            goto LABEL_67;
          }

          v45 = (v44 + 56);
          v46 = ((1 << *(v31 + 32)) + 63) >> 6;
          if (v31 != v30 || v45 >= v36 + 8 * v46)
          {
            memmove(v45, (v30 + 56), 8 * v46);
          }

          v47 = 0;
          *(v31 + 16) = *(v30 + 16);
          v48 = 1 << *(v30 + 32);
          if (v48 < 64)
          {
            v49 = ~(-1 << v48);
          }

          else
          {
            v49 = -1;
          }

          v50 = v49 & *(v30 + 56);
          for (i = (v48 + 63) >> 6; v50; *(*(v31 + 48) + 8 * v53) = *(*(v30 + 48) + 8 * v53))
          {
            v52 = __clz(__rbit64(v50));
            v50 &= v50 - 1;
            v53 = v52 | (v47 << 6);
LABEL_99:
            ;
          }

          v54 = v47;
          while (1)
          {
            v47 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            if (v47 >= i)
            {
              goto LABEL_101;
            }

            v55 = *(v36 + 8 * v47);
            ++v54;
            if (v55)
            {
              v50 = (v55 - 1) & v55;
              v53 = __clz(__rbit64(v55)) | (v47 << 6);
              goto LABEL_99;
            }
          }

LABEL_121:
          __break(1u);
LABEL_122:
          v19 = sub_23AA0D7F4();
          v18 = v63;
          if (!v19)
          {
            break;
          }

          goto LABEL_40;
        }

LABEL_43:

        v20 = v65;
      }

      while (v65 != v62);
    }

    sub_23A99366C(v76, a4);
    v57 = v56;

    v58 = sub_23A9937F8(v57, 0.0001);

    type metadata accessor for CDTPolygon();
    swift_allocObject();
    return sub_23A99A810(v58);
  }

  v14 = 0;
  LOBYTE(v15) = 1;
  do
  {
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_117;
      }

      v16 = *(v12 + 32 + 8 * v14);
      v17 = v14 + 1;
      if (sub_23A8EDA7C(v6, 0.00000011921, *&v16))
      {
        ++v14;
        if ((v4 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (v4)
      {
        break;
      }

      if (v17 == v13)
      {
LABEL_37:
        if (v71)
        {
          goto LABEL_109;
        }

        goto LABEL_38;
      }

      while (1)
      {
        if (v14 + 1 >= *(v12 + 16))
        {
          goto LABEL_117;
        }

        v16 = *(v12 + 40 + 8 * v14);
        if (sub_23A8EDA7C(v6, 0.00000011921, *&v16))
        {
          break;
        }

        if (v13 - 1 == ++v14)
        {
          goto LABEL_37;
        }
      }

      LOBYTE(v15) = 0;
      v14 += 2;
      if ((v4 & 1) == 0)
      {
LABEL_26:
        sub_23A9EF59C(v75, v16);
        v4 = a3;
      }

LABEL_22:
      if (v14 == v13)
      {
        goto LABEL_104;
      }
    }

    sub_23A9EF59C(v75, v16);
    v4 = a3;
    LOBYTE(v15) = 0;
    ++v14;
  }

  while (v17 != v13);
LABEL_114:
  if ((v71 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_115:

  return a2;
}

uint64_t sub_23A9941A4(float32x2_t *__dst, float32x2_t *__src, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v17 = *v8;
      v19 = a5[2];
      v20 = vsub_f32(a5[3], v19);
      v21 = vmul_f32(vsub_f32(*v8, v19), v20);
      v22 = vmul_f32(vsub_f32(*v6, v19), v20);
      v23 = vadd_f32(vzip1_s32(v21, v22), vzip2_s32(v21, v22));
      if (vcgt_f32(vdup_lane_s32(v23, 1), v23).u8[0])
      {
        break;
      }

      v17 = *v6;
      v18 = v9 == v6++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v18 = v9 == v8++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_24:
    v24 = v8 - 1;
    --v7;
    v25 = v16;
    do
    {
      v26 = v7 + 1;
      v27 = *(v25 - 8);
      v25 -= 8;
      v28 = v27;
      v29 = a5[2];
      v30 = vsub_f32(a5[3], v29);
      v31 = vmul_f32(vsub_f32(v27, v29), v30);
      v32 = vmul_f32(vsub_f32(*v24, v29), v30);
      v33 = vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32));
      if (vcgt_f32(vdup_lane_s32(v33, 1), v33).u8[0])
      {
        if (v26 != v8)
        {
          *v7 = *v24;
        }

        if (v16 <= v6 || (--v8, v24 <= v9))
        {
          v8 = v24;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v26 != v16)
      {
        *v7 = v28;
      }

      --v7;
      v16 = v25;
    }

    while (v25 > v6);
    v16 = v25;
  }

LABEL_35:
  v34 = v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0);
  if (v8 != v6 || v8 >= (v6 + (v34 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v34 >> 3));
  }

  return 1;
}

void sub_23A994404(char **a1, float32x2_t *a2, uint64_t *a3, float32x2_t *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = sub_23A977E20(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v23[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_23A9941A4(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

void sub_23A9945AC(float32x2_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, float32x2_t *a5)
{
  v6 = v5;
  v9 = a3[1];
  v111 = MEMORY[0x277D84F90];
  if (v9 >= 1)
  {
    swift_retain_n();
    v11 = 0;
    v107 = a5;
    v108 = MEMORY[0x277D84F90];
    v103 = a1;
    v104 = a4;
    while (1)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v9)
      {
        goto LABEL_21;
      }

      if (v6)
      {
        goto LABEL_96;
      }

      v13 = *(*a3 + 8 * v12);
      v14 = a5[2];
      v15 = vsub_f32(a5[3], v14);
      v16 = vmul_f32(vsub_f32(v13, v14), v15);
      v17 = vmul_f32(vsub_f32(*(*a3 + 8 * v11), v14), v15);
      v18 = vadd_f32(vzip1_s32(v16, v17), vzip2_s32(v16, v17));
      v19 = vcgt_f32(vdup_lane_s32(v18, 1), v18);
      v20 = v11 + 2;
      do
      {
        if (v9 == v20)
        {
          v12 = v9;
          if ((v19.i8[0] & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_13;
        }

        v21 = *(*a3 + 8 * v20);
        v22 = vmul_f32(v15, vsub_f32(v21, v14));
        v23 = vmul_f32(v15, vsub_f32(v13, v14));
        v24 = vadd_f32(vzip1_s32(v22, v23), vzip2_s32(v22, v23));
        v25 = vmvn_s8(veor_s8(vcgt_f32(vdup_lane_s32(v24, 1), v24), v19)).u8[0];
        ++v20;
        v13 = v21;
      }

      while ((v25 & 1) != 0);
      v12 = v20 - 1;
      if ((v19.i8[0] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v12 < v11)
      {
        goto LABEL_118;
      }

      v26 = v12;
      if (v11 < v12)
      {
        v27 = 8 * v12 - 8;
        v28 = 8 * v11;
        v29 = v11;
        do
        {
          if (v29 != --v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_121;
            }

            v31 = *(v30 + v28);
            *(v30 + v28) = *(v30 + v27);
            *(v30 + v27) = v31;
          }

          ++v29;
          v27 -= 8;
          v28 += 8;
        }

        while (v29 < v26);
        v9 = a3[1];
      }

LABEL_21:
      v32 = v12;
      if (v12 >= v9)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_115;
      }

      if (v12 - v11 >= a4)
      {
        v33 = v12;
        if (v12 < v11)
        {
          goto LABEL_114;
        }

        goto LABEL_41;
      }

      v32 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_116;
      }

      if (v32 >= v9)
      {
        v32 = v9;
      }

      if (v32 < v11)
      {
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
        return;
      }

      v33 = v12;
      if (v12 != v32)
      {
        break;
      }

LABEL_38:
      if (v33 < v11)
      {
        goto LABEL_114;
      }

LABEL_41:
      v47 = v108;
      v110 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_23A938B2C(0, *(v108 + 2) + 1, 1, v108);
      }

      v48 = v47;
      v49 = *(v47 + 2);
      v108 = v48;
      v50 = *(v48 + 3);
      v51 = v49 + 1;
      v105 = v33;
      if (v49 >= v50 >> 1)
      {
        v108 = sub_23A938B2C((v50 > 1), v49 + 1, 1, v108);
      }

      *(v108 + 2) = v51;
      v52 = v108 + 32;
      v53 = &v108[16 * v49 + 32];
      *v53 = v11;
      *(v53 + 1) = v105;
      v111 = v108;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      if (v49)
      {
        v54 = v108;
        while (1)
        {
          v55 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v56 = *(v54 + 4);
            v57 = *(v54 + 5);
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_61:
            if (v59)
            {
              goto LABEL_105;
            }

            v72 = &v54[16 * v51];
            v74 = *v72;
            v73 = *(v72 + 1);
            v75 = __OFSUB__(v73, v74);
            v76 = v73 - v74;
            v77 = v75;
            if (v75)
            {
              goto LABEL_108;
            }

            v78 = &v52[16 * v55];
            v80 = *v78;
            v79 = *(v78 + 1);
            v66 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v66)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v76, v81))
            {
              goto LABEL_112;
            }

            if (v76 + v81 >= v58)
            {
              if (v58 < v81)
              {
                v55 = v51 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v82 = &v54[16 * v51];
          v84 = *v82;
          v83 = *(v82 + 1);
          v66 = __OFSUB__(v83, v84);
          v76 = v83 - v84;
          v77 = v66;
LABEL_75:
          if (v77)
          {
            goto LABEL_107;
          }

          v85 = &v52[16 * v55];
          v87 = *v85;
          v86 = *(v85 + 1);
          v66 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v66)
          {
            goto LABEL_110;
          }

          if (v88 < v76)
          {
            goto LABEL_3;
          }

LABEL_82:
          if (v55 - 1 >= v51)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
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
            goto LABEL_117;
          }

          v93 = *a3;
          if (!*a3)
          {
            goto LABEL_120;
          }

          v94 = &v52[16 * v55 - 16];
          v95 = *v94;
          v96 = &v52[16 * v55];
          v97 = *(v96 + 1);
          v98 = (v93 + 8 * *v94);
          v99 = (v93 + 8 * *v96);
          v100 = (v93 + 8 * v97);

          sub_23A9941A4(v98, v99, v100, v106, v107);
          if (v110)
          {

            goto LABEL_96;
          }

          if (v97 < v95)
          {
            goto LABEL_100;
          }

          v54 = v108;
          v101 = *(v108 + 2);
          if (v55 > v101)
          {
            goto LABEL_101;
          }

          *v94 = v95;
          *(v94 + 1) = v97;
          if (v55 >= v101)
          {
            goto LABEL_102;
          }

          v110 = 0;
          v51 = v101 - 1;
          memmove(&v52[16 * v55], v96 + 16, 16 * (v101 - 1 - v55));
          *(v108 + 2) = v101 - 1;
          if (v101 <= 2)
          {
LABEL_3:
            v111 = v54;
            a1 = v103;
            goto LABEL_4;
          }
        }

        v60 = &v52[16 * v51];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_103;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_104;
        }

        v67 = &v54[16 * v51];
        v69 = *v67;
        v68 = *(v67 + 1);
        v66 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v66)
        {
          goto LABEL_106;
        }

        v66 = __OFADD__(v58, v70);
        v71 = v58 + v70;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v71 >= v63)
        {
          v89 = &v52[16 * v55];
          v91 = *v89;
          v90 = *(v89 + 1);
          v66 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v66)
          {
            goto LABEL_113;
          }

          if (v58 < v92)
          {
            v55 = v51 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_4:
      v6 = v110;
      v9 = a3[1];
      a4 = v104;
      v11 = v105;
      a5 = v107;
      if (v105 >= v9)
      {
        goto LABEL_93;
      }
    }

    v34 = *a3;
    v35 = a5[2];
    v36 = vsub_f32(a5[3], v35);
    v37 = *a3 + 8 * v12 - 8;
    v38 = v11 - v12;
    do
    {
      v39 = *(v34 + 8 * v33);
      v40 = vmul_f32(v36, vsub_f32(v39, v35));
      v41 = vadd_f32(v40, vdup_lane_s32(v40, 1));
      v42 = v38;
      v43 = v37;
      do
      {
        v44 = *v43;
        v45 = vmul_f32(v36, vsub_f32(*v43, v35));
        if ((vcgt_f32(vadd_f32(v45, vdup_lane_s32(v45, 1)), v41).u8[0] & 1) == 0)
        {
          break;
        }

        if (!v34)
        {
          goto LABEL_119;
        }

        *v43 = v39;
        v43[1] = v44;
        --v43;
      }

      while (!__CFADD__(v42++, 1));
      ++v33;
      v37 += 8;
      --v38;
    }

    while (v33 != v32);
LABEL_37:
    v33 = v32;
    goto LABEL_38;
  }

  swift_retain_n();
LABEL_93:
  v102 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  sub_23A994404(&v111, v102, a3, a5);
  if (v6)
  {

LABEL_96:
  }

  else
  {
  }
}

uint64_t sub_23A994BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, float32x2_t *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = a5[2];
    v7 = vsub_f32(a5[3], v6);
    v8 = *a4 + 8 * a3 - 8;
    v9 = result - a3;
LABEL_5:
    v10 = *(v5 + 8 * a3);
    v11 = vmul_f32(v7, vsub_f32(v10, v6));
    v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
    v13 = v9;
    v14 = v8;
    while (1)
    {
      v15 = *v14;
      v16 = vmul_f32(v7, vsub_f32(*v14, v6));
      if ((vcgt_f32(vadd_f32(v16, vdup_lane_s32(v16, 1)), v12).u8[0] & 1) == 0)
      {
LABEL_4:
        ++a3;
        v8 += 8;
        --v9;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      *v14 = v10;
      v14[1] = v15;
      --v14;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23A994C74(uint64_t *a1, float32x2_t *a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_23AA0DBA4();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v8 = sub_23AA0D324();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;

      sub_23A9945AC(v9, v10, a1, v6, a2);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_23A994BE4(0, v4, 1, a1, a2);
  }
}

uint64_t sub_23A994DCC(char **a1, float32x2_t *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A977E34(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_23A994C74(v7, a2);

  *a1 = v4;
}

void sub_23A994E70(uint64_t a1, char *a2, char *a3)
{
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_69;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v58 = v5 & 0xFFFFFFFFFFFFFF8;
    v59 = v5 & 0xC000000000000001;
    v55 = v5;
    v56 = v6;
    v57 = (v5 + 32);
    while (1)
    {
      if (v59)
      {
        v62 = MEMORY[0x23EE90360](v8, v55);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v8 >= *(v58 + 16))
        {
          goto LABEL_63;
        }

        v62 = *&v57[8 * v8];

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
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
LABEL_69:
          v6 = sub_23AA0D7F4();
          goto LABEL_3;
        }
      }

      v60 = v9;
      if (*(a3 + 2))
      {
        v10 = sub_23A9EDF54(v8);
        if (v11)
        {
          v12 = *(a3 + 7) + 16 * v10;
          v13 = *v12;
          v14 = *(v12 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_23A938F80(0, *(v7 + 2) + 1, 1, v7);
          }

          v16 = *(v7 + 2);
          v15 = *(v7 + 3);
          if (v16 >= v15 >> 1)
          {
            v7 = sub_23A938F80((v15 > 1), v16 + 1, 1, v7);
          }

          *(v7 + 2) = v16 + 1;
          v17 = &v7[16 * v16];
          v17[32] = v13;
          *(v17 + 5) = v14;
        }
      }

      v61 = v7;
      if (*(a2 + 2))
      {
        v18 = sub_23A9EDF54(v8);
        if (v19)
        {
          v20 = *(*(a2 + 7) + 8 * v18);
          v5 = *(v20 + 16);
          if (v5)
          {
            break;
          }
        }
      }

      v22 = MEMORY[0x277D84FA0];
      v29 = *(MEMORY[0x277D84FA0] + 16);
      if (!v29)
      {
        goto LABEL_36;
      }

LABEL_31:
      v30 = a2;
      v31 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
      v32 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v32);
      v34 = v33 - 32;
      if (v33 < 32)
      {
        v34 = v33 - 25;
      }

      v32[2] = v29;
      v32[3] = 2 * (v34 >> 3);
      v64 = sub_23A9F3E9C(v65, v32 + 4, v29, v22);
      v35 = v65[0];
      v5 = v65[1];
      a2 = v65[3];
      a3 = v65[4];

      sub_23A8CA904(v35);
      if (v64 != v29)
      {
        goto LABEL_66;
      }

      a3 = v31;
      a2 = v30;
LABEL_37:
      v65[0] = v32;

      sub_23A994DCC(v65, v62);

      v36 = v65[0];
      v37 = *(v65[0] + 2);
      if (v37)
      {
        v65[0] = MEMORY[0x277D84F90];
        sub_23A975E84(0, v37, 0);
        v38 = v65[0];
        v39 = *(v65[0] + 2);
        v40 = 16 * v39;
        v41 = 32;
        do
        {
          v42 = *&v36[v41];
          v65[0] = v38;
          v43 = *(v38 + 3);
          v44 = v39 + 1;
          if (v39 >= v43 >> 1)
          {
            sub_23A975E84((v43 > 1), v39 + 1, 1);
            v38 = v65[0];
          }

          *(v38 + 2) = v44;
          v45 = &v38[v40];
          v45[32] = 1;
          *(v45 + 5) = v42;
          v40 += 16;
          v41 += 8;
          v39 = v44;
          --v37;
        }

        while (v37);
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      v5 = *(v38 + 2);
      v7 = v61;
      v46 = *(v61 + 2);
      v47 = (v46 + v5);
      if (__OFADD__(v46, v5))
      {
        goto LABEL_64;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v49 = *(v61 + 3) >> 1, v49 >= v47))
      {
        if (*(v38 + 2))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v46 <= v47)
        {
          v50 = v46 + v5;
        }

        else
        {
          v50 = v46;
        }

        v7 = sub_23A938F80(isUniquelyReferenced_nonNull_native, v50, 1, v61);
        v49 = *(v7 + 3) >> 1;
        if (*(v38 + 2))
        {
LABEL_53:
          v51 = *(v7 + 2);
          if (v49 - v51 < v5)
          {
            goto LABEL_67;
          }

          memcpy(&v7[16 * v51 + 32], v38 + 32, 16 * v5);

          if (v5)
          {
            v52 = *(v7 + 2);
            v53 = __OFADD__(v52, v5);
            v54 = (v52 + v5);
            if (v53)
            {
              goto LABEL_68;
            }

            *(v7 + 2) = v54;
          }

          goto LABEL_6;
        }
      }

      if (v5)
      {
        goto LABEL_65;
      }

LABEL_6:

      v8 = v60;
      if (v60 == v56)
      {
        return;
      }
    }

    v21 = 0;
    v22 = MEMORY[0x277D84FA0];
    do
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v63 = *(v20 + 32 + 8 * v21);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      v24 = sub_23AA0DD54();
      v25 = -1 << v22[32];
      v26 = v24 & ~v25;
      if ((*&v22[((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = vceq_f32(*(*(v22 + 6) + 8 * v26), *&v63);
          if (v28.i8[0] & 1) != 0 && (v28.i8[4])
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*&v22[((v26 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v26) & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v65[0] = v22;
        sub_23A9F19DC(v26, v23, v63);
        v22 = v65[0];
      }

      ++v21;
    }

    while (v21 != v5);

    v29 = *(v22 + 2);
    if (v29)
    {
      goto LABEL_31;
    }

LABEL_36:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }
}

void sub_23A99543C(char **a1, float a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  if (!v3)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v2[16 * v3 + 24];
  v23 = v2;
  while (1)
  {
    if (!v6)
    {
      v7 = *(v2 + 2);
    }

    if (__OFSUB__(v7--, 1))
    {
      break;
    }

    if (v3 > *(v2 + 2))
    {
      goto LABEL_31;
    }

    v10 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
      goto LABEL_32;
    }

    v11 = *a1;
    v12 = *(*a1 + 2);
    if ((v10 & 0x8000000000000000) != 0)
    {
      if (!v12)
      {
        goto LABEL_33;
      }

      v10 = v12 - 1;
    }

    if (v10 >= v12)
    {
      goto LABEL_34;
    }

    v13 = &v11[16 * v10];
    v14 = v13[5];
    v15 = vsub_f32(*v8, v14);
    v16 = fabsf(v15.f32[0]);
    v17 = fabsf(v15.f32[1]);
    if (v16 < a2 && v17 < a2)
    {
      v19 = v13[4].u8[0];
      if (!v8[-1].i8[0] || v8[-1].i8[0] != 1)
      {
        v20 = sub_23AA0DBD4();

        v2 = v23;
        if (v20)
        {
          goto LABEL_24;
        }

        if (v19 == 1)
        {
          goto LABEL_23;
        }

        v22 = sub_23AA0DBD4();

        v2 = v23;
        if (v22)
        {
LABEL_24:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A975C60(v11);
          }

          if (v10 >= *(v11 + 2))
          {
            __break(1u);
            return;
          }

          v21 = &v11[16 * v10];
          v21[4].i8[0] = 1;
          v21[5] = v14;
          *a1 = v11;
        }

        sub_23A985358(v7);
        goto LABEL_4;
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_4:
    v8 -= 2;
    ++v6;
    if (!--v3)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
}

void sub_23A9956C8(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 32;

    v5 = 0;
    v6 = v2;
    v7 = v2;
    while (1)
    {
      if (v6 == v2)
      {
        v8 = v2;
      }

      else
      {
        v8 = v5;
      }

      if (v6 == v2)
      {
        v7 = v2;
      }

      v5 = v8 - 1;
      if (v8 < 1)
      {
        break;
      }

      --v6;
      if (v8 != 1)
      {
        v9 = 0;
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v9 >= v7)
          {
            goto LABEL_22;
          }

          v11 = vsub_f32(*(v4 + 8 * v6), *(v4 + 8 * v9));
          v12 = fabsf(v11.f32[0]);
          v13 = fabsf(v11.f32[1]);
          if (v12 < a2 && v13 < a2)
          {
            sub_23A9852D0(v5);
            goto LABEL_4;
          }

          ++v9;
          if (v10 == v5)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_4:
      if (!v6)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_23A9957B8(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    sub_23AA0D964();
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(DelaunayPoint) initWithValue_];
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      --v2;
    }

    while (v2);
  }

  v7 = [objc_opt_self() shared];
  sub_23A8D6C58(0, &qword_27DFB0660, off_278B64630);
  v8 = sub_23AA0D2E4();

  v9 = [v7 computeTriangulation_];

  sub_23A8D6C58(0, &qword_27DFB0668, off_278B64638);
  v10 = sub_23AA0D2F4();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  v11 = sub_23AA0D7F4();
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  v22 = v3;
  result = sub_23AA0D964();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EE90360](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 first];
      v17 = v16;
      [v15 second];
      v19 = v18;
      [v15 third];
      v21 = v20;
      type metadata accessor for CDTTriangle();
      swift_allocObject();
      sub_23A9C34F8(v17, v19, v21, 0.001);

      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    while (v11 != v13);

    return v22;
  }

  return result;
}

unint64_t sub_23A995A94()
{
  result = qword_27DFB0650;
  if (!qword_27DFB0650)
  {
    type metadata accessor for CDTTriangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0650);
  }

  return result;
}

void sub_23A995AEC(unint64_t a1, char **a2, uint64_t *a3)
{

  v6 = MEMORY[0x277D84F90];
  v39 = a2;
  *a2 = MEMORY[0x277D84F90];
  v36 = a3;
  *a3 = v6;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v8 = 0;
    v38 = a1 & 0xC000000000000001;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F98];
    v11 = MEMORY[0x277D84F90];
    v35 = a1;
    v37 = i;
    while (1)
    {
      if (v38)
      {
        MEMORY[0x23EE90360](v8, a1);
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v8 >= *(v34 + 16))
      {
        goto LABEL_48;
      }

      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        break;
      }

LABEL_11:
      sub_23A9C3768();
      v14 = v13;
      v40 = *(v13 + 16);
      if (v40)
      {
        a1 = 0;
        while (1)
        {
          if (a1 >= *(v14 + 16))
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v15 = *(v14 + 8 * a1 + 32);
          if (v10[2] && (v16 = sub_23A9EDEEC(*(v14 + 8 * a1 + 32)), (v17 & 1) != 0))
          {
            LODWORD(v18) = *(v10[7] + 4 * v16);
          }

          else
          {
            v18 = *(v9 + 2);
            if (HIDWORD(v18))
            {
              goto LABEL_44;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_23A938A28(0, v18 + 1, 1, v9);
            }

            v20 = *(v9 + 2);
            v19 = *(v9 + 3);
            if (v20 >= v19 >> 1)
            {
              v9 = sub_23A938A28((v19 > 1), v20 + 1, 1, v9);
            }

            *(v9 + 2) = v20 + 1;
            *&v9[8 * v20 + 32] = v15;
            *v39 = v9;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = sub_23A9EDEEC(v15);
            v24 = v10[2];
            v25 = (v22 & 1) == 0;
            v26 = v24 + v25;
            if (__OFADD__(v24, v25))
            {
              goto LABEL_45;
            }

            v27 = v22;
            if (v10[3] >= v26)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if (v22)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                sub_23A90D728();
                if (v27)
                {
                  goto LABEL_29;
                }
              }
            }

            else
            {
              sub_23A9076C4(v26, isUniquelyReferenced_nonNull_native);
              v28 = sub_23A9EDEEC(v15);
              if ((v27 & 1) != (v29 & 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
                sub_23AA0DC24();
                __break(1u);
                return;
              }

              v23 = v28;
              if (v27)
              {
LABEL_29:
                *(v10[7] + 4 * v23) = v18;
                goto LABEL_33;
              }
            }

            v10[(v23 >> 6) + 8] |= 1 << v23;
            *(v10[6] + 8 * v23) = v15;
            *(v10[7] + 4 * v23) = v18;
            v30 = v10[2];
            v12 = __OFADD__(v30, 1);
            v31 = v30 + 1;
            if (v12)
            {
              goto LABEL_46;
            }

            v10[2] = v31;
          }

LABEL_33:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A9388BC(0, *(v11 + 2) + 1, 1, v11);
          }

          v33 = *(v11 + 2);
          v32 = *(v11 + 3);
          if (v33 >= v32 >> 1)
          {
            v11 = sub_23A9388BC((v32 > 1), v33 + 1, 1, v11);
          }

          ++a1;
          *(v11 + 2) = v33 + 1;
          *&v11[4 * v33 + 32] = v18;
          if (v40 == a1)
          {

            a1 = v35;
            *v36 = v11;
            goto LABEL_4;
          }
        }
      }

LABEL_4:
      if (v8 == v37)
      {

        return;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }
}

unint64_t sub_23A995F04()
{
  result = qword_27DFB0670;
  if (!qword_27DFB0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0670);
  }

  return result;
}

unint64_t sub_23A995F58(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A995FA8()
{
  if (*v0)
  {
    return 0xD000000000000043;
  }

  else
  {
    return 0xD000000000000044;
  }
}

double sub_23A995FE0()
{
  type metadata accessor for MeshLoader();
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  qword_27DFC07E0 = v0;
  return result;
}

double sub_23A99601C()
{
  swift_beginAccess();
  sub_23A8D5194(v0 + 16, &v4, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v5 + 1))
  {
    sub_23A8CA9D8(&v4, v2);
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_23A999018(&v4, v0 + 16);
  swift_endAccess();
  *(v0 + 56) = 0;

  swift_beginAccess();
  sub_23A8D5194(v0 + 64, &v4, &unk_27DFB10C0, &unk_23AA19560);
  if (*(&v5 + 1))
  {
    sub_23A8CA9D8(&v4, v2);
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_23AA0CEA4();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_23A8D50D0(&v4, &unk_27DFB10C0, &unk_23AA19560);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_23A999018(&v4, v0 + 64);
  swift_endAccess();
  *(v0 + 104) = 0;

  return result;
}

void sub_23A99620C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23AA0C364();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23AA0CAE4();
  v11 = sub_23AA0C4A4();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_23A8D50D0(v10, &qword_27DFB06C0, &unk_23AA1BB10);
    sub_23A998FC4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else
  {
    sub_23AA0C484();
    sub_23A8D50D0(v10, &qword_27DFB06C0, &unk_23AA1BB10);
    sub_23A996444(a3, v7);
    sub_23AA0C324();
    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23A996444@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v53 = a2;
  v46 = sub_23AA0CDF4();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0CE04();
  *&v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0698, &qword_23AA19540);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = sub_23AA0C314();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v40 - v20;
  v21 = sub_23AA0C364();
  v51 = *(v21 - 8);
  v52 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C374();
  v49 = v23;
  sub_23AA0C334();
  v24 = *(v54 + 16);
  v47 = v9;
  v24(v6, v9, v4);
  sub_23A998F7C(&qword_27DFB06A0, MEMORY[0x277CDB438], MEMORY[0x277CDB440]);
  v43 = v6;
  v45 = v4;
  sub_23AA0D264();
  sub_23A998F7C(&qword_27DFB06A8, MEMORY[0x277CDB428], MEMORY[0x277CDB430]);
  v25 = v3;
  v26 = v46;
  sub_23AA0D674();
  v27 = *(v17 + 48);
  if (v27(v12, 1, v16) == 1)
  {
    (*(v48 + 8))(v25, v26);
    (*(v54 + 8))(v47, v45);
    v28 = 1;
  }

  else
  {
    v40 = v27;
    v41 = v15;
    v29 = v48;
    v30 = v26;
    v31 = *(v17 + 32);
    v32 = v42;
    v31(v42, v12, v16);
    (*(v29 + 8))(v25, v30);
    v27 = v40;
    v15 = v41;
    (*(v54 + 8))(v47, v45);
    v31(v15, v32, v16);
    v28 = 0;
  }

  (*(v17 + 56))(v15, v28, 1, v16);
  if (v27(v15, 1, v16) == 1)
  {
    sub_23A8D50D0(v15, &qword_27DFB0698, &qword_23AA19540);
    v33 = v49;
  }

  else
  {
    (*(v17 + 32))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B0, &qword_23AA19548);
    v34 = swift_allocObject();
    v54 = xmmword_23AA10FC0;
    *(v34 + 16) = xmmword_23AA10FC0;
    sub_23AA0C304();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B8, &unk_23AA19550);
    v35 = sub_23AA0C2E4();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v54;
    (*(v36 + 16))(v38 + v37, v44, v35);
    sub_23AA0C2F4();
    sub_23AA0CDE4();
    v33 = v49;
    sub_23AA0C344();
    (*(v17 + 8))(v50, v16);
  }

  return (*(v51 + 32))(v53, v33, v52);
}

uint64_t sub_23A996AE0(void *a1, unsigned __int8 a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0690, &qword_23AA19538);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = *(a1[2] + 16);
  if (v12)
  {
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
    v13 = sub_23AA0D324();
    *(v13 + 16) = v12;
    bzero((v13 + 32), 16 * v12);
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();

    sub_23AA0CB74();
    (*(v10 + 56))(v8, 0, 1, v17);
    sub_23AA0CDB4();

    sub_23AA0CB84();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    return sub_23AA0C2C4();
  }

  else
  {

    return sub_23AA0C2D4();
  }
}

void *sub_23A996EFC(unsigned __int8 a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7, uint64_t a8, float32x4_t a9, float a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v96 = a8;
  v99 = a7;
  v100 = a6;
  *&v108 = a5;
  v104 = a4;
  v105 = a3;
  v109 = a9;
  v107 = a2;
  v94[1] = a15;
  v106 = a14;
  v98 = a13;
  v97 = a12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v17 - 8);
  v101 = v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v94 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v94 - v26;
  v28 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v102 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = (v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = (v94 - v32);
  *&v35 = MEMORY[0x28223BE20](v34);
  v37 = v94 - v36;
  v38 = 0;
  v95 = a11;
  if (a11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
    v38 = swift_allocObject();
    v35 = xmmword_23AA11C20;
    *(v38 + 16) = xmmword_23AA11C20;
    v39 = *v109.f32;
    *&v40 = -0.5 * v109.f32[0];
    *&v41 = -0.5 * v109.f32[0];
    HIDWORD(v41) = vmuls_lane_f32(-0.5, *v109.f32, 1);
    *&v42 = 0.5 * v109.f32[0];
    *&v43 = 0.5 * v109.f32[0];
    HIDWORD(v43) = HIDWORD(v41);
    *(v38 + 32) = v41;
    *(v38 + 40) = v43;
    HIDWORD(v42) = vmuls_lane_f32(0.5, v39, 1);
    HIDWORD(v40) = HIDWORD(v42);
    *(v38 + 48) = v42;
    *(v38 + 56) = v40;
  }

  *&v35 = a10 + a10;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v103 = v35;
      if (a1 == 5)
      {

        *&v60 = sub_23A998F08(v107, v109);
        v62 = v61;
LABEL_37:
        v74 = vadd_f32(*v109.f32, vdup_lane_s32(*&v103, 0));
        v75 = type metadata accessor for ScanItemStrut(0);
        v51 = v101;
        (*(*(v75 - 8) + 56))(v101, 1, 1, v75);
        v76.n128_u64[0] = v74;
        v77 = v108;
        v78 = v51;
        v79 = v106;
        v80 = *&v62;
        v81 = *&v60;
        goto LABEL_38;
      }

      *&v60 = sub_23A998F08(v107, v109);
      v62 = v73;
      sub_23A8D5194(v105, v24, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v102 + 48))(v24, 1, v28) != 1)
      {
        sub_23A8D5130(v24, v33);
        v87 = v109;
        v87.i32[0] = v109.i32[1];
        v88.n128_u32[0] = v62;
        v89.n128_u32[0] = v60;
        sub_23A8FA5A0(v33, v100, v87, v88, v89, v98, v106, 0xFuLL, 0);
        v53 = v90;
        sub_23A94E4FC(v33);
        return v53;
      }

      v66 = v24;
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {

          v68 = v104;
          v69 = v107;
          if (qword_27DFAE518 != -1)
          {
            swift_once();
          }

          v70 = off_27DFB17B0;
          swift_beginAccess();
          v71 = v96;
          if (v70[40])
          {
            if (v70[40] == 1)
            {
              inited = sub_23AA080A0(v96, v69);
            }

            else
            {
              inited = sub_23AA08220(v96, v69);
            }
          }

          else
          {
            type metadata accessor for RoomCaptureMeshDimensionsRestriction();
            inited = swift_initStaticObject();
          }

          v53 = sub_23A996EFC(0, v69, v105, v68, v108, v100, v99, v71, v109, a10, v95 & 1, v97 & 1, v98, v106, inited);
          goto LABEL_51;
        }

        v103 = v35;
        v46 = sub_23A998F08(v107, v109);
        v48 = v47;
        v49 = v104;
        if (*(v104 + 16))
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v50 = type metadata accessor for ScanItemStrut(0);
          v51 = v101;
          (*(*(v50 - 8) + 56))(v101, 1, 1, v50);
          sub_23A8F0290(v49, v108, v38, v97 & 1, v51, v106, v109, v48, v46, a10);
          v53 = v52;

LABEL_39:
          sub_23A8D50D0(v51, &unk_27DFAF020, &unk_23AA12300);
          return v53;
        }

        v92 = vadd_f32(*v109.f32, vdup_lane_s32(*&v103, 0));
        v93 = type metadata accessor for ScanItemStrut(0);
        v51 = v101;
        (*(*(v93 - 8) + 56))(v101, 1, 1, v93);
        v76.n128_u64[0] = v92;
        v77 = v108;
        v78 = v51;
        v79 = v106;
        v80 = v48;
        v81 = v46;
LABEL_38:
        v53 = sub_23A8F89D0(v77, v78, v79, v76, v80, v81);
        goto LABEL_39;
      }

      v103 = v35;

      *&v60 = sub_23A998F08(v107, v109);
      v62 = v65;
      sub_23A8D5194(v105, v21, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v102 + 48))(v21, 1, v28) != 1)
      {
        sub_23A8D5130(v21, v30);
        v83 = v109;
        v83.i32[0] = v109.i32[1];
        v84.n128_u32[0] = v62;
        v85.n128_u32[0] = v60;
        sub_23A8FA5A0(v30, v100, v83, v84, v85, v98, v106, 0x3D567750uLL, 1);
        v53 = v86;
        sub_23A94E4FC(v30);
        return v53;
      }

      v66 = v21;
    }

    sub_23A8D50D0(v66, &qword_27DFAEB38, &unk_23AA11B60);
    goto LABEL_37;
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v44 = v104;
        if (*(v104 + 16))
        {
          type metadata accessor for RoomCaptureGeometryManager();
          swift_initStaticObject();
          v111[0] = 0;
          v110 = MEMORY[0x277D84F90];
          v45 = v44;
LABEL_22:
          v63 = sub_23A8F5768(v45, a10);
          if (v38)
          {
            type metadata accessor for CDTPolygon();
            swift_allocObject();
            v64 = sub_23A99A810(v38);
          }

          else
          {
            v64 = 0;
          }

          v53 = sub_23A8EFAA8(v63, v108, v64, v111, &v110);

LABEL_51:

          return v53;
        }

        v103 = v35;
        goto LABEL_46;
      }

      v103 = v35;

      v67.i64[0] = vaddq_f32(vdupq_lane_s32(*&v103, 0), v109).u64[0];
      v67.f32[2] = v109.f32[2] + *&v103;
      v67.i32[3] = 0;

      return sub_23A998DDC(v67, 0.0);
    }

    sub_23A8D5194(v105, v27, &qword_27DFAEB38, &unk_23AA11B60);
    if ((*(v102 + 48))(v27, 1, v28) == 1)
    {
      sub_23A8D50D0(v27, &qword_27DFAEB38, &unk_23AA11B60);
      type metadata accessor for RoomCaptureGeometryManager();
      swift_initStaticObject();
      v111[0] = 0;
      v110 = MEMORY[0x277D84F90];
      v45 = v104;
      goto LABEL_22;
    }

    sub_23A8D5130(v27, v37);
    v82 = v109;
    v82.i32[0] = v109.i32[1];
    v53 = sub_23A8F4B4C(v37, v100, 0xFuLL, 0, v82);
    sub_23A94E4FC(v37);
    return v53;
  }

  v103 = v35;
  if (a1)
  {
LABEL_46:

    v91 = sub_23A8F3F24(v108, vadd_f32(*v109.f32, vdup_lane_s32(*&v103, 0)), 0.0);
    v53 = sub_23A982850(v91);

    return v53;
  }

  v54 = sub_23A8EAD88(v109);
  *&v55 = vaddq_f32(vdupq_lane_s32(*&v103, 0), v54).u64[0];
  *(&v55 + 2) = *&v103 + *&v54.i32[2];
  HIDWORD(v55) = 0;
  v108 = v55;
  v56.n128_f64[0] = sub_23A8EAE38(0.0, *v109.i64);
  v57 = v108;
  v58 = v99;

  return sub_23A8F2D70(v58, v56, v57, 0.0001);
}

void sub_23A997994(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float a3@<S1>)
{
  v123 = a2;
  v110 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v106 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0690, &qword_23AA19538);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v106 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v107 = &v106 - v11;
  v12 = sub_23A8F29A8(v123, 0);
  v13 = v12[2];
  v14 = v13[1].i64[0];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v126 = MEMORY[0x277D84F90];
    sub_23A975DC0(0, v14, 0);
    v16 = v123;
    v17 = vmuls_lane_f32(0.5, v123, 2);
    v15 = v126;
    v18 = v13 + 2;
    v19 = *(v126 + 16);
    do
    {
      v20 = *v18;
      v126 = v15;
      v21 = *(v15 + 24);
      v22 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        v122 = v20;
        sub_23A975DC0((v21 > 1), v19 + 1, 1);
        v20 = v122;
        v16 = v123;
        v15 = v126;
      }

      HIDWORD(v23) = 0;
      *&v23 = v20.i64[0];
      *(&v23 + 2) = v20.f32[2] - v17;
      *(v15 + 16) = v22;
      *(v15 + 16 * v19 + 32) = v23;
      ++v18;
      ++v19;
      --v14;
    }

    while (v14);
  }

  else
  {
    v22 = *(MEMORY[0x277D84F90] + 16);
    v16 = v123;
  }

  v126 = v15;
  v24 = v12[3];
  v124 = v12[4];
  if (HIDWORD(v22))
  {
    __break(1u);
  }

  else
  {
    v25 = vdupq_lane_s32(0, 0);
    *&v26 = -v16.f32[0];
    v27 = v16;
    v27.f32[0] = -v16.f32[0];
    v27.i32[3] = 0;
    v25.i32[0] = v16.i32[0];
    v28 = v16;
    v28.i32[3] = v25.i32[3];
    v117 = v27;
    v118 = v28;
    v120 = COERCE_UNSIGNED_INT(-v16.f32[0]);
    v121 = v25;
    v29 = v25;
    *&v29.i32[1] = -v16.f32[1];
    v114 = v29;
    v29.i32[2] = v16.i32[2];
    *(&v26 + 1) = -v16.f32[1];
    v113 = v26;
    *(&v26 + 1) = v16.u32[2];
    v115 = v26;
    v116 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v30 = swift_allocObject();
    v31 = v117;
    *(v30 + 16) = xmmword_23AA11C20;
    *(v30 + 32) = v31;
    v32 = v116;
    *(v30 + 48) = v115;
    *(v30 + 64) = v32;
    *(v30 + 80) = v118;

    sub_23A9119A0(v30);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }
  }

  v24 = sub_23A9388A8(0, *(v24 + 2) + 1, 1, v24);
LABEL_10:
  v34 = *(v24 + 2);
  v33 = *(v24 + 3);
  v35 = v33 >> 1;
  v36 = v34 + 1;
  if (v33 >> 1 <= v34)
  {
    v24 = sub_23A9388A8((v33 > 1), v34 + 1, 1, v24);
    v33 = *(v24 + 3);
    v35 = v33 >> 1;
  }

  *(v24 + 2) = v36;
  v37 = xmmword_23AA12240;
  *&v24[16 * v34 + 32] = xmmword_23AA12240;
  v38 = v34 + 2;
  if (v35 < (v34 + 2))
  {
    v122 = xmmword_23AA12240;
    v103 = sub_23A9388A8((v33 > 1), v34 + 2, 1, v24);
    v37 = v122;
    v24 = v103;
  }

  *(v24 + 2) = v38;
  *&v24[16 * v36 + 32] = v37;
  v39 = *(v24 + 3);
  v40 = v34 + 3;
  if ((v34 + 3) > (v39 >> 1))
  {
    v122 = v37;
    v104 = sub_23A9388A8((v39 > 1), v34 + 3, 1, v24);
    v37 = v122;
    v24 = v104;
  }

  *(v24 + 2) = v40;
  *&v24[16 * v38 + 32] = v37;
  v41 = *(v24 + 3);
  if ((v34 + 4) > (v41 >> 1))
  {
    v122 = v37;
    v105 = sub_23A9388A8((v41 > 1), v34 + 4, 1, v24);
    v37 = v122;
    v24 = v105;
  }

  *(v24 + 2) = v34 + 4;
  *&v24[16 * v40 + 32] = v37;
  v125 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12260;
  *(inited + 32) = v22;
  if (v22 == -1)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(inited + 36) = v22 + 1;
  v43 = v22 + 2;
  if (v22 >= 0xFFFFFFFE)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(inited + 40) = v43;
  *(inited + 44) = v22;
  *(inited + 48) = v43;
  if (v22 >= 0xFFFFFFFD)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(inited + 52) = v22 + 3;
  sub_23A911A8C(inited);
  v44 = __CFADD__(v22, 4);
  v45 = v22 + 4;
  if (v44)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v46 = v123;
  v47 = v123.f32[2];
  v48 = v120;
  v48.i32[1] = v123.i32[1];
  v120 = v48;
  v49 = v121;
  v49.i32[1] = v123.i32[1];
  v46.f32[0] = v123.f32[2] + a3;
  v121 = v49;
  v122 = v46;
  v49.i64[0] = 0;
  v49.i32[3] = 0;
  v49.f32[2] = v123.f32[2] + a3;
  v119 = v49;
  v50 = swift_allocObject();
  v123 = xmmword_23AA15450;
  v51 = v117;
  v52 = v118;
  v50[1] = xmmword_23AA15450;
  v50[2] = v51;
  v53 = v119;
  v50[3] = v52;
  v50[4] = v53;
  sub_23A9119A0(v50);
  v55 = v121;
  v54 = v122;
  v54.f32[0] = v47 - v122.f32[0];
  v56 = v120;
  *&v56.i32[2] = v47 - v122.f32[0];
  v122 = v54;
  v55.i32[2] = v54.i32[0];
  v106 = v56;
  v111 = v55;
  v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v56)), v55, vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL));
  v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
  v59 = vmulq_f32(v57, v57);
  *v56.i32 = v59.f32[1] + (v59.f32[2] + v59.f32[0]);
  *v59.f32 = vrsqrte_f32(v56.u32[0]);
  *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v56.u32[0], vmul_f32(*v59.f32, *v59.f32)));
  v112 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v56.u32[0], vmul_f32(*v59.f32, *v59.f32))).f32[0]);
  v60 = swift_allocObject();
  v61 = v112;
  *(v60 + 16) = v123;
  *(v60 + 32) = v61;
  *(v60 + 48) = v61;
  *(v60 + 64) = v61;
  sub_23A9119A0(v60);
  v62 = swift_initStackObject();
  v62[1] = v123;
  v62[2].i32[0] = v45;
  if (v45 == -1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v62[2].i32[1] = v45 + 1;
  if (v45 >= 0xFFFFFFFE)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v62[2].i32[2] = v45 + 2;
  sub_23A911A8C(v62);
  v44 = __CFADD__(v45, 3);
  v63 = v45 + 3;
  if (v44)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v64 = v122;
  *(v64.i64 + 4) = v121.i64[0];
  v121 = v64;
  v65 = swift_allocObject();
  v66 = v118;
  *(v65 + 16) = v123;
  *(v65 + 32) = v66;
  v67 = v119;
  *(v65 + 48) = v116;
  *(v65 + 64) = v67;
  sub_23A9119A0(v65);
  v68 = v114;
  v68.i32[2] = v122.i32[0];
  v118 = v68;
  v69 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vnegq_f32(v111)), v68, v121);
  v70 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
  v71 = vmulq_f32(v69, v69);
  *v68.i32 = v71.f32[1] + (v71.f32[2] + v71.f32[0]);
  *v71.f32 = vrsqrte_f32(v68.u32[0]);
  *v71.f32 = vmul_f32(*v71.f32, vrsqrts_f32(v68.u32[0], vmul_f32(*v71.f32, *v71.f32)));
  v121 = vmulq_n_f32(v70, vmul_f32(*v71.f32, vrsqrts_f32(v68.u32[0], vmul_f32(*v71.f32, *v71.f32))).f32[0]);
  v72 = swift_allocObject();
  v73 = v121;
  *(v72 + 16) = v123;
  *(v72 + 32) = v73;
  *(v72 + 48) = v73;
  *(v72 + 64) = v73;
  sub_23A9119A0(v72);
  v74 = swift_initStackObject();
  v74[1] = v123;
  v74[2].i32[0] = v63;
  if (v63 == -1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v74[2].i32[1] = v63 + 1;
  if (v63 >= 0xFFFFFFFE)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v74[2].i32[2] = v63 + 2;
  sub_23A911A8C(v74);
  v44 = __CFADD__(v63, 3);
  v75 = v63 + 3;
  if (v44)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v76 = v122;
  *(v76.i64 + 4) = v114.i64[0];
  v121 = v76;
  v77 = swift_allocObject();
  v79 = v115;
  v78 = v116;
  *(v77 + 16) = v123;
  *(v77 + 32) = v78;
  v80 = v119;
  *(v77 + 48) = v79;
  *(v77 + 64) = v80;
  sub_23A9119A0(v77);
  v81 = v113;
  v81.i32[2] = v122.i32[0];
  v82 = vmulq_f32(vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), vnegq_f32(v118));
  v118 = v81;
  v83 = vmlaq_f32(v82, v81, v121);
  v84 = vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL);
  v85 = vmulq_f32(v83, v83);
  *v81.i32 = v85.f32[1] + (v85.f32[2] + v85.f32[0]);
  *v85.f32 = vrsqrte_f32(v81.u32[0]);
  *v85.f32 = vmul_f32(*v85.f32, vrsqrts_f32(v81.u32[0], vmul_f32(*v85.f32, *v85.f32)));
  v121 = vmulq_n_f32(v84, vmul_f32(*v85.f32, vrsqrts_f32(v81.u32[0], vmul_f32(*v85.f32, *v85.f32))).f32[0]);
  v86 = swift_allocObject();
  v87 = v121;
  *(v86 + 16) = v123;
  *(v86 + 32) = v87;
  *(v86 + 48) = v87;
  *(v86 + 64) = v87;
  sub_23A9119A0(v86);
  v88 = swift_initStackObject();
  v88[1] = v123;
  v88[2].i32[0] = v75;
  if (v75 == -1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v88[2].i32[1] = v75 + 1;
  if (v75 >= 0xFFFFFFFE)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v88[2].i32[2] = v75 + 2;
  sub_23A911A8C(v88);
  v44 = __CFADD__(v75, 3);
  v89 = v75 + 3;
  if (v44)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v90 = v122;
  v91 = v122;
  *(v91.i64 + 4) = v120.i64[0];
  *(v90.i64 + 4) = v113.i64[0];
  v121 = v91;
  v122 = v90;
  v92 = swift_allocObject();
  v93 = v115;
  *(v92 + 16) = v123;
  *(v92 + 32) = v93;
  v94 = v119;
  *(v92 + 48) = v117;
  *(v92 + 64) = v94;
  sub_23A9119A0(v92);
  v95 = vmlaq_f32(vmulq_f32(v121, vnegq_f32(v118)), v106, v122);
  v96 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
  v97 = vmulq_f32(v95, v95);
  *&v98 = v97.f32[1] + (v97.f32[2] + v97.f32[0]);
  *v97.f32 = vrsqrte_f32(v98);
  *v97.f32 = vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32)));
  v122 = vmulq_n_f32(v96, vmul_f32(*v97.f32, vrsqrts_f32(v98, vmul_f32(*v97.f32, *v97.f32))).f32[0]);
  v99 = swift_allocObject();
  v100 = v122;
  *(v99 + 16) = v123;
  *(v99 + 32) = v100;
  *(v99 + 48) = v100;
  *(v99 + 64) = v100;
  sub_23A9119A0(v99);
  v101 = swift_initStackObject();
  v101[1] = v123;
  v101[2].i32[0] = v89;
  if (v89 == -1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v101[2].i32[1] = v89 + 1;
  if (v89 < 0xFFFFFFFE)
  {
    v101[2].i32[2] = v89 + 2;
    sub_23A911A8C(v101);
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();
    sub_23AA0CB74();
    (*(v108 + 56))(v9, 0, 1, v109);
    sub_23AA0CDB4();
    sub_23AA0CB84();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v102 - 8) + 56))(v6, 0, 1, v102);
    sub_23AA0C2C4();

    return;
  }

LABEL_50:
  __break(1u);
}

void sub_23A998434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0680, &unk_23AA19510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF000, &qword_23AA128F0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(type metadata accessor for LineAnimation(0) - 8);
    v9 = *(v8 + 72);
    v10 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 112;
    while (1)
    {
      v12 = *(*v10 + 16);
      if (v12 <= 2)
      {
        v11 = __OFADD__(v7, v12);
        v7 += v12;
        if (v11)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((v12 + 0x3FFFFFFFFFFFFFFELL) < 0)
        {
          goto LABEL_39;
        }

        v13 = 2 * v12 - 4;
        v11 = __OFADD__(v13, 2);
        v14 = v13 + 2;
        if (v11)
        {
          goto LABEL_40;
        }

        v11 = __OFADD__(v7, v14);
        v7 += v14;
        if (v11)
        {
          __break(1u);
LABEL_11:
          if (v7 + 0x4000000000000000 >= 0)
          {
            if ((v7 & 0x8000000000000000) == 0)
            {
              if (v7)
              {
                v6 = 2 * v7;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
                v15 = sub_23AA0D324();
                *(v15 + 16) = 2 * v7;
                bzero((v15 + 32), 32 * v7);
              }

              else
              {
                v6 = 0;
              }

              break;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v10 += v9;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = v6 >> 2;
  v17 = 6 * (v6 >> 2);
  if (((v6 >> 2) * 6) >> 64 != v17 >> 63)
  {
    goto LABEL_43;
  }

  v18 = sub_23A9388BC(0, v17, 0, MEMORY[0x277D84F90]);
  if (v6 >> 34)
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v19 = v18;
    if (v6 >= 4)
    {
      v21 = 0;
      v22 = 0x40000000;
      v35 = xmmword_23AA12260;
      v34 = xmmword_23AA19420;
      while (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
        inited = swift_initStackObject();
        *(inited + 16) = v35;
        if (!v22)
        {
          goto LABEL_34;
        }

        *(inited + 32) = v21;
        *(inited + 36) = vorrq_s8(vdupq_n_s32(v21), v34);
        *(inited + 52) = v21;
        v24 = *(v19 + 2);
        v25 = v24 + 6;
        if (__OFADD__(v24, 6))
        {
          goto LABEL_35;
        }

        v26 = *(v19 + 3) >> 1;
        if (v26 < v25)
        {
          if (v24 <= v25)
          {
            v31 = v24 + 6;
          }

          else
          {
            v31 = *(v19 + 2);
          }

          v33 = inited;
          v19 = sub_23A9388BC(1, v31, 1, v19);
          inited = v33;
          v24 = *(v19 + 2);
          v26 = *(v19 + 3) >> 1;
        }

        if ((v26 - v24) < 6)
        {
          goto LABEL_36;
        }

        v27 = *(inited + 32);
        v28 = &v19[4 * v24];
        *(v28 + 6) = *(inited + 48);
        *(v28 + 2) = v27;

        v29 = *(v19 + 2);
        v11 = __OFADD__(v29, 6);
        v30 = v29 + 6;
        if (v11)
        {
          goto LABEL_37;
        }

        *(v19 + 2) = v30;
        --v22;
        v21 += 4;
        LODWORD(v16) = v16 - 1;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_19:
    sub_23AA0C2D4();
    sub_23AA0CB74();
    sub_23AA0C2E4();
    sub_23AA0CDD4();
    sub_23AA0CB84();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0688, &unk_23AA19528);
    (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
    sub_23AA0C2C4();
  }
}

uint64_t sub_23A998848()
{
  sub_23A8D50D0(v0 + 16, &unk_27DFB10C0, &unk_23AA19560);

  sub_23A8D50D0(v0 + 64, &unk_27DFB10C0, &unk_23AA19560);

  return swift_deallocClassInstance();
}

unint64_t sub_23A998900()
{
  result = qword_27DFB0678;
  if (!qword_27DFB0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0678);
  }

  return result;
}

uint64_t sub_23A998954(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v22[1] = a2;
  v23 = a4;
  v22[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = v22 - v5;
  v6 = sub_23AA0CE04();
  MEMORY[0x28223BE20](v6 - 8);
  v31 = sub_23AA0C364();
  v7 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B0, &qword_23AA19548);
  sub_23AA0C314();
  v10 = swift_allocObject();
  v25 = xmmword_23AA10FC0;
  *(v10 + 16) = xmmword_23AA10FC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06B8, &unk_23AA19550);
  v11 = sub_23AA0C2E4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v25;
  (*(v12 + 16))(v14 + v13, v26, v11);
  sub_23AA0C2F4();
  sub_23AA0CDE4();
  sub_23AA0C344();
  sub_23AA0C3F4();
  v15 = v27;
  sub_23AA0C384();
  if (!v15)
  {
    sub_23A8D5194(v23, &v28, &qword_27DFAF780, &qword_23AA14670);
    if (v29)
    {
      sub_23A8CAA3C(&v28, v30);
      sub_23A8CA9D8(v30, &v28);
      v16 = sub_23A9388D0(0, 1, 1, MEMORY[0x277D84F90]);
      v18 = v16[2];
      v17 = v16[3];
      if (v18 >= v17 >> 1)
      {
        v16 = sub_23A9388D0((v17 > 1), v18 + 1, 1, v16);
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      v16[2] = v18 + 1;
      sub_23A8CAA3C(&v28, &v16[5 * v18 + 4]);
    }

    else
    {
      sub_23A8D50D0(&v28, &qword_27DFAF780, &qword_23AA14670);
    }

    v19 = v24;
    sub_23AA0C474();
    v20 = sub_23AA0C4A4();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    sub_23AA0CAF4();
  }

  return (*(v7 + 8))(v9, v31);
}

void *sub_23A998DDC(float32x4_t a1, float a2)
{
  v10 = a1.f32[0];
  *&v13 = 0.5 * a1.f32[0];
  v2 = a1.f32[2];
  v12 = vmuls_lane_f32(0.5, a1, 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
  v3 = swift_allocObject();
  HIDWORD(v4) = 0;
  *&v4 = -(v10 * 0.5);
  HIDWORD(v5) = 0;
  *(&v4 + 1) = a2;
  *&v5 = __PAIR64__(LODWORD(a2), v13);
  v6 = v4;
  *(&v6 + 2) = v12;
  v7 = __PAIR64__(LODWORD(a2), v13);
  *(&v7 + 2) = v12;
  *(&v5 + 2) = -(v2 * 0.5);
  v3[1] = xmmword_23AA11C20;
  v3[2] = v6;
  v3[3] = v7;
  v3[4] = v5;
  *(&v4 + 2) = *(&v5 + 2);
  v3[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
  v8 = sub_23AA0D324();
  *(v8 + 16) = 4;
  *(v8 + 32) = xmmword_23AA12220;
  *(v8 + 48) = xmmword_23AA12220;
  *(v8 + 64) = xmmword_23AA12220;
  *(v8 + 80) = xmmword_23AA12220;
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v8;
  result[4] = &unk_284D7FB20;
  return result;
}

float sub_23A998F08(unsigned __int8 a1, __n128 a2)
{
  if (a1 > 5u)
  {
    return 0.08;
  }

  if (a2.n128_f32[2] > 0.0)
  {
    return a2.n128_f32[2] * 0.5;
  }

  if (((0x30100040205uLL >> (8 * (a1 & 0x1Fu))) - 2) > 3u)
  {
    return 0.08;
  }

  else
  {
    return flt_23AA11F40[((0x30100040205uLL >> (8 * (a1 & 0x1Fu))) - 2)];
  }
}

uint64_t sub_23A998F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A998FC4()
{
  result = qword_27DFB06C8;
  if (!qword_27DFB06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB06C8);
  }

  return result;
}

uint64_t sub_23A999018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB10C0, &unk_23AA19560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23A999088(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  v3 = &unk_23AA19000;
  v4 = &unk_23AA19000;
  if (v2)
  {
    v5 = a1;
    v6 = *(type metadata accessor for LineAnimation(0) - 8);
    v7 = (v6[80] + 32) & ~v6[80];
    if (qword_27DFAE518 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v8 = v5 + v7;
      v36 = (off_27DFB17B0 + 36);
      swift_beginAccess();
      v9 = 0;
      v10 = v3[67];
      v11 = v4[68];
      v12 = *(v6 + 9);
      v6 = MEMORY[0x277D84F90];
      while (v9 != v2)
      {
        v13 = &v8[v12 * v9];
        v3 = *(v13 + 14);
        v4 = v3[1].i64[0];
        if (v4)
        {
          v43 = v11;
          v46 = v10;
          v37 = *v36 * *(v13 + 25);
          v38 = *(v13 + 24) * *v36;

          v15 = v43;
          v14 = v46;
          v5 = 0;
          while (1)
          {
            v44 = v15;
            v47 = v14;
            v39 = v15.i32[3];
            v40 = v14.i32[3];
            v41 = v3[v5 + 2];
            if (v5)
            {
              v18 = v3[1].i64[0] - 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (v5 != v18)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
                }

                v28 = *(v6 + 2);
                v27 = *(v6 + 3);
                v29 = v27 >> 1;
                v7 = v28 + 1;
                v23 = v44;
                v22 = v47;
                v24 = v41;
                if (v27 >> 1 <= v28)
                {
                  v32 = sub_23A9390AC((v27 > 1), v28 + 1, 1, v6);
                  v24 = v41;
                  v23 = v44;
                  v22 = v47;
                  v6 = v32;
                  v27 = *(v32 + 3);
                  v29 = v27 >> 1;
                }

                v16 = v24;
                v16.i32[3] = 1.0;
                *(v6 + 2) = v7;
                *&v6[16 * v28 + 32] = v16;
                v21 = v28 + 2;
                if (v29 < v21)
                {
                  v34 = v16;
                  v30 = sub_23A9390AC((v27 > 1), v21, 1, v6);
                  v16 = v34;
                  v24 = v41;
                  v23 = v44;
                  v22 = v47;
                  v6 = v30;
                }

                goto LABEL_11;
              }

              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
              }

              v7 = *(v6 + 2);
              v20 = *(v6 + 3);
              v21 = v7 + 1;
              v23 = v44;
              v22 = v47;
              v24 = v41;
              if (v7 >= v20 >> 1)
              {
                v31 = sub_23A9390AC((v20 > 1), v7 + 1, 1, v6);
                v24 = v41;
                v23 = v44;
                v22 = v47;
                v6 = v31;
              }

              v16 = v24;
              v17 = v37;
            }

            else
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_23A9390AC(0, *(v6 + 2) + 1, 1, v6);
              }

              v7 = *(v6 + 2);
              v25 = *(v6 + 3);
              v21 = v7 + 1;
              v23 = v44;
              v22 = v47;
              v24 = v41;
              if (v7 >= v25 >> 1)
              {
                v26 = sub_23A9390AC((v25 > 1), v7 + 1, 1, v6);
                v24 = v41;
                v23 = v44;
                v22 = v47;
                v6 = v26;
              }

              v16 = v24;
              v17 = v38;
            }

            v16.f32[3] = v17;
LABEL_11:
            v5 = (v5 + 1);
            *(v6 + 2) = v21;
            v23.i32[3] = 0;
            *&v6[16 * v7 + 32] = v16;
            v24.i32[3] = 0;
            v15 = vminnmq_f32(v23, v24);
            v15.i32[3] = v39;
            v22.i32[3] = 0;
            v14 = vmaxnmq_f32(v22, v24);
            v14.i32[3] = v40;
            if (v4 == v5)
            {
              v42 = v15;
              v45 = v14;

              v11 = v42;
              v10 = v45;
              break;
            }
          }
        }

        if (++v9 == v2)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }
  }

  v10 = xmmword_23AA19430;
  v11 = xmmword_23AA19440;
  v6 = MEMORY[0x277D84F90];
LABEL_30:
  *a2 = vabdq_f32(v10, v11);
  return v6;
}

unint64_t sub_23A999444()
{
  result = qword_27DFB06D0;
  if (!qword_27DFB06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB06D0);
  }

  return result;
}

uint64_t sub_23A999498(void *a1, uint64_t a2)
{
  v3 = v2;
  v34[1] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  swift_unknownObjectRetain();
  v6 = sub_23A93C058();
  v7 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  v8 = sub_23AA0D104();
  v9 = [v6 newFunctionWithName_];

  [v7 setVertexFunction_];
  swift_unknownObjectRelease();
  v10 = sub_23AA0D104();
  v11 = [v6 newFunctionWithName_];

  [v7 setFragmentFunction_];
  swift_unknownObjectRelease();
  v12 = [v7 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v13 setBlendingEnabled_];

  v14 = [v7 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript_];

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v15 setRgbBlendOperation_];

  v16 = [v7 colorAttachments];
  v17 = [v16 objectAtIndexedSubscript_];

  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v17 setAlphaBlendOperation_];

  v18 = [v7 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v19 setSourceRGBBlendFactor_];

  v20 = [v7 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript_];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v21 setSourceAlphaBlendFactor_];

  v22 = [v7 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v23 setDestinationRGBBlendFactor_];

  v24 = [v7 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  if (!v25)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  [v25 setDestinationAlphaBlendFactor_];

  v26 = [v7 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  if (!v27)
  {
    goto LABEL_24;
  }

  [v27 setPixelFormat_];

  v28 = 8;
  if (([a1 supportsTextureSampleCount_] & 1) == 0)
  {
    if ([a1 supportsTextureSampleCount_])
    {
      v28 = 4;
    }

    else
    {
      v28 = 1;
    }
  }

  [v7 setRasterSampleCount_];
  v34[0] = 0;
  v29 = [a1 newRenderPipelineStateWithDescriptor:v7 error:v34];
  if (v29)
  {
    v30 = v29;
    v31 = v34[0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v3 + 32) = v30;
  }

  else
  {
    v32 = v34[0];
    sub_23AA0BE74();

    swift_willThrow();
    swift_unknownObjectRelease();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for DotsRenderer();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_23A9999B4(void *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6, float a7)
{
  v35 = *MEMORY[0x277D85DE8];
  [a1 setRenderPipelineState_];
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = a4;
  v34[3] = a5;
  v11 = *(v7 + 16);
  v12 = [v11 newBufferWithBytes:v34 length:64 options:0];
  if (!v12)
  {
    __break(1u);
    goto LABEL_8;
  }

  [a1 setVertexBuffer:v12 offset:0 atIndex:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06D8, qword_23AA196F0);
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_23AA19670;
  *(v13 + 48) = 0;
  *(v13 + 64) = xmmword_23AA19680;
  *(v13 + 80) = 1065353216;
  *(v13 + 96) = xmmword_23AA19690;
  *(v13 + 112) = 0x3F80000000000000;
  *(v13 + 128) = xmmword_23AA196A0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v13 + 144) = _D0;
  v19 = [v11 newBufferWithBytes:v13 + 32 length:128 options:0];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  swift_setDeallocating();
  swift_deallocClassInstance();
  [a1 setVertexBuffer:v20 offset:0 atIndex:1];
  v21 = cosf(a7);
  HIDWORD(v22) = 1056964608;
  *&v22 = (v21 + 1.0) * 0.5;
  v23 = 0.0;
  if (a6 > 0.0)
  {
    v23 = a6;
  }

  v30 = 0x4160000041200000;
  v31 = 1048576000;
  v32 = v23;
  v33 = v22;
  v24 = [v11 newBufferWithBytes:&v30 length:24 options:0];
  if (!v24)
  {
LABEL_9:
    __break(1u);
  }

  [a1 setFragmentBuffer:v24 offset:0 atIndex:0];
  [a1 drawPrimitives:4 vertexStart:0 vertexCount:4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_23A999C28()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A999CA0()
{
  type metadata accessor for ARFrameLogManager();
  v0 = swift_allocObject();
  result = sub_23A99A5D8();
  qword_27DFC07E8 = v0;
  return result;
}

uint64_t sub_23A999CDC(uint64_t result, uint64_t a2, double a3)
{
  v3 = *(result + 48);
  if (v3 <= a3)
  {
    if (v3 <= 0.0 || 1.5 / a2 >= a3 - v3)
    {
      goto LABEL_9;
    }

    v4 = (result + 56);
    v8 = *(result + 56);
    v6 = __OFADD__(v8, 1);
    v7 = v8 + 1;
    if (v6)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_3:
    *v4 = v7;
LABEL_9:
    *(result + 48) = a3;
    *(result + 144) = a2;
    return result;
  }

  v4 = (result + 64);
  v5 = *(result + 64);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (!v6)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A999D44(uint64_t result, double a2)
{
  v2 = *(result + 80);
  if (v2 <= a2)
  {
    if (v2 <= 0.0 || 1.5 / *(result + 144) >= a2 - v2)
    {
      goto LABEL_9;
    }

    v3 = (result + 88);
    v7 = *(result + 88);
    v5 = __OFADD__(v7, 1);
    v6 = v7 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_9;
    }

LABEL_3:
    *v3 = v6;
LABEL_9:
    *(result + 80) = a2;
    return result;
  }

  v3 = (result + 96);
  v4 = *(result + 96);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A999DAC(uint64_t result, double a2)
{
  v3 = *(result + 80);
  v4 = *(result + 112);
  if (v4 <= a2)
  {
    if (v4 <= 0.0 || 1.5 / *(result + 144) >= a2 - v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 120);
    v9 = *(result + 120);
    v7 = __OFADD__(v9, 1);
    v8 = v9 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = (result + 128);
    v6 = *(result + 128);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  *v5 = v8;
LABEL_9:
  v10 = *(result + 136);
  if (v3 == a2)
  {
LABEL_12:
    *(result + 112) = a2;
    return sub_23A999E7C(*(result + 56), *(result + 64), *(result + 72), *(result + 88), *(result + 96), *(result + 104), *(result + 120), *(result + 128), *(result + 48), v3, a2, v10);
  }

  v7 = __OFADD__(v10++, 1);
  if (!v7)
  {
    *(result + 136) = v10;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23A999E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12)
{
  v36 = a8;
  v33 = a6;
  v34 = a12;
  v35 = a7;
  v20 = sub_23AA0BDE4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v33 - v25;
  sub_23A99A158(a1, a2, a3, 0x74694B5241, 0xE500000000000000, 0, &v33 - v25, a9);
  sub_23AA0BDA4();
  sub_23AA0BDC4();
  v27 = *(v21 + 8);
  v27(v23, v20);
  sub_23A99A158(a4, a5, v33, 0x6568636143, 0xE500000000000000, 0, v23, a10);
  sub_23AA0BDC4();
  v27(v23, v20);
  sub_23AA0BDA4();
  sub_23AA0BDC4();
  v27(v23, v20);
  sub_23A99A158(v35, v36, v34, 0x2E646E6552, 0xE500000000000000, 1, v23, a11);
  sub_23AA0BDC4();
  v27(v23, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v29 + 8);
      ObjectType = swift_getObjectType();
      (*(v30 + 24))(v26, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return (v27)(v26, v20);
}

uint64_t sub_23A99A158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v39 = a6;
  v37 = a2;
  v38 = a3;
  v43 = a7;
  v12 = sub_23AA0BE34();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_23AA0BDE4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v42 = &v37 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - v23;
  v45 = a4;
  v46 = a5;

  MEMORY[0x23EE8FCA0](0x666C332E253ALL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D839F8];
  *(v25 + 16) = xmmword_23AA10FC0;
  v27 = MEMORY[0x277D83A80];
  *(v25 + 56) = v26;
  *(v25 + 64) = v27;
  *(v25 + 32) = a8;
  v28 = sub_23AA0D164();
  v40 = v29;
  v41 = v28;

  v45 = 40;
  v46 = 0xE100000000000000;
  v44 = a1;
  v30 = sub_23AA0DBB4();
  MEMORY[0x23EE8FCA0](v30);

  MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v31 = objc_opt_self();
  v45 = [v31 systemRedColor];
  sub_23A9633E8();
  sub_23AA0BE04();
  v45 = 40;
  v46 = 0xE100000000000000;
  if (v39)
  {
    v32 = v38;
  }

  else
  {
    v32 = v37;
  }

  v44 = v32;
  v33 = sub_23AA0DBB4();
  MEMORY[0x23EE8FCA0](v33);

  MEMORY[0x23EE8FCA0](41, 0xE100000000000000);
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v45 = [v31 systemOrangeColor];
  sub_23AA0BE04();
  sub_23AA0BE24();
  sub_23AA0BDF4();
  v34 = v42;
  sub_23AA0BDB4();
  v35 = *(v14 + 8);
  v35(v16, v13);
  sub_23AA0BDB4();
  v35(v34, v13);
  v35(v21, v13);
  return (v35)(v24, v13);
}

uint64_t sub_23A99A564()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23A99A5D8()
{
  v7[0] = sub_23AA0D524();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  sub_23A9164A0();
  sub_23AA0CEE4();
  v7[1] = MEMORY[0x277D84F90];
  sub_23A9164EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v7[0]);
  *(v0 + 40) = sub_23AA0D554();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 60;
  return v0;
}

uint64_t sub_23A99A810(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(result + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v4 - 1 == v6 ? 0 : v6 + 1;
      if (v9 >= *(v3 + 16))
      {
        break;
      }

      v10 = *(v7 + 8 * v6);
      v11 = vsub_f32(v10, *(v7 + 8 * v9));
      v12 = fabsf(v11.f32[0]);
      v13 = fabsf(v11.f32[1]);
      if (v12 >= 0.00000011921 || v13 >= 0.00000011921)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23A938A28(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_23A938A28((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v16 + 1;
        *(v8 + 8 * v16 + 32) = v10;
      }

      if (v4 == ++v6)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  *(v2 + 16) = v8;
  v17 = *(v8 + 16);
  if (v17)
  {
    swift_bridgeObjectRetain_n();
    result = sub_23AA0D964();
    v18 = 4;
    while (1)
    {
      v19 = *(v8 + 16);
      if (!v19)
      {
        break;
      }

      v20 = *(v8 + 8 * v18);
      v21 = *(v8 + 32 + 8 * ((v18 - 3) % v19));
      type metadata accessor for CDTEdge();
      swift_allocObject();
      sub_23A947224(v20, v21);
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      result = sub_23AA0D954();
      if (++v18 - v17 == 4)
      {

        v22 = v5;
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
    return result;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_24:
  *(v2 + 24) = v22;

  return v2;
}

uint64_t sub_23A99AA3C()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1 < 3)
  {
    return 0;
  }

  if (v1 != 3)
  {
    v3 = *(v0 + 24);
    if (v3 >> 62)
    {
LABEL_40:
      v4 = sub_23AA0D7F4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    LOBYTE(v7) = 3;
LABEL_8:
    v18 = v7;
    v8 = v5;
    while (v4 != v8)
    {
      if (v6)
      {
        v15 = MEMORY[0x23EE90360](v8, v3);
        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v15 = *(v3 + 8 * v8 + 32);

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      if (v3 >> 62)
      {
        v16 = sub_23AA0D7F4();
      }

      else
      {
        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v16)
      {
        goto LABEL_36;
      }

      if (v5 == 0x8000000000000000 && v16 == -1)
      {
        goto LABEL_37;
      }

      v17 = v5 % v16;
      if (v6)
      {
        v9 = MEMORY[0x23EE90360](v17, v3);
      }

      else
      {
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v9 = *(v3 + 32 + 8 * v17);
      }

      v10 = *(v15 + 16);
      v11 = *(v15 + 24);
      v12 = *(v9 + 24);

      v13 = vmul_f32(vsub_f32(v11, v10), vrev64_s32(vsub_f32(v12, v10)));
      LODWORD(v14) = vsub_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
      ++v8;
      if (fabsf(v14) >= 1.4211e-14)
      {
        if (v14 <= 0.0)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        if (v18 == 3)
        {
          goto LABEL_8;
        }

        result = 0;
        if (v7 == v18)
        {
          goto LABEL_8;
        }

        return result;
      }
    }
  }

  return 1;
}

void sub_23A99AC40()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_23AA0D7F4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v5 = MEMORY[0x23EE90360](v3++, v1);
      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      swift_unknownObjectRelease();
      v4 = v4 + vmul_lane_f32(vsub_f32(v6, v7), vadd_f32(v6, v7), 1).f32[0];
    }

    while (v2 != v3);
  }

  else
  {
    v8 = (v1 + 32);
    v9 = 0.0;
    do
    {
      v10 = *v8++;
      v9 = v9 + vmul_lane_f32(vsub_f32(v10[3], v10[2]), vadd_f32(v10[3], v10[2]), 1).f32[0];
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_23A99AD2C(float32x2_t *a1)
{
  v5 = v1;
  v6 = a1;
  v7 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v8 = a1[2];
  v48 = v5;
  LOBYTE(v9) = sub_23A8EDA7C(v5, 0.00000011921, v8);
  v10 = &off_23AA10000;
  if ((v9 & 1) == 0)
  {
    v13 = -1;
    v11 = v7;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23AA10FC0;
  *(v2 + 32) = v8;
  v11 = sub_23A939860(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = v11[2];
  v12 = v11[3];
  v3 = v4 + 1;
  if (v4 >= v12 >> 1)
  {
    goto LABEL_103;
  }

LABEL_3:
  v13 = 0;
  v11[2] = v3;
  v11[v4 + 4] = v2;
  v55 = v11;
LABEL_5:
  v54 = v7;
  v14 = *(v48 + 24);
  if (!(v14 >> 62))
  {
    v12 = v14 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v2 = v14;
    v15 = sub_23AA0D7F4();
    v14 = v2;
    if (v15)
    {
LABEL_7:
      if (v15 >= 1)
      {
        v7 = 0;
        v52 = v14 & 0xC000000000000001;
        v4 = MEMORY[0x277D84F90];
        v50 = v14;
        v51 = v13;
        v49 = v15;
        while (1)
        {
          if (v52)
          {
            v10 = MEMORY[0x23EE90360](v7);
          }

          else
          {
            v10 = *(v14 + 8 * v7 + 32);
          }

          v18 = sub_23A946DC8(v10, 0, 0.0001, v16, v17);
          v19 = *(v18 + 2);
          v3 = *(v4 + 16);
          v13 = v3 + v19;
          if (__OFADD__(v3, v19))
          {
            goto LABEL_93;
          }

          v20 = v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v22 = *(v4 + 24) >> 1, v22 < v13))
          {
            if (v3 <= v13)
            {
              v23 = v3 + v19;
            }

            else
            {
              v23 = v3;
            }

            v4 = sub_23A938A28(isUniquelyReferenced_nonNull_native, v23, 1, v4);
            v22 = *(v4 + 24) >> 1;
          }

          v13 = v51;
          if (*(v20 + 2))
          {
            v24 = *(v4 + 16);
            if (v22 - v24 < v19)
            {
              goto LABEL_95;
            }

            memcpy((v4 + 8 * v24 + 32), v20 + 32, 8 * v19);

            if (v19)
            {
              v25 = *(v4 + 16);
              v26 = __OFADD__(v25, v19);
              v27 = v25 + v19;
              if (v26)
              {
                goto LABEL_99;
              }

              *(v4 + 16) = v27;
            }
          }

          else
          {

            if (v19)
            {
              goto LABEL_94;
            }
          }

          ++v7;

          v14 = v50;
          if (v49 == v7)
          {
            v54 = v4;
            v10 = &off_23AA10000;
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_103:
      v11 = sub_23A939860((v12 > 1), v3, 1, v11);
      goto LABEL_3;
    }

LABEL_27:

    sub_23A99B59C(&v54, v6);

    v28 = v54;
    v29 = *(v54 + 2);
    if (v29)
    {
      v3 = 32;
      v53 = *v10[504].f32;
      do
      {
        v30 = *&v28[v3];
        if (v9)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_96;
          }

          if (v13 >= v11[2])
          {
            goto LABEL_98;
          }

          v4 = v11[v13 + 4];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_23A938A28(0, *(v4 + 16) + 1, 1, v4);
          }

          v7 = *(v4 + 16);
          v31 = *(v4 + 24);
          v10 = (v7 + 1);
          if (v7 >= v31 >> 1)
          {
            v4 = sub_23A938A28((v31 > 1), v7 + 1, 1, v4);
          }

          *(v4 + 16) = v10;
          *(v4 + 8 * v7 + 32) = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A975D00(v11);
          }

          v11[v13 + 4] = v4;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
          v4 = swift_allocObject();
          *(v4 + 16) = v53;
          *(v4 + 32) = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A939860(0, v11[2] + 1, 1, v11);
          }

          v7 = v11[2];
          v32 = v11[3];
          v10 = (v7 + 1);
          if (v7 >= v32 >> 1)
          {
            v11 = sub_23A939860((v32 > 1), v7 + 1, 1, v11);
          }

          v11[2] = v10;
          v11[v7 + 4] = v4;
          v26 = __OFADD__(v13++, 1);
          if (v26)
          {
            goto LABEL_97;
          }
        }

        LOBYTE(v9) = v9 ^ 1;
        v3 += 8;
        --v29;
      }

      while (v29);

      v55 = v11;
      if (!v11[2])
      {
LABEL_57:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {

      if (!v11[2])
      {
        goto LABEL_57;
      }
    }

    v33 = v6[3];
    if (sub_23A8EDA7C(v48, 0.00000011921, v33))
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_105:
        __break(1u);
      }

      else if (v13 < v11[2])
      {
        v6 = v11[v13 + 4];

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_52:
          v35 = v6[2];
          v34 = v6[3];
          if (v35 >= v34 >> 1)
          {
            v6 = sub_23A938A28((v34 > 1), v35 + 1, 1, v6);
          }

          v6[2] = (v35 + 1);
          v6[v35 + 4] = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_23A975D00(v11);
          }

          goto LABEL_68;
        }

LABEL_108:
        v6 = sub_23A938A28(0, *&v6[2] + 1, 1, v6);
        goto LABEL_52;
      }

      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_105;
    }

    if (v13 >= v11[2])
    {
      goto LABEL_107;
    }

    v6 = v11[v13 + 4];
    if (*&v6[2] != 1)
    {
      goto LABEL_69;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_23A938A28(0, 2, 1, v6);
    }

    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      v6 = sub_23A938A28((v36 > 1), v37 + 1, 1, v6);
    }

    v6[2] = (v37 + 1);
    v6[v37 + 4] = v33;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A975D00(v11);
      v11 = result;
    }

    if (v13 >= v11[2])
    {
      __break(1u);
      return result;
    }

LABEL_68:
    v11[v13 + 4] = v6;

    v55 = v11;
LABEL_69:
    v9 = v11[2];
    if (!v9)
    {
      return v11;
    }

    v39 = v9 - 1;
    v40 = v11[v9 + 3];

    v6 = sub_23A9BB0CC(v40, 0.0001);

    if (*&v6[2] >= 2uLL)
    {
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v11;
      if ((v41 & 1) == 0)
      {
        v42 = sub_23A939860(0, v11[2] + 1, 1, v11);
      }

      v44 = v42[2];
      v43 = v42[3];
      if (v44 >= v43 >> 1)
      {
        v42 = sub_23A939860((v43 > 1), v44 + 1, 1, v42);
      }

      v42[2] = v44 + 1;
      v42[v44 + 4] = v6;
      v55 = v42;
    }

    else
    {

      v6 = &v55;
      sub_23A9854F8(v9 - 1);
    }

    if (v9 == 1)
    {
      break;
    }

    v3 = &v11[v9 + 2];
    v7 = 953267991;
    while (1)
    {
      v13 = v39 - 1;
      if (__OFSUB__(v39, 1))
      {
        break;
      }

      if (v39 > v11[2])
      {
        goto LABEL_92;
      }

      v6 = sub_23A9BB0CC(v45, 0.0001);

      if (*&v6[2] <= 1uLL)
      {

        v6 = &v55;
        sub_23A9854F8(v13);
      }

      else
      {
        v46 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_23A939860(0, v46[2] + 1, 1, v46);
        }

        v4 = v46[2];
        v47 = v46[3];
        v9 = v4 + 1;
        if (v4 >= v47 >> 1)
        {
          v46 = sub_23A939860((v47 > 1), v4 + 1, 1, v46);
        }

        v46[2] = v9;
        v46[v4 + 4] = v6;
        v55 = v46;
      }

      v3 -= 8;
      v39 = v13;
      if (!v13)
      {
        goto LABEL_89;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
  }

LABEL_89:

  return v55;
}