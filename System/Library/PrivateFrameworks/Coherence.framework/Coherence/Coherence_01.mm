uint64_t sub_1ADDDEEFC(uint64_t a1)
{
  result = type metadata accessor for PartiallyOrderedReferenceMap(319);
  if (v2 <= 0x3F)
  {
    result = sub_1AE23BFEC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1ADDDEFF8(uint64_t a1)
{
  result = sub_1AE23D7CC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1ADDDF08C(uint64_t a1)
{
  sub_1AE23BFEC();
  if (v1 <= 0x3F)
  {
    sub_1ADDDF140(319, v1, v2);
    if (v3 <= 0x3F)
    {
      sub_1ADDDF254();
      if (v4 <= 0x3F)
      {
        sub_1ADDDF2A4(319, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1ADDDF140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1ED96A700)
  {
    sub_1ADDDF1A4(0, a2, a3);
    v3 = sub_1AE23C1DC();
    if (!v4)
    {
      atomic_store(v3, &qword_1ED96A700);
    }
  }
}

unint64_t sub_1ADDDF1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96AD08;
  if (!qword_1ED96AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AD08);
  }

  return result;
}

unint64_t sub_1ADDDF200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ED96AD00;
  if (!qword_1ED96AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96AD00);
  }

  return result;
}

void sub_1ADDDF254()
{
  if (!qword_1ED96AA48)
  {
    v0 = sub_1AE23D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED96AA48);
    }
  }
}

void sub_1ADDDF2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1ED96A270)
  {
    sub_1ADDDF1A4(0, a2, a3);
    v3 = sub_1AE23C28C();
    if (!v4)
    {
      atomic_store(v3, &qword_1ED96A270);
    }
  }
}

