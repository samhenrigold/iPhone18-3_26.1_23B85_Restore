uint64_t VCCommandCollectionObjC.showInSettings.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    return *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 40) & 1;
  }

  __break(1u);
  return result;
}

void VCCommandCollectionObjC.commandIdentifiers.getter()
{
  if (!*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];

    sub_26B4A2140(0, v2, 0);
    v3 = v28;
    v4 = v2 - 1;
    for (i = 32; ; i += 184)
    {
      v6 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 48);
      v26[2] = *(v1 + i + 32);
      v26[3] = v8;
      v26[0] = v6;
      v26[1] = v7;
      v9 = *(v1 + i + 64);
      v10 = *(v1 + i + 80);
      v11 = *(v1 + i + 112);
      v26[6] = *(v1 + i + 96);
      v26[7] = v11;
      v26[4] = v9;
      v26[5] = v10;
      v12 = *(v1 + i + 128);
      v13 = *(v1 + i + 144);
      v14 = *(v1 + i + 160);
      v27 = *(v1 + i + 176);
      v26[9] = v13;
      v26[10] = v14;
      v26[8] = v12;
      v25 = v26[0];
      v23 = 95;
      v24 = 0xE100000000000000;
      sub_26B4A5160(v26, v22);
      sub_26B49FAB4();
      v15 = sub_26B542CD4();
      if (!v15[2])
      {
        break;
      }

      v16 = v1;
      v18 = v15[4];
      v17 = v15[5];

      sub_26B4A51BC(v26);
      v28 = v3;
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26B4A2140((v19 > 1), v20 + 1, 1);
        v3 = v28;
      }

      *(v3 + 16) = v20 + 1;
      v21 = v3 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      if (!v4)
      {

        return;
      }

      --v4;
      v1 = v16;
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_26B4C1248(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B542C14();

  return v5;
}

void VCCommandCollectionObjC.commandIdentifiersForCurrentDevice.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32);
    v2 = *(v1 + 16);

    v3 = MEMORY[0x277D84F90];
    v61 = v2;
    if (v2)
    {
      v4 = 0;
      v59 = v1 + 32;
      v62 = MEMORY[0x277D84F90];
      v60 = v1;
      while (v4 < *(v1 + 16))
      {
        v5 = (v59 + 184 * v4);
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[3];
        v67 = v5[2];
        v68 = v8;
        v65 = v6;
        v66 = v7;
        v9 = v5[4];
        v10 = v5[5];
        v11 = v5[7];
        v71 = v5[6];
        v72 = v11;
        v69 = v9;
        v70 = v10;
        v12 = v5[8];
        v13 = v5[9];
        v14 = v5[10];
        v76 = *(v5 + 22);
        v74 = v13;
        v75 = v14;
        v73 = v12;
        sub_26B4A5160(&v65, v64);
        if (qword_2804004B0 != -1)
        {
          swift_once();
        }

        v63 = v4 + 1;
        v15 = &unk_287C04288;
        if (dword_280406E84 != 1)
        {
          v15 = v3;
        }

        if (dword_280406E84 == 3)
        {
          v16 = &unk_287C04260;
        }

        else
        {
          v16 = v15;
        }

        v17 = v69;
        if (*(v69 + 16) && (v18 = *(v16 + 2)) != 0)
        {
          v19 = 0;
          v20 = v69 + 56;
          while (1)
          {
            v64[0] = v16[v19 + 32];
            if (*(v17 + 16))
            {
              sub_26B471350();
              v21 = sub_26B5429B4();
              v22 = -1 << *(v17 + 32);
              v23 = v21 & ~v22;
              if ((*(v20 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
              {
                break;
              }
            }

LABEL_16:
            if (++v19 == v18)
            {
              goto LABEL_4;
            }
          }

          v24 = ~v22;
          sub_26B4713A4();
          while ((sub_26B542A34() & 1) == 0)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v20 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v62;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26B4A2120(0, *(v62 + 16) + 1, 1);
            v26 = v62;
          }

          v3 = MEMORY[0x277D84F90];
          v1 = v60;
          ++v4;
          v28 = *(v26 + 16);
          v27 = *(v26 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_26B4A2120((v27 > 1), v28 + 1, 1);
            v26 = v62;
          }

          *(v26 + 16) = v28 + 1;
          v62 = v26;
          v29 = v26 + 184 * v28;
          v30 = v65;
          v31 = v66;
          v32 = v68;
          *(v29 + 64) = v67;
          *(v29 + 80) = v32;
          *(v29 + 32) = v30;
          *(v29 + 48) = v31;
          v33 = v69;
          v34 = v70;
          v35 = v72;
          *(v29 + 128) = v71;
          *(v29 + 144) = v35;
          *(v29 + 96) = v33;
          *(v29 + 112) = v34;
          v36 = v73;
          v37 = v74;
          v38 = v75;
          *(v29 + 208) = v76;
          *(v29 + 176) = v37;
          *(v29 + 192) = v38;
          *(v29 + 160) = v36;
          if (v63 == v61)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_4:

          sub_26B4A51BC(&v65);
          v1 = v60;
          ++v4;
          v3 = MEMORY[0x277D84F90];
          if (v63 == v61)
          {
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
LABEL_30:

      v39 = *(v62 + 16);
      if (!v39)
      {
LABEL_37:

        return;
      }

      sub_26B4A2140(0, v39, 0);
      v40 = v62;
      v41 = v39 - 1;
      for (i = 32; ; i += 184)
      {
        v43 = (v40 + i);
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[3];
        v67 = v43[2];
        v68 = v46;
        v65 = v44;
        v66 = v45;
        v47 = v43[4];
        v48 = v43[5];
        v49 = v43[7];
        v71 = v43[6];
        v72 = v49;
        v69 = v47;
        v70 = v48;
        v50 = v43[8];
        v51 = v43[9];
        v52 = v43[10];
        v76 = *(v43 + 22);
        v74 = v51;
        v75 = v52;
        v73 = v50;
        sub_26B4A5160(&v65, v64);
        sub_26B49FAB4();
        v53 = sub_26B542CD4();
        if (!v53[2])
        {
          break;
        }

        v54 = v53[4];
        v55 = v53[5];

        sub_26B4A51BC(&v65);
        v57 = v3[2];
        v56 = v3[3];
        if (v57 >= v56 >> 1)
        {
          sub_26B4A2140((v56 > 1), v57 + 1, 1);
        }

        v3[2] = v57 + 1;
        v58 = &v3[2 * v57];
        v58[4] = v54;
        v58[5] = v55;
        if (!v41)
        {
          goto LABEL_37;
        }

        --v41;
        v40 = v62;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id VCCommandCollectionObjC.init()()
{
  v1 = (v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);
  *v1 = 0u;
  v1[1] = 0u;
  *(v1 + 26) = 0u;
  v3.super_class = VCCommandCollectionObjC;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_26B4C182C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC0, &unk_26B545240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_26B4C1920(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B4C1A64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC0, &unk_26B545240);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double sub_26B4C1AD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26B4A19F4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26B4C21A0();
      v10 = v12;
    }

    sub_26B4A5218((*(v10 + 56) + 32 * v8), a3);
    sub_26B4C1E34(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26B4C1B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
  v33 = v4;
  result = sub_26B542E54();
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
        sub_26B4A5218(v24, v34);
      }

      else
      {
        sub_26B4C69C4(v24, v34);
      }

      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
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
      result = sub_26B4A5218(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_26B4C1E34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B542D04() + 1) & ~v5;
    do
    {
      sub_26B543034();

      sub_26B542AE4();
      v10 = sub_26B543054();

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
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_26B4C1FE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B4A19F4(a2, a3);
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
      sub_26B4C21A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26B4C1B7C(v16, a4 & 1);
    v11 = sub_26B4A19F4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26B542FE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_26B4A5218(a1, v22);
  }

  else
  {
    sub_26B4C2134(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_26B4C2134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B4A5218(a4, (a5[7] + 32 * a1));
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

void *sub_26B4C21A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
  v2 = *v0;
  v3 = sub_26B542E44();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26B4C69C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26B4A5218(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B4C2344(unsigned __int8 *a1, unsigned __int8 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), void (*a6)(void, unint64_t, uint64_t))
{
  v19 = a2;
  v10 = *v6;
  a3();
  v11 = sub_26B5429B4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    a5();
    while ((sub_26B542A34() & 1) == 0)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v16 = (*(v10 + 48) + v13);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v6;
    a6(v19, v13, isUniquelyReferenced_nonNull_native);
    *v6 = v18;
    v16 = &v19;
    result = 1;
  }

  *a1 = *v16;
  return result;
}

uint64_t sub_26B4C2490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4C443C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_26B4C2568(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4C24FC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4C4450(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26B4C2660(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4C2568(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4C2958(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B4C2768(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B4C2660(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4C2EF8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B4C2834(0, v2, 1, a1);
  }

  return result;
}

BOOL sub_26B4C2768(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 1);
      v15 = v9;
      v14 = v12;
      result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v15, &v14);
      if (!result)
      {
LABEL_4:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4C2834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
    sub_26B4C6960();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_26B5429E4();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 24);
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 16);
      v12 = *v10;
      *v10 = *(v10 - 24);
      *(v10 + 2) = *(v10 - 1);
      *(v10 - 8) = v11;
      *(v10 - 24) = v12;
      v10 = (v10 - 24);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4C2958(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3;
  v81 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_26B4A3E78(v9);
      v9 = result;
    }

    v89 = v9;
    v75 = *(v9 + 2);
    if (v75 >= 2)
    {
      while (*v6)
      {
        v76 = *&v9[16 * v75];
        v77 = *&v9[16 * v75 + 24];
        sub_26B4C359C(*v6 + v76, *v6 + *&v9[16 * v75 + 16], *v6 + v77, v5);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v75 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v78 = &v9[16 * v75];
        *v78 = v76;
        *(v78 + 1) = v77;
        v89 = v9;
        result = sub_26B4A3DEC(v75 - 1);
        v9 = v89;
        v75 = *(v89 + 2);
        if (v75 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *v6;
      v11 = *(*v6 + v10);
      v86 = *(*v6 + v8);
      v85 = v11;
      result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v86, &v85);
      v12 = result;
      v13 = v10;
      while (v7 - 2 != v13)
      {
        v14 = *(v5 + v13 + 1);
        v84 = *(v5 + v13 + 2);
        v83 = v14;
        result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v84, &v83);
        ++v13;
        if ((v12 & 1) != (result & 1))
        {
          v7 = v13 + 1;
          break;
        }
      }

      v6 = a3;
      if (v12)
      {
        if (v7 < v10)
        {
          goto LABEL_120;
        }

        if (v10 < v7)
        {
          v15 = v7 - 1;
          v16 = v10;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v17 = v19[v16];
              v19[v16] = v19[v15];
              v19[v15] = v17;
            }
          }

          while (++v16 < v15--);
        }
      }

      v8 = v7;
    }

    v20 = v6[1];
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v20)
        {
          v21 = v6[1];
        }

        else
        {
          v21 = (v10 + a4);
        }

        if (v21 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v21)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_26B4A276C((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v8;
    v33 = *v81;
    if (!*v81)
    {
      goto LABEL_128;
    }

    if (v30)
    {
      v6 = a3;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_60:
          if (v38)
          {
            goto LABEL_107;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_110;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_114;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_74:
        if (v56)
        {
          goto LABEL_109;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_112;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_81:
        v5 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v72 = *&v9[16 * v5 + 32];
        v73 = *&v9[16 * v34 + 40];
        sub_26B4C359C(*a3 + v72, *a3 + *&v9[16 * v34 + 32], *a3 + v73, v33);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v74 = &v9[16 * v5];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        v89 = v9;
        result = sub_26B4A3DEC(v34);
        v9 = v89;
        v31 = *(v89 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_105;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_106;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_108;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_111;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v6 = a3;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v22 = *v6;
  v23 = v10;
  v24 = *v6 + v8;
  v79 = v23;
  v6 = (v23 - v8);
LABEL_32:
  v25 = v22[v8];
  v5 = v6;
  v26 = v24;
  while (1)
  {
    v27 = *(v26 - 1);
    v88 = v25;
    v87 = v27;
    result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v88, &v87);
    if ((result & 1) == 0)
    {
LABEL_31:
      ++v8;
      ++v24;
      v6 = (v6 - 1);
      if (v8 != v21)
      {
        goto LABEL_32;
      }

      v8 = v21;
      v10 = v79;
      goto LABEL_39;
    }

    if (!v22)
    {
      break;
    }

    v25 = *v26;
    *v26 = *(v26 - 1);
    *--v26 = v25;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_31;
    }
  }

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
  return result;
}

uint64_t sub_26B4C2EF8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26B4A3E78(v10);
      v10 = result;
    }

    v80 = *(v10 + 16);
    if (v80 >= 2)
    {
      while (*v6)
      {
        v81 = *(v10 + 16 * v80);
        v82 = v10;
        v83 = *(v10 + 16 * (v80 - 1) + 32);
        v10 = *(v10 + 16 * (v80 - 1) + 40);
        sub_26B4C37C0((*v6 + 24 * v81), (*v6 + 24 * v83), *v6 + 24 * v10, v7);
        if (v5)
        {
        }

        if (v10 < v81)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_26B4A3E78(v82);
        }

        if (v80 - 2 >= *(v82 + 2))
        {
          goto LABEL_116;
        }

        v84 = &v82[16 * v80];
        *v84 = v81;
        *(v84 + 1) = v10;
        result = sub_26B4A3DEC(v80 - 1);
        v10 = v82;
        v80 = *(v82 + 2);
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v87 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v7 = 24 * v11;
      v13 = *v6 + 24 * v11 + 64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
      sub_26B4C6960();
      result = sub_26B5429E4();
      v14 = result;
      v88 = v11;
      v15 = v11 + 2;
      while (v8 != v15)
      {
        result = sub_26B5429E4();
        ++v15;
        v13 += 24;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v15 - 1;
          break;
        }
      }

      v11 = v88;
      v6 = a3;
      if (v14)
      {
        if (v8 < v88)
        {
          goto LABEL_119;
        }

        if (v88 < v8)
        {
          v16 = 0;
          v17 = 24 * v8;
          v18 = v88;
          do
          {
            if (v18 != v8 + v16 - 1)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v19 = (v24 + v7);
              v20 = v24 + v17;
              v21 = *(v19 + 16);
              v22 = *v19;
              v23 = *(v20 - 8);
              *v19 = *(v20 - 24);
              *(v19 + 2) = v23;
              *(v20 - 24) = v22;
              *(v20 - 8) = v21;
            }

            ++v18;
            --v16;
            v17 -= 24;
            v7 += 24;
          }

          while (v18 < v8 + v16);
        }
      }

      v7 = v87;
    }

    v25 = v6[1];
    if (v8 < v25)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_118;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 < v25)
        {
          v25 = v11 + a4;
        }

        if (v25 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v25)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v8 < v11)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v34 = *(v10 + 16);
    v33 = *(v10 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_26B4A276C((v33 > 1), v34 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v35;
    v36 = v10 + 16 * v34;
    *(v36 + 32) = v11;
    *(v36 + 40) = v8;
    v37 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v92 = v8;
    if (v34)
    {
      v6 = a3;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v10 + 32);
          v40 = *(v10 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_59:
          if (v42)
          {
            goto LABEL_106;
          }

          v55 = (v10 + 16 * v35);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = (v10 + 32 + 16 * v38);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_113;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v65 = (v10 + 16 * v35);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_73:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = v10 + 16 * v38;
        v70 = *(v68 + 32);
        v69 = *(v68 + 40);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_111;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_80:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = *(v10 + 32 + 16 * v76);
        v78 = *(v10 + 32 + 16 * v38 + 8);
        sub_26B4C37C0((*a3 + 24 * v77), (*a3 + 24 * *(v10 + 32 + 16 * v38)), *a3 + 24 * v78, v37);
        if (v5)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v76 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v79 = v10 + 16 * v76;
        *(v79 + 32) = v77;
        *(v79 + 40) = v78;
        result = sub_26B4A3DEC(v38);
        v35 = *(v10 + 16);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = v10 + 32 + 16 * v35;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_104;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_105;
      }

      v50 = (v10 + 16 * v35);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_107;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = (v10 + 32 + 16 * v38);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    v6 = a3;
LABEL_4:
    v8 = v6[1];
    v9 = v92;
    if (v92 >= v8)
    {
      goto LABEL_90;
    }
  }

  v91 = v25;
  v85 = v5;
  v26 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
  sub_26B4C6960();
  v27 = (v26 + 24 * v8);
  v89 = v11;
  v28 = v11 - v8;
LABEL_31:
  v29 = v28;
  v6 = v27;
  while (1)
  {
    result = sub_26B5429E4();
    if ((result & 1) == 0)
    {
LABEL_30:
      ++v8;
      v27 += 3;
      --v28;
      if (v8 != v91)
      {
        goto LABEL_31;
      }

      v5 = v85;
      v7 = v87;
      v11 = v89;
      v8 = v91;
      goto LABEL_38;
    }

    if (!v26)
    {
      break;
    }

    v30 = *(v6 + 16);
    v31 = *v6;
    *v6 = *(v6 - 3);
    v6[2] = *(v6 - 1);
    *(v6 - 8) = v30;
    *(v6 - 3) = v31;
    v6 -= 3;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_26B4C359C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *--v16;
          v19 = *v15;
          v24 = v18;
          v23 = v19;
          if (static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v24, &v23))
          {
            break;
          }

          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v22 = *v6;
        v21 = v11;
        if (static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v22, &v21))
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26B4C37C0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_35;
    }

    sub_26B4C6960();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
      if ((sub_26B5429E4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_35;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_14;
  }

  v17 = 24 * v11;
  if (a4 != __dst || &__dst[v17] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
    sub_26B4C6960();
    do
    {
      v24 = v6 - 24;
      v5 -= 24;
      v18 = v13;
      while (1)
      {
        v19 = (v5 + 24);
        v18 -= 24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        if (sub_26B5429E4())
        {
          break;
        }

        if (v19 != v13)
        {
          v20 = *v18;
          *(v5 + 16) = *(v18 + 16);
          *v5 = v20;
        }

        v5 -= 24;
        v13 = v18;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_35;
        }
      }

      if (v19 != v6)
      {
        v21 = *v24;
        *(v5 + 16) = *(v6 - 1);
        *v5 = v21;
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 24;
    }

    while (v24 > v7);
    v6 = v24;
  }

LABEL_35:
  v22 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v22])
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_26B4C3ABC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26B542D34();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v30 = *(*(v7 + 48) + (v18 | (v10 << 6)));
      a4();
      result = sub_26B5429B4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v16 + 8 * v23);
          if (v27 != -1)
          {
            v17 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v30;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v7 + 32);
    if (v28 >= 64)
    {
      bzero((v7 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v28;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_26B4C3D14(uint64_t result, unint64_t a2, char a3)
{
  v14 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B4C3ABC(v5 + 1, &qword_2803FFC50, &unk_26B545500, sub_26B471200, &type metadata for VCCommand.Engine);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26B4C40E4(&qword_2803FFC50, &unk_26B545500);
      goto LABEL_12;
    }

    sub_26B4C4214(v5 + 1, &qword_2803FFC50, &unk_26B545500, sub_26B471200, &type metadata for VCCommand.Engine);
  }

  v7 = *v3;
  sub_26B471200();
  result = sub_26B5429B4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_26B471254();
    do
    {
      result = sub_26B542A34();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v10 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v14;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

uint64_t sub_26B4C3EFC(uint64_t result, unint64_t a2, char a3)
{
  v14 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B4C3ABC(v5 + 1, &qword_2803FFC80, &qword_26B5450E8, sub_26B471350, &type metadata for VCCommand.Idiom);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26B4C40E4(&qword_2803FFC80, &qword_26B5450E8);
      goto LABEL_12;
    }

    sub_26B4C4214(v5 + 1, &qword_2803FFC80, &qword_26B5450E8, sub_26B471350, &type metadata for VCCommand.Idiom);
  }

  v7 = *v3;
  sub_26B471350();
  result = sub_26B5429B4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_26B4713A4();
    do
    {
      result = sub_26B542A34();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v10 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v14;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

void *sub_26B4C40E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26B542D24();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_26B4C4214(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v7 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26B542D34();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v28 = *(*(v7 + 48) + (v17 | (v10 << 6)));
      a4();
      result = sub_26B5429B4();
      v20 = -1 << *(v9 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v15 + 8 * v22);
          if (v26 != -1)
          {
            v16 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v28;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v5;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

uint64_t _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE03allE11IdentifiersSaySSGyFZ_0()
{
  if (qword_2804004B8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v0 = qword_2804004C0;
    if (qword_2804004C0 >> 62)
    {
      v1 = sub_26B542E34();
    }

    else
    {
      v1 = *((qword_2804004C0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return v2;
    }

    v42 = MEMORY[0x277D84F90];
    result = sub_26B4A2140(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v4 = 0;
    v2 = v42;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D677E50](v4, v0);
      }

      else
      {
        if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v0 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v9 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand];
      v8 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v31 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v32 = v7;
      v29 = v9;
      v30 = v8;
      v10 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v12 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v11 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v35 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v36 = v10;
      v33 = v12;
      v34 = v11;
      v14 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v13 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v15 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v40 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v38 = v14;
      v39 = v13;
      v37 = v15;
      memmove(__dst, &v5[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
      result = sub_26B4C4C80(__dst);
      if (result == 1)
      {
        goto LABEL_26;
      }

      v25 = __dst[0];
      v26 = __dst[1];
      v23 = 95;
      v24 = 0xE100000000000000;
      v27[8] = v37;
      v27[9] = v38;
      v27[10] = v39;
      v28 = v40;
      v27[4] = v33;
      v27[5] = v34;
      v27[6] = v35;
      v27[7] = v36;
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_26B4A5160(v27, v22);
      sub_26B49FAB4();
      v16 = sub_26B542CD4();
      if (!v16[2])
      {
        break;
      }

      v17 = v16[4];
      v18 = v16[5];

      sub_26B4A4CBC(&v29, &qword_2803FFD30, &qword_26B545410);

      v42 = v2;
      v20 = *(v2 + 16);
      v19 = *(v2 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26B4A2140((v19 > 1), v20 + 1, 1);
        v2 = v42;
      }

      *(v2 + 16) = v20 + 1;
      v21 = v2 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      if (v1 - 1 == v4)
      {
        return v2;
      }

      if (__OFADD__(++v4, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE7command14withIdentifierABSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  __dst[0] = a1;
  __dst[1] = a2;
  v50 = 95;
  v51 = 0xE100000000000000;
  sub_26B49FAB4();
  v2 = sub_26B542CD4();
  if (!v2[2])
  {
    goto LABEL_34;
  }

  v41 = v2[5];
  v42 = v2[4];

  if (qword_2804004C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v3 = qword_2804004D0;
    v53 = MEMORY[0x277D84F90];
    if (qword_2804004D0 >> 62)
    {
      v4 = sub_26B542E34();
    }

    else
    {
      v4 = *((qword_2804004D0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      v40 = v3;
      while (1)
      {
        if (v7)
        {
          v9 = MEMORY[0x26D677E50](v6, v3);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_32;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_31;
        }

        v12 = &v9[OBJC_IVAR___VCCommandObjC_representedCommand];
        memmove(__dst, &v9[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
        if (sub_26B4C4C80(__dst) != 1)
        {
          break;
        }

LABEL_8:
        ++v6;
        if (v11 == v4)
        {
          v29 = v53;
          v5 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }

      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 3);
      v48[2] = *(v12 + 2);
      v48[3] = v15;
      v48[0] = v13;
      v48[1] = v14;
      v16 = *(v12 + 4);
      v17 = *(v12 + 5);
      v18 = *(v12 + 7);
      v48[6] = *(v12 + 6);
      v48[7] = v18;
      v48[4] = v16;
      v48[5] = v17;
      v19 = *(v12 + 8);
      v20 = *(v12 + 9);
      v21 = *(v12 + 10);
      v49 = *(v12 + 22);
      v48[9] = v20;
      v48[10] = v21;
      v48[8] = v19;
      memmove(&v50, v12, 0xB8uLL);
      v46 = v50;
      v47 = v51;
      v44 = 95;
      v45 = 0xE100000000000000;
      sub_26B4A5160(&v50, v43);
      v22 = sub_26B542CD4();
      if (!v22[2])
      {
        goto LABEL_33;
      }

      v23 = v4;
      v24 = v8;
      v25 = v7;
      v27 = v22[4];
      v26 = v22[5];

      sub_26B4A4CBC(v48, &qword_2803FFD30, &qword_26B545410);
      if (v27 == v42 && v26 == v41)
      {
      }

      else
      {
        v28 = sub_26B542FB4();

        if ((v28 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      sub_26B542DD4();
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
LABEL_21:
      v7 = v25;
      v8 = v24;
      v4 = v23;
      v3 = v40;
      goto LABEL_8;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_25:

    if (!*(v29 + 16))
    {
      goto LABEL_38;
    }

LABEL_28:
    if ((v29 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*(v29 + 16))
    {
      goto LABEL_67;
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
    swift_once();
  }

  if (sub_26B542E34())
  {
    goto LABEL_28;
  }

LABEL_38:

  if (qword_2804004B8 != -1)
  {
LABEL_60:
    swift_once();
  }

  v30 = qword_2804004C0;
  v50 = v5;
  if (qword_2804004C0 >> 62)
  {
    v31 = sub_26B542E34();
    if (v31)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v31 = *((qword_2804004C0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_41:
      v32 = 0;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x26D677E50](v32, v30);
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v33 = *(v30 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v5 = &v33[OBJC_IVAR___VCCommandObjC_representedCommand];
        memmove(__dst, &v33[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
        if (sub_26B4C4C80(__dst) != 1 && (*v5 == a1 ? (v36 = v5[1] == a2) : (v36 = 0), v36 || (sub_26B542FB4() & 1) != 0))
        {
          sub_26B542DD4();
          sub_26B542E04();
          sub_26B542E14();
          v5 = &v50;
          sub_26B542DE4();
        }

        else
        {
        }

        ++v32;
      }

      while (v35 != v31);
      v29 = v50;
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  v29 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

LABEL_63:
  if ((v29 & 0x4000000000000000) != 0)
  {
LABEL_70:
    if (!sub_26B542E34())
    {
      goto LABEL_68;
    }

LABEL_65:
    if ((v29 & 0xC000000000000001) != 0)
    {
LABEL_69:
      MEMORY[0x26D677E50](0, v29);
      goto LABEL_68;
    }

    if (*(v29 + 16))
    {
LABEL_67:
      v37 = *(v29 + 32);
      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    if (*(v29 + 16))
    {
      goto LABEL_65;
    }

LABEL_68:
  }
}

double sub_26B4C4C5C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_26B4C4C80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_26B4C4C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
    v3 = sub_26B542E64();
    v4 = a1 + 32;

    while (1)
    {
      sub_26B4C68C8(v4, &v13, &qword_2803FFD80, &qword_26B5454C0);
      v5 = v13;
      v6 = v14;
      result = sub_26B4A19F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B4A5218(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_26B4C4DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_26B4C4E18(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B542B04();

    return sub_26B542BA4();
  }

  return result;
}

unint64_t sub_26B4C4EB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26B542B04();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26B542BA4();
}

uint64_t sub_26B4C4F64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471350();
  result = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Idiom, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26B4C2344(&v7, v6, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4, sub_26B4C3EFC);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26B4C5020(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471200();
  result = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Engine, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26B4C2344(&v7, v6, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254, sub_26B4C3D14);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_26B4C50DC(void *result, uint64_t *a2, uint64_t a3)
{
  if (*result != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v3 = *a2;
    if (*a2 >> 62)
    {
      v4 = sub_26B542E34();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (!v4)
    {
      return v5;
    }

    v46 = MEMORY[0x277D84F90];
    v6 = sub_26B4A2140(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v7 = 0;
    v5 = v46;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D677E50](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v12 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand];
      v11 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v35 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v36 = v10;
      v33 = v12;
      v34 = v11;
      v13 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v15 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v14 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v39 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v40 = v13;
      v37 = v15;
      v38 = v14;
      v17 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v16 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v18 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v44 = *&v8[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v42 = v17;
      v43 = v16;
      v41 = v18;
      memmove(__dst, &v8[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
      v6 = sub_26B4C4C80(__dst);
      if (v6 == 1)
      {
        goto LABEL_26;
      }

      v29 = __dst[0];
      v30 = __dst[1];
      v27 = 95;
      v28 = 0xE100000000000000;
      v31[8] = v41;
      v31[9] = v42;
      v31[10] = v43;
      v32 = v44;
      v31[4] = v37;
      v31[5] = v38;
      v31[6] = v39;
      v31[7] = v40;
      v31[0] = v33;
      v31[1] = v34;
      v31[2] = v35;
      v31[3] = v36;
      sub_26B4A5160(v31, v26);
      sub_26B49FAB4();
      v19 = sub_26B542CD4();
      if (!v19[2])
      {
        break;
      }

      v20 = v19[4];
      v21 = v19[5];

      sub_26B4A4CBC(&v33, &qword_2803FFD30, &qword_26B545410);
      v46 = v5;
      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26B4A2140((v22 > 1), v23 + 1, 1);
        v5 = v46;
      }

      *(v5 + 16) = v23 + 1;
      v24 = v5 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      if (v4 - 1 == v7)
      {
        return v5;
      }

      if (__OFADD__(++v7, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v25 = a2;
    swift_once();
    a2 = v25;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return v6;
}

BOOL _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE47currentDeviceHasSwiftCodingModeSupportForLocaleSbvgZ_0()
{
  v118 = sub_26B542994();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v0, v1, v2);
  v106 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD48, &qword_26B545498);
  MEMORY[0x28223BE20](v114, v4, v5, v6);
  v117 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD50, &qword_26B5454A0);
  v12 = MEMORY[0x28223BE20](v8 - 8, v9, v10, v11);
  v107 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v12, v14, v15, v16);
  v119 = &v105 - v18;
  MEMORY[0x28223BE20](v17, v19, v20, v21);
  v115 = &v105 - v22;
  v23 = sub_26B5428E4();
  v24 = *(v23 - 8);
  v121 = v23;
  v122 = v24;
  MEMORY[0x28223BE20](v23, v25, v26, v27);
  v108 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD60, &qword_26B5454A8);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29, v31, v32, v33);
  v120 = &v105 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD68, &qword_26B5454B0);
  v39 = MEMORY[0x28223BE20](v35 - 8, v36, v37, v38);
  v123 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v39, v41, v42, v43);
  v46 = &v105 - v45;
  MEMORY[0x28223BE20](v44, v47, v48, v49);
  v51 = &v105 - v50;
  v52 = sub_26B542914();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v54, v55, v56);
  v58 = &v105 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26B542934();
  v60 = *(v59 - 8);
  v64 = MEMORY[0x28223BE20](v59, v61, v62, v63);
  v111 = &v105 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v66, v67, v68);
  v70 = &v105 - v69;
  v109 = sub_26B542974();
  v71 = sub_26B542964();
  sub_26B542944();

  sub_26B542924();
  v72 = *(v60 + 8);
  v112 = v60 + 8;
  v113 = v59;
  v73 = v59;
  v74 = v121;
  v110 = v72;
  v72(v70, v73);
  v75 = v51;
  v76 = v120;
  sub_26B542904();
  v77 = v58;
  v78 = v122;
  (*(v53 + 8))(v77, v52);
  sub_26B5428D4();
  (*(v78 + 56))(v46, 0, 1, v74);
  v79 = *(v30 + 56);
  sub_26B4C68C8(v75, v76, &qword_2803FFD68, &qword_26B5454B0);
  sub_26B4C68C8(v46, v76 + v79, &qword_2803FFD68, &qword_26B5454B0);
  v80 = *(v78 + 48);
  if (v80(v76, 1, v74) != 1)
  {
    sub_26B4C68C8(v76, v123, &qword_2803FFD68, &qword_26B5454B0);
    if (v80(v76 + v79, 1, v74) != 1)
    {
      v84 = *(v78 + 32);
      v105 = v75;
      v85 = v108;
      v84(v108, v76 + v79, v74);
      sub_26B4C687C(&qword_2803FFD70, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v86 = v123;
      v87 = sub_26B542A34();
      v88 = *(v78 + 8);
      v88(v85, v74);
      sub_26B4A4CBC(v46, &qword_2803FFD68, &qword_26B5454B0);
      sub_26B4A4CBC(v105, &qword_2803FFD68, &qword_26B5454B0);
      v88(v86, v74);
      sub_26B4A4CBC(v76, &qword_2803FFD68, &qword_26B5454B0);
      if ((v87 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_26B4A4CBC(v46, &qword_2803FFD68, &qword_26B5454B0);
    sub_26B4A4CBC(v75, &qword_2803FFD68, &qword_26B5454B0);
    (*(v78 + 8))(v123, v74);
LABEL_6:
    v81 = &qword_2803FFD60;
    v82 = &qword_26B5454A8;
    v83 = v76;
LABEL_14:
    sub_26B4A4CBC(v83, v81, v82);
    return 0;
  }

  sub_26B4A4CBC(v46, &qword_2803FFD68, &qword_26B5454B0);
  sub_26B4A4CBC(v75, &qword_2803FFD68, &qword_26B5454B0);
  if (v80(v76 + v79, 1, v74) != 1)
  {
    goto LABEL_6;
  }

  sub_26B4A4CBC(v76, &qword_2803FFD68, &qword_26B5454B0);
LABEL_8:
  v89 = sub_26B542964();
  v90 = sub_26B542964();
  v91 = v111;
  sub_26B542944();

  sub_26B5428C4();
  v110(v91, v113);
  v92 = v115;
  sub_26B542954();

  v93 = v116;
  v94 = v118;
  v95 = v119;
  (*(v116 + 104))(v119, *MEMORY[0x277D79868], v118);
  (*(v93 + 56))(v95, 0, 1, v94);
  v96 = *(v114 + 48);
  v97 = v117;
  sub_26B4C68C8(v92, v117, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4C68C8(v95, v97 + v96, &qword_2803FFD50, &qword_26B5454A0);
  v98 = *(v93 + 48);
  if (v98(v97, 1, v94) == 1)
  {
    sub_26B4A4CBC(v95, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v92, &qword_2803FFD50, &qword_26B5454A0);
    if (v98(v97 + v96, 1, v94) == 1)
    {
      sub_26B4A4CBC(v97, &qword_2803FFD50, &qword_26B5454A0);
      return 1;
    }

    goto LABEL_13;
  }

  v99 = v107;
  sub_26B4C68C8(v97, v107, &qword_2803FFD50, &qword_26B5454A0);
  if (v98(v97 + v96, 1, v94) == 1)
  {
    sub_26B4A4CBC(v119, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v92, &qword_2803FFD50, &qword_26B5454A0);
    (*(v93 + 8))(v99, v94);
LABEL_13:
    v81 = &qword_2803FFD48;
    v82 = &qword_26B545498;
    v83 = v97;
    goto LABEL_14;
  }

  v101 = v97 + v96;
  v102 = v106;
  (*(v93 + 32))(v106, v101, v94);
  sub_26B4C687C(&qword_2803FFD58, MEMORY[0x277D79870], MEMORY[0x277D79878]);
  v103 = sub_26B542A34();
  v104 = *(v93 + 8);
  v104(v102, v94);
  sub_26B4A4CBC(v119, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4A4CBC(v92, &qword_2803FFD50, &qword_26B5454A0);
  v104(v99, v94);
  sub_26B4A4CBC(v97, &qword_2803FFD50, &qword_26B5454A0);
  return (v103 & 1) != 0;
}

uint64_t _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE28currentDeviceHasLegacyEngineSbvgZ_0()
{
  v0 = sub_26B542994();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x28223BE20](v0, v1, v2, v3);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD48, &qword_26B545498);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7, v8, v9);
  v11 = &v47 - v10;
  v12 = sub_26B542934();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD50, &qword_26B5454A0);
  v23 = MEMORY[0x28223BE20](v19 - 8, v20, v21, v22);
  v50 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v23, v25, v26, v27);
  v30 = &v47 - v29;
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v35 = &v47 - v34;
  sub_26B542974();
  v36 = sub_26B542964();
  v37 = sub_26B542964();
  sub_26B542944();

  sub_26B5428C4();
  (*(v13 + 8))(v18, v12);
  sub_26B542954();
  v38 = v48;

  v39 = v49;
  (*(v38 + 104))(v30, *MEMORY[0x277D79860], v49);
  (*(v38 + 56))(v30, 0, 1, v39);
  v40 = *(v6 + 56);
  sub_26B4C68C8(v35, v11, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4C68C8(v30, &v11[v40], &qword_2803FFD50, &qword_26B5454A0);
  v41 = *(v38 + 48);
  if (v41(v11, 1, v39) != 1)
  {
    sub_26B4C68C8(v11, v50, &qword_2803FFD50, &qword_26B5454A0);
    if (v41(&v11[v40], 1, v39) != 1)
    {
      v43 = v47;
      (*(v38 + 32))(v47, &v11[v40], v39);
      sub_26B4C687C(&qword_2803FFD58, MEMORY[0x277D79870], MEMORY[0x277D79878]);
      v44 = v50;
      v42 = sub_26B542A34();
      v45 = *(v38 + 8);
      v45(v43, v39);
      sub_26B4A4CBC(v30, &qword_2803FFD50, &qword_26B5454A0);
      sub_26B4A4CBC(v35, &qword_2803FFD50, &qword_26B5454A0);
      v45(v44, v39);
      sub_26B4A4CBC(v11, &qword_2803FFD50, &qword_26B5454A0);
      return v42 & 1;
    }

    sub_26B4A4CBC(v30, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v35, &qword_2803FFD50, &qword_26B5454A0);
    (*(v38 + 8))(v50, v39);
    goto LABEL_6;
  }

  sub_26B4A4CBC(v30, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4A4CBC(v35, &qword_2803FFD50, &qword_26B5454A0);
  if (v41(&v11[v40], 1, v39) != 1)
  {
LABEL_6:
    sub_26B4A4CBC(v11, &qword_2803FFD48, &qword_26B545498);
    v42 = 0;
    return v42 & 1;
  }

  sub_26B4A4CBC(v11, &qword_2803FFD50, &qword_26B5454A0);
  v42 = 1;
  return v42 & 1;
}

unint64_t sub_26B4C62C8()
{
  result = qword_2803FFD38;
  if (!qword_2803FFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFD38);
  }

  return result;
}

char *_sSo23VCCommandCollectionObjCC32SpeechRecognitionCommandServicesE03allB11IdentifiersSaySSGyFZ_0()
{
  if (qword_280400548 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v0 = qword_280400550;
    v19 = MEMORY[0x277D84F90];
    v1 = qword_280400550 >> 62 ? sub_26B542E34() : *((qword_280400550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = MEMORY[0x277D84F90];
    v3 = 0x2803FF000uLL;
    if (v1)
    {
      v4 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D677E50](v4, v0);
        }

        else
        {
          if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          result = *(v0 + 8 * v4 + 32);
        }

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (!*&result[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8])
        {
          goto LABEL_42;
        }

        if (*&result[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 40])
        {
          sub_26B542DD4();
          sub_26B542E04();
          sub_26B542E14();
          sub_26B542DE4();
        }

        else
        {
        }

        ++v4;
      }

      while (v6 != v1);
      v7 = v19;
      v2 = MEMORY[0x277D84F90];
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_19:
        if ((v7 & 0x4000000000000000) == 0)
        {
          v8 = *(v7 + 16);
          if (!v8)
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }
    }

    v8 = sub_26B542E34();
    if (!v8)
    {
LABEL_40:

      return v2;
    }

LABEL_21:
    result = sub_26B4A2140(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D677E50](v9, v7);
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_36;
        }

        result = *(v7 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = &result[*(v3 + 3392)];
      v13 = *(v12 + 1);
      if (!v13)
      {
        goto LABEL_43;
      }

      v14 = v3;
      v15 = *v12;

      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26B4A2140((v16 > 1), v17 + 1, 1);
      }

      *(v2 + 16) = v17 + 1;
      v18 = v2 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v13;
      ++v9;
      v3 = v14;
      if (v10 == v8)
      {
        goto LABEL_40;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void _sSo23VCCommandCollectionObjCC32SpeechRecognitionCommandServicesE10collection14withIdentifierABSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280400548 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = qword_280400550;
  v18 = MEMORY[0x277D84F90];
  if (qword_280400550 >> 62)
  {
    v5 = sub_26B542E34();
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v16 = v4;
      v17 = v4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v7)
        {
          v9 = MEMORY[0x26D677E50](v6, v4);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_22;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v12 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8];
        if (v12 && (*&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection] == a1 ? (v13 = v12 == a2) : (v13 = 0), v13 || (sub_26B542FB4() & 1) != 0))
        {
          sub_26B542DD4();
          sub_26B542E04();
          sub_26B542E14();
          sub_26B542DE4();
          v4 = v16;
          v8 = v17;
        }

        else
        {
        }

        ++v6;
      }

      while (v11 != v5);
      v14 = v18;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v5 = *((qword_280400550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_31:
    if (!sub_26B542E34())
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (!*(v14 + 16))
  {
LABEL_32:

    return;
  }

LABEL_28:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D677E50](0, v14);
    goto LABEL_32;
  }

  if (*(v14 + 16))
  {
    v15 = *(v14 + 32);
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_26B4C6834(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_26B4C687C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B4C68C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B4C6930(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

uint64_t sub_26B4C6948(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

unint64_t sub_26B4C6960()
{
  result = qword_2803FFD98;
  if (!qword_2803FFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFD90, &unk_26B5454D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFD98);
  }

  return result;
}

uint64_t sub_26B4C69C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26B4C6A20()
{
  result = qword_2803FFDA8;
  if (!qword_2803FFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFDA8);
  }

  return result;
}

SpeechRecognitionCommandServices::VCCommand::Platform_optional __swiftcall VCCommand.Platform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCCommand.Platform.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 1397716596;
  v4 = 0x534F6E6F69736976;
  if (v1 != 3)
  {
    v4 = 0x534F6863746177;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F63616DLL;
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

uint64_t sub_26B4C6B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x646F50656D6F68;
    v13 = 1685016681;
    v14 = 0xE400000000000000;
    if (a1 != 8)
    {
      v13 = 0x6863746177;
      v14 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6E6F69736976;
    if (a1 != 5)
    {
      v16 = 0x5654656C707061;
      v15 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE400000000000000;
    v5 = 1684099177;
    v6 = 0xE700000000000000;
    v7 = 0x79616C50726163;
    if (a1 != 3)
    {
      v7 = 0x6C6174614363616DLL;
      v6 = 0xEB00000000747379;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x656E6F685069;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v8 = 6513005;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x6E6F69736976)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x5654656C707061)
        {
LABEL_57:
          v18 = sub_26B542FB4();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x646F50656D6F68)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1685016681)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x6863746177)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE300000000000000;
      if (v9 != 6513005)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE400000000000000;
    if (v9 != 1684099177)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x79616C50726163)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xEB00000000747379;
    if (v9 != 0x6C6174614363616DLL)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_26B4C6E60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F63616DLL;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F6863746177;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F63616DLL;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x534F6E6F69736976;
    if (a2 != 3)
    {
      v6 = 0x534F6863746177;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1397716596;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26B542FB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26B4C6FCC()
{
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4C709C(uint64_t a1)
{
  sub_26B542AE4();
}

uint64_t sub_26B4C7158(uint64_t a1, unsigned __int8 a2)
{
  sub_26B542AE4();
}

uint64_t sub_26B4C72B0(uint64_t a1)
{
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

void sub_26B4C7388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F63616DLL;
    v3 = 0xE500000000000000;
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

Swift::String __swiftcall VCCommand.Idiom.displayName()()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static VCCommand.Idiom.areInIncreasingOrder(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a2;
  while (1)
  {
    v5 = byte_287C04440[v2 + 32];
    if (v5 <= 4)
    {
      break;
    }

    if (byte_287C04440[v2 + 32] <= 6u)
    {
      if (v5 == 5)
      {
        v10 = 0x6E6F69736976;
      }

      else
      {
        v10 = 0x5654656C707061;
      }

      if (v5 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else if (v5 == 7)
    {
      v11 = 0xE700000000000000;
      v10 = 0x646F50656D6F68;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else if (v5 == 8)
    {
      v10 = 1685016681;
      v11 = 0xE400000000000000;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x6863746177;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

LABEL_52:
    v16 = 1685016681;
    if (v3 != 8)
    {
      v16 = 0x6863746177;
    }

    v17 = 0xE500000000000000;
    if (v3 == 8)
    {
      v17 = 0xE400000000000000;
    }

    if (v3 == 7)
    {
      v16 = 0x646F50656D6F68;
      v17 = 0xE700000000000000;
    }

    v18 = 0x5654656C707061;
    if (v3 == 5)
    {
      v18 = 0x6E6F69736976;
      v19 = 0xE600000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    if (v3 <= 6)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (v3 <= 6)
    {
      v15 = v19;
    }

    else
    {
      v15 = v17;
    }

    if (v10 == v20)
    {
      goto LABEL_68;
    }

LABEL_69:
    v21 = sub_26B542FB4();

    if (v21)
    {
      goto LABEL_75;
    }

    if (++v2 == 10)
    {
      __break(1u);
LABEL_150:
      __break(1u);
      return result;
    }
  }

  v6 = 0x6C6174614363616DLL;
  if (v5 == 3)
  {
    v6 = 0x79616C50726163;
  }

  v7 = 0xEB00000000747379;
  if (v5 == 3)
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == 2)
  {
    v6 = 1684099177;
    v7 = 0xE400000000000000;
  }

  v8 = 0x656E6F685069;
  if (!byte_287C04440[v2 + 32])
  {
    v8 = 6513005;
  }

  v9 = 0xE300000000000000;
  if (byte_287C04440[v2 + 32])
  {
    v9 = 0xE600000000000000;
  }

  if (byte_287C04440[v2 + 32] <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (byte_287C04440[v2 + 32] <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v3 > 4)
  {
    goto LABEL_52;
  }

LABEL_35:
  if (v3 <= 1)
  {
    if (v3)
    {
      v15 = 0xE600000000000000;
      if (v10 == 0x656E6F685069)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v10 == 6513005)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_69;
  }

  v12 = 0x6C6174614363616DLL;
  if (v3 == 3)
  {
    v12 = 0x79616C50726163;
  }

  v13 = 0xEB00000000747379;
  if (v3 == 3)
  {
    v13 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v14 = 1684099177;
  }

  else
  {
    v14 = v12;
  }

  if (v3 == 2)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = v13;
  }

  if (v10 != v14)
  {
    goto LABEL_69;
  }

LABEL_68:
  if (v11 != v15)
  {
    goto LABEL_69;
  }

LABEL_75:
  v23 = 0;
  while (2)
  {
    v24 = byte_287C04440[v23 + 32];
    if (v24 > 4)
    {
      if (byte_287C04440[v23 + 32] <= 6u)
      {
        if (v24 == 5)
        {
          v29 = 0x6E6F69736976;
        }

        else
        {
          v29 = 0x5654656C707061;
        }

        if (v24 == 5)
        {
          v30 = 0xE600000000000000;
        }

        else
        {
          v30 = 0xE700000000000000;
        }

        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else if (v24 == 7)
      {
        v30 = 0xE700000000000000;
        v29 = 0x646F50656D6F68;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else if (v24 == 8)
      {
        v29 = 1685016681;
        v30 = 0xE400000000000000;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v30 = 0xE500000000000000;
        v29 = 0x6863746177;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }
    }

    else
    {
      v25 = 0x6C6174614363616DLL;
      if (v24 == 3)
      {
        v25 = 0x79616C50726163;
      }

      v26 = 0xEB00000000747379;
      if (v24 == 3)
      {
        v26 = 0xE700000000000000;
      }

      if (v24 == 2)
      {
        v25 = 1684099177;
        v26 = 0xE400000000000000;
      }

      v27 = 0x656E6F685069;
      if (!byte_287C04440[v23 + 32])
      {
        v27 = 6513005;
      }

      v28 = 0xE300000000000000;
      if (byte_287C04440[v23 + 32])
      {
        v28 = 0xE600000000000000;
      }

      if (byte_287C04440[v23 + 32] <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      if (byte_287C04440[v23 + 32] <= 1u)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v4 > 4)
      {
LABEL_126:
        v35 = 1685016681;
        if (v4 != 8)
        {
          v35 = 0x6863746177;
        }

        v36 = 0xE500000000000000;
        if (v4 == 8)
        {
          v36 = 0xE400000000000000;
        }

        if (v4 == 7)
        {
          v35 = 0x646F50656D6F68;
          v36 = 0xE700000000000000;
        }

        v37 = 0x5654656C707061;
        if (v4 == 5)
        {
          v37 = 0x6E6F69736976;
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
        }

        if (v4 <= 6)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v4 <= 6)
        {
          v34 = v38;
        }

        else
        {
          v34 = v36;
        }

        if (v29 == v39)
        {
          goto LABEL_142;
        }

        goto LABEL_143;
      }
    }

    if (v4 <= 1)
    {
      if (v4)
      {
        v34 = 0xE600000000000000;
        if (v29 == 0x656E6F685069)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v34 = 0xE300000000000000;
        if (v29 == 6513005)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

    v31 = 0x6C6174614363616DLL;
    if (v4 == 3)
    {
      v31 = 0x79616C50726163;
    }

    v32 = 0xEB00000000747379;
    if (v4 == 3)
    {
      v32 = 0xE700000000000000;
    }

    if (v4 == 2)
    {
      v33 = 1684099177;
    }

    else
    {
      v33 = v31;
    }

    if (v4 == 2)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = v32;
    }

    if (v29 != v33)
    {
      goto LABEL_143;
    }

LABEL_142:
    if (v30 != v34)
    {
LABEL_143:
      v40 = sub_26B542FB4();

      if (v40)
      {
        return v2 < v23;
      }

      if (++v23 == 10)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  return v2 < v23;
}

uint64_t VCCommand.Idiom.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x646F50656D6F68;
    v7 = 1685016681;
    if (v1 != 8)
    {
      v7 = 0x6863746177;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6E6F69736976;
    if (v1 != 5)
    {
      v8 = 0x5654656C707061;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 6513005;
    v3 = 1684099177;
    v4 = 0x79616C50726163;
    if (v1 != 3)
    {
      v4 = 0x6C6174614363616DLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x656E6F685069;
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
}

uint64_t sub_26B4C7F38(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

SpeechRecognitionCommandServices::VCCommand::Idiom_optional __swiftcall VCCommand.Idiom.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4C8060()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B4C7158(v3, v1);
  return sub_26B543054();
}

uint64_t sub_26B4C80B0(uint64_t a1)
{
  v2 = *v1;
  sub_26B543034();
  sub_26B4C7158(v4, v2);
  return sub_26B543054();
}

uint64_t sub_26B4C8100@<X0>(uint64_t *a1@<X8>)
{
  result = VCCommand.Idiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SpeechRecognitionCommandServices::VCCommand::UserImpact_optional __swiftcall VCCommand.UserImpact.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26B4C82E4()
{
  v1 = 0x6C616D726F4ELL;
  v2 = 0x7065656C53;
  if (*v0 != 2)
  {
    v2 = 0x6F68706F7263694DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_26B4C8368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B4D9B94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B4C83A8(uint64_t a1)
{
  v2 = sub_26B4C8A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C83E4(uint64_t a1)
{
  v2 = sub_26B4C8A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C842C(uint64_t a1)
{
  v2 = sub_26B4C8AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C8468(uint64_t a1)
{
  v2 = sub_26B4C8AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C84A4(uint64_t a1)
{
  v2 = sub_26B4C8B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C84E0(uint64_t a1)
{
  v2 = sub_26B4C8B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C851C(uint64_t a1)
{
  v2 = sub_26B4C8BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C8558(uint64_t a1)
{
  v2 = sub_26B4C8BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C8594(uint64_t a1)
{
  v2 = sub_26B4C8AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C85D0(uint64_t a1)
{
  v2 = sub_26B4C8AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.InteractionLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDB0, &qword_26B545558);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v45 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDB8, &qword_26B545560);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v42 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDC0, &qword_26B545568);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v39 = &v37 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDC8, &qword_26B545570);
  v37 = *(v18 - 8);
  v38 = v18;
  MEMORY[0x28223BE20](v18, v19, v20, v21);
  v23 = &v37 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDD0, &qword_26B545578);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26, v27, v28);
  v30 = &v37 - v29;
  v31 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C8A50();
  sub_26B543074();
  v32 = (v25 + 8);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v50 = 2;
      sub_26B4C8AF8();
      v33 = v42;
      sub_26B542F14();
      v35 = v43;
      v34 = v44;
    }

    else
    {
      v51 = 3;
      sub_26B4C8AA4();
      v33 = v45;
      sub_26B542F14();
      v35 = v46;
      v34 = v47;
    }

    goto LABEL_8;
  }

  if (v31)
  {
    v49 = 1;
    sub_26B4C8B4C();
    v33 = v39;
    sub_26B542F14();
    v35 = v40;
    v34 = v41;
LABEL_8:
    (*(v35 + 8))(v33, v34);
    return (*v32)(v30, v24);
  }

  v48 = 0;
  sub_26B4C8BA0();
  sub_26B542F14();
  (*(v37 + 8))(v23, v38);
  return (*v32)(v30, v24);
}

unint64_t sub_26B4C8A50()
{
  result = qword_280400610;
  if (!qword_280400610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400610);
  }

  return result;
}

unint64_t sub_26B4C8AA4()
{
  result = qword_280400618;
  if (!qword_280400618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400618);
  }

  return result;
}

unint64_t sub_26B4C8AF8()
{
  result = qword_280400620;
  if (!qword_280400620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400620);
  }

  return result;
}

unint64_t sub_26B4C8B4C()
{
  result = qword_280400628;
  if (!qword_280400628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400628);
  }

  return result;
}

unint64_t sub_26B4C8BA0()
{
  result = qword_280400630;
  if (!qword_280400630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400630);
  }

  return result;
}

uint64_t VCCommand.InteractionLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v60 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDD8, &qword_26B545580);
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v3, v4, v5);
  v62 = v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDE0, &qword_26B545588);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x28223BE20](v7, v9, v10, v11);
  v61 = v50 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDE8, &qword_26B545590);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v13, v14, v15);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDF0, &qword_26B545598);
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19, v20, v21);
  v23 = v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDF8, &qword_26B5455A0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26, v27, v28);
  v30 = v50 - v29;
  v31 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_26B4C8A50();
  v32 = v63;
  sub_26B543064();
  if (!v32)
  {
    v51 = v18;
    v52 = 0;
    v33 = v61;
    v34 = v62;
    v63 = v25;
    v35 = v30;
    v36 = sub_26B542EF4();
    v37 = *(v36 + 16);
    if (!v37 || ((v38 = *(v36 + 32), v37 == 1) ? (v39 = v38 == 4) : (v39 = 1), v39))
    {
      v40 = sub_26B542DB4();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8);
      *v42 = &type metadata for VCCommand.InteractionLevel;
      sub_26B542E94();
      sub_26B542DA4();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v63 + 8))(v35, v24);
    }

    else
    {
      v50[1] = v36;
      if (v38 <= 1)
      {
        if (v38)
        {
          v66 = 1;
          sub_26B4C8B4C();
          v47 = v52;
          sub_26B542E84();
          if (!v47)
          {
            (*(v53 + 8))(v17, v56);
            goto LABEL_23;
          }
        }

        else
        {
          v65 = 0;
          sub_26B4C8BA0();
          v43 = v52;
          sub_26B542E84();
          if (!v43)
          {
            (*(v54 + 8))(v23, v51);
LABEL_23:
            (*(v63 + 8))(v30, v24);
LABEL_25:
            swift_unknownObjectRelease();
            *v60 = v38;
            return __swift_destroy_boxed_opaque_existential_1(v64);
          }
        }

        (*(v63 + 8))(v30, v24);
        goto LABEL_20;
      }

      v44 = v60;
      v45 = v63;
      if (v38 == 2)
      {
        v67 = 2;
        sub_26B4C8AF8();
        v46 = v52;
        sub_26B542E84();
        if (!v46)
        {
          (*(v58 + 8))(v33, v57);
          (*(v45 + 8))(v35, v24);
          swift_unknownObjectRelease();
          *v44 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v64);
        }
      }

      else
      {
        v68 = 3;
        sub_26B4C8AA4();
        v48 = v52;
        sub_26B542E84();
        if (!v48)
        {
          (*(v55 + 8))(v34, v59);
          (*(v45 + 8))(v35, v24);
          goto LABEL_25;
        }
      }

      (*(v45 + 8))(v35, v24);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_26B4C92CC(uint64_t a1)
{
  v2 = sub_26B4C9994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C9308(uint64_t a1)
{
  v2 = sub_26B4C9994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C9344()
{
  v1 = 0x6465646E756F42;
  if (*v0 != 1)
  {
    v1 = 0x65646E756F626E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_26B4C939C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26B4D9ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26B4C93D0(uint64_t a1)
{
  v2 = sub_26B4C98EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C940C(uint64_t a1)
{
  v2 = sub_26B4C98EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C9448@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_26B4C9484(uint64_t a1)
{
  v2 = sub_26B4C99E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C94C0(uint64_t a1)
{
  v2 = sub_26B4C99E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C94FC(uint64_t a1)
{
  v2 = sub_26B4C9940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C9538(uint64_t a1)
{
  v2 = sub_26B4C9940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.ParameterType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE08, &qword_26B5455B0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v36 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE10, &qword_26B5455B8);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v33 = &v30 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE18, &qword_26B5455C0);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE20, &qword_26B5455C8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21, v22, v23);
  v25 = &v30 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C98EC();
  sub_26B543074();
  if (v26)
  {
    if (v26 == 1)
    {
      v40 = 1;
      sub_26B4C9994();
      v18 = v33;
      sub_26B542F14();
      v28 = v34;
      v27 = v35;
    }

    else
    {
      v41 = 2;
      sub_26B4C9940();
      v18 = v36;
      sub_26B542F14();
      v28 = v37;
      v27 = v38;
    }
  }

  else
  {
    v39 = 0;
    sub_26B4C99E8();
    sub_26B542F14();
    v28 = v31;
    v27 = v32;
  }

  (*(v28 + 8))(v18, v27);
  return (*(v20 + 8))(v25, v19);
}

unint64_t sub_26B4C98EC()
{
  result = qword_280400638;
  if (!qword_280400638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400638);
  }

  return result;
}

unint64_t sub_26B4C9940()
{
  result = qword_280400640;
  if (!qword_280400640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400640);
  }

  return result;
}

unint64_t sub_26B4C9994()
{
  result = qword_280400648;
  if (!qword_280400648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400648);
  }

  return result;
}

unint64_t sub_26B4C99E8()
{
  result = qword_280400650;
  if (!qword_280400650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400650);
  }

  return result;
}

uint64_t sub_26B4C9A6C()
{
  v1 = *v0;
  sub_26B543034();
  MEMORY[0x26D678100](v1);
  return sub_26B543054();
}

uint64_t VCCommand.ParameterType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE28, &qword_26B5455D0);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v53 = &v44 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE30, &qword_26B5455D8);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v8, v9, v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE38, &qword_26B5455E0);
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE40, &qword_26B5455E8);
  v54 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20, v21, v22);
  v24 = &v44 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C98EC();
  v25 = v55;
  sub_26B543064();
  if (v25)
  {
    goto LABEL_10;
  }

  v45 = v13;
  v46 = 0;
  v26 = v52;
  v27 = v53;
  v55 = a1;
  v28 = v24;
  v29 = sub_26B542EF4();
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = *(v29 + 32);
    if (v30 == 1 && v31 != 3)
    {
      if (*(v29 + 32))
      {
        v52 = v29;
        v38 = v54;
        if (v31 == 1)
        {
          v57 = 1;
          sub_26B4C9994();
          v39 = v46;
          sub_26B542E84();
          v40 = v51;
          if (v39)
          {
            (*(v38 + 8))(v28, v19);
            goto LABEL_9;
          }

          (*(v47 + 8))(v12, v50);
          (*(v38 + 8))(v28, v19);
        }

        else
        {
          v58 = 2;
          sub_26B4C9940();
          v43 = v46;
          sub_26B542E84();
          v40 = v51;
          if (v43)
          {
            (*(v38 + 8))(v28, v19);
            goto LABEL_9;
          }

          (*(v48 + 8))(v27, v49);
          (*(v38 + 8))(v28, v19);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0;
        sub_26B4C99E8();
        v41 = v46;
        sub_26B542E84();
        v42 = v54;
        if (v41)
        {
          (*(v54 + 8))(v24, v19);
          goto LABEL_9;
        }

        (*(v26 + 8))(v18, v45);
        (*(v42 + 8))(v24, v19);
        swift_unknownObjectRelease();
        v40 = v51;
      }

      *v40 = v31;
      v36 = v55;
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }

  v33 = sub_26B542DB4();
  swift_allocError();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8);
  *v35 = &type metadata for VCCommand.ParameterType;
  sub_26B542E94();
  sub_26B542DA4();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
  swift_willThrow();
  (*(v54 + 8))(v24, v19);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v55;
LABEL_10:
  v36 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

BOOL static VCCommand.Engine.areInIncreasingOrder(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = sub_26B542FB4();

    if (v4)
    {
      v2 = 0;
      if (!v3)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v2 == 2)
    {
      v5 = sub_26B542FB4();

      if (v5)
      {
        v2 = 1;
        if (!v3)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  swift_bridgeObjectRelease_n();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_12:
  v6 = sub_26B542FB4();

  if ((v6 & 1) == 0)
  {
    if (v3 == 2)
    {
      v7 = sub_26B542FB4();

      if (v7)
      {
        v3 = 1;
        return v2 < v3;
      }
    }

    else
    {
      v3 = 1;
    }

LABEL_19:
    swift_bridgeObjectRelease_n();
    return v2 < v3;
  }

  v3 = 0;
  return v2 < v3;
}

uint64_t VCCommand.Engine.rawValue.getter()
{
  v1 = 0x726173617571;
  if (*v0 != 1)
  {
    v1 = 0x727361676ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12915;
  }
}

SpeechRecognitionCommandServices::VCCommand::Engine_optional __swiftcall VCCommand.Engine.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4CA3F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726173617571;
  if (v2 != 1)
  {
    v4 = 0x727361676ELL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 12915;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726173617571;
  if (*a2 != 1)
  {
    v8 = 0x727361676ELL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 12915;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26B542FB4();
  }

  return v11 & 1;
}

uint64_t sub_26B4CA4E4()
{
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4CA574(uint64_t a1)
{
  sub_26B542AE4();
}

uint64_t sub_26B4CA5F0(uint64_t a1)
{
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

void sub_26B4CA688(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726173617571;
  if (v2 != 1)
  {
    v5 = 0x727361676ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 12915;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

SpeechRecognitionCommandServices::VCCommand::Evaluation_optional __swiftcall VCCommand.Evaluation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542FC4();

  v5 = 0;
  v6 = 20;
  switch(v3)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
    case 16:
      v5 = 16;
      goto LABEL_34;
    case 17:
      v5 = 17;
      goto LABEL_34;
    case 18:
      v5 = 18;
      goto LABEL_34;
    case 19:
      v5 = 19;
LABEL_34:
      v6 = v5;
      break;
    case 20:
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    default:
      v6 = 38;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VCCommand.Evaluation.rawValue.getter()
{
  result = 0x7365726975716572;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
    case 0x10:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 7:
    case 0xF:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 0x21:
    case 0x25:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
    case 0xE:
    case 0x1B:
    case 0x22:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    case 0x12:
      result = 0xD000000000000023;
      break;
    case 0x13:
      result = 0xD00000000000001FLL;
      break;
    case 0x14:
      result = 0xD00000000000001DLL;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x16:
    case 0x1D:
    case 0x1F:
      return result;
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0x18:
      result = 0xD000000000000022;
      break;
    case 0x19:
      result = 0xD000000000000024;
      break;
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000029;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x20:
      result = 0xD000000000000027;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x24:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_26B4CAE4C()
{
  v0 = VCCommand.Evaluation.rawValue.getter();
  v2 = v1;
  if (v0 == VCCommand.Evaluation.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26B542FB4();
  }

  return v5 & 1;
}

uint64_t sub_26B4CAEE8()
{
  sub_26B543034();
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4CAF50(uint64_t a1)
{
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();
}

uint64_t sub_26B4CAFB4(uint64_t a1)
{
  sub_26B543034();
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();

  return sub_26B543054();
}

unint64_t sub_26B4CB024@<X0>(unint64_t *a1@<X8>)
{
  result = VCCommand.Evaluation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B4CB10C(uint64_t a1)
{
  sub_26B542FA4();
  sub_26B49FAB4();
  v1 = sub_26B542CD4();

  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VCCommand.TargetedValue.platform.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v5, a2, a3);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = byte_26B545530[swift_getEnumCaseMultiPayload()];
  result = (*(v8 + 8))(v10, a1);
  *a4 = v11;
  return result;
}

uint64_t VCCommand.TargetedValue.idiom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, v5, a2, a3);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = byte_26B545540[swift_getEnumCaseMultiPayload()];
  result = (*(v8 + 8))(v10, a1);
  *a4 = v11;
  return result;
}

uint64_t VCCommand.TargetedValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  MEMORY[0x28223BE20](a1, v5, a2, a3);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  return (*(*(*(a1 + 16) - 8) + 32))(a4, v9);
}

uint64_t static VCCommand.TargetedValue.areInIncreasingOrder(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v11, v14, v15, v16);
  v19 = v38 - v18;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v38[2] = v17;
  v45 = v17;
  result = sub_26B4C7F38(sub_26B4DE814, v40, &unk_287C04B48);
  if (v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  v28 = result;
  MEMORY[0x28223BE20](result, v25, v26, v27);
  v38[-6] = a3;
  v38[-5] = a4;
  v38[-4] = a5;
  v38[-3] = a6;
  v38[1] = a2;
  v38[-2] = a2;
  result = sub_26B4C7F38(sub_26B4CB6D8, &v38[-8], &unk_287C04B48);
  if (v29)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v30 = result;
  swift_arrayDestroy();
  if (v28 == v30)
  {
    v46[0] = a3;
    v46[1] = a4;
    v46[2] = a5;
    v46[3] = a6;
    v31 = type metadata accessor for VCCommand.TargetedValue(0, v46);
    VCCommand.TargetedValue.value.getter(v31, v32, v33, v19);
    VCCommand.TargetedValue.value.getter(v31, v34, v35, v13);
    v36 = sub_26B5429F4();
    v37 = *(v39 + 8);
    v37(v13, a3);
    v37(v19, a3);
  }

  else
  {
    v36 = v30 >= v28;
  }

  return v36 & 1;
}

uint64_t sub_26B4CB6F4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v4;
  v5 = type metadata accessor for VCCommand.TargetedValue(0, v10);
  if (v2 == sub_26B4CB10C(v5) && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B542FB4();
  }

  return v8 & 1;
}

BOOL sub_26B4CB7AC(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 1;
      return v4 < a4;
    case 2:
      if (a4 == 2)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 2;
      return v4 < a4;
    case 3:
      if (a4 == 3)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 3;
      return v4 < a4;
    case 4:
      if (a4 == 4)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 4;
      return v4 < a4;
    case 5:
      if (a4 == 5)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 5;
      return v4 < a4;
    case 6:
      if (a4 == 6)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 6;
      return v4 < a4;
    case 7:
      if (a4 == 7)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 7;
      return v4 < a4;
    case 8:
      if (a4 == 8)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 8;
      return v4 < a4;
    case 9:
      if (a4 == 9)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 9;
      return v4 < a4;
    case 10:
      if (a4 == 10)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 10;
      return v4 < a4;
    case 11:
      if (a4 == 11)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 11;
      return v4 < a4;
    case 12:
      if (a4 == 12)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 12;
      return v4 < a4;
    case 13:
      if (a4 == 13)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 13;
      return v4 < a4;
    case 14:
      if (a4 == 14)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 14;
      return v4 < a4;
    case 15:
      if (a4 == 15)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 15;
      return v4 < a4;
    default:
      if (a4)
      {
        v4 = 0;
        return v4 < a4;
      }

      else
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }
  }
}

uint64_t static VCCommand.TargetedValue.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v429 = a1;
  v430 = a2;
  v427 = *(a3 - 8);
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v405 = &v374 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v4, v6, v7, v8);
  v406 = &v374 - v10;
  v14 = MEMORY[0x28223BE20](v9, v11, v12, v13);
  v403 = &v374 - v15;
  v19 = MEMORY[0x28223BE20](v14, v16, v17, v18);
  v404 = &v374 - v20;
  v24 = MEMORY[0x28223BE20](v19, v21, v22, v23);
  v401 = &v374 - v25;
  v29 = MEMORY[0x28223BE20](v24, v26, v27, v28);
  v402 = &v374 - v30;
  v34 = MEMORY[0x28223BE20](v29, v31, v32, v33);
  v399 = &v374 - v35;
  v39 = MEMORY[0x28223BE20](v34, v36, v37, v38);
  v400 = &v374 - v40;
  v44 = MEMORY[0x28223BE20](v39, v41, v42, v43);
  v397 = &v374 - v45;
  v49 = MEMORY[0x28223BE20](v44, v46, v47, v48);
  v398 = &v374 - v50;
  v54 = MEMORY[0x28223BE20](v49, v51, v52, v53);
  v395 = &v374 - v55;
  v59 = MEMORY[0x28223BE20](v54, v56, v57, v58);
  v396 = &v374 - v60;
  v64 = MEMORY[0x28223BE20](v59, v61, v62, v63);
  v393 = &v374 - v65;
  v69 = MEMORY[0x28223BE20](v64, v66, v67, v68);
  v394 = &v374 - v70;
  v74 = MEMORY[0x28223BE20](v69, v71, v72, v73);
  v391 = &v374 - v75;
  v79 = MEMORY[0x28223BE20](v74, v76, v77, v78);
  v392 = &v374 - v80;
  v84 = MEMORY[0x28223BE20](v79, v81, v82, v83);
  v389 = &v374 - v85;
  v89 = MEMORY[0x28223BE20](v84, v86, v87, v88);
  v390 = &v374 - v90;
  v94 = MEMORY[0x28223BE20](v89, v91, v92, v93);
  v387 = &v374 - v95;
  v99 = MEMORY[0x28223BE20](v94, v96, v97, v98);
  v388 = &v374 - v100;
  v104 = MEMORY[0x28223BE20](v99, v101, v102, v103);
  v385 = &v374 - v105;
  v109 = MEMORY[0x28223BE20](v104, v106, v107, v108);
  v386 = &v374 - v110;
  v114 = MEMORY[0x28223BE20](v109, v111, v112, v113);
  v383 = &v374 - v115;
  v119 = MEMORY[0x28223BE20](v114, v116, v117, v118);
  v384 = &v374 - v120;
  v124 = MEMORY[0x28223BE20](v119, v121, v122, v123);
  v381 = &v374 - v125;
  v129 = MEMORY[0x28223BE20](v124, v126, v127, v128);
  v382 = &v374 - v130;
  v134 = MEMORY[0x28223BE20](v129, v131, v132, v133);
  v379 = &v374 - v135;
  v139 = MEMORY[0x28223BE20](v134, v136, v137, v138);
  v380 = &v374 - v140;
  v144 = MEMORY[0x28223BE20](v139, v141, v142, v143);
  v377 = &v374 - v145;
  v149 = MEMORY[0x28223BE20](v144, v146, v147, v148);
  v378 = &v374 - v150;
  v154 = MEMORY[0x28223BE20](v149, v151, v152, v153);
  v375 = &v374 - v155;
  MEMORY[0x28223BE20](v154, v156, v157, v158);
  v376 = &v374 - v159;
  v426 = v160;
  v431[0] = v160;
  v431[1] = v161;
  v419 = v161;
  v432[0] = v162;
  v432[1] = v163;
  v164 = type metadata accessor for VCCommand.TargetedValue(0, v431);
  v165 = *(v164 - 8);
  v169 = MEMORY[0x28223BE20](v164, v166, v167, v168);
  v423 = &v374 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = MEMORY[0x28223BE20](v169, v171, v172, v173);
  v421 = &v374 - v175;
  v179 = MEMORY[0x28223BE20](v174, v176, v177, v178);
  v418 = &v374 - v180;
  v184 = MEMORY[0x28223BE20](v179, v181, v182, v183);
  v417 = &v374 - v185;
  v189 = MEMORY[0x28223BE20](v184, v186, v187, v188);
  v416 = &v374 - v190;
  v194 = MEMORY[0x28223BE20](v189, v191, v192, v193);
  v415 = &v374 - v195;
  v199 = MEMORY[0x28223BE20](v194, v196, v197, v198);
  v414 = &v374 - v200;
  v204 = MEMORY[0x28223BE20](v199, v201, v202, v203);
  v413 = &v374 - v205;
  v209 = MEMORY[0x28223BE20](v204, v206, v207, v208);
  v412 = &v374 - v210;
  v214 = MEMORY[0x28223BE20](v209, v211, v212, v213);
  v411 = &v374 - v215;
  v219 = MEMORY[0x28223BE20](v214, v216, v217, v218);
  v410 = &v374 - v220;
  v224 = MEMORY[0x28223BE20](v219, v221, v222, v223);
  v409 = &v374 - v225;
  v229 = MEMORY[0x28223BE20](v224, v226, v227, v228);
  v408 = &v374 - v230;
  v234 = MEMORY[0x28223BE20](v229, v231, v232, v233);
  v407 = &v374 - v235;
  v239 = MEMORY[0x28223BE20](v234, v236, v237, v238);
  v241 = &v374 - v240;
  v245 = MEMORY[0x28223BE20](v239, v242, v243, v244);
  v247 = &v374 - v246;
  v251 = MEMORY[0x28223BE20](v245, v248, v249, v250);
  v253 = &v374 - v252;
  MEMORY[0x28223BE20](v251, v254, v255, v256);
  v258 = &v374 - v257;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v422 = *(TupleTypeMetadata2 - 8);
  v263 = MEMORY[0x28223BE20](TupleTypeMetadata2, v260, v261, v262);
  v265 = &v374 - v264;
  v420 = v263;
  v266 = *(v263 + 48);
  v425 = v165;
  v267 = *(v165 + 16);
  v267(&v374 - v264, v429, v164);
  v424 = v266;
  v267(&v265[v266], v430, v164);
  v268 = v265;
  v428 = v164;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v310 = v265;
      v270 = v428;
      v267(v253, v310, v428);
      v311 = v424;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_27;
      }

      v313 = v426;
      v312 = v427;
      v314 = *(v427 + 32);
      v315 = v378;
      v314(v378, v253, v426);
      v316 = v377;
      v314(v377, &v268[v311], v313);
      if (sub_26B542A34())
      {
        v317 = *(v312 + 8);
        v317(v316, v313);
        v317(v315, v313);
        goto LABEL_26;
      }

      v318 = sub_26B5429E4();
      v369 = *(v312 + 8);
      v369(v316, v313);
      v369(v315, v313);
      goto LABEL_57;
    case 2u:
      v299 = v265;
      v270 = v428;
      v267(v247, v299, v428);
      v300 = v424;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v380;
      v301 = v247;
      v278 = v426;
      v275(v380, v301, v426);
      v279 = &v268[v300];
      v280 = &v411;
      goto LABEL_40;
    case 3u:
      v305 = v265;
      v270 = v428;
      v267(v241, v305, v428);
      v306 = v424;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v247 = v241;
        goto LABEL_47;
      }

      v278 = v426;
      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v382;
      v275(v382, v241, v426);
      v279 = &v268[v306];
      v280 = &v413;
LABEL_40:
      v348 = *(v280 - 32);
      v275(v348, v279, v278);
      v349 = sub_26B542A34();
      v327 = v425;
      if (v349)
      {
        v328 = *(v274 + 8);
        v328(v348, v278);
        goto LABEL_42;
      }

      v318 = sub_26B5429E4();
      v351 = *(v274 + 8);
      v351(v348, v278);
      goto LABEL_45;
    case 4u:
      v253 = v407;
      v284 = v265;
      v270 = v428;
      v267(v407, v284, v428);
      v285 = v424;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_27:
        v247 = v253;
        goto LABEL_47;
      }

      v286 = v427;
      v287 = *(v427 + 32);
      v288 = v384;
      v289 = v253;
      v290 = v426;
      v287(v384, v289, v426);
      v291 = v383;
      v287(v383, &v268[v285], v290);
      if (sub_26B542A34())
      {
        v292 = *(v286 + 8);
        v292(v291, v290);
        v292(v288, v290);
LABEL_26:
        v318 = 0;
      }

      else
      {
        v318 = sub_26B5429E4();
        v368 = *(v286 + 8);
        v368(v291, v290);
        v368(v288, v290);
      }

LABEL_57:
      v327 = v425;
      v350 = v270;
      break;
    case 5u:
      v247 = v408;
      v319 = v265;
      v270 = v428;
      v267(v408, v319, v428);
      v320 = v424;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v353 = v425;
        v352 = v426;
        goto LABEL_49;
      }

      v321 = v427;
      v322 = *(v427 + 32);
      v276 = v386;
      v323 = v247;
      v278 = v426;
      v322(v386, v323, v426);
      v324 = &v268[v320];
      v325 = v385;
      v322(v385, v324, v278);
      v326 = sub_26B542A34();
      v327 = v425;
      if (v326)
      {
        v328 = *(v321 + 8);
        v328(v325, v278);
LABEL_42:
        v328(v276, v278);
        goto LABEL_43;
      }

      v370 = sub_26B5429E4();
      v371 = v325;
      v318 = v370;
      v351 = *(v321 + 8);
      v351(v371, v278);
LABEL_45:
      v351(v276, v278);
      v350 = v270;
      break;
    case 6u:
      v247 = v409;
      v267(v409, v265, v428);
      v332 = v424;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v352 = v426;
        v270 = v428;
        goto LABEL_48;
      }

      v333 = v427;
      v334 = *(v427 + 32);
      v335 = v388;
      v336 = v247;
      v337 = v426;
      v334(v388, v336, v426);
      v338 = &v265[v332];
      v339 = v387;
      v334(v387, v338, v337);
      v340 = sub_26B542A34();
      v327 = v425;
      if (v340)
      {
        v341 = *(v333 + 8);
        v341(v339, v337);
        v341(v335, v337);
        v318 = 0;
      }

      else
      {
        v318 = sub_26B5429E4();
        v372 = *(v333 + 8);
        v372(v339, v337);
        v372(v335, v337);
      }

      v350 = v428;
      break;
    case 7u:
      v247 = v410;
      v307 = v265;
      v270 = v428;
      v267(v410, v307, v428);
      v308 = v424;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v390;
      v309 = v247;
      v278 = v426;
      v275(v390, v309, v426);
      v279 = &v268[v308];
      v280 = &v421;
      goto LABEL_40;
    case 8u:
      v247 = v411;
      v345 = v265;
      v270 = v428;
      v267(v411, v345, v428);
      v346 = v424;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v392;
      v347 = v247;
      v278 = v426;
      v275(v392, v347, v426);
      v279 = &v268[v346];
      v280 = &v423;
      goto LABEL_40;
    case 9u:
      v247 = v412;
      v296 = v265;
      v270 = v428;
      v267(v412, v296, v428);
      v297 = v424;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v394;
      v298 = v247;
      v278 = v426;
      v275(v394, v298, v426);
      v279 = &v268[v297];
      v280 = &v425;
      goto LABEL_40;
    case 0xAu:
      v247 = v413;
      v342 = v265;
      v270 = v428;
      v267(v413, v342, v428);
      v343 = v424;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v396;
      v344 = v247;
      v278 = v426;
      v275(v396, v344, v426);
      v279 = &v268[v343];
      v280 = &v427;
      goto LABEL_40;
    case 0xBu:
      v247 = v414;
      v281 = v265;
      v270 = v428;
      v267(v414, v281, v428);
      v282 = v424;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v398;
      v283 = v247;
      v278 = v426;
      v275(v398, v283, v426);
      v279 = &v268[v282];
      v280 = &v429;
      goto LABEL_40;
    case 0xCu:
      v247 = v415;
      v293 = v265;
      v270 = v428;
      v267(v415, v293, v428);
      v294 = v424;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v400;
      v295 = v247;
      v278 = v426;
      v275(v400, v295, v426);
      v279 = &v268[v294];
      v280 = v431;
      goto LABEL_40;
    case 0xDu:
      v247 = v416;
      v329 = v265;
      v270 = v428;
      v267(v416, v329, v428);
      v330 = v424;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v402;
      v331 = v247;
      v278 = v426;
      v275(v402, v331, v426);
      v279 = &v268[v330];
      v280 = v432;
      goto LABEL_40;
    case 0xEu:
      v247 = v417;
      v272 = v265;
      v270 = v428;
      v267(v417, v272, v428);
      v273 = v424;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v404;
      v277 = v247;
      v278 = v426;
      v275(v404, v277, v426);
      v279 = &v268[v273];
      v280 = &v433;
      goto LABEL_40;
    case 0xFu:
      v247 = v418;
      v302 = v265;
      v270 = v428;
      v267(v418, v302, v428);
      v303 = v424;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_47;
      }

      v274 = v427;
      v275 = *(v427 + 32);
      v276 = v406;
      v304 = v247;
      v278 = v426;
      v275(v406, v304, v426);
      v279 = &v268[v303];
      v280 = &v434;
      goto LABEL_40;
    default:
      v269 = v265;
      v270 = v428;
      v267(v258, v269, v428);
      v271 = v424;
      if (swift_getEnumCaseMultiPayload())
      {
        v247 = v258;
LABEL_47:
        v352 = v426;
LABEL_48:
        v353 = v425;
LABEL_49:
        (*(v427 + 8))(v247, v352);
        v354 = v421;
        v267(v421, v429, v270);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v356 = *(v353 + 8);
        v356(v354, v270);
        v357 = v423;
        v267(v423, v430, v270);
        v358 = swift_getEnumCaseMultiPayload();
        v356(v357, v270);
        v318 = EnumCaseMultiPayload < v358;
        v327 = v422;
        v350 = v420;
      }

      else
      {
        v360 = v427;
        v361 = *(v427 + 32);
        v362 = v376;
        v363 = v258;
        v364 = v426;
        v361(v376, v363, v426);
        v365 = v375;
        v361(v375, &v268[v271], v364);
        v366 = sub_26B542A34();
        v327 = v425;
        if (v366)
        {
          v367 = *(v360 + 8);
          v367(v365, v364);
          v367(v362, v364);
LABEL_43:
          v318 = 0;
          v350 = v270;
        }

        else
        {
          v318 = sub_26B5429E4();
          v373 = *(v360 + 8);
          v373(v365, v364);
          v373(v362, v364);
          v350 = v270;
        }
      }

      break;
  }

  (*(v327 + 8))(v268, v350);
  return v318 & 1;
}

uint64_t static VCCommand.TargetedValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v256 = a2;
  v257 = a1;
  v259 = *(a3 - 8);
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v240 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v4, v6, v7, v8);
  v239 = &v225 - v10;
  v14 = MEMORY[0x28223BE20](v9, v11, v12, v13);
  v238 = &v225 - v15;
  v19 = MEMORY[0x28223BE20](v14, v16, v17, v18);
  v237 = &v225 - v20;
  v24 = MEMORY[0x28223BE20](v19, v21, v22, v23);
  v236 = &v225 - v25;
  v29 = MEMORY[0x28223BE20](v24, v26, v27, v28);
  v235 = &v225 - v30;
  v34 = MEMORY[0x28223BE20](v29, v31, v32, v33);
  v234 = &v225 - v35;
  v39 = MEMORY[0x28223BE20](v34, v36, v37, v38);
  v233 = &v225 - v40;
  v44 = MEMORY[0x28223BE20](v39, v41, v42, v43);
  v232 = &v225 - v45;
  v49 = MEMORY[0x28223BE20](v44, v46, v47, v48);
  v231 = &v225 - v50;
  v54 = MEMORY[0x28223BE20](v49, v51, v52, v53);
  v230 = &v225 - v55;
  v59 = MEMORY[0x28223BE20](v54, v56, v57, v58);
  v229 = &v225 - v60;
  v64 = MEMORY[0x28223BE20](v59, v61, v62, v63);
  v228 = &v225 - v65;
  v69 = MEMORY[0x28223BE20](v64, v66, v67, v68);
  v227 = &v225 - v70;
  v74 = MEMORY[0x28223BE20](v69, v71, v72, v73);
  v226 = &v225 - v75;
  MEMORY[0x28223BE20](v74, v76, v77, v78);
  v225 = &v225 - v79;
  v258 = v80;
  v260[0] = v80;
  v260[1] = v81;
  v252 = v81;
  v261 = v82;
  v262 = v83;
  v84 = type metadata accessor for VCCommand.TargetedValue(0, v260);
  v85 = *(v84 - 8);
  v89 = MEMORY[0x28223BE20](v84, v86, v87, v88);
  v251 = &v225 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x28223BE20](v89, v91, v92, v93);
  v250 = &v225 - v95;
  v99 = MEMORY[0x28223BE20](v94, v96, v97, v98);
  v249 = &v225 - v100;
  v104 = MEMORY[0x28223BE20](v99, v101, v102, v103);
  v248 = &v225 - v105;
  v109 = MEMORY[0x28223BE20](v104, v106, v107, v108);
  v247 = &v225 - v110;
  v114 = MEMORY[0x28223BE20](v109, v111, v112, v113);
  v246 = &v225 - v115;
  v119 = MEMORY[0x28223BE20](v114, v116, v117, v118);
  v245 = &v225 - v120;
  v124 = MEMORY[0x28223BE20](v119, v121, v122, v123);
  v244 = &v225 - v125;
  v129 = MEMORY[0x28223BE20](v124, v126, v127, v128);
  v243 = &v225 - v130;
  v134 = MEMORY[0x28223BE20](v129, v131, v132, v133);
  v242 = &v225 - v135;
  v139 = MEMORY[0x28223BE20](v134, v136, v137, v138);
  v241 = &v225 - v140;
  v144 = MEMORY[0x28223BE20](v139, v141, v142, v143);
  v146 = &v225 - v145;
  v150 = MEMORY[0x28223BE20](v144, v147, v148, v149);
  v152 = &v225 - v151;
  v156 = MEMORY[0x28223BE20](v150, v153, v154, v155);
  v158 = &v225 - v157;
  v162 = MEMORY[0x28223BE20](v156, v159, v160, v161);
  v164 = &v225 - v163;
  MEMORY[0x28223BE20](v162, v165, v166, v167);
  v169 = &v225 - v168;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v255 = *(TupleTypeMetadata2 - 8);
  v174 = MEMORY[0x28223BE20](TupleTypeMetadata2, v171, v172, v173);
  v176 = &v225 - v175;
  v253 = v85;
  v254 = v174;
  v177 = *(v174 + 48);
  v178 = *(v85 + 16);
  v178(&v225 - v175, v257, v84);
  v257 = v177;
  v178(&v176[v177], v256, v84);
  v179 = v176;
  v180 = v84;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v181 = v179;
      v178(v164, v179, v180);
      v209 = v257;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v210 = v258;
        v211 = v259;
        v212 = v226;
        (*(v259 + 32))(v226, &v179[v209], v258);
        v193 = sub_26B542A34();
        v213 = *(v211 + 8);
        v213(v212, v210);
        v213(v164, v210);
        goto LABEL_36;
      }

      v169 = v164;
      goto LABEL_41;
    case 2u:
      v181 = v179;
      v178(v158, v179, v180);
      v197 = v257;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v198 = v258;
        v199 = v259;
        v200 = v227;
        (*(v259 + 32))(v227, &v179[v197], v258);
        v193 = sub_26B542A34();
        v201 = *(v199 + 8);
        v201(v200, v198);
        v201(v158, v198);
        goto LABEL_36;
      }

      v169 = v158;
      goto LABEL_41;
    case 3u:
      v181 = v179;
      v178(v152, v179, v180);
      v203 = v257;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v204 = v258;
        v205 = v259;
        v206 = v228;
        (*(v259 + 32))(v228, &v179[v203], v258);
        v193 = sub_26B542A34();
        v207 = *(v205 + 8);
        v207(v206, v204);
        v207(v152, v204);
        goto LABEL_36;
      }

      v169 = v152;
      goto LABEL_41;
    case 4u:
      v181 = v179;
      v178(v146, v179, v180);
      v189 = v257;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v191 = v258;
        v190 = v259;
        v192 = v229;
        (*(v259 + 32))(v229, &v179[v189], v258);
        v193 = sub_26B542A34();
        v194 = *(v190 + 8);
        v194(v192, v191);
        v194(v146, v191);
LABEL_36:
        v222 = v253;
        v223 = v180;
      }

      else
      {
        v169 = v146;
LABEL_41:
        (*(v259 + 8))(v169, v258);
        v193 = 0;
        v223 = v254;
        v222 = v255;
      }

      (*(v222 + 8))(v181, v223);
      return v193 & 1;
    case 5u:
      v169 = v241;
      v181 = v179;
      v178(v241, v179, v180);
      v214 = v257;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v214];
      v186 = &v261;
      goto LABEL_34;
    case 6u:
      v169 = v242;
      v181 = v179;
      v178(v242, v179, v180);
      v216 = v257;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v216];
      v186 = &v262;
      goto LABEL_34;
    case 7u:
      v169 = v243;
      v181 = v179;
      v178(v243, v179, v180);
      v208 = v257;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v208];
      v186 = &v263;
      goto LABEL_34;
    case 8u:
      v169 = v244;
      v181 = v179;
      v178(v244, v179, v180);
      v218 = v257;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v218];
      v186 = &v264;
      goto LABEL_34;
    case 9u:
      v169 = v245;
      v181 = v179;
      v178(v245, v179, v180);
      v196 = v257;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v196];
      v186 = &v265;
      goto LABEL_34;
    case 0xAu:
      v169 = v246;
      v181 = v179;
      v178(v246, v179, v180);
      v217 = v257;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v217];
      v186 = &v266;
      goto LABEL_34;
    case 0xBu:
      v169 = v247;
      v181 = v179;
      v178(v247, v179, v180);
      v188 = v257;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v188];
      v186 = &v267;
      goto LABEL_34;
    case 0xCu:
      v169 = v248;
      v181 = v179;
      v178(v248, v179, v180);
      v195 = v257;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v195];
      v186 = &v268;
      goto LABEL_34;
    case 0xDu:
      v169 = v249;
      v181 = v179;
      v178(v249, v179, v180);
      v215 = v257;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v215];
      v186 = &v269;
      goto LABEL_34;
    case 0xEu:
      v169 = v250;
      v181 = v179;
      v178(v250, v179, v180);
      v187 = v257;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v187];
      v186 = &v270;
      goto LABEL_34;
    case 0xFu:
      v169 = v251;
      v181 = v179;
      v178(v251, v179, v180);
      v202 = v257;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v202];
      v186 = &v271;
      goto LABEL_34;
    default:
      v181 = v179;
      v178(v169, v179, v180);
      v182 = v257;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v183 = v259;
      v184 = *(v259 + 32);
      v185 = &v179[v182];
      v186 = &v257;
LABEL_34:
      v219 = *(v186 - 32);
      v220 = v258;
      v184(v219, v185, v258);
      v193 = sub_26B542A34();
      v221 = *(v183 + 8);
      v221(v219, v220);
      v221(v169, v220);
      goto LABEL_36;
  }
}