unint64_t sub_1ADDDF300(uint64_t a1)
{
  sub_1AE23BFEC();
  v2 = MEMORY[0x1E69695A8];
  sub_1ADDDF574(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1AE23CBBC();
  return sub_1ADDDF3D4(a1, v3, MEMORY[0x1E69695A8], &qword_1ED96A710, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1ADDDF3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1ADDDF574(v24, v25, v26);
      v20 = sub_1AE23CCBC();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1ADDDF574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADDDF5BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADDDF604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADDDF64C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int *a5, void *a6, int8x8_t a7)
{
  v7 = *a5;
  v8 = a5[1];
  if ((v8 & *a5) != 0)
  {
    v9 = sub_1AE033364(a1, a2, a3, a4, a5, a6);
    v11 = 0x80000000;
    if (v9 != 1)
    {
      v11 = 2147483649;
    }

    if (v9)
    {
      return v11;
    }

    else
    {
      return (v10 << 32) | 0xFF;
    }
  }

  else
  {
    v13 = (a4 >> a1) & 0x1F;
    v14 = 1 << (a4 >> a1);
    if ((v7 & v14) != 0)
    {
      a7.i32[0] = v7 & (v14 - 1);
      v15 = vcnt_s8(a7);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      v17 = (&a6[2 * ~v15.u32[0]] + a5[2]);
      v18 = *v17;
      v19 = v17[1];
      v20 = a2;
      sub_1ADDD86D8(*v17, v19);
      LOBYTE(v20) = sub_1ADDD6F8C(v18, v19, v20, a3);
      sub_1ADDCC35C(v18, v19);
      if (v20)
      {
        return v13 | (v16 << 32);
      }

      else
      {
        return v13 | (v16 << 32) | 0x40000000;
      }
    }

    else
    {
      v22 = v14 - 1;
      if ((v8 & v14) != 0)
      {
        a7.i32[0] = v8 & v22;
        v23 = vcnt_s8(a7);
        v23.i16[0] = vaddlv_u8(v23);
        return v13 | (v23.u32[0] << 32) | 0x60000000;
      }

      else
      {
        a7.i32[0] = v7 & v22;
        v24 = vcnt_s8(a7);
        v24.i16[0] = vaddlv_u8(v24);
        return v13 | (v24.u32[0] << 32) | 0x20000000;
      }
    }
  }
}

double sub_1ADDDF7A8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  sub_1AE23E31C();
  sub_1AE23BECC();
  v8 = sub_1AE23E34C();
  v10 = v8;
  v11 = a3 + 8;
  v12 = a3[4];
  v13 = a3[5];
  if ((v13 & v12) != 0)
  {
    v8 = 0;
    goto LABEL_3;
  }

  v16 = 1 << v8;
  if (((1 << v8) & v12) == 0)
  {
    LODWORD(v8) = 0;
    do
    {
      if ((v16 & v13) == 0)
      {
        goto LABEL_4;
      }

      v9.i32[0] = (v16 - 1) & v13;
      v9 = vcnt_s8(v9);
      v9.i16[0] = vaddlv_u8(v9);
      a3 = *&a3[4 * v9.u32[0] + 8];
      v8 = (v8 + 5);
      v12 = a3[4];
      v13 = a3[5];
      if ((v13 & v12) != 0)
      {
        goto LABEL_31;
      }

      v16 = 1 << (v10 >> v8);
    }

    while ((v16 & v12) == 0);
    v11 = a3 + 8;
  }

  v9.i32[0] = (v16 - 1) & v12;
  v17 = vcnt_s8(v9);
  v17.i16[0] = vaddlv_u8(v17);
  v14 = v17.i32[0];
  v18 = (&v11[8 * ~v17.i32[0]] + a3[6]);
  v20 = *v18;
  v19 = v18[1];
  v21 = v19 >> 62;
  v22 = a2 >> 62;
  if (v19 >> 62 == 3)
  {
    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19 == 0xC000000000000000;
    }

    v24 = 0;
    v25 = v23 && a2 >> 62 == 3;
    if (v25 && !a1 && a2 == 0xC000000000000000)
    {
      goto LABEL_64;
    }

    goto LABEL_34;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      v24 = 0;
      if (v22 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }

    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    v28 = __OFSUB__(v26, v27);
    v24 = v26 - v27;
    if (v28)
    {
      __break(1u);
LABEL_31:
      v11 = a3 + 8;
LABEL_3:
      if (sub_1AE033244(v8, a1, a2, v10, (a3 + 4), v11))
      {
LABEL_4:
        result = 0.0;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0u;
        *a4 = 0u;
        return result;
      }

      goto LABEL_64;
    }

    goto LABEL_34;
  }

  if (v21)
  {
    LODWORD(v24) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v24 = v24;
LABEL_34:
    if (v22 <= 1)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

  v24 = BYTE6(v19);
  if (v22 <= 1)
  {
LABEL_35:
    if (!v22)
    {
      v29 = BYTE6(a2);
      goto LABEL_42;
    }

    LODWORD(v29) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v29 = v29;
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_66;
  }

LABEL_40:
  if (v22 != 2)
  {
    if (v24)
    {
      goto LABEL_4;
    }

    goto LABEL_64;
  }

  v31 = *(a1 + 16);
  v30 = *(a1 + 24);
  v28 = __OFSUB__(v30, v31);
  v29 = v30 - v31;
  if (v28)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_42:
  if (v24 != v29)
  {
    goto LABEL_4;
  }

  if (v24 >= 1)
  {
    if (v21 > 1)
    {
      v43 = v17.i32[0];
      if (v21 != 2)
      {
        *&v45[6] = 0;
        *v45 = 0;
        sub_1ADDD86D8(v20, v19);
        sub_1ADDD8820(v45, a1, a2, v44);
        sub_1ADDCC35C(v20, v19);
        v14 = v43;
        if (!v44[0])
        {
          goto LABEL_4;
        }

        goto LABEL_64;
      }

      v33 = *(v20 + 16);
      v42 = *(v20 + 24);
      sub_1ADDD86D8(v20, v19);
      v34 = sub_1AE23BB7C();
      if (v34)
      {
        v35 = sub_1AE23BBAC();
        if (__OFSUB__(v33, v35))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v34 += v33 - v35;
      }

      if (!__OFSUB__(v42, v33))
      {
LABEL_61:
        sub_1AE23BB9C();
        sub_1ADDD8820(v34, a1, a2, v45);
        sub_1ADDCC35C(v20, v19);
        v14 = v43;
        if ((v45[0] & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    else if (!v21)
    {
      *v45 = v20;
      *&v45[8] = v19;
      v45[10] = BYTE2(v19);
      v45[11] = BYTE3(v19);
      v45[12] = BYTE4(v19);
      v45[13] = BYTE5(v19);
      v32 = v17.i32[0];
      sub_1ADDD86D8(v20, v19);
      sub_1ADDD8820(v45, a1, a2, v44);
      sub_1ADDCC35C(v20, v19);
      v14 = v32;
      if (!v44[0])
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }

    v43 = v14;
    if (v20 >> 32 >= v20)
    {
      sub_1ADDD86D8(v20, v19);
      v34 = sub_1AE23BB7C();
      if (!v34)
      {
        goto LABEL_61;
      }

      v36 = sub_1AE23BBAC();
      if (!__OFSUB__(v20, v36))
      {
        v34 += v20 - v36;
        goto LABEL_61;
      }

LABEL_70:
      __break(1u);
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_64:
  v37 = &v11[8 * ~v14] + a3[6];
  v38 = *(v37 + 32);
  v39 = *(v37 + 40);
  v40 = *(v37 + 48);
  v41 = *(v37 + 56);
  *a4 = *(v37 + 16);
  *(a4 + 16) = v38;
  *(a4 + 24) = v39;
  *(a4 + 32) = v40;
  *(a4 + 40) = v41;

  return result;
}

void sub_1ADDDFC74(_OWORD **a1)
{
  v1 = *a1;
  sub_1ADDDD94C(*(*a1 + 27), *a1);
  v2 = v1[3];
  v1[8] = v1[2];
  v1[9] = v2;
  v1[10] = v1[4];
  *(v1 + 175) = *(v1 + 79);
  v3 = v1[1];
  v1[6] = *v1;
  v1[7] = v3;
  sub_1ADDCEDE0((v1 + 6), &qword_1EB5BA960, &qword_1AE2455E0);

  free(v1);
}

uint64_t CRStruct_1.visitReferences(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v18 - v10;
  (*(v6 + 32))(a2, v6, v9);
  v18[1] = v12;

  v18[0] = v3;
  swift_getAtKeyPath();

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 16) + 48))(a1, AssociatedTypeWitness);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if ((*(v15 + 8))(v14, v15))
  {
  }

  else
  {
    v16 = (*(*(v6 + 8) + 24))(a2);
    sub_1ADDDC764(a1, v16);
  }
}

_DWORD *sub_1ADDDFEFC(char a1, unsigned int a2, void (*a3)(char *), int8x8_t a4, uint64_t a5, _DWORD *a6)
{
  v8 = a6[5];
  v9 = a6[4] | (1 << a1);
  a4.i32[0] = v9;
  v10 = vcnt_s8(a4);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  v12 = vcnt_s8(v8);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.i32[0];
  v14 = 16 * (v11 + v12.i32[0]);
  result = sub_1ADDDB860(v14);
  v17 = result;
  v18 = result + 8;
  result[4] = v9;
  result[5] = v8;
  v19 = result[6];
  result[7] -= v14;
  v20 = a6[4];
  v21 = a6[5];
  if (v20 == v21)
  {
    v21 = a6[4];
    goto LABEL_6;
  }

  if (!v21)
  {
LABEL_6:
    v16.i32[0] = v20;
    v23 = vcnt_s8(v16);
    v23.i16[0] = vaddlv_u8(v23);
    if (v20 == v21)
    {
      v24 = v20;
    }

    else
    {
      v24 = v23.u32[0];
    }

    v25 = v11 - a2;
    if (v11 < a2)
    {
      v25 = 0;
    }

    if (v11 < v25)
    {
      __break(1u);
    }

    else
    {
      v26 = v24 - a2;
      if (v24 >= a2)
      {
        v27 = v24 - a2;
      }

      else
      {
        v27 = 0;
      }

      v28 = v24 - v27;
      if (v24 >= v27)
      {
        v29 = v18 + v19 + -16 * v11;
        if (v28 >= 1)
        {
          if ((v11 - v25) < v28)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
          result = swift_arrayInitWithCopy();
        }

        if ((v26 & 0x8000000000000000) == 0)
        {
          if (v24 == a2)
          {
LABEL_23:
            a3(&v29[16 * v26]);
            return v17;
          }

          if (v26 <= v11)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCE8, &qword_1AE251D98);
            swift_arrayInitWithCopy();
            goto LABEL_23;
          }

          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v16.i32[0] = a6[5];
  v22 = vcnt_s8(v16);
  v22.i16[0] = vaddlv_u8(v22);
  if (v13 >= v22.i32[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCCF0, &unk_1AE251DA0);
    result = swift_arrayInitWithCopy();
    v20 = a6[4];
    v21 = a6[5];
    goto LABEL_6;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE0110(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1AE23E31C();
  sub_1AE23BECC();
  v7 = sub_1AE23E34C();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_1ADDD86D8(a2, a3);
    sub_1ADDDBB68(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
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
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_1ADDD86D8(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_1ADDD86D8(v18, v17);
      v32 = sub_1AE23BB7C();
      if (v32)
      {
        v34 = sub_1AE23BBAC();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_1ADDD86D8(v18, v17);
    v32 = sub_1AE23BB7C();
    if (v32)
    {
      v33 = sub_1AE23BBAC();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_1AE23BB9C();
    a3 = v44;
    sub_1ADDD8820(v32, a2, v44, v50);
    sub_1ADDCC35C(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_1ADDD86D8(v18, v17);
LABEL_60:
  sub_1ADDD8820(v50, a2, a3, &v49);
  sub_1ADDCC35C(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1ADDCC35C(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_1ADDD86D8(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_1ADDE0598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1AE23BB7C();
  v11 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AE23BB9C();
  sub_1ADDD8820(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1ADDE0650()
{

  return swift_deallocClassInstance();
}

void sub_1ADDE0698(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 40);
    sub_1AE0328B8(&v4);
  }

  free(v3);
}

void sub_1ADDE0708(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = *(type metadata accessor for PartiallyOrderedReferenceMap(0) + 24);
  v8 = *(v2 + v7);
  v9 = *(v8 + 2);
  if (v9)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      v8 = sub_1ADDFC33C(v8);
    }

    v10 = 0;
    for (i = v8 + 48; ; i += 40)
    {
      if (v9 == v10)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v10 >= *(v8 + 2))
      {
        goto LABEL_16;
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v12 = sub_1AE23E34C();
      sub_1ADDE0898(0, v5, v6, v12, &v20);
      v13 = v20;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      if (v21 >> 60 != 15)
      {
        break;
      }

      ++v10;
      sub_1ADECD780(v20, v21, v22, v23);
      if (v9 == v10)
      {
        *(v2 + v7) = v8;
        return;
      }
    }

    ++*(i + 2);
    v17 = v13;
    v18 = v14;
    sub_1ADDE1588(v15, v16);
    sub_1ADDCC35C(v17, v18);
    *(v3 + v7) = v8;
    if (a2)
    {
      v19 = *(v8 + 2);
      if (v10 >= v19)
      {
        __break(1u);
      }

      else if (v19 >= 2 && !*(i + 1))
      {
        sub_1AE031374(v10, &v20);
        sub_1ADE42CB8(v20, v21);
      }
    }
  }
}

void sub_1ADDE0898(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    sub_1ADDF9FB0(a1, a2, a3, a4, *v5, *(v5 + 8), &v78, v11);
    v22 = v82;
    v23 = HIBYTE(v82);
    v24 = v78;
    v25 = v80;
    v26 = v81;
    if (v23 <= 0xFE)
    {
      sub_1ADDFA5BC(a1, v80, v81, v82, &v78);
      *a5 = v24;
      *(a5 + 16) = v78;
      sub_1ADDFC318(v25, v26, v22, v23);
      return;
    }

    sub_1AE03CA70(v78, *(&v78 + 1), v79, v80, v81, v82, sub_1ADDCC35C, sub_1ADDFC318);
LABEL_8:
    *a5 = xmmword_1AE2427C0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return;
  }

  v12 = *v5;
  v13 = (*v5 + 32);
  v14 = sub_1ADDE147C(a1, a2, a3, a4, (*v5 + 16), v13, v11);
  if (v14 == 2)
  {
    goto LABEL_8;
  }

  v15 = HIDWORD(v14);
  v16 = a4 >> a1;
  if (v14)
  {
    v76 = a4 >> a1;
    v17 = v5;
    sub_1ADDE0898((a1 + 5), a2, a3, a4, &v78);
    v19 = v78;
    v21 = v79;
    v20 = v80;
    if (*(&v78 + 1) >> 60 == 15)
    {
      sub_1ADECD780(v78, *(&v78 + 1), v79, v80);
      *a5 = v19;
      *(a5 + 16) = v21;
      *(a5 + 24) = v20;
      return;
    }

    v77 = v78;
    v38 = v17[1];
    v17[1] = (*&v38 - 1);
    v40 = v12[2].i32[0];
    v39 = v12[2].i32[1];
    if (v20 >> 60 == 15)
    {
      if (!v40)
      {
        if (v39)
        {
          v18.i32[0] = v12[2].i32[1];
          v41 = vcnt_s8(v18);
          v41.i16[0] = vaddlv_u8(v41);
          if (v41.i32[0] < 2u)
          {
            v42 = *(*v13 + 20) & *(*v13 + 16);
            sub_1ADDD86D8(v77, *(&v19 + 1));
            sub_1ADDE0F78(v21, v20);
            if (v42)
            {
              if (v12[2].i32[0] == v12[2].i32[1])
              {
                v44 = -16;
              }

              else
              {
                v43.i32[0] = v12[2].i32[1];
                v71 = vcnt_s8(v43);
                v71.i16[0] = vaddlv_u8(v71);
                v44 = (16 * v71.i32[0]) - 16;
              }

              v12[3].i32[1] += 16;
              v72 = v12[4];
              v73 = v12[5];
              memmove(v13, &v12[6], v44);
              v12[2].i32[1] = 0;

              v49 = 0;
              *v17 = v72;
              v17[1] = v73;
              goto LABEL_59;
            }

LABEL_56:
            v49 = 0;
LABEL_59:
            v47 = v77;
            goto LABEL_60;
          }
        }
      }

      v47 = v77;
      sub_1ADDD86D8(v77, *(&v19 + 1));
      sub_1ADDE0F78(v21, v20);
      v49 = 0;
    }

    else
    {
      if (v40 || !v39 || (v39 & (v39 - 1)) != 0 || !a1)
      {
        v17[1] = (*&v38 - 2);
        swift_beginAccess();
        sub_1AE037C04(v77, *(&v19 + 1), v21, v20);
        sub_1ADDE0F78(v21, v20);
        v51 = *v17;
        v52 = (*v17 + 16);
        v53 = *v17 + 32;
        if (*v52 == *(*v17 + 20))
        {
          v54 = -1;
        }

        else
        {
          v50.i32[0] = *(*v17 + 20);
          v65 = vcnt_s8(v50);
          v65.i16[0] = vaddlv_u8(v65);
          v54 = v65.u32[0] - 1;
        }

        v51[7] += 16;
        v66 = (v53 + 16 * v15);
        v74 = v66[1];
        v75 = v53;
        memmove(v66, v66 + 2, 16 * (v54 - v15));
        v51[5] &= ~(1 << v76);

        v67.i32[0] = v51[4] & ((1 << v76) - 1);
        v68 = vcnt_s8(v67);
        v68.i16[0] = vaddlv_u8(v68);
        v69 = v68.i32[0];
        v17[1] = (*&v17[1] - v74 + 1);
        sub_1ADDE0F78(v21, v20);
        sub_1ADDD86D8(v21, v20);
        v70 = sub_1ADDE15A0(v69, v76 & 0x1F, v52, v75);
        *v70 = v21;
        *(v70 + 1) = v20;
        sub_1ADDD86D8(v21, v20);
        sub_1ADDE1588(v21, v20);
        sub_1ADDCC35C(v21, v20);
        sub_1ADDCC35C(v21, v20);
        goto LABEL_56;
      }

      v47 = v77;
      sub_1AE037C04(v77, *(&v19 + 1), v21, v20);
      sub_1ADDE0F78(v21, v20);
      v48 = *sub_1AE23C1EC();

      *v17 = v48;
      v17[1] = 0;
      v49 = v21;
    }

LABEL_60:
    sub_1ADECD780(v47, *(&v19 + 1), v21, v20);
    *a5 = v47;
    *(a5 + 8) = *(&v19 + 1);
    *(a5 + 16) = v49;
    *(a5 + 24) = v19;
    sub_1ADDE1588(v21, v20);
    return;
  }

  --*(v5 + 8);
  LODWORD(v27) = v12[2].i32[0];
  v28 = vcnt_s8(v27);
  v28.i16[0] = vaddlv_u8(v28);
  if (v27 == v12[2].i32[1])
  {
    v27 = v27;
  }

  else
  {
    v27 = v28.u32[0];
  }

  v29 = v12[3].u32[0];
  v12[3].i32[1] += 16;
  v30 = v13 + v29 + -16 * v27;
  v31 = 16 * (v27 + ~v15);
  v32 = *&v30[v31];
  v33 = *&v30[v31 + 8];
  memmove(v30 + 16, v30, v31);
  v36 = v12[2].i32[0];
  v35 = v12[2].i32[1];
  if ((v35 & v36) != 0)
  {
    v37 = v36 - 1;
    v12[2].i32[1] = v37;
    v35 = v37;
    v12[2].i32[0] = v37;
    if (!v37)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v37 = v36 & ((-1 << v16) - 1);
    v12[2].i32[0] = v37;
    if (!v35)
    {
      goto LABEL_28;
    }
  }

  if (v37 || (v34.i32[0] = v35, v34 = vcnt_s8(v34), v34.i16[0] = vaddlv_u8(v34), v34.i32[0] > 1u))
  {
LABEL_28:
    if (v37 == v35)
    {
      goto LABEL_29;
    }

LABEL_39:
    v55 = 0;
    v56 = 0xF000000000000000;
    if (!v37)
    {
      goto LABEL_50;
    }

    if (v35)
    {
      goto LABEL_50;
    }

    v34.i32[0] = v37;
    v57 = vcnt_s8(v34);
    v57.i16[0] = vaddlv_u8(v57);
    if (v57.i32[0] >= 2u)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

  v45 = *v13;
  if ((*(*v13 + 20) & *(*v13 + 16)) != 0)
  {
    v12[3].i32[1] += 16;
    v46 = v12[5];
    memmove(v13, &v12[6], (16 * v34.i32[0]) - 16);
    v12[2].i32[1] = 0;

    *v5 = v45;
    *(v5 + 8) = v46;
    v37 = v45[2].i32[0];
    v35 = v45[2].i32[1];
    v12 = v45;
    goto LABEL_28;
  }

  v37 = 0;
  if (v35)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (v35 != 1)
  {
LABEL_48:
    v55 = 0;
    goto LABEL_49;
  }

LABEL_42:
  if (a1)
  {
    *(v5 + 8) = 0;
    v58 = v12[2].u32[0];
    v59 = vcnt_s8(v58);
    v59.i16[0] = vaddlv_u8(v59);
    if (v58 != v12[2].i32[1])
    {
      v58 = v59.i32[0];
    }

    v60 = 16 * v58;
    v61 = &v12[v60 / 0xFFFFFFFFFFFFFFF8] + v12[3].u32[0];
    v12[3].i32[1] += 16;
    v62 = v60 - 16;
    v63 = &v61[v60 + 16];
    v55 = *v63;
    v56 = v63[1];
    memmove(v61 + 48, v61 + 32, v62);
    v12[2] = 0;
    v12[3].i32[1] = v12[3].i32[0];
    goto LABEL_50;
  }

  if ((v35 & v37) == 0)
  {
    goto LABEL_48;
  }

  v55 = 0;
  v64 = v12[3].i32[1];
  v12[2].i32[0] = 1 << v12[4].i32[0];
  v12[2].i32[1] = 0;
  v12[3].i32[1] = v64 + 8;
LABEL_49:
  v56 = 0xF000000000000000;
LABEL_50:
  *a5 = v32;
  *(a5 + 8) = v33;
  *(a5 + 16) = v55;
  *(a5 + 24) = v56;
  sub_1ADDD86D8(v32, v33);
  sub_1ADDE0F78(v55, v56);
  sub_1ADDCC35C(v32, v33);

  sub_1ADDE1588(v55, v56);
}

uint64_t sub_1ADDE0F78(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1ADDD86D8(result, a2);
  }

  return result;
}

uint64_t sub_1ADDE0F8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v12 = *(v3 + 296);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v12, v5);
  v13 = *(v4 - 8);
  result = (*(v13 + 48))(v11, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v13 + 32))(boxed_opaque_existential_1, v11, v4);
    (*(v13 + 56))(v8, 1, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(v1 + v12, v8, v5);
    return swift_endAccess();
  }

  return result;
}

void sub_1ADDE11A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[52];
  if (a2)
  {
    (*(v2[51] + 8))(v2[52], v2[50]);
  }

  else
  {
    v4 = v2[53];
    v5 = v2[50];
    v6 = v2[51];
    v7 = v2[49];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v4);
    v2[36] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 33);
    (*(v6 + 16))(boxed_opaque_existential_1, v3, v5);
    off_1F23C9918(v2 + 33, v4);
    __swift_destroy_boxed_opaque_existential_1(v2 + 33);
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    swift_beginAccess();

    sub_1ADDD86D8(v9, v10);
    sub_1ADDE0110(v11, v9, v10);
    swift_endAccess();

    sub_1ADDCC35C(v11[0], v11[1]);
    (*(v6 + 8))(v3, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + 24);
  free(v3);

  free(v2);
}

void sub_1ADDE1320(uint64_t *result)
{
  if (result[4])
  {
    v1 = result[3];
    v7 = result[2];
    v8 = v1;
    v2 = result[1];
    v5 = *result;
    v6 = v2;

    sub_1ADDD86D8(v7, v1);
    sub_1ADDD86D8(v5, v2);
    sub_1ADEA9BC0(1, 1, &v7, &v5);

    sub_1ADDE158C(v5, v6);
    v3 = v7;
    v4 = v8;

    sub_1ADDE158C(v3, v4);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1ADDE13D8(uint64_t ***a1, uint64_t *a2))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *a2;
  v7 = a2[1];
  *(v5 + 32) = v2;
  *(v5 + 40) = v8;
  *(v5 + 48) = v7;
  type metadata accessor for PartiallyOrderedReferenceMap(0);
  *(v6 + 56) = sub_1ADDDD53C(v6, v8, v7);
  return sub_1ADDE0698;
}

unint64_t sub_1ADDE147C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int *a5, void *a6, int8x8_t a7)
{
  v8 = *a5;
  v7 = a5[1];
  if ((v7 & *a5) != 0)
  {
    if (sub_1AE033364(a1, a2, a3, a4, a5, a6))
    {
      return 2;
    }

    else
    {
      return v9 << 32;
    }
  }

  else
  {
    v11 = 1 << (a4 >> a1);
    if ((v8 & v11) != 0)
    {
      a7.i32[0] = v8 & (v11 - 1);
      v12 = vcnt_s8(a7);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.u32[0];
      v14 = (&a6[2 * ~v12.u32[0]] + a5[2]);
      v15 = *v14;
      v16 = v14[1];
      v17 = a2;
      sub_1ADDD86D8(*v14, v16);
      LOBYTE(v17) = sub_1ADDD6F8C(v15, v16, v17, a3);
      sub_1ADDCC35C(v15, v16);
      if (v17)
      {
        return v13 << 32;
      }

      else
      {
        return 2;
      }
    }

    else if ((v7 & v11) != 0)
    {
      a7.i32[0] = v7 & (v11 - 1);
      v19 = vcnt_s8(a7);
      v19.i16[0] = vaddlv_u8(v19);
      return (v19.u32[0] << 32) | 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1ADDE158C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(a1, a2);
  }
}

char *sub_1ADDE15A0(unsigned int a1, char a2, int *a3, uint64_t a4)
{
  v6 = ~a2;
  LODWORD(v7) = *a3;
  v8 = vcnt_s8(*a3);
  v8.i16[0] = vaddlv_u8(v8);
  if (*a3 == a3[1])
  {
    v7 = v7;
  }

  else
  {
    v7 = v8.u32[0];
  }

  v9 = a3[2];
  a3[3] -= 16;
  v10 = (a4 - 16 * v7 + v9);
  v11 = v10 - 16;
  v12 = v7 - a1;
  memmove(v10 - 16, v10, 16 * v12);
  v13 = *a3;
  if (v6)
  {
    v14 = v13 | (1 << a2);
  }

  else
  {
    v14 = v13 + 1;
    a3[1] = v14;
  }

  *a3 = v14;
  return &v11[16 * v12];
}

void CRRegister.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (v10)
  {
    (*(*v10 + 96))(v7);
    (*(*(*(a2 + 24) + 8) + 48))(a1, v5);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1ADDE1764@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  return (*(*(*(v3 + 192) - 8) + 16))(a1, v1 + v4);
}

void Capsule.mutate<A>(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1ADDE1854(a1, a2, a3, a4);
  sub_1ADDE1320(v4);
}

{
  sub_1ADDE1854(a1, a2, a3, a4);
  if (v4[4])
  {
    v5 = v4[3];
    v11 = v4[2];
    v12 = v5;
    v6 = v4[1];
    v9 = *v4;
    v10 = v6;
    sub_1ADDD86D8(v11, v5);
    sub_1ADDD86D8(v9, v6);
    sub_1ADEA9BC0(1, 1, &v11, &v9);
    sub_1ADDE158C(v9, v10);
    v7 = v11;
    v8 = v12;

    sub_1ADDE158C(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ADDE1854(void (*a1)(void *), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  sub_1ADDF8128(a4);
  v9 = v4[4];
  if (v9)
  {
    v11 = *v4;
    v10 = v4[1];
    type metadata accessor for Capsule.Ref(0, *(a3 + 16), *(a3 + 24), v8);
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v9;
    v5[4] = 0;
    sub_1ADDD86D8(v11, v10);
    a1(v12);
    v5[4] = v12[4];
  }

  else
  {
    __break(1u);
  }
}

void (*Capsule.Ref.subscript.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x50uLL);
  }

  v3 = v2;
  *a1 = v2;
  Capsule.Ref.root.modify(v2);
  v3[8] = v4;
  v3[9] = swift_modifyAtWritableKeyPath();
  return sub_1ADDE5438;
}

uint64_t Capsule.finalizeTimestamps(_:)(uint64_t result)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = result;
  v4 = v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
  swift_beginAccess();
  v5 = *(v4 + 8);

  result = swift_isUniquelyReferenced_native();
  if (result)
  {
    if (*(v1 + 32))
    {
      v19[0] = MEMORY[0x1E69E7CC8];
      v19[1] = v5;
      v6 = v19;
LABEL_13:
      sub_1ADDE1F68(v6, v3);
    }

    goto LABEL_16;
  }

  v7 = MEMORY[0x1E69E7CC8];
  if (!(*(v5 + 16) | *(MEMORY[0x1E69E7CC8] + 16)))
  {
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = v1;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v10 = v8 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
    swift_beginAccess();
    v11 = *(v10 + 8);
    v17 = v7;
    v18 = v11;

    sub_1ADDE1CB8(&v17);

    v12 = *(v8 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState);
    v13 = qword_1ED967EE8;

    if (v13 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v14 = sub_1AE1FEFC0(&dword_1ED96F1F8, v12);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    type metadata accessor for CapsuleRef(0);
    swift_allocObject();

    v16 = sub_1ADDE1CF0(v15, v14);

    *(v9 + 32) = v16;
    v17 = v7;
    v18 = v5;
    v6 = &v17;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE1CF0(uint64_t a1, uint64_t a2)
{
  v23 = sub_1AE23BFEC();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
  *(v2 + v11) = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
  v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(a1 + v12, v10);
  sub_1AE1FE97C(v10, v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);
  v13 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
  swift_beginAccess();
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = *(a1 + v13);
  v14 = (a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  v17 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  *v17 = v16;
  v17[1] = v15;
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = a2;
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = *(a1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration);
  v18 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  swift_beginAccess();
  *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = *(a1 + v18);
  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v20 = a1 + v19;
  v21 = v23;
  (*(v5 + 16))(v7, v20, v23);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v7, v21);

  return v2;
}

double sub_1ADDE1F68(uint64_t *result, uint64_t a2)
{
  if (*(result[1] + 16) || *(*result + 16))
  {
    v11 = result[1];
    v12 = *result;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v4 = (v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v5 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v6 = v13;
    v7 = v14;
    v8 = v15;
    v9 = v17;
    *v4 = v16;
    v4[1] = v9;

    swift_beginAccess();
    sub_1ADDFB0EC(a2);
    swift_endAccess();
    if (*(v8 + 16))
    {
      swift_beginAccess();
      sub_1ADDF8898(v6, v7, v8);
      swift_endAccess();
      swift_beginAccess();
      sub_1ADDFBCE8(v6, v7, v8);
      swift_endAccess();

      *(v2 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = v6;
    }

    else
    {
    }

    v13 = v12;
    v14 = v11;
    return sub_1ADDF8100(&v13);
  }

  return v10;
}

uint64_t sub_1ADDE21EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Replica(0);
  sub_1ADDDE540(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for Replica);
  result = sub_1ADDE5634(a3, a4[7] + 24 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1ADDE22AC(char **a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBB38, &qword_1AE24E070);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = (&v39 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v44 = (&v39 - v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v39 - v20);
  v45 = v22;
  v46 = v2;
  v23 = *v2;
  v24 = *(*v2 + 2);
  if (!v24)
  {
    v26 = 0;
LABEL_5:
    if (v26 <= a2)
    {
      v2 = a1;
      v27 = *(v19 + 36);
      v28 = type metadata accessor for RetainedMapRun(0);
      (*(*(v28 - 8) + 56))(v21 + v27, 1, 1, v28);
      *v21 = v26;
      v21[1] = a2;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v25 = *(v8 + 72);
  v26 = *(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v25 * (v24 - 1) + 8);
  if (v26 < a2)
  {
    goto LABEL_5;
  }

  v24 = *(v8 + 80);
  v2 = a1;
  while (1)
  {
    v31 = sub_1ADDE2A80(v2, 0, v23);
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v31;
    if (v31 >= v23[2])
    {
      goto LABEL_30;
    }

    v24 = (v24 + 32) & ~v24;
    v32 = v25 * v31;
    if (*(v23 + v24 + v25 * v31) < v2)
    {
      v21 = &qword_1AE241B60;
      sub_1ADDCEE40(v23 + v24 + v32, v14, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADF91530(v45, v44, v2);
      sub_1ADDCEDE0(v14, &qword_1EB5BA148, &qword_1AE241B60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1ADF799F0(v23);
      }

      v2 = v46;
      if (v8 >= v23[2])
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v40 = v14;
      v33 = a2;
      v34 = v45;
      sub_1ADF934B4(v45, v23 + v24 + v32);
      *v2 = v23;
      if (v23[2] <= v8)
      {
        goto LABEL_38;
      }

      ++v8;
      v23 = &qword_1AE241B60;
      v21 = v43;
      v35 = v44;
      sub_1ADDCEE40(v44, v43, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADF92880(v8, v8, v21);
      sub_1ADDCEDE0(v35, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDCEDE0(v34, &qword_1EB5BA148, &qword_1AE241B60);
      a2 = v33;
      v14 = v40;
    }

    if (__OFSUB__(a2, 1))
    {
      goto LABEL_31;
    }

    v21 = *v46;
    v36 = sub_1ADDE2A80(a2 - 1, v8, *v46);
    if ((v36 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v23 = v36;
    if (v36 >= v21[2])
    {
      goto LABEL_33;
    }

    v32 = v36 * v25;
    v37 = v21 + v24 + v36 * v25;
    if (*(v37 + 8) > a2)
    {
      break;
    }

    v23 = (v23 + 1);
LABEL_27:
    if (v23 >= v8)
    {
      return v8;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = sub_1ADDE2A5C(0, v24 + 1, 1, v23);
LABEL_7:
    v30 = v23[2];
    v29 = v23[3];
    if (v30 >= v29 >> 1)
    {
      v23 = sub_1ADDE2A5C((v29 > 1), v30 + 1, 1, v23);
    }

    v23[2] = v30 + 1;
    v24 = *(v8 + 80);
    v25 = *(v8 + 72);
    sub_1ADDD2198(v21, v23 + ((v24 + 32) & ~v24) + v25 * v30, &qword_1EB5BA148, &qword_1AE241B60);
    *v46 = v23;
  }

  sub_1ADDCEE40(v37, v14, &qword_1EB5BA148, &qword_1AE241B60);
  sub_1ADF91530(v42, v41, a2);
  sub_1ADDCEDE0(v14, &qword_1EB5BA148, &qword_1AE241B60);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_39:
  result = sub_1ADF799F0(v21);
  v21 = result;
LABEL_23:
  v2 = v46;
  v14 = v42;
  if (v23 < v21[2])
  {
    result = sub_1ADF934B4(v42, v21 + v24 + v32);
    *v2 = v21;
    if (v21[2] <= v23)
    {
      goto LABEL_41;
    }

    v23 = (v23 + 1);
    v21 = &qword_1AE241B60;
    a2 = v41;
    v24 = v43;
    sub_1ADDCEE40(v41, v43, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADF92880(v23, v23, v24);
    sub_1ADDCEDE0(a2, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v14, &qword_1EB5BA148, &qword_1AE241B60);
    goto LABEL_27;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_1ADDE2874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1ADDE2A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = v6 - 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v11 = *(v8 - 8);
  result = v8 - 8;
  v10 = v11;
  v12 = a2 + v6 - 1;
  if (__OFADD__(a2, v6 - 1))
  {
LABEL_16:
    __break(1u);
    return v12;
  }

  else
  {
    while (v12 >= -1)
    {
      v12 /= 2;
      if (v12 >= v6)
      {
        break;
      }

      v13 = (a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v12);
      v14 = *v13;
      v15 = v13[1];
      if (v14 <= a1 && v15 > a1)
      {
        return v12;
      }

      if (v7 < a2)
      {
        return v7;
      }

      if (v14 > a1)
      {
        v7 = v12 - 1;
        v17 = __OFADD__(a2, v12 - 1);
        v12 = a2 + v12 - 1;
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2 = v12 + 1;
        v17 = __OFADD__(v12 + 1, v7);
        v12 += 1 + v7;
        if (v17)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1ADDE2B98(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v97 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v107 = &v97 - v13;
  v14 = type metadata accessor for FinalizedTimestamp(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v97 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v97 - v32;
  v127 = type metadata accessor for RetainedMapRun(0);
  v108 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v113 = (&v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v97 - v35;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA148, &qword_1AE241B60);
  v132 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v111 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v112 = &v97 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v116 = (&v97 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v115 = &v97 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v97 - v44;
  MEMORY[0x1EEE9AC00](v46);
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_88;
  }

  v2 = &v97 - v47;
  v48 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v114 = v30;
  v106 = v14;
  v100 = v11;
  v104 = v21;
  v14 = (a1 - 1) & ~((a1 - 1) >> 63);
  v11 = v14 + 1;
  v49 = *v119;
  result = (*v119)[2];
  if (result < v48)
  {
    v48 = v49[2];
  }

  v128 = v48;
  if (v11 >= v48)
  {
    v53 = v49;
    if (result)
    {
      goto LABEL_46;
    }

LABEL_49:
    v21 = result;
LABEL_54:
    v91 = v119;
    sub_1ADDFDCDC(result, v21, sub_1ADDE2A5C, &qword_1EB5BA148, &qword_1AE241B60);
    v21 = *v91;
    v92 = (*v91)[2];
    if (v92)
    {
      v15 = v104;
      sub_1ADDCEE40(v21 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * (v92 - 1) + *(v130 + 36), v104, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((*(v108 + 48))(v15, 1, v127) != 1)
      {
        return sub_1ADDCEDE0(v15, &qword_1EB5BA450, &unk_1AE25B3B0);
      }
    }

    else
    {
      v15 = v104;
      (*(v108 + 56))(v104, 1, 1, v127);
    }

    sub_1ADDCEDE0(v15, &qword_1EB5BA450, &unk_1AE25B3B0);
    if (v21[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v93 = v21[2];
        if (v93)
        {
LABEL_61:
          v94 = v93 - 1;
          result = sub_1ADDCEDE0(v21 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * (v93 - 1), &qword_1EB5BA148, &qword_1AE241B60);
          v21[2] = v94;
          *v119 = v21;
          return result;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_91:
      v21 = sub_1ADF799F0(v21);
      v93 = v21[2];
      if (v93)
      {
        goto LABEL_61;
      }

      goto LABEL_92;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v21 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_94:
    v21 = sub_1ADF799F0(v21);
  }

  v52 = v2;
  v53 = v21;
  *v119 = v21;
  v125 = (v108 + 48);
  v2 = (v15 + 6);
  v54 = &qword_1EB5BA148;
  v105 = xmmword_1AE24DF80;
  v121 = v21;
  v117 = v52;
  v123 = v15 + 6;
  do
  {
    v21 = v53[2];
    if (v14 >= v21)
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v56 = v2;
    v134 = v11;
    v15 = (v53 + ((*(v132 + 80) + 32) & ~*(v132 + 80)));
    v2 = v54;
    v57 = *(v132 + 72);
    v129 = (v15 + v57 * v14);
    sub_1ADDCEE40(v129, v52, v2, &qword_1AE241B60);
    v11 = v134;
    if (v134 >= v21)
    {
      goto LABEL_77;
    }

    v21 = v53;
    v131 = v15 + v57 * v134;
    v58 = v133;
    sub_1ADDCEE40(v131, v133, v2, &qword_1AE241B60);
    if (*(v52 + 8) != *v58)
    {
      v54 = v2;
      sub_1ADDCEDE0(v58, v2, &qword_1AE241B60);
      sub_1ADDCEDE0(v52, v2, &qword_1AE241B60);
      v55 = v11;
      v2 = v56;
      v53 = v21;
      goto LABEL_9;
    }

    v122 = *(v52 + 8);
    v124 = v14;
    v59 = *(v130 + 36);
    v60 = v126;
    v14 = &qword_1EB5BA450;
    v2 = &unk_1AE25B3B0;
    sub_1ADDCEE40(v52 + v59, v126, &qword_1EB5BA450, &unk_1AE25B3B0);
    v11 = *v125;
    v61 = v127;
    if ((*v125)(v60, 1, v127) == 1)
    {
      goto LABEL_16;
    }

    v62 = v58;
    v63 = v120;
    sub_1ADDDE5A8(v126, v120, type metadata accessor for RetainedMapRun);
    v64 = v62 + *(v130 + 36);
    v60 = v114;
    sub_1ADDCEE40(v64, v114, &qword_1EB5BA450, &unk_1AE25B3B0);
    if ((v11)(v60, 1, v61) == 1)
    {
      sub_1ADDE5360(v63, type metadata accessor for RetainedMapRun);
      v61 = v127;
      v58 = v133;
      v52 = v117;
LABEL_16:
      sub_1ADDCEDE0(v60, &qword_1EB5BA450, &unk_1AE25B3B0);
      v15 = v52;
      v65 = v118;
      sub_1ADDD2198(v52 + v59, v118, &qword_1EB5BA450, &unk_1AE25B3B0);
      if ((v11)(v65, 1, v61) == 1)
      {
        sub_1ADDCEDE0(v65, &qword_1EB5BA450, &unk_1AE25B3B0);
        v66 = v110;
        sub_1ADDD2198(v58 + *(v130 + 36), v110, &qword_1EB5BA450, &unk_1AE25B3B0);
        v122 = v11;
        v67 = (v11)(v66, 1, v61);
        sub_1ADDCEDE0(v66, &qword_1EB5BA450, &unk_1AE25B3B0);
        v11 = v134;
        v55 = v134;
        v53 = v121;
        v2 = v123;
        v54 = &qword_1EB5BA148;
        if (v67 != 1)
        {
          goto LABEL_9;
        }

LABEL_18:
        v21 = v53[2];
        if (v11 >= v21)
        {
          goto LABEL_80;
        }

        v14 = v131;
        sub_1ADDCEE40(v131, v115, &qword_1EB5BA148, &qword_1AE241B60);
        v68 = v124;
        if (v124 >= v21)
        {
          goto LABEL_81;
        }

        v2 = v129;
        v69 = *(v130 + 36);
        v11 = v122;
        if (!v122(v129 + v69, 1, v127))
        {
          v70 = v115 + v69;
          v71 = v102;
          sub_1ADDCEE40(v70, v102, &qword_1EB5BA450, &unk_1AE25B3B0);
          result = (v11)(v71, 1, v127);
          if (result == 1)
          {
            goto LABEL_97;
          }

          sub_1ADDCEDE0(v71, &qword_1EB5BA450, &unk_1AE25B3B0);
          v68 = v124;
          v14 = v131;
        }

        v21 = *v2;
        v15 = *(v115 + 8);
        sub_1ADDCEDE0(v115, &qword_1EB5BA148, &qword_1AE241B60);
        if (v15 < v21)
        {
          goto LABEL_82;
        }

        *v2 = v21;
        *(v2 + 8) = v15;
        v11 = v134;
        if (v134 >= v53[2])
        {
          goto LABEL_83;
        }

        *v14 = v105;
        *v119 = v53;
        v55 = v68;
      }

      else
      {
        v54 = &qword_1EB5BA148;
        sub_1ADDCEDE0(v58, &qword_1EB5BA148, &qword_1AE241B60);
        sub_1ADDCEDE0(v65, &qword_1EB5BA450, &unk_1AE25B3B0);
        v11 = v134;
        v55 = v134;
        v53 = v121;
      }

      v2 = v123;
      goto LABEL_9;
    }

    v72 = v60;
    v15 = v113;
    sub_1ADDDE5A8(v72, v113, type metadata accessor for RetainedMapRun);
    v73 = v122 - *v117;
    if (__OFSUB__(v122, *v117))
    {
      goto LABEL_79;
    }

    v74 = v120;
    v53 = v121;
    v52 = v117;
    v2 = v123;
    if (*(v120 + *(v127 + 20)) != *(v15 + *(v127 + 20)))
    {
LABEL_35:
      sub_1ADDE5360(v15, type metadata accessor for RetainedMapRun);
      sub_1ADDE5360(v74, type metadata accessor for RetainedMapRun);
      v54 = &qword_1EB5BA148;
      sub_1ADDCEDE0(v133, &qword_1EB5BA148, &qword_1AE241B60);
      sub_1ADDCEDE0(v52, &qword_1EB5BA148, &qword_1AE241B60);
      v11 = v134;
      v55 = v134;
      goto LABEL_9;
    }

    v75 = v107;
    v76 = v123;
    sub_1ADDCEE40(v120, v107, &qword_1EB5BA460, &qword_1AE251020);
    v77 = v106;
    v109 = *v76;
    if (v109(v75, 1, v106) != 1)
    {
      v78 = v101;
      sub_1ADDDE5A8(v107, v101, type metadata accessor for FinalizedTimestamp);
      v75 = v100;
      sub_1ADDCEE40(v113, v100, &qword_1EB5BA460, &qword_1AE251020);
      v2 = v76;
      if (v109(v75, 1, v77) != 1)
      {
        v83 = v75;
        v84 = v98;
        result = sub_1ADDDE5A8(v83, v98, type metadata accessor for FinalizedTimestamp);
        v85 = *(v77 + 20);
        v86 = *(v78 + v85);
        v87 = __OFADD__(v86, v73);
        v88 = &v73[v86];
        if (v87)
        {
          goto LABEL_96;
        }

        v14 = v133;
        if (v88 == *(v84 + v85))
        {
          v82 = sub_1AE23BF8C();
        }

        else
        {
          v82 = 0;
        }

        v122 = v11;
        sub_1ADDE5360(v84, type metadata accessor for FinalizedTimestamp);
        sub_1ADDE5360(v78, type metadata accessor for FinalizedTimestamp);
        v15 = v113;
        goto LABEL_41;
      }

      sub_1ADDE5360(v78, type metadata accessor for FinalizedTimestamp);
      v74 = v120;
    }

    sub_1ADDCEDE0(v75, &qword_1EB5BA460, &qword_1AE251020);
    v79 = v103;
    sub_1ADDCEE40(v74, v103, &qword_1EB5BA460, &qword_1AE251020);
    v80 = v109(v79, 1, v77);
    sub_1ADDCEDE0(v79, &qword_1EB5BA460, &qword_1AE251020);
    v15 = v113;
    v2 = v76;
    if (v80 != 1)
    {
      goto LABEL_35;
    }

    v122 = v11;
    v81 = v99;
    sub_1ADDCEE40(v113, v99, &qword_1EB5BA460, &qword_1AE251020);
    v82 = v109(v81, 1, v106) == 1;
    sub_1ADDCEDE0(v81, &qword_1EB5BA460, &qword_1AE251020);
    v14 = v133;
LABEL_41:
    sub_1ADDE5360(v15, type metadata accessor for RetainedMapRun);
    sub_1ADDE5360(v120, type metadata accessor for RetainedMapRun);
    v54 = &qword_1EB5BA148;
    sub_1ADDCEDE0(v14, &qword_1EB5BA148, &qword_1AE241B60);
    sub_1ADDCEDE0(v52, &qword_1EB5BA148, &qword_1AE241B60);
    v11 = v134;
    v55 = v134;
    if (v82)
    {
      goto LABEL_18;
    }

LABEL_9:
    ++v11;
    v14 = v55;
  }

  while (v11 < v128);
  result = v53[2];
  if (!result)
  {
    goto LABEL_49;
  }

LABEL_46:
  v11 = 0;
  v14 = (v53 + 2);
  v89 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v90 = *(v132 + 72);
  v134 = v89;
  while ((*(v53 + v89) & 0x8000000000000000) == 0)
  {
    ++v11;
    v89 += v90;
    if (result == v11)
    {
      goto LABEL_49;
    }
  }

  v21 = (v11 + 1);
  if (!__OFADD__(v11, 1))
  {
    if (v21 == result)
    {
      v21 = result;
LABEL_53:
      result = v11;
      if (v21 >= v11)
      {
        goto LABEL_54;
      }

      goto LABEL_93;
    }

    v95 = v90 + v89;
    v15 = &qword_1EB5BA148;
    while (v21 < result)
    {
      v96 = v116;
      sub_1ADDCEE40(v53 + v95, v116, &qword_1EB5BA148, &qword_1AE241B60);
      v2 = *v96;
      sub_1ADDCEDE0(v96, &qword_1EB5BA148, &qword_1AE241B60);
      if ((v2 & 0x8000000000000000) == 0)
      {
        if (v21 != v11)
        {
          if (v11 < 0)
          {
            goto LABEL_84;
          }

          v2 = *v14;
          if (v11 >= *v14)
          {
            goto LABEL_85;
          }

          v14 = v11 * v90;
          sub_1ADDCEE40(v53 + v134 + v11 * v90, v112, &qword_1EB5BA148, &qword_1AE241B60);
          if (v21 >= v2)
          {
            goto LABEL_86;
          }

          sub_1ADDCEE40(v53 + v95, v111, &qword_1EB5BA148, &qword_1AE241B60);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1ADF799F0(v53);
          }

          sub_1ADF92F3C(v111, v53 + v134 + v14, &qword_1EB5BA148, &qword_1AE241B60);
          if (v21 >= v53[2])
          {
            goto LABEL_87;
          }

          sub_1ADF92F3C(v112, v53 + v95, &qword_1EB5BA148, &qword_1AE241B60);
          *v119 = v53;
        }

        ++v11;
      }

      v21 = (v21 + 1);
      v14 = (v53 + 2);
      result = v53[2];
      v95 += v90;
      if (v21 == result)
      {
        goto LABEL_53;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE3C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDE3CD8(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = sub_1AE23BFCC();
  v28 = v1;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v18 = sub_1AE23BFCC();
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  return sub_1ADDE3E4C(&v18, &v27);
}

uint64_t sub_1ADDE3E4C(unint64_t *a1, void *a2)
{
  v2 = a1[1];
  *a1 ^= *a2;
  a1[1] = a2[1] ^ v2;
  return sub_1AE23BFBC();
}

uint64_t (*sub_1ADDE3EF8(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1ADDDE3A0(a2, v8, type metadata accessor for Replica);
  v6[5] = sub_1ADDFD8B4(v6, v9);
  return sub_1ADDE5784;
}

uint64_t sub_1ADDE3FD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  if (*(v3 + 16) && (v4 = sub_1ADDDF300(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_1ADDE4044(uint64_t a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - v3;
  v4 = type metadata accessor for FinalizedTimestamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v56 = type metadata accessor for FinalizedTimestampRange(0);
  v18 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = *v1;
  v24 = *(*v1 + 16);
  if (!v24)
  {
    goto LABEL_18;
  }

  v58 = a1;
  v49 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v50 = v18;
  v48 = *(v18 + 72);
  sub_1ADDDE470(v23 + v49 + v48 * (v24 - 1), &v47 - v21, type metadata accessor for FinalizedTimestampRange);
  sub_1ADDCEE40(v22, v14, &qword_1EB5BA460, &qword_1AE251020);
  v25 = *(v5 + 48);
  v26 = v25(v14, 1, v4);
  v52 = v22;
  if (v26 == 1)
  {
    sub_1ADDCEDE0(v14, &qword_1EB5BA460, &qword_1AE251020);
    v27 = 1;
    goto LABEL_6;
  }

  sub_1ADDD27F0(v14, v9, type metadata accessor for FinalizedTimestamp);
  v28 = sub_1AE23BFEC();
  (*(*(v28 - 8) + 16))(v17, v9, v28);
  v29 = *&v9[*(v4 + 20)];
  sub_1ADE0DCEC(v9, type metadata accessor for FinalizedTimestamp);
  v30 = *&v22[*(v56 + 20)];
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v27 = 0;
    *&v17[*(v4 + 20)] = v32;
LABEL_6:
    (*(v5 + 56))(v17, v27, 1, v4);
    v33 = v55;
    v34 = *(v54 + 48);
    sub_1ADDCEE40(v17, v55, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEE40(v58, v33 + v34, &qword_1EB5BA460, &qword_1AE251020);
    if (v25(v33, 1, v4) == 1)
    {
      sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
      if (v25((v33 + v34), 1, v4) == 1)
      {
        sub_1ADDCEDE0(v33, &qword_1EB5BA460, &qword_1AE251020);
        a1 = v58;
        goto LABEL_9;
      }
    }

    else
    {
      v40 = v53;
      sub_1ADDCEE40(v33, v53, &qword_1EB5BA460, &qword_1AE251020);
      if (v25((v33 + v34), 1, v4) != 1)
      {
        v44 = v51;
        sub_1ADDD27F0(v33 + v34, v51, type metadata accessor for FinalizedTimestamp);
        v18 = v50;
        if (*(v40 + *(v4 + 20)) == *(v44 + *(v4 + 20)))
        {
          v45 = v40;
          v46 = sub_1AE23BF8C();
          sub_1ADE0DCEC(v44, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DCEC(v45, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v33, &qword_1EB5BA460, &qword_1AE251020);
          a1 = v58;
          if (v46)
          {
LABEL_9:
            v5 = v23[2];
            v9 = *(a1 + *(v56 + 20));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_10;
            }

            goto LABEL_29;
          }
        }

        else
        {
          sub_1ADE0DCEC(v44, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
          sub_1ADE0DCEC(v40, type metadata accessor for FinalizedTimestamp);
          sub_1ADDCEDE0(v33, &qword_1EB5BA460, &qword_1AE251020);
          a1 = v58;
        }

        goto LABEL_17;
      }

      sub_1ADDCEDE0(v17, &qword_1EB5BA460, &qword_1AE251020);
      sub_1ADE0DCEC(v40, type metadata accessor for FinalizedTimestamp);
    }

    sub_1ADDCEDE0(v33, &qword_1EB5BA4A0, &unk_1AE253DA0);
    a1 = v58;
    v18 = v50;
LABEL_17:
    sub_1ADE0DCEC(v52, type metadata accessor for FinalizedTimestampRange);
LABEL_18:
    v41 = v57;
    sub_1ADDDE470(a1, v57, type metadata accessor for FinalizedTimestampRange);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1ADDE47F8(0, v23[2] + 1, 1, v23);
    }

    v43 = v23[2];
    v42 = v23[3];
    if (v43 >= v42 >> 1)
    {
      v23 = sub_1ADDE47F8((v42 > 1), v43 + 1, 1, v23);
    }

    v23[2] = v43 + 1;
    result = sub_1ADDD27F0(v41, v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v43, type metadata accessor for FinalizedTimestampRange);
    goto LABEL_23;
  }

  __break(1u);
LABEL_29:
  v23 = sub_1ADF79A40(v23);
LABEL_10:
  result = sub_1ADE0DCEC(v52, type metadata accessor for FinalizedTimestampRange);
  if (!v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v5 > v23[2])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = v23 + v49 + (v5 - 1) * v48;
  v37 = *(v56 + 20);
  v38 = *(v36 + v37);
  v31 = __OFADD__(v38, v9);
  v39 = &v9[v38];
  if (!v31)
  {
    *(v36 + v37) = v39;
LABEL_23:
    *v1 = v23;
    return result;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1ADDE4820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA450, &unk_1AE25B3B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1ADDE4890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Replica(0);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
  v37 = v4;
  v9 = sub_1AE23DCCC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v37)
      {
        sub_1ADDDE540(v24, v7, type metadata accessor for Replica);
        sub_1ADDE5634(*(v8 + 56) + 24 * v22, v38);
      }

      else
      {
        sub_1ADDDE3A0(v24, v7, type metadata accessor for Replica);
        sub_1ADDE56CC(*(v8 + 56) + 24 * v22, v38);
      }

      sub_1AE23E31C();
      sub_1AE23BFAC();
      MEMORY[0x1B26FCBD0](*&v7[*(v36 + 20)]);
      v25 = sub_1AE23E34C();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1ADDDE540(v7, *(v10 + 48) + v23 * v18, type metadata accessor for Replica);
      sub_1ADDE5634(v38, *(v10 + 56) + 24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

uint64_t sub_1ADDE4C34(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  swift_beginAccess();
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  swift_beginAccess();
  v7 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v7;
  swift_beginAccess();
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_1ADE42C78(v5, v6);

  sub_1ADE56F74(v8, v9, v10);

  swift_beginAccess();
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  *(v1 + 64) = v8;
  *(v1 + 72) = v9;
  *(v1 + 80) = v10;
  sub_1ADE73D6C(v11, v12, v13);
  return v1;
}

uint64_t sub_1ADDE4DE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1ADDE4E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1ADDE4E84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1ADDE4F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1ADDE4F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1ADDE4FF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE50B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5178(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v3;
  swift_beginAccess();
  v4 = *(a1 + 24);

  swift_beginAccess();
  *(v1 + 24) = v4;

  return v1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1ADDE52A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE5360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1ADDE53C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1ADDE5438(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1ADDE5498(uint64_t a1)
{
  v3 = *(*v1 + 280);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6 + 16;
  sub_1ADDE4E28(a1, v11);
  swift_dynamicCast();
  (*(*(v3 - 8) + 56))(v7, 0, 1, v3);
  v8 = *(*v1 + 296);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v8, v7, v4);
  return swift_endAccess();
}

void *Capsule.Ref.deinit()
{
  sub_1ADDCC35C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_1ADDE5728(uint64_t a1)
{
  v2 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADDE57B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ADDE5800(void *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_1ADDE5634(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1ADDE58E4(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1ADDE5118(a2, type metadata accessor for Replica);
    *v2 = v6;
  }

  else
  {
    sub_1ADDCEDE0(a1, &qword_1EB5BA468, &unk_1AE259210);
    sub_1ADEBECF0(a2, v7);
    sub_1ADDE5118(a2, type metadata accessor for Replica);
    return sub_1ADDCEDE0(v7, &qword_1EB5BA468, &unk_1AE259210);
  }

  return result;
}

uint64_t sub_1ADDE58E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1ADDD8A6C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1ADF6E86C();
      goto LABEL_7;
    }

    sub_1ADDE4890(v16, a3 & 1);
    v22 = sub_1ADDD8A6C(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1ADECD9E8(a2, v10, type metadata accessor for Replica);
      return sub_1ADDE21EC(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1AE23E27C();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + 24 * v13;

  return sub_1ADECDA50(a1, v20);
}

uint64_t sub_1ADDE5A8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE23BFEC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v6 + 16))(v8, a1, v5, v10);
  swift_beginAccess();
  sub_1ADDE5C74(v12, v8);
  swift_endAccess();
  (*(v6 + 8))(v12, v5);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  sub_1ADDFB0AC(a2, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v15;
  return swift_endAccess();
}

uint64_t sub_1ADDE5C74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1ADDE5F54(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1AE23CBBC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1ADDE5F54(&qword_1ED96A710, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1AE23CCBC();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1ADDF5700(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1ADDE5F54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ADDE5F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADDE6004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1ADEDC8DC(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

double sub_1ADDE609C@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = xmmword_1AE241910;
  return result;
}

void sub_1ADDE60B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v11 = 0;
  v6 = *a1 & 0xF000000000000007;
  if (v6 != 0xF000000000000007 && (*a1 & 0xC000000000000000) == 0x8000000000000000)
  {
    v11 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  sub_1AE1CA5AC(a1, a2, a3);
  sub_1AE23C4FC();
  v8 = v11;
  if (v4)
  {
  }

  else if (v11)
  {
    if (v6 != 0xF000000000000007)
    {
      sub_1AE23C39C();
      v8 = v11;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = *v5;
    *v5 = v9;
    sub_1ADE73AC8(v10);
  }
}

uint64_t sub_1ADDE61B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Reference._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE6240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1ADDE6B30(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        }

        else if (result == 2)
        {
          sub_1AE1C2A1C(a2, a1, a3, a4, sub_1AE1D0958, &type metadata for Proto_Reference.TypeEnum, MEMORY[0x1E69AAC48]);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1AE1C1620(a2, a1, a3, a4, sub_1AE1CAF38, &type metadata for Proto_Version);
            break;
          case 4:
            sub_1AE1C16C4(a2, a1, a3, a4);
            break;
          case 5:
            sub_1ADDE6004(a2, a1, a3, a4);
            break;
        }
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE63DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1CB7C4(1, v5, v6);
        sub_1AE23C4EC();
      }

      else if (result == 2)
      {
        sub_1AE23C40C();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE1CA5AC(a1, a2, a3);
  result = sub_1AE23C4EC();
  if (!v4)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      v8 = *(a2 + 16);

      v7(a2);
      return sub_1ADDDCE80(v7, v8);
    }
  }

  return result;
}

void sub_1ADDE6538(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

uint64_t CRDecoder.CRValueContainer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ADDE65D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1AE23C3EC();
    }
  }

  return result;
}

uint64_t sub_1ADDE6640@<X0>(void *a1@<X8>)
{
  if (qword_1ED967F98 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_1ED967FA0;
}

uint64_t sub_1ADDE66B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1ADDE66F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1ADDE6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADDE6E68(a2, a1, a3, a4);
        }

        else if (result == 4)
        {
          sub_1AE1C4FA4(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CA9C0, &type metadata for Proto_Set);
      }

      else if (result == 2)
      {
        sub_1ADDE6BBC(a2, a1, a3, a4);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

double sub_1ADDE6858@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

double sub_1ADDE68A4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1ADDE68CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v7 = v3;
          sub_1AE1CAF38(3, v5, v6);
LABEL_5:
          v3 = v7;
          sub_1AE23C4FC();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v7 = v3;
          sub_1AE1CB668(4, v5, v6);
          goto LABEL_5;
        }
      }

      else
      {
        if (result == 1)
        {
          v7 = v3;
          sub_1AE1CB7C4(1, v5, v6);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v7 = v3;
          sub_1AE1CB668(2, v5, v6);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADDE6B30(a2, a1, a3, a4, MEMORY[0x1E69AACA8]);
      }

      else if (result == 2)
      {
        sub_1AE1C2A1C(a2, a1, a3, a4, sub_1AE1CB7C4, &type metadata for Proto_Value, MEMORY[0x1E69AAD20]);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  a5(a2 + 16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1ADDE6BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1AE1C9AC0(v4, v5, v6);
  sub_1AE23C4FC();
  return swift_endAccess();
}

double sub_1ADDE6C50@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

void sub_1ADDE6C98(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
}

uint64_t sub_1ADDE6CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1AE23C45C();
            break;
          case 5:
            v7 = v3;
            sub_1AE1CB1F0(5, v5, v6);
            goto LABEL_19;
          case 6:
            sub_1AE1D0E20(6, v5, v6);
            sub_1AE23C3CC();
            break;
        }
      }

      else
      {
        v7 = v3;
        switch(result)
        {
          case 1:
            sub_1AE1CB1F0(1, v5, v6);
            sub_1AE23C4FC();
            break;
          case 2:
            sub_1AE23C4BC();
            break;
          case 3:
            sub_1AE1CB1F0(3, v5, v6);
LABEL_19:
            v3 = v7;
            sub_1AE23C4EC();
            break;
        }
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE6E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_beginAccess();
  sub_1AE1CB1F0(v4, v5, v6);
  sub_1AE23C4EC();
  return swift_endAccess();
}

void sub_1ADDE6EFC(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
}

uint64_t getEnumTagSinglePayload for Proto_Timestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ADDE6F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1AE23C4DC();
    }

    else if (result == 2)
    {
      sub_1AE23C43C();
    }
  }

  return result;
}

double sub_1ADDE6FC4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE241910;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1ADDE6FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1AE23C3DC();
        break;
      case 2:
        sub_1AE23C44C();
        break;
      case 1:
        sub_1AE23C40C();
        break;
    }
  }

  return result;
}

void *sub_1ADDE70B0(uint64_t a1, unint64_t a2)
{
  v44 = a1;
  v42 = sub_1AE23BFEC();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v43);
LABEL_10:
      v9 = v8 / 16;
      goto LABEL_11;
    }

LABEL_8:
    LODWORD(v8) = HIDWORD(v44) - v44;
    if (__OFSUB__(HIDWORD(v44), v44))
    {
      goto LABEL_50;
    }

    v8 = v8;
    goto LABEL_10;
  }

  v9 = 0;
  if (v7 == 2)
  {
    v11 = *(v44 + 16);
    v10 = *(v44 + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  if (*(MEMORY[0x1E69E7CC0] + 16) <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v14 = sub_1ADDE4ECC(0, v13, 0, MEMORY[0x1E69E7CC0]);
  if (v9 < 0)
  {
    goto LABEL_49;
  }

  v15 = v14;
  v39[1] = v2;
  if (!v9)
  {
    return v15;
  }

  v16 = 0;
  v40 = v6;
  v41 = v4 + 32;
  while (1)
  {
    v17 = sub_1AE23BE7C();
    v20 = v17;
    v21 = v18;
    v22 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      break;
    }

    if (v22)
    {
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_45;
      }

      if (HIDWORD(v17) - v17 != 16)
      {
LABEL_42:
        sub_1ADE42E40(v17, v18, v19);
        swift_allocError();
        *v38 = xmmword_1AE241D20;
        *(v38 + 16) = 0;
        swift_willThrow();
        sub_1ADDCC35C(v20, v21);

        return v15;
      }
    }

    else if (BYTE6(v18) != 16)
    {
      goto LABEL_42;
    }

LABEL_27:
    if (v22 == 2)
    {
      v31 = *(v17 + 16);
      v32 = sub_1AE23BB7C();
      if (!v32)
      {
        goto LABEL_51;
      }

      v33 = v32;
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v31, v34))
      {
        goto LABEL_47;
      }

      v35 = v31 - v34 + v33;
      sub_1AE23BB9C();
      if (!v35)
      {
        goto LABEL_52;
      }

LABEL_37:
      v6 = v40;
      goto LABEL_38;
    }

    if (v22 == 1)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_46;
      }

      v26 = sub_1AE23BB7C();
      if (!v26)
      {
        goto LABEL_53;
      }

      v27 = v26;
      v28 = sub_1AE23BBAC();
      if (__OFSUB__(v20, v28))
      {
        goto LABEL_48;
      }

      v29 = v20 - v28 + v27;
      result = sub_1AE23BB9C();
      if (!v29)
      {
        goto LABEL_54;
      }

      goto LABEL_37;
    }

LABEL_38:
    sub_1AE23BFBC();
    sub_1ADDCC35C(v20, v21);
    v37 = v15[2];
    v36 = v15[3];
    if (v37 >= v36 >> 1)
    {
      v15 = sub_1ADDE4ECC((v36 > 1), v37 + 1, 1, v15);
    }

    v15[2] = v37 + 1;
    (*(v4 + 32))(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v37, v6, v42);
    v16 += 16;
    if (!--v9)
    {
      return v15;
    }
  }

  if (v22 != 2)
  {
    goto LABEL_42;
  }

  v24 = *(v17 + 16);
  v23 = *(v17 + 24);
  v12 = __OFSUB__(v23, v24);
  v25 = v23 - v24;
  if (!v12)
  {
    if (v25 != 16)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_45:
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
  sub_1AE23BB9C();
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1AE23BB9C();
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t sub_1ADDE74FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1AE23E00C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1ADDE7620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AE23C38C();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_1AE1CB668(2, v5, v6);
          sub_1AE23C4EC();
          break;
        case 1:
LABEL_10:
          sub_1AE23C46C();
          break;
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE7704@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Value._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE77B4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 40) = *(a2 + 40);

  swift_beginAccess();
  v6 = *(a2 + 48);
  swift_beginAccess();
  *(v2 + 48) = v6;

  *(v2 + 56) = *(a2 + 56);
  *(v2 + 64) = a1;

  *(v2 + 57) = *(a2 + 57);
  return v2;
}

void sub_1ADDE78C8()
{
  v1 = *(*(v0 + 16) + 64);
  if (*(v0 + 32))
  {
    if (v1)
    {

      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v1 + 16);
    if ((~v3 & 0xF000000000000007) != 0 && (v3 & 0xF000000000000000) == 0x3000000000000000)
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *(v5 + 16))
    {

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1ADDE79C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Register._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

void sub_1ADDE79F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 8)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA450(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x4000000000000000;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE51B48(v11);
  }
}

uint64_t storeEnumTagSinglePayload for Proto_Timestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1ADDE7B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v11 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if (v6 >> 60)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0xF000000000000007;
  }

  if (!v8)
  {
    v11 = *(v6 + 16);
  }

  sub_1AE1CAC7C(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v11)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v11;
    v10 = *(v5 + 16);
    *(v5 + 16) = v9;
    sub_1ADE52174(v10);
  }
}

uint64_t sub_1ADDE7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1AE1BEE18(a2, a1, a3, a4);
        }

        else if (result == 4)
        {
          sub_1AE1C16C4(a2, a1, a3, a4);
        }
      }

      else if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CB1F0, &type metadata for Proto_Timestamp);
      }

      else if (result == 2)
      {
        sub_1AE1C1620(a2, a1, a3, a4, sub_1AE1CB7C4, &type metadata for Proto_Value);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADDE7E08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Proto_Optional._StorageClass();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1ADDE7E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *v3;
    type metadata accessor for Proto_Optional._StorageClass();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    swift_beginAccess();
    v11 = *(v9 + 16);
    swift_beginAccess();
    *(v10 + 16) = v11;

    *v3 = v10;
    v8 = v10;
  }

  return sub_1ADDE7F20(v8, a1, a2, a3);
}

uint64_t sub_1ADDE7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23C38C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1AE1C4F00(a2, a1, a3, a4, sub_1AE1CB7C4, &type metadata for Proto_Value);
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

void sub_1ADDE7FC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t (*a8)(void *, __n128)@<X7>, void *a9@<X8>)
{
  v58 = a8;
  v50 = a7;
  v51 = a3;
  v9 = a5;
  v62 = a4;
  v12 = a9;
  v49 = a6;
  v13 = *(*(a6 + 8) + 8);
  (*(v13 + 48))(a9, a5, v13);
  v61 = (*(v13 + 16))(v9, v13);
  v14 = *(a1 + 16);

  if (v14)
  {
    v15 = 0;
    v56 = a2 + 32;
    v57 = a1 + 32;
    v55 = v13;
    v53 = v13 + 40;
    v48 = v14 - 1;
    v52 = MEMORY[0x1E69E7CC8];
    v59 = v12;
    v60 = v9;
    v54 = v14;
    while (v15 < *(a1 + 16))
    {
      if (v15 >= *(a2 + 16))
      {
        goto LABEL_25;
      }

      v16 = *(v57 + 8 * v15);
      v17 = *(v56 + 8 * v15);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v18 = v62;

      v19 = sub_1ADDE77B4(v17, v18);

      v21 = *(v19 + 32);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v16 >= v22;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {

        v40 = swift_bridgeObjectRelease_n();
        sub_1ADE42E40(v40, v41, v42);
        v43 = swift_allocError();
        *v44 = 0xD000000000000015;
        *(v44 + 8) = 0x80000001AE25FCF0;
        *(v44 + 16) = 0;
        v64 = v43;
        swift_willThrow();

        (*(*(v60 - 8) + 8))(v59);
        return;
      }

      v24 = v21 + 16 * v16;
      v25 = *(v24 + 32);
      v26 = *(v24 + 40);
      v66[0] = v25;
      v66[1] = v26;
      MEMORY[0x1EEE9AC00](v20);
      v47[2] = v66;

      v27 = v64;
      if (sub_1ADDE8768(v58, v47, v61))
      {
        v64 = v27;
        v37 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66[0] = v37;
        sub_1ADDE88A8(v19, v25, v26, isUniquelyReferenced_nonNull_native);

        v52 = v66[0];
        v39 = v48 == v15++;
        v12 = v59;
        v9 = v60;
        if (v39)
        {
          goto LABEL_20;
        }
      }

      else
      {

        AnyCRDT.init(from:)(v28, &v67);
        v64 = v27;
        v29 = v59;
        if (v27)
        {
          v45 = v60;

          swift_bridgeObjectRelease_n();
          (*(*(v45 - 8) + 8))(v29);
          return;
        }

        ++v15;
        v30 = a2;
        v31 = a1;
        v32 = v67;
        v63 = (*(v55 + 40))(v66, v60);
        v34 = v33;
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v34;
        *v34 = 0x8000000000000000;
        v36 = v32;
        a1 = v31;
        a2 = v30;
        sub_1ADEBF524(v36, v25, v26, v35);

        *v34 = v65;

        v63(v66, 0);

        if (v54 == v15)
        {
          v12 = v59;
          v9 = v60;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC8];
LABEL_20:

    swift_bridgeObjectRelease_n();
    v46 = v64;
    v50(v52, v9, v49);
    v64 = v46;
    if (v46)
    {
      (*(*(v9 - 8) + 8))(v12, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1ADDE84CC(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v2 <= 0x3F)
  {
    result = sub_1AE23BFEC();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ADDE8598(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1ADDE8628()
{
  v1 = v0;
  v2 = qword_1ED96F278;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v3 = v0 + qword_1ED96F250;
  v4 = sub_1AE23BFEC();
  (*(*(v4 - 8) + 16))(v3, v1 + v2, v4);
  *(v3 + *(type metadata accessor for FinalizedTimestamp(0) + 20)) = 0;

  return sub_1ADDCC3B0();
}

uint64_t sub_1ADDE8768(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1ADDE8850(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AE23E00C() & 1;
  }
}

void sub_1ADDE88A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDD7A10(a2, a3);
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
      sub_1ADF6F78C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADDE89F0(v16, a4 & 1);
    v11 = sub_1ADDD7A10(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1ADDE8C98(v11, a2, a3, a1, v21);
  }
}

void sub_1ADDE89F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7B8, &qword_1AE24CEC8);
  v35 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1AE23E31C();
      sub_1AE23CDAC();
      v25 = sub_1AE23E34C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
}

unint64_t sub_1ADDE8C98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1ADDE8D20(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v7;
  swift_beginAccess();
  v8 = *(a1 + 56);

  swift_beginAccess();
  *(v1 + 56) = v8;

  return v1;
}

void *CRDictionary.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  type metadata accessor for CRDictionaryRef(0, v9);
  swift_allocObject();
  result = sub_1ADDE8628();
  *a7 = result;
  return result;
}

uint64_t static CRStruct_2.fieldKeys.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 48))(&v7);
  v6 = v7;
  v2 = v8;
  v3 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  *(v4 + 32) = v6;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRStruct_2.decode(fields:)(Swift::OpaquePointer fields)
{
  v4 = v3;
  v5 = v1;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = v28 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v7 + 48))(v34, v5, v7, v10);
  v11 = v34[1];
  v34[7] = v34[5];
  if (!*(fields._rawValue + 2))
  {
    goto LABEL_11;
  }

  v32 = v34[4];
  v12 = v34[0];
  v29 = v34[3];

  v13 = sub_1ADDD7A10(v12, v11);
  v14 = v11;
  v16 = v15;
  v33 = v14;

  if (v16)
  {
    v17 = *(*(fields._rawValue + 7) + 8 * v13);
    v18 = v4;
    v19 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
    v28[0] = *(v19 + 8);
    swift_retain_n();

    v28[1] = v17;
    (v28[0])(v17, v9, v19);
    v4 = v18;
    if (v18)
    {

LABEL_10:

      return;
    }

    swift_setAtWritableKeyPath();
  }

  if (*(fields._rawValue + 2))
  {
    v20 = v32;

    v21 = sub_1ADDD7A10(v29, v20);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(fields._rawValue + 7) + 8 * v21);
      v25 = AssociatedTypeWitness;
      v26 = *(*(swift_getAssociatedConformanceWitness() + 16) + 8);
      v27 = *(v26 + 8);
      swift_retain_n();

      v27(v24, v25, v26);
      if (v4)
      {

        goto LABEL_10;
      }

      swift_setAtWritableKeyPath();
    }

    else
    {
    }
  }

  else
  {
LABEL_11:
  }
}

void sub_1ADDE935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v12 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 7)
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  sub_1AE1CA5AC(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
  }

  else if (v12)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = v9 | 0x3000000000000004;
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;
    sub_1ADE51B48(v11);
  }
}

uint64_t sub_1ADDE9484()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1ADDE94BC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_9;
    }

    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
LABEL_8:
    if (v9 != v10)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v11 = 0xD000000000000016;
    *(v11 + 8) = 0x80000001AE25FC80;
    *(v11 + 16) = 0;
    swift_willThrow();

    sub_1ADDCC35C(a2, a3);
    return;
  }

  if (v8)
  {
    v9 = a2;
    v10 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:

  sub_1ADDD86D8(a2, a3);

  sub_1ADDCC35C(a2, a3);
  *a5 = a2;
  a5[1] = a3;
}

uint64_t sub_1ADDE95D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  type metadata accessor for CRDecodeContext.DecodingReference(0, a4, a5, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  swift_beginAccess();
  sub_1ADDD86D8(v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v5[2];
  v5[2] = 0x8000000000000000;
  sub_1ADDE9748(v9, v7, v8, isUniquelyReferenced_nonNull_native);
  v5[2] = v12;
  swift_endAccess();
  return (*(*v5 + 184))(a3);
}

void sub_1ADDE9748(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1ADDDE7CC(a2, a3);
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
      sub_1ADF6F03C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1ADDE9894(v16, a4 & 1);
    v11 = sub_1ADDDE7CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1AE23E27C();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1ADDE8C98(v11, a2, a3, a1, v21);

    sub_1ADDD86D8(a2, a3);
  }
}

void sub_1ADDE9894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA060, &qword_1AE241840);
  v6 = sub_1AE23DCCC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v31 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_1ADDD86D8(v31, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_1AE23E31C();
      sub_1AE23BECC();
      v22 = sub_1AE23E34C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v16 = v31;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v16 = v31;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1ADDE9B40(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2F8, &unk_1AE2422B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v70 = &v61 - v17;
  v18 = sub_1AE23BFEC();
  MEMORY[0x1EEE9AC00](v18);
  v73 = *a5;
  v24 = v73;
  if ((~v73 & 0xF000000000000007) == 0 || (v73 & 0xC000000000000000) != 0x8000000000000000)
  {
    sub_1ADE42E40(v19, v20, v21);
    swift_allocError();
    *v31 = 0xD000000000000019;
    *(v31 + 8) = 0x80000001AE260230;
    *(v31 + 16) = 0;
    swift_willThrow();
    return;
  }

  v66 = a7;
  v67 = a8;
  v68 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v23;
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v25 = v19;
  v26 = a5[8];
  v27 = a5[9];
  if (v26)
  {
    v28 = a5[8];
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  if (v26)
  {
    v29 = a5[9];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADDCEE40(&v73, v71, &qword_1EB5BA300, &qword_1AE25A270);
  sub_1ADE42C78(v26, v27);

  sub_1ADDD6748(v28, v29, v8, v72);
  if (v9)
  {
    sub_1ADDCEDE0(&v73, &qword_1EB5BA300, &qword_1AE25A270);
    return;
  }

  v32 = v72[1];
  v34 = a5[5];
  v33 = a5[6];
  v35 = v33 >> 62;
  v61 = v72[0];
  v62 = v25;
  if ((v33 >> 62) > 1)
  {
    if (v35 != 2)
    {
      v37 = v25;
      sub_1ADDCC35C(v34, v33);
      v36 = v69;
      goto LABEL_25;
    }

    v39 = *(v34 + 16);
    v38 = *(v34 + 24);
    v40 = v38 - v39;
    if (!__OFSUB__(v38, v39))
    {
LABEL_22:
      sub_1ADDD86D8(v34, v33);
      if (v40 != 16)
      {
        goto LABEL_15;
      }

LABEL_23:
      v41 = v70;
      sub_1ADDFE348(v34, v33, v30);
      v42 = v62;
      v44 = v69;
      (*(v69 + 56))(v41, 0, 1, v62);
      (*(v44 + 32))(v68, v41, v42);
      goto LABEL_29;
    }

    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v34), v34))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v40 = HIDWORD(v34) - v34;
    goto LABEL_22;
  }

  if (v35)
  {
    goto LABEL_20;
  }

  if (BYTE6(v33) == 16)
  {
    goto LABEL_23;
  }

LABEL_15:
  sub_1ADDCC35C(v34, v33);
  v36 = v69;
  v37 = v62;
LABEL_25:
  v43 = v70;
  (*(v36 + 56))(v70, 1, 1, v37);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if ((*(v36 + 48))(v43, 1, v37) != 1)
  {
    sub_1ADDCEDE0(v43, &qword_1EB5BA2F8, &unk_1AE2422B0);
  }

LABEL_29:
  v45 = MEMORY[0x1E69E7CC0];
  v46 = (v24 & 0x3FFFFFFFFFFFFFFFLL);
  swift_beginAccess();
  v47 = v46[8];
  v48 = v46[9];
  v49 = v46[10];
  if (v47)
  {
    v45 = v46[8];
    v50 = v46[9];
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = v46[10];
  }

  else
  {
    v51 = 0xC000000000000000;
  }

  sub_1ADE56F74(v47, v48, v49);
  sub_1ADDE94BC(v45, v50, v51, v71);
  v52 = v61;
  if (!*(v8 + 16))
  {
    goto LABEL_39;
  }

  v54 = v71[0];
  v53 = v71[1];

  sub_1ADDE95D4(v66, v71, v8, v66, v67);

  v56 = v63;
  v55 = v64;
  *v63 = v54;
  v56[1] = v53;
  *v55 = v52;
  v55[1] = v32;
  v58 = v68;
  v57 = v69;
  v59 = v62;
  (*(v69 + 16))(v65, v68, v62);
  if (*(v8 + 16))
  {
    v60 = *(v57 + 8);

    v60(v58, v59);
    sub_1ADDCEDE0(&v73, &qword_1EB5BA300, &qword_1AE25A270);
    swift_beginAccess();

    return;
  }

LABEL_40:
  __break(1u);
}

void sub_1ADDEA1AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  swift_beginAccess();
  while (1)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 16);
    v9 = 1 << *(v8 + 32);
    v10 = v8 + 64;
    while (1)
    {
      v11 = *(v10 + 8 * v7);
      if (v11)
      {
        break;
      }

      ++v7;
      v6 -= 64;
      if ((v9 + 63) >> 6 == v7)
      {
        return;
      }
    }

    v12 = __clz(__rbit64(v11));
    if (v12 - v9 == v6)
    {
      break;
    }

    if (-v6 < 0 || (v13 = v12 - v6, v13 >= v9))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      sub_1AE23E27C();
      __break(1u);
      return;
    }

    if (((*(v10 + 8 * (v7 & 0x3FFFFFFFFFFFFFFLL)) >> v12) & 1) == 0)
    {
      goto LABEL_28;
    }

    v14 = (*(v8 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v8 + 56) + 8 * v13);
    swift_retain_n();
    sub_1ADDD86D8(v15, v16);
    sub_1ADDD86D8(v15, v16);
    sub_1ADDCC35C(v15, v16);

    sub_1ADDCC35C(v15, v16);
    v18 = v17[2];
    v19 = v17[3];
    swift_beginAccess();
    sub_1ADDEA5BC(v18, v19);
    swift_endAccess();

    v20 = v3;
    (*(*v17 + 96))(v59, v4, a1);
    if (v3)
    {

      return;
    }

    v21 = v60;
    if (v60)
    {
      v53 = a1;
      v22 = v59[0];
      v56 = v59[1];
      v23 = v61;
      v24 = v62;
      v25 = v63;
      v26 = v17[2];
      v27 = v17[3];
      swift_beginAccess();
      v57 = v22;

      v58 = v21;

      v55 = v23;
      v28 = v27;

      v54 = v25;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v4 + 24);
      v30 = v64;
      *(v4 + 24) = 0x8000000000000000;
      v32 = sub_1ADDDE7CC(v26, v27);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_29;
      }

      v36 = v31;
      if (v30[3] >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v64;
          if (v31)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1ADF706B8();
          v39 = v64;
          if (v36)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_1ADE17954(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_1ADDDE7CC(v26, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_31;
        }

        v32 = v37;
        v39 = v64;
        if (v36)
        {
LABEL_20:
          v40 = (v39[7] + 48 * v32);
          v41 = v56;
          v42 = v57;
          *v40 = v57;
          v40[1] = v56;
          v43 = v58;
          v44 = v55;
          v40[2] = v58;
          v40[3] = v55;
          v45 = v54;
          v40[4] = v24;
          v40[5] = v54;

          goto LABEL_24;
        }
      }

      v39[(v32 >> 6) + 8] |= 1 << v32;
      v46 = (v39[6] + 16 * v32);
      *v46 = v26;
      v46[1] = v28;
      v47 = (v39[7] + 48 * v32);
      v42 = v57;
      *v47 = v57;
      v47[1] = v56;
      v43 = v58;
      v48 = v28;
      v44 = v55;
      v47[2] = v58;
      v47[3] = v55;
      v45 = v54;
      v47[4] = v24;
      v47[5] = v54;
      v49 = v39[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_30;
      }

      v39[2] = v51;
      v52 = v26;
      v41 = v56;
      sub_1ADDD86D8(v52, v48);
LABEL_24:
      *(v4 + 24) = v39;
      swift_endAccess();
      sub_1ADDDC21C(v42, v41, v43, v44, v24, v45);

      v3 = v20;
      a1 = v53;
    }

    else
    {
    }
  }
}

uint64_t sub_1ADDEA5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1ADDDE7CC(a1, a2);
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
    sub_1ADF6F03C();
    v8 = v11;
  }

  sub_1ADDCC35C(*(*(v8 + 48) + 16 * v6), *(*(v8 + 48) + 16 * v6 + 8));
  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1ADDEA654(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_1ADDEA654(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AE23D8FC() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_1AE23E31C();
      sub_1ADDD86D8(v10, v11);
      sub_1AE23BECC();
      v12 = sub_1AE23E34C();
      sub_1ADDCC35C(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1ADDEA80C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = v2[3];
  v8 = v2[2];
  v9 = v6;
  v7 = *(*a1 + 216);
  sub_1ADDD86D8(v8, v6);
  v7(v5, &v8, a2, v5, *(v4 + 120));
  sub_1ADDCC35C(v8, v9);
}

void sub_1ADDEA8E8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v43 = a4;
  v45 = a3;
  v41 = *(a3 - 8);
  *&v42 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v17 = *v15;
  v16 = v15[1];
  swift_beginAccess();
  v18 = *(v5 + 40);
  if (!*(v18 + 16))
  {
    goto LABEL_6;
  }

  v19 = sub_1ADDDE7CC(v17, v16);
  if ((v20 & 1) == 0)
  {

LABEL_6:
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return;
  }

  v21 = (*(v18 + 56) + 24 * v19);
  v22 = *v21;
  v23 = v21[1];
  v38 = v7;
  v39 = v22;
  v24 = v21[2];

  v40 = v23;

  swift_beginAccess();
  sub_1ADDD86D8(v17, v16);
  sub_1AE1D1918(0, 0, 0, v17, v16);
  swift_endAccess();
  type metadata accessor for CRDecoder();
  swift_allocObject();

  v25 = sub_1ADDE77B4(v24, a2);

  v26 = *(*(v43 + 16) + 8);
  v27 = *(v26 + 8);

  v29 = v38;
  v27(v28, v45, v26);
  if (v29)
  {
  }

  else
  {
    v30 = v39;

    v31 = v40;

    sub_1ADDD6748(v30, v31, v25, &v44);
    v42 = v44;
    v32 = v41;
    v33 = v45;
    (*(v41 + 16))(v11, v14, v45);
    sub_1ADDD9FE4(v11, v33, &v44);
    v43 = v44;
    v34 = MEMORY[0x1E69E7CC0];
    v38 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v37 = sub_1ADDD9ECC(v34);
    v36 = sub_1ADDDA5BC(v34);
    sub_1ADDD9ECC(v34);

    (*(v32 + 8))(v14, v33);

    swift_bridgeObjectRelease_n();
    *a5 = v43;
    *(a5 + 8) = 0;
    *(a5 + 16) = v42;
    v35 = v37;
    *(a5 + 32) = v38;
    *(a5 + 40) = v35;
  }
}

uint64_t CROrderedTree.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TreeNode(0, a1, a2, a3);
  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary.init()(a1, v8, a2, a3, &off_1F23C93F8, WitnessTable, v18);
  v10 = v18[1];
  *a4 = v18[0];
  a4[1] = v10;
  v11 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v12 = sub_1AE18F13C(v11, a1, a3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  a4[3] = v12;
  v13 = sub_1AE23D11C();
  swift_getTupleTypeMetadata2();
  v14 = sub_1AE23D05C();
  v15 = swift_getWitnessTable();
  v16 = sub_1ADDEAF38(v14, v8, v13, v15);

  a4[2] = v16;
  return result;
}

uint64_t sub_1ADDEAE48(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void CROrderedDictionary.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  CRDictionary.init()(a1, a2, a3, a4, a5, a6, &v11);
  a7[1] = v11;
  type metadata accessor for CROrderedSetElement(0, a1, a3, a4);
  CRSequence.init()(&v11);
  *a7 = v11;
}

unint64_t sub_1ADDEAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1AE23D0AC())
  {
    sub_1AE23DCEC();
    v13 = sub_1AE23DCDC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1AE23D0AC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1AE23D08C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AE23DAAC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1ADDFFB6C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1ADDEB224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

double CROrderedTree.init(from:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for TreeNode(0, a2, a3, a4);

  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, WitnessTable, v16);
  if (v5)
  {
  }

  else
  {
    v15[0] = v16[0];
    v15[1] = v16[1];
    sub_1ADE141D4(v15, a2, a3, a4, &v17);

    v14 = v19;
    *a5 = v17;
    result = *&v18;
    *(a5 + 8) = v18;
    *(a5 + 24) = v14;
  }

  return result;
}

void CROrderedDictionary.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  if (*(a1 + 64))
  {
    v21 = a8;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADDEB4BC(a2, a3, a4, a5, a6, a7, v20);
    swift_setDeallocating();

    if (!v8)
    {
      v17 = v20[1];
      v18 = v21;
      *v21 = v20[0];
      v18[1] = v17;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v19 = 0xD000000000000014;
    *(v19 + 8) = 0x80000001AE25FB50;
    *(v19 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1ADDEB4BC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1ADDE78C8();
  v15 = *(v14 + 16);
  if ((~v15 & 0xF000000000000007) != 0 && (v15 & 0xF000000000000000) == 0x8000000000000000)
  {
    v17 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v17 = &off_1ED967FA0;
  }

  v18 = *v17;

  v19 = *(v7 + 16);

  sub_1ADDEB5C8(v18, v19, a1, a2, a3, a4, a5, a6, a7);
}

void sub_1ADDEB5C8(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v82 = a7;
  v78 = a9;
  v16 = swift_allocObject();
  v83 = v16;
  *(v16 + 16) = 0;
  v79 = (v16 + 16);
  swift_beginAccess();
  v17 = a1[2];
  v106 = a1[1];
  *v107 = v17;
  v18 = a1[4];
  *&v107[16] = a1[3];
  *&v107[32] = v18;
  v108 = a1[5];
  v19 = *(&v106 + 1);
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a2;
  v81 = a1;
  if (*(&v106 + 1))
  {
    v21 = v106;
    v20 = *v107;
    v22 = *&v107[8];
    v23 = *&v107[24];
    v24 = v108;
    v25 = v107[40];
  }

  else
  {
    v21 = 0;
    v22 = 0uLL;
    v25 = 1;
    v19 = MEMORY[0x1E69E7CC0];
    v23 = 0uLL;
    v24 = 0uLL;
  }

  v92 = v25 & 1;
  v101[0] = v21;
  v101[1] = v19;
  v101[2] = v20;
  v102 = v22;
  v103 = v23;
  v104 = v25 & 1;
  v105 = v24;
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v27 = a4;
  v28 = v82;
  v26[6] = v82;
  v26[7] = a8;
  v29 = a8;
  v30 = a3;
  v31 = a5;
  v26[8] = v83;
  sub_1ADDCEE40(&v106, &v86, &qword_1EB5BCC30, &qword_1AE2580D0);
  v32 = v109;

  v70[19] = v29;
  sub_1ADE10DC0(v101, v32, sub_1ADE13074, v26, v30, v27, a5, a6, &v93, v28);
  if (v80)
  {

LABEL_13:

    return;
  }

  v76 = 0;
  v77 = v29;
  v75 = a6;
  v80 = v93;
  swift_beginAccess();
  if (!*v79)
  {
    __break(1u);
    return;
  }

  v86.i64[0] = *v79;
  v33 = v81;
  swift_beginAccess();
  v84[0] = *(v33 + 25);
  v34 = v82;
  type metadata accessor for CRDictionaryElement(255, v27, v82, v35);
  v36 = v30;
  swift_getTupleTypeMetadata2();
  v37 = v27;
  v38 = sub_1AE23D11C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BCC38, &qword_1AE251830);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1ADE13A44();
  v42 = sub_1AE23E25C();
  v74 = &v71;
  v79 = v90;
  v89[1] = v90;
  v89[2] = v91;
  v73 = v91;
  MEMORY[0x1EEE9AC00](v42);
  v70[12] = v36;
  v70[13] = v37;
  v43 = v75;
  v70[14] = v31;
  v70[15] = v75;
  v70[16] = v34;
  v70[17] = v77;
  v70[18] = v109;
  MEMORY[0x1EEE9AC00](v44);
  v72 = v70;
  v70[2] = v36;
  v70[3] = v45;
  v70[4] = v31;
  v70[5] = v43;
  v70[6] = v34;
  v70[7] = v46;
  v70[8] = sub_1ADE1419C;
  v70[9] = v47;
  v86.i64[0] = v38;
  v86.i64[1] = v39;
  v87.i64[0] = WitnessTable;
  v87.i64[1] = v41;
  v48 = sub_1AE23DA9C();
  v49 = type metadata accessor for CROrderedSetElement(0, v36, v31, v43);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v51 = swift_getWitnessTable();
  v52 = v76;
  v53 = sub_1ADE13AA8(sub_1AE017F50, v72, v48, v49, v50, v51, MEMORY[0x1E69E7288], v89);
  if (v52)
  {

    goto LABEL_13;
  }

  v54 = v53;

  v55 = v81;
  swift_beginAccess();
  v56 = v55[11];
  *&v88[32] = v55[10];
  *&v88[48] = v56;
  *&v88[64] = v55[12].i64[0];
  v57 = v55[7];
  v86 = v55[6];
  v87 = v57;
  v58 = v55[9];
  *v88 = v55[8];
  *&v88[16] = v58;
  v59 = v86.u64[1];
  if (v86.i64[1])
  {
    v60 = v87;
    v61 = v86.i64[0];
    v62 = *v88;
    v63 = *&v88[8];
    v64 = *&v88[24];
    v65 = *&v88[40];
    v66 = *&v88[56];
  }

  else
  {
    v61 = 0;
    v62 = MEMORY[0x1E69E7CC0];
    v60 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v63 = 0uLL;
    v59 = 0xE000000000000000;
    v64 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
  }

  v67 = v109;
  v94[0] = v61;
  v94[1] = v59;
  v95 = v60;
  v96 = v62;
  v97 = v63;
  v98 = v64;
  v99 = v65;
  v100 = v66;
  sub_1ADDCEE40(&v86, v84, &qword_1EB5BCC28, &unk_1AE251820);
  sub_1ADE0C954(v94, v54, v67, v49, &off_1F23C8BA0, &v85);

  v68 = v78;
  v69 = v80;
  *v78 = v85;
  v68[1] = v69;
}

uint64_t sub_1ADDEBB98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ADDEBBD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1ADDEBC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA098, &qword_1AE241878);
  v35 = v4;
  v6 = sub_1AE23DCCC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1ADDEE390(v22, v36);
      }

      else
      {
        sub_1ADDE4E28(v22, v36);
        v23 = v21;
      }

      sub_1AE23CD0C();
      sub_1AE23E31C();
      sub_1AE23CDAC();
      v24 = sub_1AE23E34C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_1ADDEE390(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

uint64_t sub_1ADDEBED8()
{
  result = sub_1AE23CCDC();
  qword_1EB5B8BF8 = result;
  return result;
}

uint64_t sub_1ADDEBF04()
{
  v1 = v0;
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v7 = sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
  v18[3] = v7;
  v18[0] = v6;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v18, v7);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1AE23DFFC();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(_TtC9Coherence19CRTTMergeableString);
  v15 = sub_1AE23BF7C();
  v16 = [v14 initWithStorage:v13 uuid:{v15, v18[0]}];
  swift_unknownObjectRelease();

  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v16;
  return v1;
}

void sub_1ADDEC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = 0;
  v14 = 0;
  v6 = *(a1 + 16);
  v7 = v6 & 0xF000000000000007;
  if ((v6 & 0xF000000000000007) != 0xF000000000000007 && ((v6 >> 59) & 0x1E | (v6 >> 2) & 1) == 13)
  {
    v9 = v6 & 0xFFFFFFFFFFFFFFBLL;
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);
  }

  sub_1AE1CA198(a1, a2, a3);
  sub_1AE23C4FC();
  if (v4)
  {
    sub_1ADE42CB8(v13, v14);
  }

  else if (v13)
  {
    if (v7 != 0xF000000000000007)
    {
      sub_1AE23C39C();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
    v11 = v10 | 0x6000000000000004;
    v12 = *(v5 + 16);
    *(v5 + 16) = v11;
    sub_1ADE51B48(v12);
  }
}

char *sub_1ADDEC34C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_1ADDEC550()
{
  v10 = sub_1AE23D68C();
  v1 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1ADDEC7C0(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v7;
  v9[1] = sub_1ADDCED94();
  sub_1AE23C8AC();
  v11 = v6;
  sub_1ADE89268(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  *(v0 + 40) = sub_1AE23D6CC();
  return v0;
}

unint64_t sub_1ADDEC7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA030, &qword_1AE241810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA038, &qword_1AE241818);
    v7 = sub_1AE23DCDC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1ADDCEE40(v9, v5, &qword_1EB5BA030, &qword_1AE241810);
      result = sub_1ADDD8A6C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Replica(0);
      sub_1ADE5223C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Replica);
      result = sub_1ADDE5634(&v5[v8], v7[7] + 24 * v13);
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

uint64_t Coherence_namespace::decodeSubstrings(unsigned int a1, unsigned int a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7)
{
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  if (a1)
  {
    v56 = a4;
    v10 = 0;
    v11 = 0;
    v54 = a1;
    v50 = a1;
    while (1)
    {
      [v9 decodeSubstring:v10];
      *&uu[16] = 0;
      uuid_clear(uu);
      *&uu[20] = 0;
      v12 = [v9 substringCharReplicaWithError:a7];
      if (!v12)
      {
        break;
      }

      Coherence_namespace::TopoReplica::TopoReplica(&v61, v12, 0);
      *uu = v61;
      *&uu[16] = v62;
      *&uu[20] = [v9 substringCharClock];
      *&uu[24] = [v9 substringLength];
      v13 = [v9 substringAddedByCount];
      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v15 = [v9 substringAddedByReplica:i withError:a7];
          v16 = [v9 substringAddedByCounter:i];
          v17 = *(*v56 + 8 * v10);
          Coherence_namespace::TopoReplica::TopoReplica(&v59, v15, 0);
          v61 = v59;
          v62 = v60;
          v63 = v16;
          std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](v17 + 32, &v61);
        }
      }

      v18 = [v9 substringRemovedAddedByCount];
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          v20 = [v9 substringRemovedAddedByReplica:j withError:a7];
          v21 = [v9 substringRemovedAddedByCounter:j];
          v22 = *(*v56 + 8 * v10);
          Coherence_namespace::TopoReplica::TopoReplica(&v59, v20, -1);
          v61 = v59;
          v62 = v60;
          v63 = v21;
          std::vector<Coherence_namespace::TopoID>::push_back[abi:ne200100](v22 + 32, &v61);
        }
      }

      v23 = [v9 substringContentOptions];
      v24 = *(*v56 + 8 * v10);
      if (v23 == 2)
      {
        *(v24 + 84) = -1;
      }

      else
      {
        *(v24 + 84) = v11;
        if (v13 > 0 || v23 == 1)
        {
          v11 += *&uu[24];
          if (v11 > a2)
          {
            NSLog(&cfstr_CorruptMergeab.isa);
            break;
          }
        }
      }

      v25 = *uu;
      *(v24 + 12) = *&uu[12];
      *v24 = v25;
      v26 = [v9 substringChildCount];
      v27 = v26;
      if (v26)
      {
        v28 = 0;
        v29 = 0;
        v53 = v12;
        while (1)
        {
          v30 = [v9 substringChild:v28];
          if (v30 >= v54)
          {
            break;
          }

          v31 = *v56;
          v32 = *(*v56 + 8 * v30);
          *&v61 = v32;
          v33 = *(v31 + 8 * v10);
          v35 = v33[8];
          v34 = v33[9];
          if (v35 >= v34)
          {
            v37 = v33[7];
            v38 = (v35 - v37) >> 3;
            if ((v38 + 1) >> 61)
            {
              std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
            }

            v39 = v34 - v37;
            v40 = v39 >> 2;
            if (v39 >> 2 <= (v38 + 1))
            {
              v40 = v38 + 1;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFF8)
            {
              v41 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v40;
            }

            if (v41)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Coherence_namespace::TopoSubstring *>>((v33 + 7), v41);
            }

            *(8 * v38) = v32;
            v36 = 8 * v38 + 8;
            v42 = v33[7];
            v43 = v33[8] - v42;
            v44 = (8 * v38 - v43);
            memcpy(v44, v42, v43);
            v45 = v33[7];
            v33[7] = v44;
            v33[8] = v36;
            v33[9] = 0;
            if (v45)
            {
              operator delete(v45);
            }

            v12 = v53;
          }

          else
          {
            *v35 = v32;
            v36 = (v35 + 1);
          }

          v33[8] = v36;
          ++*(v32 + 80);
          std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::__emplace_unique_key_args<Coherence_namespace::TopoSubstring *,Coherence_namespace::TopoSubstring * const&>(v57, &v61, &v61);
          v29 = ++v28 >= v27;
          if (v27 == v28)
          {
            goto LABEL_32;
          }
        }

        NSLog(&cfstr_CorruptMergeab_0.isa);
      }

      else
      {
LABEL_32:
        v29 = 1;
      }

      if (a5 && !std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(v57, (*v56 + 8 * v10)))
      {
        v29 = v29 & (*a5 == 0);
        *a5 = *(*v56 + 8 * v10);
      }

      if (!a6 || v27)
      {

        if ((v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v46 = *a6 == 0;
        *a6 = *(*v56 + 8 * v10);

        if ((v46 & v29 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (++v10 >= v50)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    v47 = 0;
  }

  else
  {
    v11 = 0;
LABEL_45:
    v47 = 1;
  }

  if (v11 != a2)
  {
    NSLog(&cfstr_CorruptMergeab_1.isa);
    v47 = 0;
  }

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(v57);

  return v47;
}

void sub_1ADDED05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  std::__hash_table<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::__unordered_map_hasher<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::hash<Coherence_namespace::TopoSubstring const*>,std::equal_to<Coherence_namespace::TopoSubstring const*>,true>,std::__unordered_map_equal<Coherence_namespace::TopoSubstring const*,std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>,std::equal_to<Coherence_namespace::TopoSubstring const*>,std::hash<Coherence_namespace::TopoSubstring const*>,true>,std::allocator<std::__hash_value_type<Coherence_namespace::TopoSubstring const*,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<Coherence_namespace::TopoSubstring *,std::hash<Coherence_namespace::TopoSubstring *>,std::equal_to<Coherence_namespace::TopoSubstring *>,std::allocator<Coherence_namespace::TopoSubstring *>>::find<Coherence_namespace::TopoSubstring *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1ADDED2C8(uint64_t a1)
{
  v2 = sub_1AE23BFEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96B040 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v7);
  *(&v16 - 2) = a1;
  sub_1AE23D6AC();
  v10 = *(v3 + 16);
  v10(v5, v9, v2);
  v11 = *&v9[*(v6 + 20)];
  v12 = type metadata accessor for ObjCReplica(0);
  v13 = objc_allocWithZone(v12);
  v10(&v13[OBJC_IVAR____TtC9Coherence11ObjCReplica_uuid], v5, v2);
  *&v13[OBJC_IVAR____TtC9Coherence11ObjCReplica_index] = v11;
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  (*(v3 + 8))(v5, v2);
  sub_1ADDF1F8C(v9);
  return v14;
}

uint64_t sub_1ADDED528(uint64_t a1)
{
  result = sub_1AE23BFEC();
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

void sub_1ADDED684(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v120 = a1;
  v119 = sub_1AE23BFEC();
  v5 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FinalizedTimestamp(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded;
  v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v10 = sub_1AE23CCDC();

  v11 = [v9 initWithString_];

  v12 = *(v8 + 32);
  v122 = *(v12 + 16);
  if (!v122)
  {
    goto LABEL_67;
  }

  v130 = (v4 + OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope);
  v13 = v12 + 32;
  v132 = OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder;
  v112[1] = v5 + 16;
  v113 = v5;
  v112[0] = v5 + 32;

  v128 = 0;
  v14 = 0;
  v124 = v11;
  v123 = v12;
  v129 = v4;
  v115 = v12 + 32;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
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

    v125 = v14;
    v15 = (v13 + 40 * v14);
    v126 = *v15;
    v17 = *(v15 + 1);
    v16 = *(v15 + 2);
    v121 = *(v15 + 3);
    v127 = *(v15 + 32);
    v131 = *(v17 + 16);
    v133 = v17;
    if (v131)
    {
      break;
    }

    v20 = MEMORY[0x1E69E7CC8];
    if ((v127 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_63:
    type metadata accessor for Key(0);
    sub_1ADDEE3A0();
    v98 = sub_1AE23C9FC();

    v99 = v128;
    v100 = v126;
    [v11 setAttributes:v98 range:{v128, v126}];

    v128 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      goto LABEL_75;
    }

    v14 = v125 + 1;
    if (v125 + 1 == v122)
    {

LABEL_67:
      v106 = sub_1ADDEE524(0, &unk_1EB5B8BB8, 0x1E696AD40);
      v107 = v120;
      v120[3] = v106;
      *v107 = v11;
      return;
    }
  }

  v114 = v16;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v19 = (v17 + 40);
  v20 = MEMORY[0x1E69E7CC8];
  do
  {
    if (v18 >= *(v17 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v135 = v20;
    v22 = *(v19 - 2);
    v23 = *v19;
    if (*v19)
    {
      inited = *v19;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    v25 = *(v4 + v132);
    type metadata accessor for CRDecoder();
    swift_allocObject();
    v134 = v23;
    swift_retain_n();

    v26 = sub_1ADE0262C(inited, v25);

    v27 = *(v26 + 32);
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v28 > v22;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {

      v102 = swift_bridgeObjectRelease_n();
      sub_1ADE42E40(v102, v103, v104);
      swift_allocError();
      *v105 = 0xD000000000000015;
      *(v105 + 8) = 0x80000001AE25FCF0;
      *(v105 + 16) = 0;
      swift_willThrow();

      return;
    }

    v30 = v3;
    v31 = v27 + 16 * v22;
    v33 = *(v31 + 32);
    v32 = *(v31 + 40);
    v34 = *v130;
    v35 = v130[1];
    v36 = *(v35 + 8);

    v37 = v36(v34, v35);
    if (!*(v37 + 16) || (v38 = sub_1ADDD7A10(v33, v32), (v39 & 1) == 0))
    {

      v43 = sub_1AE23CCDC();

      v139 = &type metadata for AnyCRValue;

      AnyCRValue.init(from:)(v55, &v138);
      if (v3)
      {
LABEL_66:

        swift_bridgeObjectRelease_n();
        __swift_deallocate_boxed_opaque_existential_0(&v138);
        return;
      }

      sub_1ADDEE390(&v138, v137);
      v56 = v135;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v56;
      v58 = sub_1ADDF1D10(v43);
      v60 = v56[2];
      v61 = (v59 & 1) == 0;
      v51 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v51)
      {
        goto LABEL_70;
      }

      v63 = v59;
      if (v56[3] >= v62)
      {
        v4 = v129;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = v58;
          sub_1ADE1B924();
          v58 = v68;
          v20 = v140;
          if ((v63 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_6;
        }
      }

      else
      {
        sub_1ADDEBC08(v62, isUniquelyReferenced_nonNull_native);
        v58 = sub_1ADDF1D10(v43);
        v4 = v129;
        if ((v63 & 1) != (v64 & 1))
        {
          goto LABEL_78;
        }
      }

      v20 = v140;
      if ((v63 & 1) == 0)
      {
LABEL_32:
        v20[(v58 >> 6) + 8] |= 1 << v58;
        *(v20[6] + 8 * v58) = v43;
        sub_1ADDEE390(v137, (v20[7] + 32 * v58));
        v65 = v20[2];
        v51 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v51)
        {
          goto LABEL_71;
        }

        v20[2] = v66;

        goto LABEL_7;
      }

LABEL_6:
      v21 = (v20[7] + 32 * v58);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_1ADDEE390(v137, v21);

LABEL_7:

      goto LABEL_8;
    }

    v40 = (*(v37 + 56) + 16 * v38);
    v41 = *v40;
    v42 = v40[1];

    v43 = sub_1AE23CCDC();

    v44 = *(v42 + 8);
    v139 = &type metadata for AnyCRValue;
    v44(&v138, v26, v41, v42);
    v3 = v30;
    if (v30)
    {
      goto LABEL_66;
    }

    sub_1ADDEE390(&v138, v137);
    v45 = v135;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v45;
    v47 = sub_1ADDF1D10(v43);
    v49 = v45[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_72;
    }

    v53 = v48;
    if (v45[3] < v52)
    {
      sub_1ADDEBC08(v52, v46);
      v47 = sub_1ADDF1D10(v43);
      v4 = v129;
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_78;
      }

LABEL_35:
      v20 = v140;
      if ((v53 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v4 = v129;
    if (v46)
    {
      goto LABEL_35;
    }

    v69 = v47;
    sub_1ADE1B924();
    v47 = v69;
    v20 = v140;
    if ((v53 & 1) == 0)
    {
LABEL_40:
      v20[(v47 >> 6) + 8] |= 1 << v47;
      *(v20[6] + 8 * v47) = v43;
      sub_1ADDEE390(v137, (v20[7] + 32 * v47));
      v70 = v20[2];
      v51 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v51)
      {
        goto LABEL_74;
      }

      v20[2] = v71;
      v72 = v43;
      goto LABEL_42;
    }

LABEL_36:
    v67 = (v20[7] + 32 * v47);
    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_1ADDEE390(v137, v67);
LABEL_42:

LABEL_8:
    v17 = v133;
    ++v18;
    v19 += 2;
  }

  while (v131 != v18);

  v11 = v124;
  v12 = v123;
  v13 = v115;
  v16 = v114;
  if (v127)
  {
    goto LABEL_63;
  }

LABEL_46:
  v73 = *(*(v4 + v132) + 24);
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = v16 >= v74;
  }

  else
  {
    v75 = 1;
  }

  if (v75)
  {

    sub_1ADE42E40(v108, v109, v110);
    swift_allocError();
    *v111 = 0xD000000000000013;
    *(v111 + 8) = 0x80000001AE25FD70;
    *(v111 + 16) = 0;
    swift_willThrow();

    return;
  }

  v76 = v118;
  v77 = v119;
  v78 = v113;
  (*(v113 + 16))(v118, v73 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v16, v119);
  v79 = v116;
  (*(v78 + 32))(v116, v76, v77);
  *(v79 + *(v117 + 20)) = v121;
  v80 = type metadata accessor for ObjCFinalizedTimestamp(0);
  v81 = objc_allocWithZone(v80);
  sub_1ADED0548(v79, v81 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp);
  v136.receiver = v81;
  v136.super_class = v80;
  v82 = objc_msgSendSuper2(&v136, sel_init);
  sub_1ADE173B8(v79);
  if (qword_1EB5B8BF0 != -1)
  {
    swift_once();
  }

  v83 = qword_1EB5B8BF8;
  v139 = v80;
  *&v138 = v82;
  sub_1ADDEE390(&v138, v137);
  v84 = v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v20;
  v86 = sub_1ADDF1D10(v83);
  v88 = v20[2];
  v89 = (v87 & 1) == 0;
  v51 = __OFADD__(v88, v89);
  v90 = v88 + v89;
  if (v51)
  {
    goto LABEL_76;
  }

  v91 = v87;
  if (v20[3] >= v90)
  {
    if ((v85 & 1) == 0)
    {
      v101 = v86;
      sub_1ADE1B924();
      v86 = v101;
    }

LABEL_58:
    v93 = v140;
    if (v91)
    {
      v94 = (v140[7] + 32 * v86);
      __swift_destroy_boxed_opaque_existential_1(v94);
      sub_1ADDEE390(v137, v94);
    }

    else
    {
      v140[(v86 >> 6) + 8] |= 1 << v86;
      *(v93[6] + 8 * v86) = v83;
      sub_1ADDEE390(v137, (v93[7] + 32 * v86));
      v95 = v93[2];
      v51 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v51)
      {
        goto LABEL_77;
      }

      v93[2] = v96;
      v97 = v83;
    }

    v11 = v124;
    v12 = v123;
    v13 = v115;
    goto LABEL_63;
  }

  sub_1ADDEBC08(v90, v85);
  v86 = sub_1ADDF1D10(v83);
  if ((v91 & 1) == (v92 & 1))
  {
    goto LABEL_58;
  }

LABEL_78:
  type metadata accessor for Key(0);
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADDEE234(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADDEE300(uint64_t a1)
{
  result = type metadata accessor for FinalizedTimestamp(319);
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

_OWORD *sub_1ADDEE390(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1ADDEE3A0()
{
  result = qword_1EB5B8BE0;
  if (!qword_1EB5B8BE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8BE0);
  }

  return result;
}

unint64_t sub_1ADDEE4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B95B0;
  if (!qword_1EB5B95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B95B0);
  }

  return result;
}

uint64_t sub_1ADDEE524(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1ADDEE658()
{
  type metadata accessor for CRGlobalContext();
  swift_allocObject();
  result = sub_1ADDEC550();
  qword_1ED96F2F8 = result;
  return result;
}

void sub_1ADDEE708()
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v71 - v3;
  v81 = sub_1AE23BFEC();
  v4 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v71 - v7;
  v8 = (v0 + OBJC_IVAR____TtC9Coherence11ObjCVersion_version);
  swift_beginAccess();
  v9 = v8[1];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v80 = v4;
  if (v10)
  {
    v71 = v8;
    v87 = MEMORY[0x1E69E7CC0];

    sub_1ADE0BC44(0, v10, 0);
    v85 = v87;
    v12 = v9 + 64;
    v13 = sub_1AE23D8EC();
    v14 = 0;
    v15 = *(v9 + 36);
    v77 = (v4 + 32);
    v78 = (v4 + 16);
    v72 = v9 + 72;
    v74 = v10;
    v75 = v15;
    v76 = v9 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v9 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_43;
      }

      if (v15 != *(v9 + 36))
      {
        goto LABEL_44;
      }

      v86 = v14;
      v18 = v84;
      v19 = *(v84 + 48);
      v20 = *(v9 + 48);
      v21 = type metadata accessor for Replica(0);
      v22 = v82;
      sub_1ADDDE470(v20 + *(*(v21 - 8) + 72) * v13, v82, type metadata accessor for Replica);
      v23 = *(v9 + 56);
      v24 = sub_1AE23C12C();
      v15 = v9;
      v25 = *(v24 - 8);
      (*(v25 + 16))(v22 + v19, v23 + *(v25 + 72) * v13, v24);
      v10 = v83;
      sub_1ADDD27F0(v22, v83, type metadata accessor for Replica);
      v26 = *(v18 + 48);
      v27 = v81;
      (*(v25 + 32))(v10 + v26, v22 + v19, v24);
      v28 = v79;
      (*v78)(v79, v10, v27);
      sub_1ADDCEDE0(v10, &qword_1EB5BA2A0, &unk_1AE242200);
      v29 = v85;
      v87 = v85;
      v31 = *(v85 + 16);
      v30 = *(v85 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1ADE0BC44((v30 > 1), v31 + 1, 1);
        v28 = v79;
        v29 = v87;
      }

      *(v29 + 16) = v31 + 1;
      v4 = v80;
      v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v85 = v29;
      (*(v80 + 32))(v29 + v32 + *(v80 + 72) * v31, v28, v27);
      v16 = 1 << *(v15 + 32);
      if (v13 >= v16)
      {
        goto LABEL_45;
      }

      v12 = v76;
      v33 = *(v76 + 8 * v17);
      if ((v33 & (1 << v13)) == 0)
      {
        goto LABEL_46;
      }

      v9 = v15;
      v34 = *(v15 + 36);
      LODWORD(v15) = v75;
      if (v75 != v34)
      {
        goto LABEL_47;
      }

      v35 = v33 & (-2 << (v13 & 0x3F));
      if (v35)
      {
        v16 = __clz(__rbit64(v35)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v17 << 6;
        v37 = v17 + 1;
        v38 = (v72 + 8 * v17);
        while (v37 < (v16 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_1ADDFFBC8(v13, v75, 0);
            v16 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        sub_1ADDFFBC8(v13, v75, 0);
      }

LABEL_4:
      v14 = v86 + 1;
      v13 = v16;
      v10 = v74;
      if (v86 + 1 == v74)
      {

        v11 = v85;
        v8 = v71;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  else
  {
LABEL_21:
    v41 = *v8;
    v42 = *(*v8 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    if (!v42)
    {
LABEL_41:
      v87 = v11;
      sub_1ADE0BF00(v43);

      sub_1ADE09A10(&v87);

      return;
    }

    v85 = v11;
    v87 = MEMORY[0x1E69E7CC0];

    sub_1ADE0BC44(0, v42, 0);
    v79 = v87;
    v44 = v41 + 64;
    v45 = sub_1AE23D8EC();
    v46 = 0;
    v86 = *(v41 + 36);
    v76 = v4 + 32;
    v77 = (v4 + 16);
    v72 = v41 + 72;
    v74 = v42;
    v75 = v41 + 64;
    while ((v45 & 0x8000000000000000) == 0 && v45 < 1 << *(v41 + 32))
    {
      v49 = v45 >> 6;
      if ((*(v44 + 8 * (v45 >> 6)) & (1 << v45)) == 0)
      {
        goto LABEL_49;
      }

      if (v86 != *(v41 + 36))
      {
        goto LABEL_50;
      }

      v78 = v46;
      v50 = v84;
      v51 = *(v84 + 48);
      v52 = *(v41 + 48);
      v53 = type metadata accessor for Replica(0);
      v54 = v82;
      sub_1ADDDE470(v52 + *(*(v53 - 8) + 72) * v45, v82, type metadata accessor for Replica);
      v55 = *(v41 + 56);
      v56 = sub_1AE23C12C();
      v57 = v41;
      v58 = *(v56 - 8);
      (*(v58 + 16))(v54 + v51, v55 + *(v58 + 72) * v45, v56);
      v59 = v83;
      sub_1ADDD27F0(v54, v83, type metadata accessor for Replica);
      (*(v58 + 32))(v59 + *(v50 + 48), v54 + v51, v56);
      v60 = v81;
      v61 = v73;
      (*v77)(v73, v59, v81);
      sub_1ADDCEDE0(v59, &qword_1EB5BA2A0, &unk_1AE242200);
      v62 = v79;
      v87 = v79;
      v10 = *(v79 + 2);
      v63 = *(v79 + 3);
      if (v10 >= v63 >> 1)
      {
        sub_1ADE0BC44((v63 > 1), v10 + 1, 1);
        v61 = v73;
        v62 = v87;
      }

      *(v62 + 16) = v10 + 1;
      v64 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v79 = v62;
      (*(v80 + 32))(v62 + v64 + *(v80 + 72) * v10, v61, v60);
      v47 = 1 << *(v57 + 32);
      if (v45 >= v47)
      {
        goto LABEL_51;
      }

      v41 = v57;
      v44 = v75;
      v65 = *(v75 + 8 * v49);
      if ((v65 & (1 << v45)) == 0)
      {
        goto LABEL_52;
      }

      if (v86 != *(v41 + 36))
      {
        goto LABEL_53;
      }

      v66 = v65 & (-2 << (v45 & 0x3F));
      if (v66)
      {
        v47 = __clz(__rbit64(v66)) | v45 & 0x7FFFFFFFFFFFFFC0;
        v48 = v74;
      }

      else
      {
        v67 = v49 << 6;
        v68 = v49 + 1;
        v69 = (v72 + 8 * v49);
        v48 = v74;
        while (v68 < (v47 + 63) >> 6)
        {
          v70 = *v69++;
          v10 = v70;
          v67 += 64;
          ++v68;
          if (v70)
          {
            sub_1ADDFFBC8(v45, v86, 0);
            v47 = __clz(__rbit64(v10)) + v67;
            goto LABEL_24;
          }
        }

        sub_1ADDFFBC8(v45, v86, 0);
      }

LABEL_24:
      v46 = v78 + 1;
      v45 = v47;
      if (v78 + 1 == v48)
      {

        v11 = v85;
        v43 = v79;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);

  __break(1u);
}

uint64_t sub_1ADDEF390(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v3, v4, v5);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (v19 - v10);
  (*(v8 + 16))(v19 - v10, &v1[*(a1 + 48)], v7, v9);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v19[1] = *v1;
    v13 = type metadata accessor for CROrderedSetElement(255, v3, v4, v5);
    v15 = type metadata accessor for CRSequence(0, v13, &off_1F23C8BA0, v14);
    return sub_1ADDEF6DC(v15);
  }

  else
  {
    v17 = *v11;
    v18 = *(v12 + 8);

    v18(v11, v6);
    return v17;
  }
}

uint64_t sub_1ADDEF560(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a2;
  if (*a2 >> 62)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a2 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v8 = 0xD000000000000014;
    *(v8 + 8) = 0x80000001AE260180;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for CRDecoder();
    swift_allocObject();
    sub_1ADDCEE40(&v14, v13, &qword_1EB5BA300, &qword_1AE25A270);
    sub_1ADDCEE40(&v14, v13, &qword_1EB5BA300, &qword_1AE25A270);

    v11 = sub_1ADDE77B4(v6, v5);

    (*(*(*(a4 + 16) + 8) + 8))(v11, a3);
    return sub_1ADDCEDE0(&v14, &qword_1EB5BA300, &qword_1AE25A270);
  }
}

uint64_t sub_1ADDEF6DC(uint64_t a1)
{
  if (!*v1)
  {
    return sub_1AE23D05C();
  }

  v2 = sub_1ADDEFD10();
  v3 = qword_1EB5BD4A8;
  swift_beginAccess();
  v4 = *&v2[v3];

  return v4;
}

uint64_t sub_1ADDEF754(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *(v2 + 224);
    swift_beginAccess();
    v13 = *(v4 + 16);
    v13(v9, &v1[v12], v3);
    v14 = *(*v11 + 224);
    swift_beginAccess();
    v13(v6, (v11 + v14), v3);
    v15 = sub_1AE23CCBC();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t static CRExtensible.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v17 = type metadata accessor for CRExtensible(0, v20);
  CRExtensible.rawValue.getter(v17, v16);
  CRExtensible.rawValue.getter(v17, v13);
  LOBYTE(a5) = sub_1AE23CCBC();
  v18 = *(v11 + 8);
  v18(v13, AssociatedTypeWitness);
  v18(v16, AssociatedTypeWitness);
  return a5 & 1;
}

uint64_t CRExtensible.rawValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v10, AssociatedTypeWitness);
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1AE23CF6C();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1ADDEFD10()
{
  v1 = *v0;
  v2 = [*(v0 + qword_1ED96F258) attributedString];
  type metadata accessor for CRSequenceStorage(0, *(v1 + 80), *(v1 + 88), v3);

  return swift_dynamicCastClassUnconditional();
}

void CROrderedSet.subscript.getter(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[2];
  v8 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v22 - v9;
  v10 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v24 = a2[4];
  v25 = v14;
  v15 = type metadata accessor for CROrderedSetElement(0, v7, v14, v24);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (CROrderedSet.count.getter(a2) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = a3;
  v19 = *(v3 + 8);
  sub_1ADDEF390(a2);
  sub_1AE23D15C();

  (*(v10 + 16))(v13, v18, v7);
  (*(v16 + 8))(v18, v15);
  v27 = v19;
  v20 = type metadata accessor for CRSet(0, v7, v25, v24);
  v21 = v26;
  CRSet.subscript.getter(v13, v20, v26);
  if ((*(v10 + 48))(v21, 1, v7) != 1)
  {
    (*(v10 + 8))(v13, v7);
    (*(v10 + 32))(v23, v21, v7);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t CRSet.index(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  result = swift_beginAccess();
  v9 = *(v7 + 40);
  if (*(v9 + 16))
  {
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);

    v12 = sub_1ADDFFB6C(a1, v10, v11);
    if (v13)
    {
      v14 = v12;
      v15 = *(v9 + 36);

      *a3 = v14;
      *(a3 + 8) = v15;
      *(a3 + 16) = 0;
      return result;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

unint64_t sub_1ADDF0104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1AE23CCBC();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t CROrderedSet.contains(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for CRSet(0, a2[2], a2[3], a2[4]);

  LOBYTE(a1) = CRSet.contains(_:)(a1, v3);

  return a1 & 1;
}

BOOL CRSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1AE23CB7C();

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t CROrderedSet.startIndex.getter(uint64_t a1)
{
  sub_1ADDEF390(a1);

  return 0;
}

uint64_t sub_1ADDF0400@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>)
{
  result = CROrderedSet.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t CRSet.subscript.getter()
{
  swift_beginAccess();

  sub_1AE23CB9C();
}

void CRAttributedString.attributedString.getter()
{
  if (*v0)
  {
    v1 = [*(*v0 + 16) attributedString];
    objc_opt_self();

    swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

double CRAttributedString.Runs.Run.attributes.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t CRAttributedString.Attributes.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  (*(a2 + 40))(*(*a1 + *MEMORY[0x1E69E6CE8] + 8), a2);
  v6 = sub_1AE23CCDC();

  if (!*(v5 + 16) || (v7 = sub_1ADDF1D10(v6), (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_1ADDE4E28(*(v5 + 56) + 32 * v7, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    memset(v13, 0, sizeof(v13));
    goto LABEL_7;
  }

  (*(*v12 + 80))(v13);

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v10 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_1ADDF0758(ValueMetadata **a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, ValueMetadata *a6@<X5>, ValueMetadata *a7@<X6>, uint64_t *a8@<X8>)
{
  v67 = a7;
  v65 = a2;
  v66 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_1AE23BFEC();
  v17 = *(v16 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v24 = *a1;
  v25 = *(a4 + 24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v24 >= v26;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    sub_1ADE42E40(v18, v19, v20);
    swift_allocError();
    *v28 = 0xD000000000000013;
    *(v28 + 8) = 0x80000001AE25FD70;
    *(v28 + 16) = 0;
    swift_willThrow();

    v29 = v69;
LABEL_15:
    sub_1ADFAECE8(v29);
    return;
  }

  v62 = a5;
  v63 = a6;
  v61 = a8;
  (*(v17 + 16))(v23, v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v16, v21);
  type metadata accessor for ReplicaState(0);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v32 = type metadata accessor for Replica(0);
  v33 = *(*(v32 - 8) + 56);
  v64 = a4;
  v33(v30 + v31, 1, 1, v32);
  (*(v17 + 32))(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v23, v16);
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v33(v15, 1, 1, v32);
  v34 = v64;
  swift_beginAccess();
  sub_1ADDD85E4(v15, v30 + v31);
  swift_endAccess();
  v35 = v69;
  v36 = v69[3];
  if (v36)
  {
    v37 = v69[3];
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  if (v36)
  {
    v38 = v69[4];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v36, v69[4]);

  v39 = v68;
  sub_1ADDD6748(v37, v38, v34, &v70);
  if (v39)
  {

    v29 = v35;
    goto LABEL_15;
  }

  v68 = v30;
  v59 = *(&v70 + 1);
  v60 = v70;
  v40 = *(v35 + 8);

  v41 = sub_1ADFAECE8(v35);
  v69 = &v59;
  *&v70 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v62;
  v42 = v63;
  *(&v59 - 6) = v62;
  *(&v59 - 5) = v42;
  v45 = v65;
  v44 = v66;
  *(&v59 - 4) = v67;
  *(&v59 - 3) = v45;
  *(&v59 - 2) = v44;
  MEMORY[0x1EEE9AC00](v46);
  *(&v59 - 6) = v43;
  *(&v59 - 5) = v47;
  *(&v59 - 4) = v48;
  *(&v59 - 3) = sub_1ADE0C88C;
  *(&v59 - 2) = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA28, &qword_1AE253918);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v53 = sub_1ADDF0D68();
  v54 = sub_1ADE08EB0(sub_1AE1801C4, (&v59 - 8), v50, TupleTypeMetadata2, v52, v53, MEMORY[0x1E69E7288], &v74);

  *&v70 = v54;
  sub_1AE23D11C();
  swift_getWitnessTable();
  v55 = v67;
  v56 = sub_1AE23CB2C();
  *&v70 = v43;
  *(&v70 + 1) = &type metadata for CRSetElement;
  v71 = v63;
  v72 = v55;
  v73 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef(0, &v70);
  *&v70 = v60;
  *(&v70 + 1) = v59;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  v57 = v74;
  v58 = swift_allocObject();
  sub_1ADE0C750(v68, &v70, v56, v57);

  *v61 = v58;
}

unint64_t sub_1ADDF0D68()
{
  result = qword_1ED967160;
  if (!qword_1ED967160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BDA28, &qword_1AE253918);
    sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40, MEMORY[0x1E69E6340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED967160);
  }

  return result;
}

unint64_t sub_1ADDF0E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5BDD48;
  if (!qword_1EB5BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BDD48);
  }

  return result;
}

uint64_t sub_1ADDF0E80(void *a1)
{
  v1 = a1;
  v2 = sub_1ADE0A8DC();

  return v2;
}

uint64_t sub_1ADDF1048(uint64_t a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A0, &unk_1AE253DA0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1ADED0548(v1 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, &v26 - v15);
  v17 = *(v4 + 56);
  v17(v16, 0, 1, v3);
  sub_1ADDCEE40(a1, v30, &qword_1EB5BAA00, &qword_1AE2587A0);
  if (v31)
  {
    type metadata accessor for ObjCFinalizedTimestamp(0);
    if (swift_dynamicCast())
    {
      v18 = v29;
      sub_1ADED0548(v29 + OBJC_IVAR____TtC9Coherence22ObjCFinalizedTimestamp_timestamp, v13);

      v19 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1ADDCEDE0(v30, &qword_1EB5BAA00, &qword_1AE2587A0);
  }

  v19 = 1;
LABEL_6:
  v17(v13, v19, 1, v3);
  v20 = *(v6 + 48);
  sub_1ADDCEE40(v16, v8, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEE40(v13, &v8[v20], &qword_1EB5BA460, &qword_1AE251020);
  v21 = *(v4 + 48);
  if (v21(v8, 1, v3) == 1)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEDE0(v16, &qword_1EB5BA460, &qword_1AE251020);
    if (v21(&v8[v20], 1, v3) == 1)
    {
      sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
      v22 = 1;
      return v22 & 1;
    }

LABEL_11:
    sub_1ADDCEDE0(v8, &qword_1EB5BA4A0, &unk_1AE253DA0);
    v22 = 0;
    return v22 & 1;
  }

  v23 = v28;
  sub_1ADDCEE40(v8, v28, &qword_1EB5BA460, &qword_1AE251020);
  if (v21(&v8[v20], 1, v3) == 1)
  {
    sub_1ADDCEDE0(v13, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADDCEDE0(v16, &qword_1EB5BA460, &qword_1AE251020);
    sub_1ADE173B8(v23);
    goto LABEL_11;
  }

  v24 = v27;
  sub_1ADE172E4(&v8[v20], v27);
  if (*(v23 + *(v3 + 20)) == *(v24 + *(v3 + 20)))
  {
    v22 = sub_1AE23BF8C();
  }

  else
  {
    v22 = 0;
  }

  sub_1ADE173B8(v24);
  sub_1ADDCEDE0(v13, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADDCEDE0(v16, &qword_1EB5BA460, &qword_1AE251020);
  sub_1ADE173B8(v23);
  sub_1ADDCEDE0(v8, &qword_1EB5BA460, &qword_1AE251020);
  return v22 & 1;
}

uint64_t sub_1ADDF14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 64))
  {
    type metadata accessor for CRDecoder.CRDTKeyedContainer();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    v5 = swift_allocError();
    *v6 = 0xD00000000000001ELL;
    *(v6 + 8) = 0x80000001AE25FCA0;
    *(v6 + 16) = 0;
    v4 = v5;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1ADDF15BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 32);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  for (i = (v4 + 40); ; i += 2)
  {
    result = *(i - 1);
    if (result == a1 && *i == a2)
    {
      break;
    }

    result = sub_1AE23E00C();
    if (result)
    {
      break;
    }

    if (v5 == ++v8)
    {
      return 0;
    }
  }

  v12 = *(v3 + 64);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = (~v13 & 0xF000000000000007) != 0 && (v13 & 0xF000000000000000) == 0x3000000000000000;
    if (!v14 || (v15 = *(*((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 16), v16 = , !v15))
    {
LABEL_20:

      return 0;
    }

    v17 = -v15;
    v18 = 4;
    while (*(v16 + 8 * v18) != v8)
    {
      ++v18;
      if (v17 + v18 == 4)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v3 + 64);
    if (v19)
    {
      v20 = *(v19 + 16);
      v21 = (~v20 & 0xF000000000000007) != 0 && (v20 & 0xF000000000000000) == 0x3000000000000000;
      if (v21 && (v18 - 4) < *(*((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18) + 16))
      {
        type metadata accessor for CRDecoder();
        swift_allocObject();

        v23 = sub_1ADDE77B4(v22, v3);

        return v23;
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1ADDF1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  v9 = objc_allocWithZone(type metadata accessor for CRAttributedStringDecoder());
  v10 = &v9[OBJC_IVAR____TtC9Coherence25CRAttributedStringDecoder_scope];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v9[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence[0]];
  LOBYTE(v23) = 1;
  *v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 1) = MEMORY[0x1E69E7CC0];
  *(v11 + 2) = v12;
  *(v11 + 3) = v12;
  *(v11 + 4) = 0;
  v11[40] = 1;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v11[64] = 1;
  v13 = &v9[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v14 = *(a1 + 80);
  *(v13 + 4) = *(a1 + 64);
  *(v13 + 5) = v14;
  *(v13 + 12) = *(a1 + 96);
  v15 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 1) = v15;
  v16 = *(a1 + 48);
  *(v13 + 2) = *(a1 + 32);
  *(v13 + 3) = v16;
  *&v9[OBJC_IVAR____TtC9Coherence15CRStringDecoder_decoder] = a2;
  v24.receiver = v9;
  v24.super_class = type metadata accessor for CRStringDecoder();

  v17 = objc_msgSendSuper2(&v24, sel_init);
  v23 = 0;
  v18 = [objc_allocWithZone(_TtC9Coherence19CRTTMergeableString) initWithDecoder:v17 error:&v23];
  if (v18)
  {
    v19 = v18;
    v20 = v23;

    *(v4 + 16) = v19;
  }

  else
  {
    v21 = v23;
    sub_1AE23BC9C();

    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  return v4;
}

void sub_1ADDF195C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void **std::vector<Coherence_namespace::TopoSubstring *>::__assign_with_size[abi:ne200100]<Coherence_namespace::TopoSubstring * const*,Coherence_namespace::TopoSubstring * const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Coherence_namespace::TopoSubstring *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Coherence_namespace::TopoSubstring *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void CRAttributedString.Runs.next()(void *a1@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[1];
  if (*v1 == v4)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v12 = 0;
  v13 = 0;
  v5 = [*(v1[2] + 16) attributedString];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = [v6 attributesAtIndex:v3 longestEffectiveRange:&v12 inRange:{v3, v4 - v3}];
  swift_unknownObjectRelease();
  type metadata accessor for Key(0);
  sub_1ADDEE3A0();
  v8 = sub_1AE23CA0C();

  v9 = v12;
  v10 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v10 < v12)
  {
    goto LABEL_21;
  }

  if (v10 >= v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v12 + v13;
  }

  if (v3 < v12)
  {
    v11 = v12;
  }

  if (v4 > v12)
  {
    v9 = v4;
  }

  if (v10 < v4)
  {
    v9 = v12 + v13;
  }

  *a1 = v11;
  a1[1] = v9;
  a1[2] = v8;
  if (v10 >= v1[1])
  {
    v10 = v1[1];
  }

  *v1 = v10;
}

uint64_t sub_1ADDF1C94(uint64_t a1)
{
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v1 = sub_1AE23E34C();

  return v1;
}

unint64_t sub_1ADDF1D24(uint64_t a1)
{
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v2 = sub_1AE23E34C();

  return sub_1ADDF1DB4(a1, v2);
}

unint64_t sub_1ADDF1DB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1AE23CD0C();
      v8 = v7;
      if (v6 == sub_1AE23CD0C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1AE23E00C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1ADDF1EB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  swift_beginAccess();
  v5 = *(v3 + 200);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t sub_1ADDF1F8C(uint64_t a1)
{
  v2 = type metadata accessor for Replica(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CRAttributedString.runs.getter(void *a1@<X8>)
{
  v3 = *v1;
  CRAttributedString.count.getter();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *a1 = 0;
  a1[1] = v4;
  a1[2] = v3;
}

void CRAttributedString.count.getter()
{
  if (*v0)
  {
    [objc_msgSend(*(*v0 + 16) attributedString)];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ADDF20CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  result = sub_1ADDF43A0(a1, sub_1ADDF4474, a3);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ADDF210C(int a1, uint64_t a2)
{
  v3 = v2;
  v133 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v132 = &v121 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  MEMORY[0x1EEE9AC00](v131);
  v8 = &v121 - v7;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v121 - v9;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v172 = *(a2 + 32);
  v12 = type metadata accessor for CROrderedSetElement(255, v11, v10, v172);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v161 = sub_1AE23D7CC();
  v136 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v121 - v15;
  v135 = sub_1AE23C12C();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v147 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v145 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v155 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v158 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v166 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v143 = &v121 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v141 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v152 = &v121 - v32;
  v33 = type metadata accessor for Timestamp(0);
  v137 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v150 = (&v121 - v36);
  v170 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v171 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v153 = (&v121 - v40);
  v128 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v121 - v43;
  v173[0] = *v2;
  v46 = type metadata accessor for CRSequence(0, v12, &off_1F23C8BA0, v45);
  result = CRSequence.isEmpty.getter(v46);
  if (result)
  {
    return result;
  }

  v149 = v44;
  v48 = *(a2 + 48);
  v49 = type metadata accessor for CROrderedSet.DeduplicatedInfo(255, v11, v10, v172);
  v50 = sub_1AE23D7CC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 8);
  v123 = v50;
  v122 = v52;
  v121 = v51 + 8;
  (v52)(&v3[v48]);
  v53 = *(v49 - 8);
  v54 = *(v53 + 56);
  v127 = v48;
  v126 = v49;
  v125 = v54;
  v124 = v53 + 56;
  v54(&v3[v48], 1, 1, v49);
  v176 = sub_1AE23C9CC();
  v173[0] = *v3;
  CRSequence.count.getter();
  v167 = v33;
  v140 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  v173[0] = *v3;
  v55 = sub_1ADDEF6DC(v46);
  v56 = sub_1AE23D0AC();
  v130 = v3;
  v169 = v11;
  v146 = v10;
  v129 = v46;
  if (!v56)
  {

    goto LABEL_29;
  }

  v57 = 0;
  v168 = (v170 + 16);
  v58 = *(v3 + 1);
  v164 = (v170 + 32);
  v165 = v58;
  v163 = (v170 + 8);
  v154 = (v137 + 48);
  v139 += 2;
  v138 = (v137 + 56);
  v59 = v153;
  v60 = v149;
  v148 = v55;
  while (1)
  {
    v62 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v62 & 1) == 0)
    {
      break;
    }

    (*(v170 + 16))(v60, v55 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v57, v12);
    v63 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_26;
    }

LABEL_8:
    (*v164)(v59, v60, v12);
    v173[0] = v165;
    v64 = type metadata accessor for CRSet(0, v11, v10, v172);

    v65 = CRSet.contains(_:)(v59, v64);

    if (v65)
    {
      v66 = v152;
      v67 = v59;
      v68 = v167;
      sub_1AE23CB7C();
      v69 = *v154;
      if ((*v154)(v66, 1, v68) == 1)
      {
        sub_1ADDCEDE0(v66, &qword_1EB5BA480, &qword_1AE25AAE0);
LABEL_15:
        v79 = v143;
        v80 = v153;
        v81 = v169;
        v82 = v167;
        sub_1AE23CB7C();
        if (v69(v79, 1, v82) == 1)
        {
          sub_1ADDCEDE0(v79, &qword_1EB5BA480, &qword_1AE25AAE0);
          (*v139)(v142, v80, v81);
          v83 = v141;
          sub_1ADDF8030(&v80[*(v12 + 44)], v141, type metadata accessor for Timestamp);
          (*v138)(v83, 0, 1, v82);
          sub_1AE23CB8C();
          (*v163)(v80, v12);
        }

        else
        {
          (*v163)(v80, v12);
          sub_1ADDCEDE0(v79, &qword_1EB5BA480, &qword_1AE25AAE0);
        }

        v11 = v81;
        v59 = v80;
        goto LABEL_22;
      }

      v70 = v150;
      sub_1AE017B14(v66, v150);
      v71 = v67 + *(v12 + 44);
      v72 = *(v68 + 20);
      v73 = *(v70 + v72);
      v74 = *(v71 + v72);
      v75 = v73 < v74;
      if (v73 == v74 && (v76 = *(type metadata accessor for Replica(0) + 20), v77 = *(v70 + v76), v78 = *(v71 + v76), v75 = v77 < v78, v77 == v78))
      {
        if ((sub_1ADF5EB00(v70) & 1) == 0)
        {
LABEL_14:
          sub_1AE017AB8(v150);
          goto LABEL_15;
        }
      }

      else if (!v75)
      {
        goto LABEL_14;
      }

      v84 = v153;
      v11 = v169;
      (*v139)(v142, v153, v169);
      v85 = v71;
      v86 = v141;
      sub_1ADDF8030(v85, v141, type metadata accessor for Timestamp);
      (*v138)(v86, 0, 1, v167);
      v59 = v84;
      sub_1AE23CB8C();
      sub_1AE017AB8(v150);
      (*v163)(v84, v12);
LABEL_22:
      v60 = v149;
      v55 = v148;
      goto LABEL_5;
    }

    (*v163)(v59, v12);
LABEL_5:
    v61 = sub_1AE23D0AC();
    ++v57;
    v10 = v146;
    if (v63 == v61)
    {
      goto LABEL_27;
    }
  }

  result = sub_1AE23DAAC();
  if (v128 != 8)
  {
    __break(1u);
    return result;
  }

  v173[0] = result;
  (*v168)(v60, v173, v12);
  swift_unknownObjectRelease();
  v63 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
    goto LABEL_8;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  v3 = v130;
  v46 = v129;
LABEL_29:
  sub_1AE23C11C();
  v173[0] = *v3;
  v174 = sub_1ADDEF6DC(v46);
  v87 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v175, v87, WitnessTable);

  v174 = v175;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v154 = sub_1AE23DC8C();
  v89 = 0;
  v153 = (v136 + 32);
  v90 = TupleTypeMetadata2;
  v152 = (TupleTypeMetadata2 - 8);
  v150 = (v170 + 32);
  v149 = (v137 + 56);
  v165 = (v137 + 48);
  v148 = (v170 + 8);
  v91 = v158;
  v151 = v12;
  while (2)
  {
    v94 = v160;
    sub_1AE23DC7C();
    v95 = v159;
    (*v153)(v159, v94, v161);
    if ((*(*(v90 - 8) + 48))(v95, 1, v90) != 1)
    {
      LODWORD(v170) = v89;
      v168 = *v95;
      v96 = &v95[*(v90 + 48)];
      v97 = v171;
      (*v150)(v171, v96, v12);
      v99 = v166;
      v98 = v167;
      v164 = v176;
      sub_1AE23CB7C();
      sub_1ADDF8030(&v97[*(v12 + 44)], v91, type metadata accessor for Timestamp);
      (*v149)(v91, 0, 1, v98);
      v100 = *(v157 + 48);
      v101 = v156;
      sub_1ADDCEE40(v99, v156, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEE40(v91, v101 + v100, &qword_1EB5BA480, &qword_1AE25AAE0);
      v102 = v91;
      v103 = *v165;
      v104 = (*v165)(v101, 1, v98);
      v163 = v103;
      if (v104 == 1)
      {
        sub_1ADDCEDE0(v102, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDCEDE0(v99, &qword_1EB5BA480, &qword_1AE25AAE0);
        v105 = v103(v101 + v100, 1, v98);
        v91 = v158;
        if (v105 == 1)
        {
          sub_1ADDCEDE0(v101, &qword_1EB5BA480, &qword_1AE25AAE0);
          v12 = v151;
          v106 = v170;
LABEL_44:
          if (v106)
          {
            (*v148)(v171, v12);
            v89 = 1;
          }

          else
          {
            v92 = v145;
            v93 = v171;
            sub_1AE23CB7C();
            (*v148)(v93, v12);
            v89 = (v163)(v92, 1, v98) == 1;
            sub_1ADDCEDE0(v92, &qword_1EB5BA480, &qword_1AE25AAE0);
          }

          v90 = TupleTypeMetadata2;
          continue;
        }

LABEL_37:
        sub_1ADDCEDE0(v101, &qword_1EB5BB7C0, &unk_1AE2514A0);
        v12 = v151;
        v106 = v170;
      }

      else
      {
        sub_1ADDCEE40(v101, v155, &qword_1EB5BA480, &qword_1AE25AAE0);
        if (v103(v101 + v100, 1, v98) == 1)
        {
          v91 = v158;
          sub_1ADDCEDE0(v158, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v166, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v155);
          goto LABEL_37;
        }

        v107 = v144;
        sub_1AE017B14(v101 + v100, v144);
        v108 = v155;
        if (*(v155 + *(v98 + 20)) == *(v107 + *(v98 + 20)) && (v109 = type metadata accessor for Replica(0), *(v108 + *(v109 + 20)) == *(v107 + *(v109 + 20))))
        {
          LODWORD(v143) = sub_1AE23BF8C();
          sub_1AE017AB8(v107);
          v91 = v158;
          sub_1ADDCEDE0(v158, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v166, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v108);
          sub_1ADDCEDE0(v101, &qword_1EB5BA480, &qword_1AE25AAE0);
          v12 = v151;
          v106 = v170;
          if (v143)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_1AE017AB8(v107);
          v91 = v158;
          sub_1ADDCEDE0(v158, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1ADDCEDE0(v166, &qword_1EB5BA480, &qword_1AE25AAE0);
          sub_1AE017AB8(v108);
          sub_1ADDCEDE0(v101, &qword_1EB5BA480, &qword_1AE25AAE0);
          v12 = v151;
          v106 = v170;
        }
      }

      sub_1AE23C08C();
      goto LABEL_44;
    }

    break;
  }

  v110 = v147;
  if (sub_1AE23C0AC())
  {
    goto LABEL_50;
  }

  if ((v133 | v89))
  {
    sub_1AE168474(v110, v129);
LABEL_50:
    (*(v134 + 8))(v110, v135);
  }

  else
  {
    v111 = v130;
    v173[0] = *v130;
    v175 = sub_1ADDEF6DC(v129);
    v112 = v132;
    sub_1AE23C10C();
    v113 = sub_1AE23C0EC();
    v114 = *(v113 - 8);
    (*(v114 + 16))(v8, v112, v113);
    v115 = *(v131 + 36);
    sub_1AE1E9C30(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    (*(v114 + 8))(v112, v113);
    sub_1AE23D41C();
    if (*&v8[v115] != v173[0])
    {
      sub_1AE1E9C30(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
      do
      {
        sub_1AE23CBDC();
        v116 = sub_1AE23D51C();
        v118 = *v117;
        v119 = v117[1];
        v116(v173, 0);
        v173[0] = v118;
        v173[1] = v119;
        swift_getWitnessTable();
        sub_1AE23D54C();
        sub_1AE23D41C();
      }

      while (*&v8[v115] != v173[0]);
    }

    sub_1ADDCEDE0(v8, &qword_1EB5BB4C8, &unk_1AE24C640);
    v120 = v127;
    v122(&v111[v127], v123);
    sub_1AE1DFC70(v175, v147, v169, v146, v172, &v111[v120]);
    v125(&v111[v120], 0, 1, v126);
  }
}