uint64_t sub_26B4CDDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534F63616DLL && a2 == 0xE500000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D5F534F63616DLL && a2 == 0xE900000000000063 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 5459817 && a2 == 0xE300000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6850695F534F69 && a2 == 0xEA0000000000656ELL || (sub_26B542FB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646150695F534F69 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x507261635F534F69 && a2 == 0xEB0000000079616CLL || (sub_26B542FB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63616D5F534F69 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x534F6E6F69736976 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x534F6E6F69736976 && a2 == 0xEF6E6F697369765FLL || (sub_26B542FB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1397716596 && a2 == 0xE400000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7070615F534F7674 && a2 == 0xEC0000005654656CLL || (sub_26B542FB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D6F685F534F7674 && a2 == 0xEC000000646F5065 || (sub_26B542FB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F50695F534F7674 && a2 == 0xE900000000000064 || (sub_26B542FB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5F534F6863746177 && a2 == 0xED00006863746177)
  {

    return 15;
  }

  else
  {
    v6 = sub_26B542FB4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_26B4CE31C(unsigned __int8 a1)
{
  sub_26B543034();
  MEMORY[0x26D678100](a1);
  return sub_26B543054();
}

uint64_t sub_26B4CE364(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 0x616D5F534F63616DLL;
      break;
    case 3:
      result = 5459817;
      break;
    case 4:
      result = 0x6F6850695F534F69;
      break;
    case 5:
      result = 0x646150695F534F69;
      break;
    case 6:
      result = 0x507261635F534F69;
      break;
    case 7:
      result = 0x63616D5F534F69;
      break;
    case 8:
    case 9:
      result = 0x534F6E6F69736976;
      break;
    case 10:
      result = 1397716596;
      break;
    case 11:
      result = 0x7070615F534F7674;
      break;
    case 12:
      result = 0x6D6F685F534F7674;
      break;
    case 13:
      result = 0x6F50695F534F7674;
      break;
    case 14:
      result = 0x534F6863746177;
      break;
    case 15:
      result = 0x5F534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B4CE558(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B542FB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B4CE60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4CE558(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B4CE638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE68C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE6FC(uint64_t a1)
{
  sub_26B543034();
  sub_26B4CE2F4(v3, *v1);
  return sub_26B543054();
}

uint64_t sub_26B4CE744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4CDDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4CE778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE8C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEA18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEAC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEB14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEBBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CECB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CED0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CED60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEDB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEE08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEE5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEEB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEF04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEF58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEFAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF054(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF0FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF150()
{
  sub_26B543034();
  MEMORY[0x26D678100](0);
  return sub_26B543054();
}

uint64_t sub_26B4CF194(uint64_t a1)
{
  sub_26B543034();
  MEMORY[0x26D678100](0);
  return sub_26B543054();
}

uint64_t sub_26B4CF1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF228(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t VCCommand.TargetedValue.encode(to:)(void *a1, void *a2)
{
  v310 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v312 = a2[2];
  v4 = v312;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v7 = type metadata accessor for VCCommand.TargetedValue.WatchOS_watchCodingKeys(255, &v312);
  v304[1] = swift_getWitnessTable();
  v304[2] = v7;
  v8 = sub_26B542F74();
  v305 = *(v8 - 8);
  v306 = v8;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v304[0] = &v213 - v12;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v13 = type metadata accessor for VCCommand.TargetedValue.WatchOSCodingKeys(255, &v312);
  WitnessTable = swift_getWitnessTable();
  v301 = v13;
  v299 = WitnessTable;
  v15 = sub_26B542F74();
  v302 = *(v15 - 8);
  v303 = v15;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v300 = &v213 - v19;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v20 = type metadata accessor for VCCommand.TargetedValue.TvOS_iPodCodingKeys(255, &v312);
  v21 = swift_getWitnessTable();
  v296 = v20;
  v294 = v21;
  v298 = sub_26B542F74();
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298, v22, v23, v24);
  v295 = &v213 - v25;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v26 = type metadata accessor for VCCommand.TargetedValue.TvOS_homePodCodingKeys(255, &v312);
  v27 = swift_getWitnessTable();
  v291 = v26;
  v289 = v27;
  v293 = sub_26B542F74();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293, v28, v29, v30);
  v290 = &v213 - v31;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v32 = type metadata accessor for VCCommand.TargetedValue.TvOS_appleTVCodingKeys(255, &v312);
  v33 = swift_getWitnessTable();
  v286 = v32;
  v284 = v33;
  v288 = sub_26B542F74();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288, v34, v35, v36);
  v285 = &v213 - v37;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v38 = type metadata accessor for VCCommand.TargetedValue.TvOSCodingKeys(255, &v312);
  v39 = swift_getWitnessTable();
  v281 = v38;
  v279 = v39;
  v283 = sub_26B542F74();
  v282 = *(v283 - 8);
  MEMORY[0x28223BE20](v283, v40, v41, v42);
  v280 = &v213 - v43;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v44 = type metadata accessor for VCCommand.TargetedValue.VisionOS_visionCodingKeys(255, &v312);
  v45 = swift_getWitnessTable();
  v276 = v44;
  v274 = v45;
  v278 = sub_26B542F74();
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278, v46, v47, v48);
  v275 = &v213 - v49;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v50 = type metadata accessor for VCCommand.TargetedValue.VisionOSCodingKeys(255, &v312);
  v51 = swift_getWitnessTable();
  v271 = v50;
  v269 = v51;
  v273 = sub_26B542F74();
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v52, v53, v54);
  v270 = &v213 - v55;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v56 = type metadata accessor for VCCommand.TargetedValue.IOS_macCodingKeys(255, &v312);
  v57 = swift_getWitnessTable();
  v266 = v56;
  v264 = v57;
  v268 = sub_26B542F74();
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268, v58, v59, v60);
  v265 = &v213 - v61;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v62 = type metadata accessor for VCCommand.TargetedValue.IOS_carPlayCodingKeys(255, &v312);
  v63 = swift_getWitnessTable();
  v261 = v62;
  v259 = v63;
  v263 = sub_26B542F74();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263, v64, v65, v66);
  v260 = &v213 - v67;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v68 = type metadata accessor for VCCommand.TargetedValue.IOS_iPadCodingKeys(255, &v312);
  v69 = swift_getWitnessTable();
  v256 = v68;
  v254 = v69;
  v258 = sub_26B542F74();
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v70, v71, v72);
  v255 = &v213 - v73;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v74 = type metadata accessor for VCCommand.TargetedValue.IOS_iPhoneCodingKeys(255, &v312);
  v75 = swift_getWitnessTable();
  v251 = v74;
  v249 = v75;
  v253 = sub_26B542F74();
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253, v76, v77, v78);
  v250 = &v213 - v79;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v80 = type metadata accessor for VCCommand.TargetedValue.IOSCodingKeys(255, &v312);
  v81 = swift_getWitnessTable();
  v246 = v80;
  v244 = v81;
  v248 = sub_26B542F74();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v82, v83, v84);
  v245 = &v213 - v85;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v86 = type metadata accessor for VCCommand.TargetedValue.MacOS_macCodingKeys(255, &v312);
  v87 = swift_getWitnessTable();
  v241 = v86;
  v239 = v87;
  v243 = sub_26B542F74();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v88, v89, v90);
  v240 = &v213 - v91;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v92 = type metadata accessor for VCCommand.TargetedValue.MacOSCodingKeys(255, &v312);
  v93 = swift_getWitnessTable();
  v236 = v92;
  v234 = v93;
  v238 = sub_26B542F74();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v94, v95, v96);
  v235 = &v213 - v97;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v98 = type metadata accessor for VCCommand.TargetedValue.AllCodingKeys(255, &v312);
  v99 = swift_getWitnessTable();
  v231 = v98;
  v229 = v99;
  v233 = sub_26B542F74();
  v232 = *(v233 - 8);
  v103 = MEMORY[0x28223BE20](v233, v100, v101, v102);
  v230 = &v213 - v104;
  v307[0] = *(v4 - 8);
  v108 = MEMORY[0x28223BE20](v103, v105, v106, v107);
  v228 = &v213 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x28223BE20](v108, v110, v111, v112);
  v227 = &v213 - v114;
  v118 = MEMORY[0x28223BE20](v113, v115, v116, v117);
  v226 = &v213 - v119;
  v123 = MEMORY[0x28223BE20](v118, v120, v121, v122);
  v225 = &v213 - v124;
  v128 = MEMORY[0x28223BE20](v123, v125, v126, v127);
  v224 = &v213 - v129;
  v133 = MEMORY[0x28223BE20](v128, v130, v131, v132);
  v223 = &v213 - v134;
  v138 = MEMORY[0x28223BE20](v133, v135, v136, v137);
  v222 = &v213 - v139;
  v143 = MEMORY[0x28223BE20](v138, v140, v141, v142);
  v221 = &v213 - v144;
  v148 = MEMORY[0x28223BE20](v143, v145, v146, v147);
  v220 = &v213 - v149;
  v153 = MEMORY[0x28223BE20](v148, v150, v151, v152);
  v219 = &v213 - v154;
  v158 = MEMORY[0x28223BE20](v153, v155, v156, v157);
  v218 = &v213 - v159;
  v163 = MEMORY[0x28223BE20](v158, v160, v161, v162);
  v217 = &v213 - v164;
  v168 = MEMORY[0x28223BE20](v163, v165, v166, v167);
  v216 = &v213 - v169;
  v173 = MEMORY[0x28223BE20](v168, v170, v171, v172);
  v215 = &v213 - v174;
  v178 = MEMORY[0x28223BE20](v173, v175, v176, v177);
  v214 = &v213 - v179;
  v183 = MEMORY[0x28223BE20](v178, v180, v181, v182);
  v185 = &v213 - v184;
  v186 = *(a2 - 1);
  MEMORY[0x28223BE20](v183, v187, v188, v189);
  v191 = &v213 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = v4;
  v312 = v4;
  v313 = v3;
  v314 = v6;
  v315 = v5;
  v307[1] = v5;
  type metadata accessor for VCCommand.TargetedValue.CodingKeys(255, &v312);
  swift_getWitnessTable();
  v192 = sub_26B542F74();
  v308 = *(v192 - 8);
  v309 = v192;
  MEMORY[0x28223BE20](v192, v193, v194, v195);
  v197 = (&v213 - v196);
  __swift_project_boxed_opaque_existential_1(v310, v310[3]);
  v310 = v197;
  v198 = v307[0];
  sub_26B543074();
  (*(v186 + 16))(v191, v311, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = *(v198 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v185 = v214;
      v201 = v316;
      v200(v214, v191, v316);
      LOBYTE(v312) = 1;
      v202 = v235;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v238;
      sub_26B542F64();
      v206 = &v269;
      goto LABEL_18;
    case 2:
      v185 = v215;
      v201 = v316;
      v200(v215, v191, v316);
      LOBYTE(v312) = 2;
      v202 = v240;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v243;
      sub_26B542F64();
      v206 = &v274;
      goto LABEL_18;
    case 3:
      v185 = v216;
      v201 = v316;
      v200(v216, v191, v316);
      LOBYTE(v312) = 3;
      v202 = v245;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v248;
      sub_26B542F64();
      v206 = &v279;
      goto LABEL_18;
    case 4:
      v185 = v217;
      v201 = v316;
      v200(v217, v191, v316);
      LOBYTE(v312) = 4;
      v202 = v250;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v253;
      sub_26B542F64();
      v206 = &v284;
      goto LABEL_18;
    case 5:
      v185 = v218;
      v201 = v316;
      v200(v218, v191, v316);
      LOBYTE(v312) = 5;
      v202 = v255;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v258;
      sub_26B542F64();
      v206 = &v289;
      goto LABEL_18;
    case 6:
      v185 = v219;
      v201 = v316;
      v200(v219, v191, v316);
      LOBYTE(v312) = 6;
      v202 = v260;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v263;
      sub_26B542F64();
      v206 = &v294;
      goto LABEL_18;
    case 7:
      v185 = v220;
      v201 = v316;
      v200(v220, v191, v316);
      LOBYTE(v312) = 7;
      v202 = v265;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v268;
      sub_26B542F64();
      v206 = &v299;
      goto LABEL_18;
    case 8:
      v185 = v221;
      v201 = v316;
      v200(v221, v191, v316);
      LOBYTE(v312) = 8;
      v202 = v270;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v273;
      sub_26B542F64();
      v206 = v304;
      goto LABEL_18;
    case 9:
      v185 = v222;
      v201 = v316;
      v200(v222, v191, v316);
      LOBYTE(v312) = 9;
      v202 = v275;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v278;
      sub_26B542F64();
      v206 = v307;
      goto LABEL_18;
    case 10:
      v185 = v223;
      v201 = v316;
      v200(v223, v191, v316);
      LOBYTE(v312) = 10;
      v202 = v280;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v283;
      sub_26B542F64();
      v206 = &v311;
      goto LABEL_18;
    case 11:
      v185 = v224;
      v201 = v316;
      v200(v224, v191, v316);
      LOBYTE(v312) = 11;
      v202 = v285;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v288;
      sub_26B542F64();
      v206 = &v315;
      goto LABEL_18;
    case 12:
      v185 = v225;
      v201 = v316;
      v200(v225, v191, v316);
      LOBYTE(v312) = 12;
      v202 = v290;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v293;
      sub_26B542F64();
      v206 = &v317;
      goto LABEL_18;
    case 13:
      v185 = v226;
      v201 = v316;
      v200(v226, v191, v316);
      LOBYTE(v312) = 13;
      v202 = v295;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v298;
      sub_26B542F64();
      v206 = &v318;
      goto LABEL_18;
    case 14:
      v185 = v227;
      v201 = v316;
      v200(v227, v191, v316);
      LOBYTE(v312) = 14;
      v202 = v300;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v303;
      sub_26B542F64();
      v207 = v302;
      goto LABEL_19;
    case 15:
      v208 = v228;
      v201 = v316;
      v200(v228, v191, v316);
      LOBYTE(v312) = 15;
      v209 = v304[0];
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v210 = v306;
      sub_26B542F64();
      (*(v305 + 8))(v209, v210);
      v185 = v208;
      goto LABEL_20;
    default:
      v201 = v316;
      v200(v185, v191, v316);
      LOBYTE(v312) = 0;
      v202 = v230;
      v203 = v309;
      v204 = v310;
      sub_26B542F14();
      v205 = v233;
      sub_26B542F64();
      v206 = &v264;
LABEL_18:
      v207 = *(v206 - 32);
LABEL_19:
      (*(v207 + 8))(v202, v205);
LABEL_20:
      v211 = v308;
      (*(v198 + 8))(v185, v201);
      return (*(v211 + 8))(v204, v203);
  }
}

uint64_t VCCommand.TargetedValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v388 = a6;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v382 = type metadata accessor for VCCommand.TargetedValue.WatchOS_watchCodingKeys(255, &v395);
  WitnessTable = swift_getWitnessTable();
  v321 = sub_26B542F04();
  v320 = *(v321 - 8);
  MEMORY[0x28223BE20](v321, v11, v12, v13);
  v363 = &v286 - v14;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v15 = type metadata accessor for VCCommand.TargetedValue.WatchOSCodingKeys(255, &v395);
  v16 = swift_getWitnessTable();
  v380 = v15;
  v379 = v16;
  v319 = sub_26B542F04();
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319, v17, v18, v19);
  v362 = &v286 - v20;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v21 = type metadata accessor for VCCommand.TargetedValue.TvOS_iPodCodingKeys(255, &v395);
  v22 = swift_getWitnessTable();
  v378 = v21;
  v377 = v22;
  v317 = sub_26B542F04();
  v316 = *(v317 - 8);
  MEMORY[0x28223BE20](v317, v23, v24, v25);
  v361 = &v286 - v26;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v27 = type metadata accessor for VCCommand.TargetedValue.TvOS_homePodCodingKeys(255, &v395);
  v28 = swift_getWitnessTable();
  v376 = v27;
  v375 = v28;
  v315 = sub_26B542F04();
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315, v29, v30, v31);
  v360 = &v286 - v32;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v33 = type metadata accessor for VCCommand.TargetedValue.TvOS_appleTVCodingKeys(255, &v395);
  v34 = swift_getWitnessTable();
  v374 = v33;
  v373 = v34;
  v313 = sub_26B542F04();
  v312 = *(v313 - 8);
  MEMORY[0x28223BE20](v313, v35, v36, v37);
  v359 = &v286 - v38;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v39 = type metadata accessor for VCCommand.TargetedValue.TvOSCodingKeys(255, &v395);
  v40 = swift_getWitnessTable();
  v372 = v39;
  v371 = v40;
  v311 = sub_26B542F04();
  v310 = *(v311 - 8);
  MEMORY[0x28223BE20](v311, v41, v42, v43);
  v358 = &v286 - v44;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v45 = type metadata accessor for VCCommand.TargetedValue.VisionOS_visionCodingKeys(255, &v395);
  v46 = swift_getWitnessTable();
  v370 = v45;
  v369 = v46;
  v309 = sub_26B542F04();
  v308 = *(v309 - 8);
  MEMORY[0x28223BE20](v309, v47, v48, v49);
  v357 = &v286 - v50;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v51 = type metadata accessor for VCCommand.TargetedValue.VisionOSCodingKeys(255, &v395);
  v52 = swift_getWitnessTable();
  v368 = v51;
  v367 = v52;
  v307 = sub_26B542F04();
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307, v53, v54, v55);
  v356 = &v286 - v56;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v57 = type metadata accessor for VCCommand.TargetedValue.IOS_macCodingKeys(255, &v395);
  v58 = swift_getWitnessTable();
  v366 = v57;
  v354 = v58;
  v305 = sub_26B542F04();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305, v59, v60, v61);
  v355 = &v286 - v62;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v63 = type metadata accessor for VCCommand.TargetedValue.IOS_carPlayCodingKeys(255, &v395);
  v64 = swift_getWitnessTable();
  v365 = v63;
  v352 = v64;
  v303 = sub_26B542F04();
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303, v65, v66, v67);
  v353 = &v286 - v68;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v69 = type metadata accessor for VCCommand.TargetedValue.IOS_iPadCodingKeys(255, &v395);
  v70 = swift_getWitnessTable();
  v350 = v69;
  v349 = v70;
  v301 = sub_26B542F04();
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301, v71, v72, v73);
  v351 = &v286 - v74;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v75 = type metadata accessor for VCCommand.TargetedValue.IOS_iPhoneCodingKeys(255, &v395);
  v76 = swift_getWitnessTable();
  v347 = v75;
  v346 = v76;
  v299 = sub_26B542F04();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299, v77, v78, v79);
  v348 = &v286 - v80;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v81 = type metadata accessor for VCCommand.TargetedValue.IOSCodingKeys(255, &v395);
  v82 = swift_getWitnessTable();
  v344 = v81;
  v343 = v82;
  v297 = sub_26B542F04();
  v296 = *(v297 - 8);
  MEMORY[0x28223BE20](v297, v83, v84, v85);
  v345 = &v286 - v86;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v87 = type metadata accessor for VCCommand.TargetedValue.MacOS_macCodingKeys(255, &v395);
  v88 = swift_getWitnessTable();
  v341 = v87;
  v340 = v88;
  v295 = sub_26B542F04();
  v294 = *(v295 - 8);
  MEMORY[0x28223BE20](v295, v89, v90, v91);
  v342 = &v286 - v92;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v93 = type metadata accessor for VCCommand.TargetedValue.MacOSCodingKeys(255, &v395);
  v94 = swift_getWitnessTable();
  v338 = v93;
  v337 = v94;
  v293 = sub_26B542F04();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293, v95, v96, v97);
  v339 = &v286 - v98;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v99 = type metadata accessor for VCCommand.TargetedValue.AllCodingKeys(255, &v395);
  v100 = swift_getWitnessTable();
  v335 = v99;
  v334 = v100;
  v291 = sub_26B542F04();
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291, v101, v102, v103);
  v336 = &v286 - v104;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v105 = type metadata accessor for VCCommand.TargetedValue.CodingKeys(255, &v395);
  v390 = swift_getWitnessTable();
  v385 = sub_26B542F04();
  v389 = *(v385 - 8);
  MEMORY[0x28223BE20](v385, v106, v107, v108);
  v397 = &v286 - v109;
  v364 = a2;
  *&v395 = a2;
  *(&v395 + 1) = a3;
  v387 = a4;
  *&v396 = a4;
  *(&v396 + 1) = a5;
  v110 = type metadata accessor for VCCommand.TargetedValue(0, &v395);
  v111 = *(v110 - 8);
  v383 = v110;
  v384 = v111;
  v115 = MEMORY[0x28223BE20](v110, v112, v113, v114);
  v333 = &v286 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x28223BE20](v115, v117, v118, v119);
  v332 = &v286 - v121;
  v125 = MEMORY[0x28223BE20](v120, v122, v123, v124);
  v331 = &v286 - v126;
  v130 = MEMORY[0x28223BE20](v125, v127, v128, v129);
  v330 = &v286 - v131;
  v135 = MEMORY[0x28223BE20](v130, v132, v133, v134);
  v329 = &v286 - v136;
  v140 = MEMORY[0x28223BE20](v135, v137, v138, v139);
  v328 = &v286 - v141;
  v145 = MEMORY[0x28223BE20](v140, v142, v143, v144);
  v327 = &v286 - v146;
  v150 = MEMORY[0x28223BE20](v145, v147, v148, v149);
  v326 = &v286 - v151;
  v155 = MEMORY[0x28223BE20](v150, v152, v153, v154);
  v325 = &v286 - v156;
  v160 = MEMORY[0x28223BE20](v155, v157, v158, v159);
  v324 = &v286 - v161;
  v165 = MEMORY[0x28223BE20](v160, v162, v163, v164);
  v323 = &v286 - v166;
  v170 = MEMORY[0x28223BE20](v165, v167, v168, v169);
  v322 = &v286 - v171;
  v175 = MEMORY[0x28223BE20](v170, v172, v173, v174);
  v177 = &v286 - v176;
  v181 = MEMORY[0x28223BE20](v175, v178, v179, v180);
  v183 = &v286 - v182;
  v187 = MEMORY[0x28223BE20](v181, v184, v185, v186);
  v189 = &v286 - v188;
  v193 = MEMORY[0x28223BE20](v187, v190, v191, v192);
  v195 = &v286 - v194;
  MEMORY[0x28223BE20](v193, v196, v197, v198);
  v200 = &v286 - v199;
  v201 = a1[3];
  v392 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v201);
  *&v386 = v105;
  v202 = v391;
  sub_26B543064();
  if (v202)
  {
LABEL_40:
    v282 = v392;
    return __swift_destroy_boxed_opaque_existential_1(v282);
  }

  v286 = v189;
  v287 = v183;
  v288 = v177;
  v289 = v195;
  v203 = v388;
  v390 = v200;
  v391 = 0;
  v205 = v384;
  v204 = v385;
  v206 = v397;
  *&v393 = sub_26B542EF4();
  sub_26B542C44();
  swift_getWitnessTable();
  *&v395 = sub_26B542CF4();
  *(&v395 + 1) = v207;
  *&v396 = v208;
  *(&v396 + 1) = v209;
  sub_26B542CE4();
  swift_getWitnessTable();
  sub_26B542C74();
  if (v393 == 16 || (v386 = v395, v393 = v395, v394 = v396, (sub_26B542C84() & 1) == 0))
  {
    v218 = sub_26B542DB4();
    swift_allocError();
    v220 = v219;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8);
    *v220 = v383;
    sub_26B542E94();
    sub_26B542DA4();
    (*(*(v218 - 8) + 104))(v220, *MEMORY[0x277D84160], v218);
    swift_willThrow();
    (*(v389 + 8))(v206, v204);
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  switch(&v394 + 8)
  {
    case 1u:
      LOBYTE(v393) = 1;
      v258 = v339;
      v259 = v391;
      sub_26B542E84();
      if (v259)
      {
        goto LABEL_37;
      }

      v260 = v293;
      sub_26B542EE4();
      v261 = v389;
      (*(v292 + 8))(v258, v260);
      (*(v261 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v286;
      v215 = v383;
      goto LABEL_42;
    case 2u:
      LOBYTE(v393) = 2;
      v242 = v342;
      v243 = v391;
      sub_26B542E84();
      if (v243)
      {
        goto LABEL_37;
      }

      v244 = v295;
      sub_26B542EE4();
      v245 = v389;
      (*(v294 + 8))(v242, v244);
      (*(v245 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v287;
      v215 = v383;
      goto LABEL_42;
    case 3u:
      LOBYTE(v393) = 3;
      v250 = v345;
      v251 = v391;
      sub_26B542E84();
      if (v251)
      {
        goto LABEL_37;
      }

      v252 = v297;
      sub_26B542EE4();
      v253 = v389;
      (*(v296 + 8))(v250, v252);
      (*(v253 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v288;
      v215 = v383;
      goto LABEL_42;
    case 4u:
      LOBYTE(v393) = 4;
      v230 = v348;
      v231 = v391;
      sub_26B542E84();
      if (v231)
      {
        goto LABEL_37;
      }

      v232 = v299;
      sub_26B542EE4();
      v233 = v389;
      (*(v298 + 8))(v230, v232);
      (*(v233 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v322;
      v215 = v383;
      goto LABEL_42;
    case 5u:
      LOBYTE(v393) = 5;
      v262 = v351;
      v263 = v391;
      sub_26B542E84();
      if (v263)
      {
        goto LABEL_37;
      }

      v264 = v301;
      sub_26B542EE4();
      v265 = v389;
      (*(v300 + 8))(v262, v264);
      (*(v265 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v323;
      v215 = v383;
      goto LABEL_42;
    case 6u:
      LOBYTE(v393) = 6;
      v270 = v353;
      v271 = v391;
      sub_26B542E84();
      if (v271)
      {
        goto LABEL_37;
      }

      v272 = v303;
      sub_26B542EE4();
      v273 = v389;
      (*(v302 + 8))(v270, v272);
      (*(v273 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v324;
      v215 = v383;
      goto LABEL_42;
    case 7u:
      LOBYTE(v393) = 7;
      v254 = v355;
      v255 = v391;
      sub_26B542E84();
      if (v255)
      {
        goto LABEL_37;
      }

      v256 = v305;
      sub_26B542EE4();
      v257 = v389;
      (*(v304 + 8))(v254, v256);
      (*(v257 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v325;
      v215 = v383;
      goto LABEL_42;
    case 8u:
      LOBYTE(v393) = 8;
      v278 = v356;
      v279 = v391;
      sub_26B542E84();
      if (v279)
      {
        goto LABEL_37;
      }

      v280 = v307;
      sub_26B542EE4();
      v281 = v389;
      (*(v306 + 8))(v278, v280);
      (*(v281 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v326;
      v215 = v383;
      goto LABEL_42;
    case 9u:
      LOBYTE(v393) = 9;
      v238 = v357;
      v239 = v391;
      sub_26B542E84();
      if (v239)
      {
        goto LABEL_37;
      }

      v240 = v309;
      sub_26B542EE4();
      v241 = v389;
      (*(v308 + 8))(v238, v240);
      (*(v241 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v327;
      v215 = v383;
      goto LABEL_42;
    case 0xAu:
      LOBYTE(v393) = 10;
      v274 = v358;
      v275 = v391;
      sub_26B542E84();
      if (v275)
      {
        goto LABEL_37;
      }

      v276 = v311;
      sub_26B542EE4();
      v277 = v389;
      (*(v310 + 8))(v274, v276);
      (*(v277 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v328;
      v215 = v383;
      goto LABEL_42;
    case 0xBu:
      LOBYTE(v393) = 11;
      v226 = v359;
      v227 = v391;
      sub_26B542E84();
      if (v227)
      {
        goto LABEL_37;
      }

      v228 = v313;
      sub_26B542EE4();
      v229 = v389;
      (*(v312 + 8))(v226, v228);
      (*(v229 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v329;
      v215 = v383;
      goto LABEL_42;
    case 0xCu:
      LOBYTE(v393) = 12;
      v234 = v360;
      v235 = v391;
      sub_26B542E84();
      if (v235)
      {
        goto LABEL_37;
      }

      v236 = v315;
      sub_26B542EE4();
      v237 = v389;
      (*(v314 + 8))(v234, v236);
      (*(v237 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v330;
      v215 = v383;
      goto LABEL_42;
    case 0xDu:
      LOBYTE(v393) = 13;
      v266 = v361;
      v267 = v391;
      sub_26B542E84();
      if (v267)
      {
        goto LABEL_37;
      }

      v268 = v317;
      sub_26B542EE4();
      v269 = v389;
      (*(v316 + 8))(v266, v268);
      (*(v269 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v331;
      v215 = v383;
      goto LABEL_42;
    case 0xEu:
      LOBYTE(v393) = 14;
      v221 = v362;
      v222 = v391;
      sub_26B542E84();
      if (v222)
      {
        goto LABEL_37;
      }

      v223 = v319;
      sub_26B542EE4();
      v224 = v389;
      (*(v318 + 8))(v221, v223);
      (*(v224 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v332;
      v215 = v383;
      goto LABEL_42;
    case 0xFu:
      LOBYTE(v393) = 15;
      v246 = v363;
      v247 = v391;
      sub_26B542E84();
      if (v247)
      {
        goto LABEL_37;
      }

      v248 = v321;
      sub_26B542EE4();
      v249 = v389;
      (*(v320 + 8))(v246, v248);
      (*(v249 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v225 = v333;
      v215 = v383;
LABEL_42:
      swift_storeEnumTagMultiPayload();
      v217 = v225;
      v216 = v392;
      goto LABEL_43;
    default:
      LOBYTE(v393) = 0;
      v210 = v336;
      v211 = v391;
      sub_26B542E84();
      if (v211)
      {
LABEL_37:
        (*(v389 + 8))(v206, v204);
        goto LABEL_39;
      }

      v212 = v291;
      sub_26B542EE4();
      v213 = v389;
      (*(v290 + 8))(v210, v212);
      (*(v213 + 8))(v397, v204);
      swift_unknownObjectRelease();
      v214 = v289;
      v215 = v383;
      swift_storeEnumTagMultiPayload();
      v216 = v392;
      v217 = v214;
LABEL_43:
      v284 = *(v205 + 32);
      v285 = v390;
      v284(v390, v217, v215);
      v284(v203, v285, v215);
      v282 = v216;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v282);
}

uint64_t sub_26B4D3284@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_99;
  }

  v4 = 0;
  v5 = a1;
  v6 = a2 + 40;
  v7 = MEMORY[0x277D84F90];
  v36 = a2 + 40;
  while (2)
  {
    v38 = v7;
    v8 = (v6 + 16 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_104:
        __break(1u);

        __break(1u);
        JUMPOUT(0x26B4D38ECLL);
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_104;
      }

      v11 = *(v8 - 1);
      v12 = *v8;
      if (v12 <= 7)
      {
        if (v12 - 3 >= 5)
        {
          if (v12 - 1 >= 2)
          {
            goto LABEL_91;
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        v16 = v14 ? 0x534F63616DLL : 5459817;
        v15 = v14 ? 0xE500000000000000 : 0xE300000000000000;
      }

      else
      {
        if (((1 << v12) & 0x3C00) != 0)
        {
          v13 = 2;
        }

        else
        {
          v13 = ((1 << v12) & 0x300) != 0 ? 3 : 4;
        }

        if (v13 == 2)
        {
          v15 = 0xE400000000000000;
          v16 = 1397716596;
        }

        else if (v13 == 3)
        {
          v15 = 0xE800000000000000;
          v16 = 0x534F6E6F69736976;
        }

        else
        {
          v15 = 0xE700000000000000;
          v16 = 0x534F6863746177;
        }
      }

      v17 = byte_26B548312[v5];
      v18 = 0x534F6E6F69736976;
      if (v17 != 3)
      {
        v18 = 0x534F6863746177;
      }

      v19 = 0xE800000000000000;
      if (v17 != 3)
      {
        v19 = 0xE700000000000000;
      }

      if (v17 == 2)
      {
        v18 = 1397716596;
        v19 = 0xE400000000000000;
      }

      v20 = byte_26B548312[v5] ? 0x534F63616DLL : 5459817;
      v21 = byte_26B548312[v5] ? 0xE500000000000000 : 0xE300000000000000;
      v22 = byte_26B548312[v5] <= 1u ? v20 : v18;
      v23 = byte_26B548312[v5] <= 1u ? v21 : v19;
      if (v16 == v22 && v15 == v23)
      {
        break;
      }

      v24 = sub_26B542FB4();

      if (v24)
      {
        goto LABEL_51;
      }

LABEL_5:
      ++v9;
      v8 += 16;
      if (v4 == v3)
      {
        v7 = v38;
        goto LABEL_99;
      }
    }

LABEL_51:
    v25 = 0xE300000000000000;
    v26 = 6513005;
    switch(v12)
    {
      case 2u:
        goto LABEL_61;
      case 4u:
        v25 = 0xE600000000000000;
        v26 = 0x656E6F685069;
        goto LABEL_61;
      case 5u:
        v25 = 0xE400000000000000;
        v26 = 1684099177;
        goto LABEL_61;
      case 6u:
        v25 = 0xE700000000000000;
        v26 = 0x79616C50726163;
        goto LABEL_61;
      case 7u:
        v26 = 0x6C6174614363616DLL;
        v25 = 0xEB00000000747379;
        goto LABEL_61;
      case 9u:
        v25 = 0xE600000000000000;
        v26 = 0x6E6F69736976;
        goto LABEL_61;
      case 0xBu:
        v25 = 0xE700000000000000;
        v26 = 0x5654656C707061;
        goto LABEL_61;
      case 0xCu:
        v25 = 0xE700000000000000;
        v26 = 0x646F50656D6F68;
        goto LABEL_61;
      case 0xDu:
        v26 = 1685016681;
        v25 = 0xE400000000000000;
        goto LABEL_61;
      case 0xFu:
        v25 = 0xE500000000000000;
        v26 = 0x6863746177;
LABEL_61:
        if (a1 > 4u)
        {
          if (a1 <= 6u)
          {
            if (a1 == 5)
            {
              v27 = 0xE600000000000000;
              if (v26 != 0x6E6F69736976)
              {
                goto LABEL_4;
              }
            }

            else
            {
              v27 = 0xE700000000000000;
              if (v26 != 0x5654656C707061)
              {
                goto LABEL_4;
              }
            }
          }

          else if (a1 == 7)
          {
            v27 = 0xE700000000000000;
            if (v26 != 0x646F50656D6F68)
            {
              goto LABEL_4;
            }
          }

          else if (a1 == 8)
          {
            v27 = 0xE400000000000000;
            if (v26 != 1685016681)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v27 = 0xE500000000000000;
            if (v26 != 0x6863746177)
            {
              goto LABEL_4;
            }
          }
        }

        else if (a1 <= 1u)
        {
          if (a1)
          {
            v27 = 0xE600000000000000;
            if (v26 != 0x656E6F685069)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v27 = 0xE300000000000000;
            if (v26 != 6513005)
            {
              goto LABEL_4;
            }
          }
        }

        else if (a1 == 2)
        {
          v27 = 0xE400000000000000;
          if (v26 != 1684099177)
          {
            goto LABEL_4;
          }
        }

        else if (a1 == 3)
        {
          v27 = 0xE700000000000000;
          if (v26 != 0x79616C50726163)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v27 = 0xEB00000000747379;
          if (v26 != 0x6C6174614363616DLL)
          {
            goto LABEL_4;
          }
        }

        if (v25 != v27)
        {
LABEL_4:
          v10 = sub_26B542FB4();

          if (v10)
          {
            goto LABEL_91;
          }

          goto LABEL_5;
        }

LABEL_91:
        v7 = v38;
        v40 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B4D8630(0, *(v38 + 2) + 1, 1);
          v7 = v40;
        }

        v6 = v36;
        v29 = *(v7 + 2);
        v28 = *(v7 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_26B4D8630((v28 > 1), v29 + 1, 1);
          v7 = v40;
        }

        *(v7 + 2) = v29 + 1;
        v30 = &v7[16 * v29];
        *(v30 + 4) = v11;
        v30[40] = v12;
        if (v4 != v3)
        {
          continue;
        }

LABEL_99:
        v40 = v7;

        sub_26B4D7B84(&v40);

        v31 = *(v40 + 2);
        if (v31)
        {
          v32 = &v40[16 * v31 + 16];
          v33 = *v32;
          v34 = v32[8];
        }

        else
        {
          v33 = 0;
          v34 = -1;
        }

        *a3 = v33;
        *(a3 + 8) = v34;
        return result;
      default:
        goto LABEL_91;
    }
  }
}