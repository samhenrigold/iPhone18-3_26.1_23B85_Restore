void __swiftcall GPGenerationRecipeData.getDrawOnImageRecipe()(GPDrawOnImageRecipe_optional *__return_ptr retstr)
{
  v2 = [v1 underlyingData];
  v3 = sub_1D2AC5F24();
  v5 = v4;

  LOBYTE(v24[0]) = 7;
  static GenerationRecipeMigrator.decodeAndUpgradeIfNeeded(data:version:)(v24, &v28);
  sub_1D2A47944(v3, v5);
  v6 = v28;
  v7 = *(v28 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    for (i = 32; ; i += 88)
    {
      v11 = *(v6 + i + 32);
      v12 = *(v6 + i + 48);
      v13 = *(v6 + i + 80);
      v32 = *(v6 + i + 64);
      v14 = *(v6 + i + 16);
      v28 = *(v6 + i);
      v29 = v14;
      v33 = v13;
      v30 = v11;
      v31 = v12;
      if (v32 >> 61 == 2)
      {
        v16 = *(&v32 + 1);
        v15 = v33;
        v17 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        type metadata accessor for GPDrawOnImageRecipe();
        v20[1] = v29;
        v20[0] = v28;
        v20[3] = v31;
        v20[2] = v30;
        v24[2] = v30;
        v24[3] = v31;
        v26 = *(&v32 + 1);
        v21 = v17;
        v22 = v16;
        v23 = v15;
        v24[0] = v28;
        v24[1] = v29;
        v27 = v33;
        v25 = v32 & 0x1FFFFFFFFFFFFFFFLL;
        sub_1D2A72BAC(&v28, v19);
        sub_1D2A724B4(v24, v19);
        v18 = GPDrawOnImageRecipe.init(codableDrawingRecipe:)(v20);

        sub_1D2A72BE4(&v28);
        v8 = v18;
      }

      if (!v9)
      {
        break;
      }

      --v9;
    }
  }

  else
  {
  }
}

id GPGenerationRecipeData.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id GPGenerationRecipeData.init(from:)(uint64_t *a1)
{
  v3 = v1;
  sub_1D2AC5E44();
  swift_allocObject();
  sub_1D2AC5E34();
  sub_1D2A7D98C();
  v4 = sub_1D2AC5E24();
  v6 = v5;

  if (!v2)
  {
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v8 = sub_1D2AC5F14();
    v3 = [v7 initWithUnderlyingData_];
    sub_1D2A47944(v4, v6);
  }

  return v3;
}

uint64_t sub_1D2A7D374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
  v33 = v4;
  result = sub_1D2AC71A4();
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
        sub_1D2A206F8(v24, v34);
      }

      else
      {
        sub_1D2A20708(v24, v34);
      }

      sub_1D2AC7444();
      sub_1D2AC6C74();
      result = sub_1D2AC7484();
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
      result = sub_1D2A206F8(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_1D2A7D62C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D2AAF858(a2, a3);
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
      sub_1D2A7D7E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D2A7D374(v16, a4 & 1);
    v11 = sub_1D2AAF858(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D2AC7394();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1D2A206F8(a1, v22);
  }

  else
  {
    sub_1D2A7D77C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1D2A7D77C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D2A206F8(a4, (a5[7] + 32 * a1));
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

void *sub_1D2A7D7E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EB8, &qword_1D2ACA780);
  v2 = *v0;
  v3 = sub_1D2AC7194();
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
        sub_1D2A20708(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D2A206F8(v25, (*(v4 + 56) + v22));
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

unint64_t sub_1D2A7D98C()
{
  result = qword_1EC704CA8;
  if (!qword_1EC704CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CA8);
  }

  return result;
}

unint64_t type metadata accessor for GPGenerationRecipeData()
{
  result = qword_1EC704CB0;
  if (!qword_1EC704CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC704CB0);
  }

  return result;
}

CVBufferRef_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGImageRef.toPixelBuffer(ciContext:)(CIContext ciContext)
{
  v2 = v1;
  isa = ciContext.super.isa;
  v15[7] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703E98, &qword_1D2ACA760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2AC95B0;
  v5 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v6 = v5;
  *(inited + 40) = sub_1D2A484B0(MEMORY[0x1E69E7CC0]);
  sub_1D2A48C2C(inited);
  swift_setDeallocating();
  sub_1D2A7DCBC(inited + 32);
  v7 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v15[0] = 0;
  Width = CGImageGetWidth(v2);
  Height = CGImageGetHeight(v2);
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA8, &qword_1D2ACA770);
  sub_1D2A7DD24();
  v10 = sub_1D2AC6B94();

  v11 = CVPixelBufferCreate(0, Width, Height, 0x42475241u, v10, v15);

  v12 = v15[0];
  if (!v15[0] || v11)
  {
    sub_1D2A490FC();
    swift_allocError();
    *v13 = v11;
    *(v13 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    [(objc_class *)isa render:v7 toCVPixelBuffer:v15[0]];
  }

  return v12;
}

id static CGImageRef.create(with:ciContext:)(__CVBuffer *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  Width = CVPixelBufferGetWidth(a1);
  v6 = [a2 createCGImage:v4 fromRect:{0.0, 0.0, Width, CVPixelBufferGetHeight(a1)}];

  return v6;
}

uint64_t sub_1D2A7DCBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703EA0, &qword_1D2ACA768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A7DD24()
{
  result = qword_1EC7037D0;
  if (!qword_1EC7037D0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7037D0);
  }

  return result;
}

uint64_t sub_1D2A7DD7C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D2AC7444();
  sub_1D2AC6C74();

  return sub_1D2AC7484();
}

void GenerationRecipe_V7.FormatVersion.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D2AC71D4();

  v5 = 7;
  if (v4 < 7)
  {
    v5 = v4;
  }

  *a3 = v5;
}

double sub_1D2A7DE68(uint64_t a1)
{
  sub_1D2AC6C74();

  return result;
}

uint64_t static GenerationRecipe_V7.stringIndexRangeToIntRange(range:in:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_1D2AC6CE4();
  sub_1D2AC6CE4();
  return v4;
}

uint64_t static GenerationRecipe_V7.intRangeToStringIndexRange(range:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D2AC6C84();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1D2AC6CA4();
    result = sub_1D2AC6C84();
    if (!__OFSUB__(result, 1))
    {
      sub_1D2AC6CA4();
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t GenerationRecipe_V7.debugDescription.getter()
{
  v106 = sub_1D2AC5F94();
  v1 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  v89 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *v0;
  v98 = *(*v0 + 16);
  if (v98)
  {
    v9 = 0;
    v97 = v8 + 32;
    v94 = 0x80000001D2ADF800;
    v93 = 0x80000001D2ADF820;
    v92 = 0x80000001D2ADF840;
    v91 = 0x80000001D2ADF860;
    v104 = (v1 + 48);
    v100 = (v1 + 32);
    v99 = (v1 + 8);
    v90 = 0x80000001D2ADF880;
    v10 = MEMORY[0x1E69E7CC0];
    v96 = v8;
    v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v11 = (v97 + 88 * v9);
      v12 = v11[1];
      v109 = *v11;
      v110 = v12;
      v13 = *(v11 + 10);
      v14 = v11[4];
      v15 = v11[2];
      v112 = v11[3];
      v113 = v14;
      v114 = v13;
      v111 = v15;
      v17 = *(&v109 + 1);
      v16 = v109;
      v18 = v110;
      v19 = *(&v110 + 1) | ((*(&v110 + 5) | (BYTE7(v110) << 16)) << 32);
      v20 = *(&v110 + 1);
      v21 = *(&v15 + 1);
      v22 = v14 >> 61;
      v103 = v9;
      if ((v14 >> 61) > 2)
      {
        if (v22 == 3)
        {
          v105 = v111;
          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          v36 = v110;

          sub_1D2A479A0(v36, v20);
          sub_1D2AC7084();

          v107[0] = 0xD000000000000013;
          v107[1] = v93;
          MEMORY[0x1D38A7100](v16, v17);
          v37 = v107[0];
          v38 = v107[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
          }

          v40 = *(v10 + 2);
          v39 = *(v10 + 3);
          if (v40 >= v39 >> 1)
          {
            v10 = sub_1D2A44BA0((v39 > 1), v40 + 1, 1, v10);
          }

          *(v10 + 2) = v40 + 1;
          v41 = &v10[16 * v40];
          *(v41 + 4) = v37;
          *(v41 + 5) = v38;
          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          sub_1D2AC7084();

          v107[0] = 0xD000000000000010;
          v107[1] = v92;
          if (v105)
          {
            v33 = 7562585;
          }

          else
          {
            v33 = 28494;
          }

          if (v105)
          {
            v34 = 0xE300000000000000;
          }

          else
          {
            v34 = 0xE200000000000000;
          }

          goto LABEL_40;
        }

        if (v22 == 4)
        {
          strcpy(v108, "Person ID: ");
          HIDWORD(v108[1]) = -352321536;
          sub_1D2A72BAC(&v109, v107);
          MEMORY[0x1D38A7100](v16, v17);
          v24 = v108[1];
          v105 = v108[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
          }

          v26 = *(v10 + 2);
          v25 = *(v10 + 3);
          if (v26 >= v25 >> 1)
          {
            v10 = sub_1D2A44BA0((v25 > 1), v26 + 1, 1, v10);
          }

          *(v10 + 2) = v26 + 1;
          v27 = &v10[16 * v26];
          *(v27 + 4) = v105;
          *(v27 + 5) = v24;
          if (v20)
          {
            strcpy(v107, "  - Face ID: ");
            HIWORD(v107[1]) = -4864;
            MEMORY[0x1D38A7100](v18 | (v19 << 8), v20);
            v28 = v107[0];
            v29 = v107[1];
            v31 = *(v10 + 2);
            v30 = *(v10 + 3);
            if (v31 >= v30 >> 1)
            {
              v10 = sub_1D2A44BA0((v30 > 1), v31 + 1, 1, v10);
            }

            *(v10 + 2) = v31 + 1;
            v32 = &v10[16 * v31];
            *(v32 + 4) = v28;
            *(v32 + 5) = v29;
          }

          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          sub_1D2AC7084();

          v107[0] = 0xD000000000000014;
          v107[1] = v94;
          if (v21 >> 60 == 15)
          {
            v33 = 28494;
          }

          else
          {
            v33 = 7562585;
          }

          if (v21 >> 60 == 15)
          {
            v34 = 0xE200000000000000;
          }

          else
          {
            v34 = 0xE300000000000000;
          }

LABEL_40:
          MEMORY[0x1D38A7100](v33, v34);
          goto LABEL_58;
        }

        v105 = v111;
        v47 = BYTE7(v111);
        v48 = *(&v111 + 5);
        v95 = *(&v111 + 1);
        strcpy(v108, "Style: ");
        v108[1] = 0xE700000000000000;
        sub_1D2A72BAC(&v109, v107);
        sub_1D2A72BAC(&v109, v107);

        MEMORY[0x1D38A7100](v16, v17);

        MEMORY[0x1D38A7100](10272, 0xE200000000000000);
        if (v18)
        {
          v49 = 0x6C616E7265747845;
        }

        else
        {
          v49 = 5063745;
        }

        if (v18)
        {
          v50 = 0xE800000000000000;
        }

        else
        {
          v50 = 0xE300000000000000;
        }

        MEMORY[0x1D38A7100](v49, v50);

        MEMORY[0x1D38A7100](41, 0xE100000000000000);
        v51 = v108[0];
        v52 = v108[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
        }

        v54 = *(v10 + 2);
        v53 = *(v10 + 3);
        if (v54 >= v53 >> 1)
        {
          v10 = sub_1D2A44BA0((v53 > 1), v54 + 1, 1, v10);
        }

        v55 = (v95 << 8) | ((v48 | (v47 << 16)) << 40);
        *(v10 + 2) = v54 + 1;
        v56 = &v10[16 * v54];
        *(v56 + 4) = v51;
        *(v56 + 5) = v52;
        v57 = v55 | v105;
        if (v55 | v105)
        {

          sub_1D2A72BE4(&v109);
          strcpy(v107, "Model: ");
          v107[1] = 0xE700000000000000;
          MEMORY[0x1D38A7100](v20, v57);
LABEL_58:

          v58 = v107[0];
          v59 = v107[1];
LABEL_62:
          v61 = *(v10 + 2);
          v60 = *(v10 + 3);
          if (v61 >= v60 >> 1)
          {
            v10 = sub_1D2A44BA0((v60 > 1), v61 + 1, 1, v10);
          }

          *(v10 + 2) = v61 + 1;
          v62 = &v10[16 * v61];
          *(v62 + 4) = v58;
          *(v62 + 5) = v59;
          goto LABEL_65;
        }

        sub_1D2A72BE4(&v109);
      }

      else
      {
        if (!v22)
        {
          v35 = HIBYTE(*(&v109 + 1)) & 0xFLL;
          if ((*(&v109 + 1) & 0x2000000000000000) == 0)
          {
            v35 = v109 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {
            sub_1D2A72BAC(&v109, v107);
          }

          else
          {
            v16 = 0x70207974706D4528;
            v17 = 0xEE002974706D6F72;
          }

          v108[0] = 0;
          v108[1] = 0xE000000000000000;
          sub_1D2A72BAC(&v109, v107);
          sub_1D2AC7084();

          v107[0] = 0xD000000000000010;
          v107[1] = v90;
          MEMORY[0x1D38A7100](v16, v17);

          v58 = v107[0];
          v59 = v107[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
          }

          goto LABEL_62;
        }

        if (v22 == 1)
        {
          v23 = HIBYTE(*(&v109 + 1)) & 0xFLL;
          if ((*(&v109 + 1) & 0x2000000000000000) == 0)
          {
            v23 = v109 & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {
          }

          else
          {
            v16 = 0x70207974706D4528;
            v17 = 0xEE002974706D6F72;
          }

          strcpy(v108, "Text Prompt: ");
          HIWORD(v108[1]) = -4864;
          sub_1D2A72BAC(&v109, v107);
          MEMORY[0x1D38A7100](v16, v17);

          v64 = v108[0];
          v65 = v108[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
          }

          v67 = *(v10 + 2);
          v66 = *(v10 + 3);
          if (v67 >= v66 >> 1)
          {
            v10 = sub_1D2A44BA0((v66 > 1), v67 + 1, 1, v10);
          }

          v68 = v18 | (v19 << 8);
          *(v10 + 2) = v67 + 1;
          v69 = &v10[16 * v67];
          *(v69 + 4) = v64;
          *(v69 + 5) = v65;
          v70 = *(v68 + 0x10);
          if (v70)
          {
            v71 = v68 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
            v105 = *(v89 + 72);
            v72 = v102;
            do
            {
              sub_1D2A7EE30(v71, v72, type metadata accessor for GenerationRecipe_V7.Prompt.Entity);
              sub_1D2A7EE30(v72 + *(v6 + 20), v5, type metadata accessor for GenerationRecipe_V7.Prompt.Entity.Kind);
              v73 = (*v104)(v5, 2, v106);
              if (v73)
              {
                if (v73 == 1)
                {
                  v74 = 0x636972656E6547;
                }

                else
                {
                  v74 = 0x6E776F6E6B6E55;
                }

                v75 = 0xE700000000000000;
              }

              else
              {
                v76 = v6;
                v77 = v5;
                v78 = v101;
                v79 = v106;
                (*v100)(v101, v77, v106);
                strcpy(v107, "Named (");
                v107[1] = 0xE700000000000000;
                v80 = sub_1D2AC5F64();
                MEMORY[0x1D38A7100](v80);

                MEMORY[0x1D38A7100](41, 0xE100000000000000);
                v74 = v107[0];
                v75 = v107[1];
                v81 = v78;
                v5 = v77;
                v6 = v76;
                v72 = v102;
                (*v99)(v81, v79);
              }

              v107[0] = 0;
              v107[1] = 0xE000000000000000;
              sub_1D2AC7084();

              strcpy(v107, "  - Entity: ");
              BYTE5(v107[1]) = 0;
              HIWORD(v107[1]) = -5120;
              MEMORY[0x1D38A7100](*v72, v72[1]);
              MEMORY[0x1D38A7100](10272, 0xE200000000000000);
              MEMORY[0x1D38A7100](v74, v75);

              MEMORY[0x1D38A7100](41, 0xE100000000000000);
              v82 = v107[0];
              v83 = v107[1];
              v85 = *(v10 + 2);
              v84 = *(v10 + 3);
              if (v85 >= v84 >> 1)
              {
                v10 = sub_1D2A44BA0((v84 > 1), v85 + 1, 1, v10);
              }

              sub_1D2A7EE98(v72);
              *(v10 + 2) = v85 + 1;
              v86 = &v10[16 * v85];
              *(v86 + 4) = v82;
              *(v86 + 5) = v83;
              v71 += v105;
              --v70;
            }

            while (v70);
          }
        }

        else
        {
          v42 = v110;
          v43 = v111;
          sub_1D2A479A0(v109, *(&v109 + 1));
          sub_1D2A479A0(v42, v20);
          sub_1D2A479A0(v43, v21);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D2A44BA0(0, *(v10 + 2) + 1, 1, v10);
          }

          v45 = *(v10 + 2);
          v44 = *(v10 + 3);
          if (v45 >= v44 >> 1)
          {
            v10 = sub_1D2A44BA0((v44 > 1), v45 + 1, 1, v10);
          }

          *(v10 + 2) = v45 + 1;
          v46 = &v10[16 * v45];
          *(v46 + 4) = 0xD000000000000010;
          *(v46 + 5) = v91;
        }
      }

LABEL_65:
      v9 = v103 + 1;
      result = sub_1D2A72BE4(&v109);
      if (v9 == v98)
      {
        goto LABEL_87;
      }

      if (v9 >= *(v96 + 16))
      {
        __break(1u);
        return result;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_87:
  if (*(v10 + 2))
  {
    *&v109 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC703F30, &qword_1D2ACABA0);
    sub_1D2A4B6E8();
    v87 = sub_1D2AC6BB4();
  }

  else
  {

    return 0xD000000000000014;
  }

  return v87;
}

uint64_t sub_1D2A7EE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A7EE98(uint64_t a1)
{
  v2 = type metadata accessor for GenerationRecipe_V7.Prompt.Entity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2A7EEF8()
{
  result = qword_1EC704CB8;
  if (!qword_1EC704CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CB8);
  }

  return result;
}

uint64_t _s14descr1F4DF9889O13FormatVersionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F4DF9889O13FormatVersionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

CGImageRef static CGImageRef.gp_CGImageFromPNGRepresentationData(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D2AC5F14();
  v3 = CGDataProviderCreateWithCFData(v2);

  if (v3)
  {
    v4 = CGImageSourceCreateWithDataProvider(v3, 0);
    if (v4)
    {
      v5 = v4;
      PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, PrimaryImageIndex, 0);

      return ImageAtIndex;
    }
  }

  return 0;
}

CFMutableDataRef CGImageRef.gp_PNGRepresentationData.getter()
{
  v1 = v0;
  v2 = sub_1D2AC6314();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v7 = result;
    sub_1D2AC6304();
    sub_1D2AC62F4();
    (*(v3 + 8))(v5, v2);
    v8 = sub_1D2AC6BF4();

    v9 = CGImageDestinationCreateWithData(v7, v8, 1uLL, 0);

    if (v9)
    {
      CGImageDestinationAddImage(v9, v1, 0);
      if (CGImageDestinationFinalize(v9))
      {
        v10 = v7;
        v11 = sub_1D2AC5F24();

        return v11;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t GenerationRecipe_V6.Prompt.Entity.init(text:kind:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  result = sub_1D2A7F334(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1D2A7F334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

ImagePlayground::GenerationRecipe_V6::Prompt __swiftcall GenerationRecipe_V6.Prompt.init(value:entities:)(Swift::String value, Swift::OpaquePointer entities)
{
  *v2 = value;
  *(v2 + 16) = entities;
  result.value = value;
  result.entities = entities;
  return result;
}

void GenerationRecipe_V6.DrawOnImageRecipe.init(baseImageData:sketchImageData:sketchMaskData:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:id:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13, uint64_t a14)
{
  v35 = a7;
  v30 = a4;
  v33 = a14;
  v34 = a6;
  v31 = a13;
  v32 = a5;
  v21 = sub_1D2AC5F94();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a8;
  v26 = *a12;
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  (*(v22 + 8))(v24, v21);

  *a9 = a1;
  *(a9 + 8) = a2;
  v27 = v30;
  *(a9 + 16) = a3;
  *(a9 + 24) = v27;
  v28 = v34;
  *(a9 + 32) = v32;
  *(a9 + 40) = v28;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = v35;
  *(a9 + 65) = v25;
  *(a9 + 66) = v26;
  v29 = v33;
  *(a9 + 72) = v31;
  *(a9 + 80) = v29;
}

uint64_t GenerationRecipe_V6.ImportedImage.init(id:imageData:hasPerson:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = sub_1D2A47930(0, 0xF000000000000000);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t GenerationRecipe_V6.PersonData.init(personID:faceID:faceImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  result = sub_1D2A47930(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

ImagePlayground::GenerationRecipe_V6 __swiftcall GenerationRecipe_V6.init(ingredients:seed:)(Swift::OpaquePointer ingredients, Swift::Int_optional seed)
{
  *v2 = ingredients;
  *(v2 + 8) = seed.value;
  *(v2 + 16) = seed.is_nil;
  result.seed = seed;
  result.ingredients = ingredients;
  return result;
}

uint64_t GenerationRecipe_V6.Prompt.Entity.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D2A7F680(uint64_t a1)
{
  v2 = sub_1D2A86F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F6BC(uint64_t a1)
{
  v2 = sub_1D2A86F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F6F8(uint64_t a1)
{
  v2 = sub_1D2A8701C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F734(uint64_t a1)
{
  v2 = sub_1D2A8701C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F770(uint64_t a1)
{
  v2 = sub_1D2A86F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F7AC(uint64_t a1)
{
  v2 = sub_1D2A86F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A7F7E8(uint64_t a1)
{
  v2 = sub_1D2A86FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A7F824(uint64_t a1)
{
  v2 = sub_1D2A86FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.Entity.Kind.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CC0, &qword_1D2ACE820);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CC8, &qword_1D2ACE828);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CD0, &qword_1D2ACE830);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704CD8, &qword_1D2ACE838);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A86F20();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2A8710C(v34, v13, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2A8701C();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2A86FC8();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2A86F74();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2A87070(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t GenerationRecipe_V6.Prompt.Entity.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D00, &qword_1D2ACE840);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D08, &qword_1D2ACE848);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D10, &qword_1D2ACE850);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D18, &qword_1D2ACE858);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D2A86F20();
  v19 = v57;
  sub_1D2AC7494();
  if (!v19)
  {
    v20 = v12;
    v21 = v53;
    v22 = v54;
    v45 = v15;
    v46 = v17;
    v23 = v55;
    v57 = 0;
    v24 = sub_1D2AC7284();
    v25 = (2 * *(v24 + 16)) | 1;
    v59 = v24;
    v60 = v24 + 32;
    v61 = 0;
    v62 = v25;
    v26 = sub_1D2A7615C();
    v27 = v11;
    if (v26 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v34 = v20;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v27, v9);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v63 = 1;
          sub_1D2A86FC8();
          v28 = v57;
          sub_1D2AC71E4();
          v29 = v56;
          if (!v28)
          {
            (*(v47 + 8))(v22, v49);
            (*(v29 + 8))(v11, v9);
            swift_unknownObjectRelease();
            v30 = sub_1D2AC5F94();
            v31 = v46;
            (*(*(v30 - 8) + 56))(v46, 2, 2, v30);
LABEL_17:
            v44 = v52;
            goto LABEL_18;
          }
        }

        else
        {
          v63 = 2;
          sub_1D2A86F74();
          v37 = v23;
          v38 = v57;
          sub_1D2AC71E4();
          v39 = v52;
          v29 = v56;
          if (!v38)
          {
            v40 = sub_1D2AC5F94();
            sub_1D2A87070(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v41 = v45;
            v42 = v50;
            sub_1D2AC7264();
            (*(v51 + 8))(v37, v42);
            (*(v29 + 8))(v27, v9);
            swift_unknownObjectRelease();
            (*(*(v40 - 8) + 56))(v41, 0, 2, v40);
            v31 = v46;
            sub_1D2A7F334(v41, v46);
            v44 = v39;
LABEL_18:
            sub_1D2A7F334(v31, v44);
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }
        }
      }

      else
      {
        v63 = 0;
        sub_1D2A8701C();
        v36 = v57;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v21 + 8))(v8, v48);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v43 = sub_1D2AC5F94();
          v31 = v46;
          (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
          goto LABEL_17;
        }

        v29 = v56;
      }

      (*(v29 + 8))(v27, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

BOOL static GenerationRecipe_V6.Prompt.Entity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2)
  {
    v14 = sub_1D2AC7354();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v30 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  v16 = *(v30 + 20);
  v17 = *(v11 + 48);
  sub_1D2A8710C(a1 + v16, v13, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  sub_1D2A8710C(a2 + v16, &v13[v17], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v18 = *(v5 + 48);
  v19 = v18(v13, 2, v4);
  if (!v19)
  {
    sub_1D2A8710C(v13, v10, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    if (!v18(&v13[v17], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v17], v4);
      v20 = sub_1D2AC5F74();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_1D2A87174(v13, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    if (v18(&v13[v17], 2, v4) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_1D2A2E61C(v13, &qword_1EC704C08, &qword_1D2ACE610);
    return 0;
  }

  if (v18(&v13[v17], 2, v4) != 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1D2A87174(v13, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v22 = *(v30 + 24);
  v24 = *(a1 + v22);
  v23 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v27 = *v25;
  v26 = v25[1];
  return v24 == v27 && v23 == v26;
}

uint64_t sub_1D2A808A8(uint64_t a1)
{
  v2 = sub_1D2A870B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A808E4(uint64_t a1)
{
  v2 = sub_1D2A870B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D20, &unk_1D2ACE860);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A870B8();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
    sub_1D2A87070(&qword_1EC704D30, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V6.Prompt.Entity.Kind);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void GenerationRecipe_V6.Prompt.Entity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D38, &qword_1D2ACE870);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A870B8();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2A87070(&qword_1EC704D40, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind, &protocol conformance descriptor for GenerationRecipe_V6.Prompt.Entity.Kind);
    sub_1D2AC7264();
    sub_1D2A7F334(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2A8710C(v18, v20, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2A87174(v18, type metadata accessor for GenerationRecipe_V6.Prompt.Entity);
  }
}

BOOL sub_1D2A80F4C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (_s15ImagePlayground19GenerationRecipe_V6V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t GenerationRecipe_V6.Prompt.id.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static GenerationRecipe_V6.Prompt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A67270(v2, v3);
}

uint64_t sub_1D2A81080(uint64_t a1)
{
  v2 = sub_1D2A871D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A810BC(uint64_t a1)
{
  v2 = sub_1D2A871D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Prompt.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D48, &qword_1D2ACE878);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A871D4();
  sub_1D2AC74A4();
  v13 = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D58, &qword_1D2ACE880);
    sub_1D2A87228(&qword_1EC704D60, &qword_1EC704D68, &protocol conformance descriptor for GenerationRecipe_V6.Prompt.Entity, MEMORY[0x1E69E6300]);
    sub_1D2AC7304();
  }

  return (*(v10 + 8))(v6, v4);
}

void GenerationRecipe_V6.Prompt.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D70, &qword_1D2ACE888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A871D4();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_1D2AC7234();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D58, &qword_1D2ACE880);
    v15 = 1;
    sub_1D2A87228(&qword_1EC704D78, &qword_1EC704D80, &protocol conformance descriptor for GenerationRecipe_V6.Prompt.Entity, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

BOOL sub_1D2A81564(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A67270(v2, v3);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.id.getter()
{
  if (*v0)
  {
    return 0x69646E656C426F6ELL;
  }

  else
  {
    return 0x646E656C62;
  }
}

uint64_t sub_1D2A8162C(uint64_t a1)
{
  v2 = sub_1D2A8736C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A81668(uint64_t a1)
{
  v2 = sub_1D2A8736C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A816A4(uint64_t a1)
{
  v2 = sub_1D2A872C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A816E0(uint64_t a1)
{
  v2 = sub_1D2A872C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8171C(uint64_t a1)
{
  v2 = sub_1D2A87318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A81758(uint64_t a1)
{
  v2 = sub_1D2A87318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D88, &qword_1D2ACE890);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D90, &qword_1D2ACE898);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704D98, &qword_1D2ACE8A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A872C4();
  sub_1D2AC74A4();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D2A87318();
    v14 = v18;
    sub_1D2AC7294();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D2A8736C();
    sub_1D2AC7294();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DB8, &qword_1D2ACE8A8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DC0, &qword_1D2ACE8B0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DC8, &qword_1D2ACE8B8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A872C4();
  v12 = v31;
  sub_1D2AC7494();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D2AC7284();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D2A76160();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D2AC70B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v22 = &type metadata for GenerationRecipe_V6.DrawOnImageRecipe.AssignmentOptions;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D2A87318();
        sub_1D2AC71E4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D2A8736C();
        sub_1D2AC71E4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

unint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.id.getter()
{
  v1 = 0x6E6153746F4E6F64;
  v2 = 0xD000000000000019;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1D2A82048(uint64_t a1)
{
  v2 = sub_1D2A873C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82084(uint64_t a1)
{
  v2 = sub_1D2A873C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A820C0(uint64_t a1)
{
  v2 = sub_1D2A87510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A820FC(uint64_t a1)
{
  v2 = sub_1D2A87510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A82138(uint64_t a1)
{
  v2 = sub_1D2A87468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82174(uint64_t a1)
{
  v2 = sub_1D2A87468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A821B0(uint64_t a1)
{
  v2 = sub_1D2A87414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A821EC(uint64_t a1)
{
  v2 = sub_1D2A87414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A82228(uint64_t a1)
{
  v2 = sub_1D2A874BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82264(uint64_t a1)
{
  v2 = sub_1D2A874BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DD0, &qword_1D2ACE8C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DD8, &qword_1D2ACE8C8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DE0, &qword_1D2ACE8D0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DE8, &qword_1D2ACE8D8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704DF0, &qword_1D2ACE8E0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A873C0();
  sub_1D2AC74A4();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D2A87468();
      v18 = v27;
      sub_1D2AC7294();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D2A87414();
      v18 = v30;
      sub_1D2AC7294();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D2A874BC();
    v18 = v24;
    sub_1D2AC7294();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D2A87510();
  sub_1D2AC7294();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1D2AC7444();
  MEMORY[0x1D38A7890](v1);
  return sub_1D2AC7484();
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E20, &qword_1D2ACE8E8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E28, &qword_1D2ACE8F0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E30, &qword_1D2ACE8F8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E38, &qword_1D2ACE900);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E40, &qword_1D2ACE908);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D2A873C0();
  v15 = v46;
  sub_1D2AC7494();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D2AC7284();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D2A76164();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D2AC70B4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v28 = &type metadata for GenerationRecipe_V6.DrawOnImageRecipe.SanitizationCategory;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D2A874BC();
        v32 = v35;
        sub_1D2AC71E4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D2A87510();
        v25 = v35;
        sub_1D2AC71E4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D2A87468();
      v31 = v35;
      sub_1D2AC71E4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D2A87414();
      v33 = v35;
      sub_1D2AC71E4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.baseImageData.getter()
{
  v1 = *v0;
  sub_1D2A479A0(*v0, *(v0 + 8));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.sketchImageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.sketchMaskData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.id.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void GenerationRecipe_V6.DrawOnImageRecipe.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1D2A82F30(uint64_t a1)
{
  v2 = sub_1D2A87564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A82F6C(uint64_t a1)
{
  v2 = sub_1D2A87564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.DrawOnImageRecipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E48, &qword_1D2ACE910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v9;
  v10 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v10;
  v26 = *(v1 + 64);
  LODWORD(v10) = *(v1 + 65);
  v17 = *(v1 + 66);
  v18 = v10;
  v11 = *(v1 + 80);
  v16[0] = *(v1 + 72);
  v16[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A479A0(v7, v8);
  sub_1D2A87564();
  sub_1D2AC74A4();
  v24 = v7;
  v25 = v8;
  v27 = 0;
  sub_1D2A722BC();
  v12 = v23;
  sub_1D2AC72C4();
  if (v12)
  {
    sub_1D2A47930(v24, v25);
  }

  else
  {
    v14 = v19;
    v13 = v20;
    sub_1D2A47930(v24, v25);
    v24 = v22;
    v25 = v21;
    v27 = 1;
    sub_1D2A479A0(v22, v21);
    sub_1D2AC72C4();
    sub_1D2A47930(v24, v25);
    v24 = v13;
    v25 = v14;
    v27 = 2;
    sub_1D2A479A0(v13, v14);
    sub_1D2AC72C4();
    sub_1D2A47930(v24, v25);
    LOBYTE(v24) = 3;
    sub_1D2AC72F4();
    LOBYTE(v24) = 4;
    sub_1D2AC72F4();
    LOBYTE(v24) = 5;
    sub_1D2AC72E4();
    LOBYTE(v24) = v18;
    v27 = 6;
    sub_1D2A875B8();
    sub_1D2AC7304();
    LOBYTE(v24) = v17;
    v27 = 7;
    sub_1D2A8760C();
    sub_1D2AC7304();
    LOBYTE(v24) = 8;
    sub_1D2AC72D4();
  }

  return (*(v4 + 8))(v6, v3);
}

void GenerationRecipe_V6.DrawOnImageRecipe.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E68, &qword_1D2ACE918);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = sub_1D2AC5F94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v54 = v13;
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87564();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v36[0]) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v35 = v41[0];
    LOBYTE(v36[0]) = 1;
    sub_1D2AC7224();
    v34 = v41[0];
    LOBYTE(v36[0]) = 2;
    sub_1D2AC7224();
    v33 = v41[0];
    LOBYTE(v41[0]) = 3;
    sub_1D2AC7254();
    v15 = v14;
    LOBYTE(v41[0]) = 4;
    sub_1D2AC7254();
    v17 = v16;
    LOBYTE(v41[0]) = 5;
    v18 = sub_1D2AC7244();
    LOBYTE(v36[0]) = 6;
    sub_1D2A87660();
    sub_1D2AC7264();
    v19 = v41[0];
    LOBYTE(v36[0]) = 7;
    sub_1D2A876B4();
    sub_1D2AC7264();
    v32 = LOBYTE(v41[0]);
    v51 = 8;
    v20 = sub_1D2AC7234();
    v31 = v21;
    v22 = v20;
    LOBYTE(v18) = v18 & 1;
    (*(v6 + 8))(v8, v5);

    v25 = v35;
    v23 = v25 >> 64;
    v24 = v25;
    v36[0] = v35;
    v36[1] = v34;
    v37 = v33;
    *&v38 = v15;
    *(&v38 + 1) = v17;
    LOBYTE(v39) = v18;
    BYTE1(v39) = v19;
    BYTE2(v39) = v32;
    *(&v39 + 3) = v52;
    BYTE7(v39) = v53;
    v26 = v31;
    *(&v39 + 1) = v22;
    v40 = v31;
    v27 = v34;
    *a2 = v35;
    *(a2 + 16) = v27;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    *(a2 + 80) = v26;
    *(a2 + 48) = v29;
    *(a2 + 64) = v30;
    *(a2 + 32) = v28;
    sub_1D2A87708(v36, v41);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v41[0] = __PAIR128__(v23, v24);
    v41[1] = v34;
    v41[2] = v33;
    v42 = v15;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v32;
    v47 = v52;
    v48 = v53;
    v49 = v22;
    v50 = v26;
    sub_1D2A87740(v41);
  }
}

uint64_t GenerationRecipe_V6.ImportedImage.id.getter()
{
  v1 = *v0;

  return v1;
}

void GenerationRecipe_V6.ImportedImage.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenerationRecipe_V6.ImportedImage.imageData.getter()
{
  v1 = *(v0 + 16);
  sub_1D2A479A0(v1, *(v0 + 24));
  return v1;
}

uint64_t GenerationRecipe_V6.ImportedImage.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static GenerationRecipe_V6.ImportedImage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2AC7354();
  }
}

uint64_t sub_1D2A83B5C(uint64_t a1)
{
  v2 = sub_1D2A87770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A83B98(uint64_t a1)
{
  v2 = sub_1D2A87770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.ImportedImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E80, &qword_1D2ACE920);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87770();
  sub_1D2AC74A4();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_1D2AC72D4();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v17 = 1;
    sub_1D2A479A0(v12, v11);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v14, v15);
    LOBYTE(v14) = 2;
    sub_1D2AC72E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GenerationRecipe_V6.ImportedImage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E90, &qword_1D2ACE928);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87770();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v18 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v21) = 0;
    v9 = sub_1D2AC7234();
    v12 = v11;
    v19 = v9;
    v23 = 1;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v13 = v22;
    v20 = v21;
    sub_1D2A47930(0, 0xF000000000000000);
    LOBYTE(v21) = 2;
    v15 = sub_1D2AC7244();
    (*(v6 + 8))(v8, v5);
    v16 = v15 & 1;
    v17 = v20;
    *a2 = v19;
    *(a2 + 8) = v12;
    *(a2 + 16) = v17;
    *(a2 + 24) = v13;
    *(a2 + 32) = v16;

    sub_1D2A479A0(v17, v13);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v18 = v17;
    v14 = v13;
  }

  return sub_1D2A47930(v18, v14);
}

uint64_t GenerationRecipe_V6.PersonData.id.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = *v0;

  MEMORY[0x1D38A7100](v1, v2);

  return v4;
}

uint64_t GenerationRecipe_V6.PersonData.personID.getter()
{
  v1 = *v0;

  return v1;
}

void GenerationRecipe_V6.PersonData.personID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t GenerationRecipe_V6.PersonData.faceID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void GenerationRecipe_V6.PersonData.faceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t GenerationRecipe_V6.PersonData.faceImageData.getter()
{
  v1 = *(v0 + 32);
  sub_1D2A479A0(v1, *(v0 + 40));
  return v1;
}

uint64_t GenerationRecipe_V6.PersonData.faceImageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D2A47930(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1D2A84280(uint64_t a1)
{
  v2 = sub_1D2A877C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A842BC(uint64_t a1)
{
  v2 = sub_1D2A877C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.PersonData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704E98, &qword_1D2ACE930);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A877C4();
  sub_1D2AC74A4();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1D2AC72D4();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    LOBYTE(v19) = 1;
    sub_1D2AC72A4();
    v19 = v11;
    v20 = v12;
    v21 = 2;
    sub_1D2A479A0(v11, v12);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GenerationRecipe_V6.PersonData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EA8, &qword_1D2ACE938);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A877C4();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  else
  {
    LOBYTE(v23) = 0;
    v9 = sub_1D2AC7234();
    v12 = v11;
    v22 = v9;
    LOBYTE(v23) = 1;
    v13 = sub_1D2AC7204();
    v15 = v14;
    v21 = v13;
    v25 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v8, v5);
    v16 = v23;
    v17 = v24;
    sub_1D2A47930(0, 0xF000000000000000);
    v18 = v21;
    *a2 = v22;
    a2[1] = v12;
    a2[2] = v18;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v17;

    sub_1D2A479A0(v16, v17);
    __swift_destroy_boxed_opaque_existential_0(a1);

    v19 = v16;
    v20 = v17;
  }

  return sub_1D2A47930(v19, v20);
}

uint64_t GenerationRecipe_V6.Ingredient.id.getter()
{
  v1 = *v0;
  v2 = v0[8] >> 61;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      v1 = v0[9];
    }

    goto LABEL_12;
  }

  if (v2 != 4)
  {
LABEL_12:

    return v1;
  }

  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v7 = *v0;

  MEMORY[0x1D38A7100](v4, v5);

  return v7;
}

uint64_t sub_1D2A8489C(uint64_t a1)
{
  v2 = sub_1D2A87818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A848D8(uint64_t a1)
{
  v2 = sub_1D2A87818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84914(uint64_t a1)
{
  v2 = sub_1D2A87B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84950(uint64_t a1)
{
  v2 = sub_1D2A87B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8498C(uint64_t a1)
{
  v2 = sub_1D2A87A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A849C8(uint64_t a1)
{
  v2 = sub_1D2A87A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84A04(uint64_t a1)
{
  v2 = sub_1D2A87968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84A40(uint64_t a1)
{
  v2 = sub_1D2A87968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84A7C(uint64_t a1)
{
  v2 = sub_1D2A878C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84AB8(uint64_t a1)
{
  v2 = sub_1D2A878C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84AF4(uint64_t a1)
{
  v2 = sub_1D2A87AB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84B30(uint64_t a1)
{
  v2 = sub_1D2A87AB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A84B6C(uint64_t a1)
{
  v2 = sub_1D2A8786C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A84BA8(uint64_t a1)
{
  v2 = sub_1D2A8786C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.Ingredient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EB0, &qword_1D2ACE940);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v27 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EB8, &qword_1D2ACE948);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v27 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EC0, &qword_1D2ACE950);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v27 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EC8, &qword_1D2ACE958);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v27 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704ED0, &qword_1D2ACE960);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704ED8, &qword_1D2ACE968);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704EE0, &qword_1D2ACE970);
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = v1[1];
  v52 = *v1;
  v53 = v15;
  v16 = v1[3];
  v51 = v1[2];
  v50 = *(v1 + 32);
  v48 = *(v1 + 33) | ((*(v1 + 37) | (*(v1 + 39) << 16)) << 32);
  v49 = v16;
  v17 = v1[6];
  v47 = v1[5];
  v30 = v17;
  v18 = v1[8];
  v29 = v1[7];
  v19 = v1[10];
  v28 = v1[9];
  v27 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87818();
  sub_1D2AC74A4();
  v20 = v18 >> 61;
  if ((v18 >> 61) > 2)
  {
    if (v20 == 3)
    {
      LOBYTE(v55) = 3;
      sub_1D2A87968();
      v22 = v36;
      v21 = v14;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50 & 1;
      sub_1D2A879BC();
      v23 = v40;
      sub_1D2AC7304();
      v24 = &v70;
    }

    else
    {
      v21 = v14;
      if (v20 != 4)
      {
        LOBYTE(v55) = 5;
        sub_1D2A8786C();
        v22 = v42;
        sub_1D2AC7294();
        v23 = v46;
        sub_1D2AC72D4();
        v26 = v45;
        goto LABEL_12;
      }

      LOBYTE(v55) = 4;
      sub_1D2A878C0();
      v22 = v41;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50;
      v62 = BYTE6(v48);
      v61 = WORD2(v48);
      v60 = v48;
      v63 = v47;
      sub_1D2A87914();
      v23 = v44;
      sub_1D2AC7304();
      v24 = &v71;
    }
  }

  else
  {
    if (!v20)
    {
      LOBYTE(v55) = 0;
      sub_1D2A87B60();
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v31 + 8))(v11, v9);
      return (*(v54 + 8))(v14, v12);
    }

    v21 = v14;
    if (v20 == 1)
    {
      LOBYTE(v55) = 1;
      sub_1D2A87AB8();
      v22 = v32;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      sub_1D2A87B0C();
      v23 = v34;
      sub_1D2AC7304();
      v24 = &v68;
    }

    else
    {
      LOBYTE(v55) = 2;
      sub_1D2A87A10();
      v22 = v35;
      sub_1D2AC7294();
      v55 = v52;
      v56 = v53;
      v57 = v51;
      v58 = v49;
      v59 = v50;
      v62 = BYTE6(v48);
      v61 = WORD2(v48);
      v60 = v48;
      v63 = v47;
      v64 = v30;
      v65 = v29;
      v66 = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v67 = v28;
      v68 = v27;
      sub_1D2A87A64();
      v23 = v38;
      sub_1D2AC7304();
      v24 = &v69;
    }
  }

  v26 = *(v24 - 32);
LABEL_12:
  (*(v26 + 8))(v22, v23);
  return (*(v54 + 8))(v21, v12);
}

uint64_t GenerationRecipe_V6.Ingredient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F40, &qword_1D2ACE978);
  v69 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v74 = &v56 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F48, &qword_1D2ACE980);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v56 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F50, &qword_1D2ACE988);
  v66 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v56 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F58, &qword_1D2ACE990);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v56 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F60, &qword_1D2ACE998);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F68, &qword_1D2ACE9A0);
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704F70, &qword_1D2ACE9A8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = a1[3];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2A87818();
  v17 = v75;
  sub_1D2AC7494();
  if (!v17)
  {
    v18 = v11;
    v57 = v9;
    v58 = v8;
    v75 = 0;
    v20 = v71;
    v19 = v72;
    v21 = v73;
    v22 = v74;
    v23 = sub_1D2AC7284();
    v24 = (2 * *(v23 + 16)) | 1;
    v83 = v23;
    v84 = v23 + 32;
    v85 = 0;
    v86 = v24;
    v25 = sub_1D2A76168();
    if (v25 == 6 || v85 != v86 >> 1)
    {
      v36 = sub_1D2AC70B4();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v38 = &type metadata for GenerationRecipe_V6.Ingredient;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
    }

    else if (v25 > 2u)
    {
      if (v25 == 3)
      {
        v45 = v70;
        LOBYTE(v76) = 3;
        sub_1D2A87968();
        v46 = v75;
        sub_1D2AC71E4();
        if (!v46)
        {
          sub_1D2A87C08();
          v47 = v65;
          sub_1D2AC7264();
          (*(v66 + 8))(v19, v47);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v35 = v78;
          *&v29 = v79;
          v34 = 0x6000000000000000;
LABEL_25:
          *v45 = v33;
          *(v45 + 8) = v32;
          *(v45 + 16) = v35;
          *(v45 + 32) = v29;
          *(v45 + 48) = v30;
          *(v45 + 64) = v34;
          *(v45 + 72) = v31;
          return __swift_destroy_boxed_opaque_existential_0(v87);
        }
      }

      else
      {
        v40 = v75;
        if (v25 == 4)
        {
          LOBYTE(v76) = 4;
          sub_1D2A878C0();
          sub_1D2AC71E4();
          if (!v40)
          {
            sub_1D2A87BB4();
            v41 = v67;
            sub_1D2AC7264();
            (*(v68 + 8))(v21, v41);
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v33 = v76;
            v32 = v77;
            v34 = 0x8000000000000000;
            v35 = v78;
            v29 = v79;
            goto LABEL_24;
          }
        }

        else
        {
          LOBYTE(v76) = 5;
          sub_1D2A8786C();
          v50 = v22;
          sub_1D2AC71E4();
          if (!v40)
          {
            v51 = v60;
            v52 = sub_1D2AC7234();
            v32 = v54;
            v55 = v52;
            (*(v69 + 8))(v50, v51);
            v33 = v55;
            (*(v13 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v34 = 0xA000000000000000;
            goto LABEL_24;
          }
        }
      }
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        LOBYTE(v76) = 1;
        sub_1D2A87AB8();
        v26 = v58;
        v27 = v75;
        sub_1D2AC71E4();
        if (!v27)
        {
          sub_1D2A87CB0();
          v28 = v62;
          sub_1D2AC7264();
          (*(v61 + 8))(v26, v28);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v34 = 0x2000000000000000;
          *&v35 = v78;
LABEL_24:
          v45 = v70;
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v76) = 2;
        sub_1D2A87A10();
        v48 = v75;
        sub_1D2AC71E4();
        if (!v48)
        {
          sub_1D2A87C5C();
          v49 = v64;
          sub_1D2AC7264();
          (*(v63 + 8))(v20, v49);
          (*(v13 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v33 = v76;
          v32 = v77;
          v35 = v78;
          v29 = v79;
          v30 = v80;
          v31 = v82;
          v34 = v81 & 0x10301 | 0x4000000000000000;
          goto LABEL_24;
        }
      }
    }

    else
    {
      LOBYTE(v76) = 0;
      sub_1D2A87B60();
      v42 = v18;
      v43 = v75;
      sub_1D2AC71E4();
      if (!v43)
      {
        v44 = v57;
        v33 = sub_1D2AC7234();
        v32 = v53;
        (*(v59 + 8))(v42, v44);
        (*(v13 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v34 = 0;
        goto LABEL_24;
      }
    }

    (*(v13 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v87);
}

uint64_t sub_1D2A85F94@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V6.Ingredient.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GenerationRecipe_V6.id.getter()
{
  v1 = *v0;
  v16 = v0[1];
  v2 = *(v0 + 16);
  v25 = 0;
  v26 = 0xE000000000000000;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = v4[1];
      v19 = *v4;
      v6 = v4[2];
      v7 = *(v4 + 10);
      v8 = v4[4];
      v22 = v4[3];
      v23 = v8;
      v20 = v5;
      v24 = v7;
      v21 = v6;
      v9 = *(&v19 + 1);
      v10 = v19;
      v11 = v8 >> 61;
      if ((v8 >> 61) > 2)
      {
        if (v11 == 4)
        {
          if (*(&v20 + 1))
          {
            v12 = v20;
          }

          else
          {
            v12 = 0;
          }

          if (*(&v20 + 1))
          {
            v13 = *(&v20 + 1);
          }

          else
          {
            v13 = 0xE000000000000000;
          }

          v17 = v19;
          sub_1D2A76090(&v19, v18);

          MEMORY[0x1D38A7100](v12, v13);

          v9 = *(&v17 + 1);
          v10 = v17;
          goto LABEL_4;
        }
      }

      else if (v11 >= 2)
      {
        v10 = *(&v23 + 1);
        v9 = v24;
      }

      sub_1D2A76090(&v19, v18);

LABEL_4:
      MEMORY[0x1D38A7100](v10, v9);
      sub_1D2A760EC(&v19);

      v4 = (v4 + 88);
      --v3;
    }

    while (v3);
  }

  if ((v2 & 1) == 0)
  {
    *&v19 = v16;
    sub_1D2A87D04();
    v14 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v14);
  }

  return v25;
}

uint64_t static GenerationRecipe_V6.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1D2A67230(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D2A861C8()
{
  if (*v0)
  {
    return 1684366707;
  }

  else
  {
    return 0x6569646572676E69;
  }
}

void sub_1D2A86204(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL;
  if (v6 || (sub_1D2AC7354() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D2AC7354();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D2A862E4(uint64_t a1)
{
  v2 = sub_1D2A87D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A86320(uint64_t a1)
{
  v2 = sub_1D2A87D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenerationRecipe_V6.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FA0, &qword_1D2ACE9B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10[3] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87D58();

  sub_1D2AC74A4();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
  sub_1D2A87E00(&qword_1EC704FB8, sub_1D2A87DAC, MEMORY[0x1E69E6300]);
  sub_1D2AC7304();

  if (!v2)
  {
    v12 = 1;
    sub_1D2AC72B4();
  }

  return (*(v5 + 8))(v7, v4);
}

void GenerationRecipe_V6.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FC8, &qword_1D2ACE9C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A87D58();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
    v13[15] = 0;
    sub_1D2A87E00(&qword_1EC704FD0, sub_1D2A87E78, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_1D2AC7214();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12 & 1;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_1D2A867B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A67230(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A86818@<X0>(uint64_t *a1@<X8>)
{
  result = GenerationRecipe_V6.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V6V10IngredientO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *v34 = a1[2];
  *&v34[16] = v3;
  v4 = a1[3];
  *v35 = a1[4];
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  *v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v41[0] = v32;
  v41[1] = v2;
  v10 = a1[4];
  v41[3] = v4;
  v41[4] = v10;
  v41[2] = *v34;
  v45 = v38;
  v46 = v8;
  v47 = a2[4];
  v44 = v7;
  *&v35[16] = *(a1 + 10);
  *&v40[16] = *(a2 + 10);
  v11 = *(a2 + 10);
  v42 = *(a1 + 10);
  v48 = v11;
  v43 = v36;
  v12 = v5;
  v13 = *v35 >> 61;
  if ((*v35 >> 61) > 2)
  {
    if (v13 == 3)
    {
      if (*v40 >> 61 != 3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v13 == 4)
      {
        if (*v40 >> 61 != 4)
        {
          goto LABEL_23;
        }

        v20 = v32;
        v21 = v5;
        v22 = *v34;
        v19[0] = v36;
        v19[1] = v37;
        v19[2] = v38;
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        v17 = _s15ImagePlayground19GenerationRecipe_V7V10PersonDataV2eeoiySbAE_AEtFZ_0(&v20, v19);
        goto LABEL_19;
      }

      if (*v40 >> 61 != 5)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (*v40 >> 61 == 1)
        {
          v14 = v37;
          if (v32 == v36 || (sub_1D2AC7354() & 1) != 0)
          {
            sub_1D2A76090(&v36, v26);
            sub_1D2A76090(&v32, v26);
            sub_1D2A76090(&v36, v26);
            sub_1D2A76090(&v32, v26);
            v15 = sub_1D2A67270(v12, v14);
            sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
            sub_1D2A760EC(&v36);
            sub_1D2A760EC(&v32);
            if (v15)
            {
              v16 = 1;
              return v16 & 1;
            }

LABEL_24:
            v16 = 0;
            return v16 & 1;
          }
        }

LABEL_23:
        sub_1D2A76090(&v36, v26);
        sub_1D2A76090(&v32, v26);
        sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
        goto LABEL_24;
      }

      if (*v40 >> 61 != 2)
      {
        goto LABEL_23;
      }

      v26[0] = v32;
      v26[1] = v33;
      v28 = *&v34[8];
      v27 = *v34;
      v29 = *&v34[24];
      v30 = *v35 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *&v35[8];
      v20 = v36;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = *v40 & 0x1FFFFFFFFFFFFFFFLL;
      v25 = *&v40[8];
      sub_1D2A76090(&v36, v19);
      sub_1D2A76090(&v32, v19);
      sub_1D2A76090(&v36, v19);
      sub_1D2A76090(&v32, v19);
      v17 = _s15ImagePlayground19GenerationRecipe_V7V06DrawOnaD0V2eeoiySbAE_AEtFZ_0(v26, &v20);
LABEL_19:
      v16 = v17;
      sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
      sub_1D2A760EC(&v36);
      sub_1D2A760EC(&v32);
      return v16 & 1;
    }

    if (*v40 >> 61)
    {
      goto LABEL_23;
    }
  }

  if (v32 == v36)
  {
    sub_1D2A76090(&v36, v26);
    sub_1D2A76090(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
    v16 = 1;
  }

  else
  {
    v16 = sub_1D2AC7354();
    sub_1D2A76090(&v36, v26);
    sub_1D2A76090(&v32, v26);
    sub_1D2A2E61C(v41, &qword_1EC705208, &qword_1D2AD1190);
  }

  return v16 & 1;
}

uint64_t _s15ImagePlayground19GenerationRecipe_V6V6PromptV6EntityV4KindO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704C08, &qword_1D2ACE610);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D2A8710C(a1, &v21 - v13, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  sub_1D2A8710C(a2, &v14[v15], type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1D2A8710C(v14, v10, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1D2AC5F74();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D2A87174(v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A2E61C(v14, &qword_1EC704C08, &qword_1D2ACE610);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D2A87174(v14, type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1D2A86F20()
{
  result = qword_1EC704CE0;
  if (!qword_1EC704CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CE0);
  }

  return result;
}

unint64_t sub_1D2A86F74()
{
  result = qword_1EC704CE8;
  if (!qword_1EC704CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CE8);
  }

  return result;
}

unint64_t sub_1D2A86FC8()
{
  result = qword_1EC704CF0;
  if (!qword_1EC704CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CF0);
  }

  return result;
}

unint64_t sub_1D2A8701C()
{
  result = qword_1EC704CF8;
  if (!qword_1EC704CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704CF8);
  }

  return result;
}

uint64_t sub_1D2A87070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A870B8()
{
  result = qword_1EC704D28;
  if (!qword_1EC704D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704D28);
  }

  return result;
}

uint64_t sub_1D2A8710C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A87174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A871D4()
{
  result = qword_1EC704D50;
  if (!qword_1EC704D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704D50);
  }

  return result;
}

uint64_t sub_1D2A87228(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704D58, &qword_1D2ACE880);
    sub_1D2A87070(a2, type metadata accessor for GenerationRecipe_V6.Prompt.Entity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A872C4()
{
  result = qword_1EC704DA0;
  if (!qword_1EC704DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DA0);
  }

  return result;
}

unint64_t sub_1D2A87318()
{
  result = qword_1EC704DA8;
  if (!qword_1EC704DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DA8);
  }

  return result;
}

unint64_t sub_1D2A8736C()
{
  result = qword_1EC704DB0;
  if (!qword_1EC704DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DB0);
  }

  return result;
}

unint64_t sub_1D2A873C0()
{
  result = qword_1EC704DF8;
  if (!qword_1EC704DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704DF8);
  }

  return result;
}

unint64_t sub_1D2A87414()
{
  result = qword_1EC704E00;
  if (!qword_1EC704E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E00);
  }

  return result;
}

unint64_t sub_1D2A87468()
{
  result = qword_1EC704E08;
  if (!qword_1EC704E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E08);
  }

  return result;
}

unint64_t sub_1D2A874BC()
{
  result = qword_1EC704E10;
  if (!qword_1EC704E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E10);
  }

  return result;
}

unint64_t sub_1D2A87510()
{
  result = qword_1EC704E18;
  if (!qword_1EC704E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E18);
  }

  return result;
}

unint64_t sub_1D2A87564()
{
  result = qword_1EC704E50;
  if (!qword_1EC704E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E50);
  }

  return result;
}

unint64_t sub_1D2A875B8()
{
  result = qword_1EC704E58;
  if (!qword_1EC704E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E58);
  }

  return result;
}

unint64_t sub_1D2A8760C()
{
  result = qword_1EC704E60;
  if (!qword_1EC704E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E60);
  }

  return result;
}

unint64_t sub_1D2A87660()
{
  result = qword_1EC704E70;
  if (!qword_1EC704E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E70);
  }

  return result;
}

unint64_t sub_1D2A876B4()
{
  result = qword_1EC704E78;
  if (!qword_1EC704E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E78);
  }

  return result;
}

unint64_t sub_1D2A87770()
{
  result = qword_1EC704E88;
  if (!qword_1EC704E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704E88);
  }

  return result;
}

unint64_t sub_1D2A877C4()
{
  result = qword_1EC704EA0;
  if (!qword_1EC704EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EA0);
  }

  return result;
}

unint64_t sub_1D2A87818()
{
  result = qword_1EC704EE8;
  if (!qword_1EC704EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EE8);
  }

  return result;
}

unint64_t sub_1D2A8786C()
{
  result = qword_1EC704EF0;
  if (!qword_1EC704EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EF0);
  }

  return result;
}

unint64_t sub_1D2A878C0()
{
  result = qword_1EC704EF8;
  if (!qword_1EC704EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704EF8);
  }

  return result;
}

unint64_t sub_1D2A87914()
{
  result = qword_1EC704F00;
  if (!qword_1EC704F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F00);
  }

  return result;
}

unint64_t sub_1D2A87968()
{
  result = qword_1EC704F08;
  if (!qword_1EC704F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F08);
  }

  return result;
}

unint64_t sub_1D2A879BC()
{
  result = qword_1EC704F10;
  if (!qword_1EC704F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F10);
  }

  return result;
}

unint64_t sub_1D2A87A10()
{
  result = qword_1EC704F18;
  if (!qword_1EC704F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F18);
  }

  return result;
}

unint64_t sub_1D2A87A64()
{
  result = qword_1EC704F20;
  if (!qword_1EC704F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F20);
  }

  return result;
}

unint64_t sub_1D2A87AB8()
{
  result = qword_1EC704F28;
  if (!qword_1EC704F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F28);
  }

  return result;
}

unint64_t sub_1D2A87B0C()
{
  result = qword_1EC704F30;
  if (!qword_1EC704F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F30);
  }

  return result;
}

unint64_t sub_1D2A87B60()
{
  result = qword_1EC704F38;
  if (!qword_1EC704F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F38);
  }

  return result;
}

unint64_t sub_1D2A87BB4()
{
  result = qword_1EC704F78;
  if (!qword_1EC704F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F78);
  }

  return result;
}

unint64_t sub_1D2A87C08()
{
  result = qword_1EC704F80;
  if (!qword_1EC704F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F80);
  }

  return result;
}

unint64_t sub_1D2A87C5C()
{
  result = qword_1EC704F88;
  if (!qword_1EC704F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F88);
  }

  return result;
}

unint64_t sub_1D2A87CB0()
{
  result = qword_1EC704F90;
  if (!qword_1EC704F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F90);
  }

  return result;
}

unint64_t sub_1D2A87D04()
{
  result = qword_1EC704F98;
  if (!qword_1EC704F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704F98);
  }

  return result;
}

unint64_t sub_1D2A87D58()
{
  result = qword_1EC704FA8;
  if (!qword_1EC704FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FA8);
  }

  return result;
}

unint64_t sub_1D2A87DAC()
{
  result = qword_1EC704FC0;
  if (!qword_1EC704FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FC0);
  }

  return result;
}

uint64_t sub_1D2A87E00(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC704FB0, &qword_1D2ACE9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A87E78()
{
  result = qword_1EC704FD8;
  if (!qword_1EC704FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FD8);
  }

  return result;
}

unint64_t sub_1D2A87ED0()
{
  result = qword_1EC704FE0;
  if (!qword_1EC704FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FE0);
  }

  return result;
}

unint64_t sub_1D2A87F28()
{
  result = qword_1EC704FE8;
  if (!qword_1EC704FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FE8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D2A87F90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D2A87FD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2A88060(uint64_t a1)
{
  type metadata accessor for GenerationRecipe_V6.Prompt.Entity.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2A8831C()
{
  result = qword_1EC704FF0;
  if (!qword_1EC704FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FF0);
  }

  return result;
}

unint64_t sub_1D2A88374()
{
  result = qword_1EC704FF8;
  if (!qword_1EC704FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC704FF8);
  }

  return result;
}

unint64_t sub_1D2A883CC()
{
  result = qword_1EC705000;
  if (!qword_1EC705000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705000);
  }

  return result;
}

unint64_t sub_1D2A88424()
{
  result = qword_1EC705008;
  if (!qword_1EC705008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705008);
  }

  return result;
}

unint64_t sub_1D2A8847C()
{
  result = qword_1EC705010;
  if (!qword_1EC705010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705010);
  }

  return result;
}

unint64_t sub_1D2A884D4()
{
  result = qword_1EC705018;
  if (!qword_1EC705018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705018);
  }

  return result;
}

unint64_t sub_1D2A8852C()
{
  result = qword_1EC705020;
  if (!qword_1EC705020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705020);
  }

  return result;
}

unint64_t sub_1D2A88584()
{
  result = qword_1EC705028;
  if (!qword_1EC705028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705028);
  }

  return result;
}

unint64_t sub_1D2A885DC()
{
  result = qword_1EC705030;
  if (!qword_1EC705030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705030);
  }

  return result;
}

unint64_t sub_1D2A88634()
{
  result = qword_1EC705038;
  if (!qword_1EC705038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705038);
  }

  return result;
}

unint64_t sub_1D2A8868C()
{
  result = qword_1EC705040;
  if (!qword_1EC705040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705040);
  }

  return result;
}

unint64_t sub_1D2A886E4()
{
  result = qword_1EC705048;
  if (!qword_1EC705048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705048);
  }

  return result;
}

unint64_t sub_1D2A8873C()
{
  result = qword_1EC705050;
  if (!qword_1EC705050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705050);
  }

  return result;
}

unint64_t sub_1D2A88794()
{
  result = qword_1EC705058;
  if (!qword_1EC705058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705058);
  }

  return result;
}

unint64_t sub_1D2A887EC()
{
  result = qword_1EC705060;
  if (!qword_1EC705060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705060);
  }

  return result;
}

unint64_t sub_1D2A88844()
{
  result = qword_1EC705068;
  if (!qword_1EC705068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705068);
  }

  return result;
}

unint64_t sub_1D2A8889C()
{
  result = qword_1EC705070;
  if (!qword_1EC705070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705070);
  }

  return result;
}

unint64_t sub_1D2A888F4()
{
  result = qword_1EC705078;
  if (!qword_1EC705078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705078);
  }

  return result;
}

unint64_t sub_1D2A8894C()
{
  result = qword_1EC705080;
  if (!qword_1EC705080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705080);
  }

  return result;
}

unint64_t sub_1D2A889A4()
{
  result = qword_1EC705088;
  if (!qword_1EC705088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705088);
  }

  return result;
}

unint64_t sub_1D2A889FC()
{
  result = qword_1EC705090;
  if (!qword_1EC705090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705090);
  }

  return result;
}

unint64_t sub_1D2A88A54()
{
  result = qword_1EC705098;
  if (!qword_1EC705098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705098);
  }

  return result;
}

unint64_t sub_1D2A88AAC()
{
  result = qword_1EC7050A0;
  if (!qword_1EC7050A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050A0);
  }

  return result;
}

unint64_t sub_1D2A88B04()
{
  result = qword_1EC7050A8;
  if (!qword_1EC7050A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050A8);
  }

  return result;
}

unint64_t sub_1D2A88B5C()
{
  result = qword_1EC7050B0;
  if (!qword_1EC7050B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050B0);
  }

  return result;
}

unint64_t sub_1D2A88BB4()
{
  result = qword_1EC7050B8;
  if (!qword_1EC7050B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050B8);
  }

  return result;
}

unint64_t sub_1D2A88C0C()
{
  result = qword_1EC7050C0;
  if (!qword_1EC7050C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050C0);
  }

  return result;
}

unint64_t sub_1D2A88C64()
{
  result = qword_1EC7050C8;
  if (!qword_1EC7050C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050C8);
  }

  return result;
}

unint64_t sub_1D2A88CBC()
{
  result = qword_1EC7050D0;
  if (!qword_1EC7050D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050D0);
  }

  return result;
}

unint64_t sub_1D2A88D14()
{
  result = qword_1EC7050D8;
  if (!qword_1EC7050D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050D8);
  }

  return result;
}

unint64_t sub_1D2A88D6C()
{
  result = qword_1EC7050E0;
  if (!qword_1EC7050E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050E0);
  }

  return result;
}

unint64_t sub_1D2A88DC4()
{
  result = qword_1EC7050E8;
  if (!qword_1EC7050E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050E8);
  }

  return result;
}

unint64_t sub_1D2A88E1C()
{
  result = qword_1EC7050F0;
  if (!qword_1EC7050F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050F0);
  }

  return result;
}

unint64_t sub_1D2A88E74()
{
  result = qword_1EC7050F8;
  if (!qword_1EC7050F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7050F8);
  }

  return result;
}

unint64_t sub_1D2A88ECC()
{
  result = qword_1EC705100;
  if (!qword_1EC705100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705100);
  }

  return result;
}

unint64_t sub_1D2A88F24()
{
  result = qword_1EC705108;
  if (!qword_1EC705108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705108);
  }

  return result;
}

unint64_t sub_1D2A88F7C()
{
  result = qword_1EC705110;
  if (!qword_1EC705110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705110);
  }

  return result;
}

unint64_t sub_1D2A88FD4()
{
  result = qword_1EC705118;
  if (!qword_1EC705118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705118);
  }

  return result;
}

unint64_t sub_1D2A8902C()
{
  result = qword_1EC705120;
  if (!qword_1EC705120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705120);
  }

  return result;
}

unint64_t sub_1D2A89084()
{
  result = qword_1EC705128;
  if (!qword_1EC705128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705128);
  }

  return result;
}

unint64_t sub_1D2A890DC()
{
  result = qword_1EC705130;
  if (!qword_1EC705130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705130);
  }

  return result;
}

unint64_t sub_1D2A89134()
{
  result = qword_1EC705138;
  if (!qword_1EC705138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705138);
  }

  return result;
}

unint64_t sub_1D2A8918C()
{
  result = qword_1EC705140;
  if (!qword_1EC705140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705140);
  }

  return result;
}

unint64_t sub_1D2A891E4()
{
  result = qword_1EC705148;
  if (!qword_1EC705148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705148);
  }

  return result;
}

unint64_t sub_1D2A8923C()
{
  result = qword_1EC705150;
  if (!qword_1EC705150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705150);
  }

  return result;
}

unint64_t sub_1D2A89294()
{
  result = qword_1EC705158;
  if (!qword_1EC705158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705158);
  }

  return result;
}

unint64_t sub_1D2A892EC()
{
  result = qword_1EC705160;
  if (!qword_1EC705160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705160);
  }

  return result;
}

unint64_t sub_1D2A89344()
{
  result = qword_1EC705168;
  if (!qword_1EC705168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705168);
  }

  return result;
}

unint64_t sub_1D2A8939C()
{
  result = qword_1EC705170;
  if (!qword_1EC705170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705170);
  }

  return result;
}

unint64_t sub_1D2A893F4()
{
  result = qword_1EC705178;
  if (!qword_1EC705178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705178);
  }

  return result;
}

unint64_t sub_1D2A8944C()
{
  result = qword_1EC705180;
  if (!qword_1EC705180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705180);
  }

  return result;
}

unint64_t sub_1D2A894A4()
{
  result = qword_1EC705188;
  if (!qword_1EC705188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705188);
  }

  return result;
}

unint64_t sub_1D2A894FC()
{
  result = qword_1EC705190;
  if (!qword_1EC705190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705190);
  }

  return result;
}

unint64_t sub_1D2A89554()
{
  result = qword_1EC705198;
  if (!qword_1EC705198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705198);
  }

  return result;
}

unint64_t sub_1D2A895AC()
{
  result = qword_1EC7051A0;
  if (!qword_1EC7051A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051A0);
  }

  return result;
}

unint64_t sub_1D2A89604()
{
  result = qword_1EC7051A8;
  if (!qword_1EC7051A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051A8);
  }

  return result;
}

unint64_t sub_1D2A8965C()
{
  result = qword_1EC7051B0;
  if (!qword_1EC7051B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051B0);
  }

  return result;
}

unint64_t sub_1D2A896B4()
{
  result = qword_1EC7051B8;
  if (!qword_1EC7051B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051B8);
  }

  return result;
}

unint64_t sub_1D2A8970C()
{
  result = qword_1EC7051C0;
  if (!qword_1EC7051C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051C0);
  }

  return result;
}

unint64_t sub_1D2A89764()
{
  result = qword_1EC7051C8;
  if (!qword_1EC7051C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051C8);
  }

  return result;
}

unint64_t sub_1D2A897BC()
{
  result = qword_1EC7051D0;
  if (!qword_1EC7051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051D0);
  }

  return result;
}

unint64_t sub_1D2A89814()
{
  result = qword_1EC7051D8;
  if (!qword_1EC7051D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051D8);
  }

  return result;
}

unint64_t sub_1D2A8986C()
{
  result = qword_1EC7051E0;
  if (!qword_1EC7051E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051E0);
  }

  return result;
}

unint64_t sub_1D2A898C4()
{
  result = qword_1EC7051E8;
  if (!qword_1EC7051E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051E8);
  }

  return result;
}

unint64_t sub_1D2A8991C()
{
  result = qword_1EC7051F0;
  if (!qword_1EC7051F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051F0);
  }

  return result;
}

unint64_t sub_1D2A89974()
{
  result = qword_1EC7051F8;
  if (!qword_1EC7051F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7051F8);
  }

  return result;
}

unint64_t sub_1D2A899CC()
{
  result = qword_1EC705200;
  if (!qword_1EC705200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705200);
  }

  return result;
}

uint64_t sub_1D2A89A24()
{
  v0 = sub_1D2AC6384();
  __swift_allocate_value_buffer(v0, qword_1EE089310);
  __swift_project_value_buffer(v0, qword_1EE089310);
  return sub_1D2AC6374();
}

uint64_t static GPSignposter.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE089308 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2AC6384();
  v3 = __swift_project_value_buffer(v2, qword_1EE089310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2A89B68(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705420, &qword_1D2AD1AC8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705428, &qword_1D2AD1AD0);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705430, &qword_1D2AD1AD8);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705438, &unk_1D2AD1AE0);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A919D8();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2A91910(v34, v13, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2A91AD4();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2A91A80();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2A91A2C();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2A91810(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t sub_1D2A8A0AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053E0, &qword_1D2AD1AA8);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053E8, &qword_1D2AD1AB0);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053F0, &qword_1D2AD1AB8);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053F8, &qword_1D2AD1AC0);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D2A919D8();
  v19 = v57;
  sub_1D2AC7494();
  if (!v19)
  {
    v20 = v12;
    v21 = v53;
    v22 = v54;
    v45 = v15;
    v46 = v17;
    v23 = v55;
    v57 = 0;
    v24 = sub_1D2AC7284();
    v25 = (2 * *(v24 + 16)) | 1;
    v59 = v24;
    v60 = v24 + 32;
    v61 = 0;
    v62 = v25;
    v26 = sub_1D2A7615C();
    v27 = v11;
    if (v26 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v34 = v20;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v27, v9);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v63 = 1;
          sub_1D2A91A80();
          v28 = v57;
          sub_1D2AC71E4();
          v29 = v56;
          if (!v28)
          {
            (*(v47 + 8))(v22, v49);
            (*(v29 + 8))(v11, v9);
            swift_unknownObjectRelease();
            v30 = sub_1D2AC5F94();
            v31 = v46;
            (*(*(v30 - 8) + 56))(v46, 2, 2, v30);
LABEL_17:
            v44 = v52;
            goto LABEL_18;
          }
        }

        else
        {
          v63 = 2;
          sub_1D2A91A2C();
          v37 = v23;
          v38 = v57;
          sub_1D2AC71E4();
          v39 = v52;
          v29 = v56;
          if (!v38)
          {
            v40 = sub_1D2AC5F94();
            sub_1D2A91810(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v41 = v45;
            v42 = v50;
            sub_1D2AC7264();
            (*(v51 + 8))(v37, v42);
            (*(v29 + 8))(v27, v9);
            swift_unknownObjectRelease();
            (*(*(v40 - 8) + 56))(v41, 0, 2, v40);
            v31 = v46;
            sub_1D2A918AC(v41, v46);
            v44 = v39;
LABEL_18:
            sub_1D2A918AC(v31, v44);
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }
        }
      }

      else
      {
        v63 = 0;
        sub_1D2A91AD4();
        v36 = v57;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v21 + 8))(v8, v48);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v43 = sub_1D2AC5F94();
          v31 = v46;
          (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
          goto LABEL_17;
        }

        v29 = v56;
      }

      (*(v29 + 8))(v27, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1D2A8A800(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053D0, &qword_1D2AD1AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91858();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
    sub_1D2A91810(&qword_1EC7053D8, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind, &unk_1D2AD17E4);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D2A8AA38(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053B8, &unk_1D2AD1A90);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91858();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2A91810(&qword_1EC7053C8, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind, &unk_1D2AD180C);
    sub_1D2AC7264();
    sub_1D2A918AC(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2A91910(v18, v20, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2A91978(v18, type metadata accessor for GenerationRecipe_V4.Prompt.Entity);
  }
}

uint64_t sub_1D2A8ADFC(uint64_t a1)
{
  v2 = sub_1D2A919D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AE38(uint64_t a1)
{
  v2 = sub_1D2A919D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AE74(uint64_t a1)
{
  v2 = sub_1D2A91AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AEB0(uint64_t a1)
{
  v2 = sub_1D2A91AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AEEC(uint64_t a1)
{
  v2 = sub_1D2A91A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AF28(uint64_t a1)
{
  v2 = sub_1D2A91A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8AF64(uint64_t a1)
{
  v2 = sub_1D2A91A80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8AFA0(uint64_t a1)
{
  v2 = sub_1D2A91A80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B010(uint64_t a1)
{
  v2 = sub_1D2A91858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B04C(uint64_t a1)
{
  v2 = sub_1D2A91858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_1D2A8B0B8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1D2AC7354() & 1) == 0 || (sub_1D2A8E340(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v9 = *(a1 + v7);
  v8 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v12 = *v10;
  v11 = v10[1];
  return v9 == v12 && v8 == v11;
}

uint64_t sub_1D2A8B148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7053A0, &qword_1D2AD1A88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91720();
  sub_1D2AC74A4();
  v13 = 0;
  sub_1D2AC72D4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705388, &qword_1D2AD1A80);
    sub_1D2A91774(&qword_1EC7053A8, &qword_1EC7053B0, &unk_1D2AD185C, MEMORY[0x1E69E6300]);
    sub_1D2AC7304();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D2A8B324(uint64_t a1)
{
  v2 = sub_1D2A91720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B360(uint64_t a1)
{
  v2 = sub_1D2A91720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B39C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A8E640(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_1D2A8B3EC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2AC7354() & 1) == 0)
  {
    return 0;
  }

  return sub_1D2A682B4(v2, v3);
}

uint64_t sub_1D2A8B460(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056D0, &qword_1D2AD33A8);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056D8, &qword_1D2AD33B0);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056E0, &qword_1D2AD33B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A93150();
  sub_1D2AC74A4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1D2A931A4();
    sub_1D2AC7294();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1D2A931F8();
    sub_1D2AC7294();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1D2A8B71C(uint64_t a1)
{
  v2 = sub_1D2A931F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B758(uint64_t a1)
{
  v2 = sub_1D2A931F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B794(uint64_t a1)
{
  v2 = sub_1D2A93150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B7D0(uint64_t a1)
{
  v2 = sub_1D2A93150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B80C(uint64_t a1)
{
  v2 = sub_1D2A931A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8B848(uint64_t a1)
{
  v2 = sub_1D2A931A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8B884@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A8E87C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1D2A8B8D0(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056A8, &qword_1D2AD3380);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056B0, &qword_1D2AD3388);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056B8, &qword_1D2AD3390);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056C0, &qword_1D2AD3398);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7056C8, &qword_1D2AD33A0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92FAC();
  sub_1D2AC74A4();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_1D2A93054();
      v9 = v23;
      sub_1D2AC7294();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_1D2A93000();
      v9 = v26;
      sub_1D2AC7294();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_1D2A930A8();
    sub_1D2AC7294();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_1D2A930FC();
  sub_1D2AC7294();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1D2A8BD0C(uint64_t a1)
{
  v2 = sub_1D2A92FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BD48(uint64_t a1)
{
  v2 = sub_1D2A92FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BD84(uint64_t a1)
{
  v2 = sub_1D2A930FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BDC0(uint64_t a1)
{
  v2 = sub_1D2A930FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BDFC(uint64_t a1)
{
  v2 = sub_1D2A93054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BE38(uint64_t a1)
{
  v2 = sub_1D2A93054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BE74(uint64_t a1)
{
  v2 = sub_1D2A93000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BEB0(uint64_t a1)
{
  v2 = sub_1D2A93000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8BEEC(uint64_t a1)
{
  v2 = sub_1D2A930A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8BF28(uint64_t a1)
{
  v2 = sub_1D2A930A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D2A8BF64@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A8ED38(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D2A8BFAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055B8, &qword_1D2AD2E08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92988();
  sub_1D2AC74A4();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1D2A90F20(&v16, v11);
  sub_1D2A722BC();
  sub_1D2AC72C4();
  if (v2)
  {
    sub_1D2A47930(v13, *(&v13 + 1));
  }

  else
  {
    sub_1D2A47930(v13, *(&v13 + 1));
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_1D2A90F20(&v15, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_1D2A90F20(&v14, v11);
    sub_1D2AC72C4();
    sub_1D2A47930(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_1D2AC72F4();
    LOBYTE(v13) = 4;
    sub_1D2AC72F4();
    LOBYTE(v13) = 5;
    sub_1D2AC72E4();
    LOBYTE(v13) = *(v3 + 65);
    v11[0] = 6;
    sub_1D2A92AEC();
    sub_1D2AC7304();
    LOBYTE(v13) = *(v3 + 66);
    v11[0] = 7;
    sub_1D2A92B40();
    sub_1D2AC7304();
    LOBYTE(v13) = 8;
    sub_1D2AC72D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2A8C2F8(uint64_t a1)
{
  v2 = sub_1D2A92988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C334(uint64_t a1)
{
  v2 = sub_1D2A92988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8C370@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D2A8F378(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D2A8C3E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A8DD08(v7, v9) & 1;
}

uint64_t sub_1D2A8C450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055B0, &qword_1D2AD2E00);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92934();
  sub_1D2AC74A4();
  LOBYTE(v14) = 0;
  sub_1D2AC72D4();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_1D2A479B4(v12, v13);
    sub_1D2A722BC();
    sub_1D2AC7304();
    sub_1D2A47944(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2A8C5EC()
{
  if (*v0)
  {
    return 0x7461446567616D69;
  }

  else
  {
    return 25705;
  }
}

void sub_1D2A8C620(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D2AC7354() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D2AC7354();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D2A8C6FC(uint64_t a1)
{
  v2 = sub_1D2A92934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C738(uint64_t a1)
{
  v2 = sub_1D2A92934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8C774@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A8FA08(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D2A8C7C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7055A8, &qword_1D2AD2DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A928E0();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D2AC72A4();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    sub_1D2A90F20(&v13, v11);
    sub_1D2A722BC();
    sub_1D2AC72C4();
    sub_1D2A47930(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D2A8C9BC(uint64_t a1)
{
  v2 = sub_1D2A928E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8C9F8(uint64_t a1)
{
  v2 = sub_1D2A928E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8CA34@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D2A8FC24(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1D2A8CA90(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1D2A8E038(v7, v8) & 1;
}

uint64_t sub_1D2A8CAD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[8] >> 61;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      v2 = v0[9];
    }

    goto LABEL_12;
  }

  if (v3 != 4)
  {
LABEL_12:

    return v2;
  }

  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *&v10 = *v0;
  *(&v10 + 1) = v1;
  v9 = v10;

  sub_1D2A90F90(&v10, &v8);
  MEMORY[0x1D38A7100](v5, v6);

  return v9;
}

uint64_t sub_1D2A8CBA4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705320, &qword_1D2AD1A40);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705328, &qword_1D2AD1A48);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705330, &qword_1D2AD1A50);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705338, &qword_1D2AD1A58);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705340, &qword_1D2AD1A60);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705348, &qword_1D2AD1A68);
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705350, &qword_1D2AD1A70);
  v66 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v50 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91234();
  v17 = v16;
  sub_1D2AC74A4();
  v18 = v2[1];
  v65 = *v2;
  v19 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v21 = v2[5];
  v23 = v2[8];
  v24 = v23 >> 61;
  if ((v23 >> 61) > 2)
  {
    if (v24 != 3)
    {
      v29 = v78;
      v30 = v17;
      if (v24 == 4)
      {
        LOBYTE(v67) = 4;
        v31 = v19;
        v32 = v20;
        sub_1D2A912DC();
        v33 = v18;
        v34 = v59;
        sub_1D2AC7294();
        v67 = v65;
        v68 = v33;
        v69 = v31;
        v70 = v32;
        v71 = v22;
        v72 = v21;
        sub_1D2A915D0();
        v35 = v62;
        sub_1D2AC7304();
        (*(v61 + 8))(v34, v35);
      }

      else
      {
        LOBYTE(v67) = 5;
        sub_1D2A91288();
        v48 = v60;
        sub_1D2AC7294();
        v49 = v64;
        sub_1D2AC72D4();
        (*(v63 + 8))(v48, v49);
      }

      v46 = *(v66 + 8);
      v47 = v30;
      return v46(v47, v29);
    }

    LOBYTE(v67) = 3;
    v37 = v19;
    v38 = v20;
    sub_1D2A91384();
    v39 = v54;
    v29 = v78;
    sub_1D2AC7294();
    v67 = v65;
    v68 = v18;
    v69 = v37;
    v70 = v38;
    sub_1D2A91624();
    v40 = v58;
    sub_1D2AC7304();
    (*(v57 + 8))(v39, v40);
  }

  else
  {
    if (!v24)
    {
      LOBYTE(v67) = 0;
      sub_1D2A9157C();
      v36 = v78;
      sub_1D2AC7294();
      sub_1D2AC72D4();
      (*(v50 + 8))(v14, v12);
      return (*(v66 + 8))(v17, v36);
    }

    v25 = v2[2];
    if (v24 == 1)
    {
      LOBYTE(v67) = 1;
      sub_1D2A914D4();
      v26 = v78;
      sub_1D2AC7294();
      v67 = v65;
      v68 = v18;
      v69 = v25;
      sub_1D2A916CC();
      v27 = v52;
      sub_1D2AC7304();
      (*(v51 + 8))(v11, v27);
      return (*(v66 + 8))(v17, v26);
    }

    v41 = v2[10];
    v63 = v2[9];
    v64 = v41;
    v42 = v2[7];
    v60 = v2[6];
    v61 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v62 = v42;
    LOBYTE(v67) = 2;
    v43 = v20;
    sub_1D2A9142C();
    v44 = v53;
    v29 = v78;
    sub_1D2AC7294();
    v67 = v65;
    v68 = v18;
    v69 = v25;
    v70 = v43;
    v71 = v22;
    v72 = v21;
    v73 = v60;
    v74 = v62;
    v75 = v61;
    v76 = v63;
    v77 = v64;
    sub_1D2A91678();
    v45 = v56;
    sub_1D2AC7304();
    (*(v55 + 8))(v44, v45);
  }

  v46 = *(v66 + 8);
  v47 = v17;
  return v46(v47, v29);
}

uint64_t sub_1D2A8D3E0(uint64_t a1)
{
  v2 = sub_1D2A91234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D41C(uint64_t a1)
{
  v2 = sub_1D2A91234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D458(uint64_t a1)
{
  v2 = sub_1D2A9157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D494(uint64_t a1)
{
  v2 = sub_1D2A9157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D4D0(uint64_t a1)
{
  v2 = sub_1D2A9142C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D50C(uint64_t a1)
{
  v2 = sub_1D2A9142C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D548(uint64_t a1)
{
  v2 = sub_1D2A91384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D584(uint64_t a1)
{
  v2 = sub_1D2A91384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D5C0(uint64_t a1)
{
  v2 = sub_1D2A912DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D5FC(uint64_t a1)
{
  v2 = sub_1D2A912DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D638(uint64_t a1)
{
  v2 = sub_1D2A914D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D674(uint64_t a1)
{
  v2 = sub_1D2A914D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8D6B0(uint64_t a1)
{
  v2 = sub_1D2A91288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8D6EC(uint64_t a1)
{
  v2 = sub_1D2A91288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D2A8D728@<D0>(__n128 *a1@<X8>, void *a2@<X0>)
{
  *&result = sub_1D2A8FEC8(a2, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v7[4];
    a1[5].n128_u64[0] = v8;
    result = v7[0].n128_f64[0];
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_1D2A8D79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D2A8E160(v7, v9) & 1;
}

uint64_t sub_1D2A8D808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A8CAD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2A8D830(uint64_t a1, uint64_t a2, char a3)
{
  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[4];
      v21 = v5[3];
      v22 = v6;
      v7 = v5[1];
      v20 = v5[2];
      v23 = *(v5 + 10);
      v18 = *v5;
      v19 = v7;
      v8 = *(&v18 + 1);
      v9 = v18;
      v10 = v6 >> 61;
      if ((v6 >> 61) > 2)
      {
        if (v10 == 4)
        {
          if (*(&v19 + 1))
          {
            v11 = v19;
          }

          else
          {
            v11 = 0;
          }

          if (*(&v19 + 1))
          {
            v12 = *(&v19 + 1);
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v16 = v18;
          sub_1D2A75F30(&v18, v17);

          MEMORY[0x1D38A7100](v11, v12);

          v8 = *(&v16 + 1);
          v9 = v16;
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        v9 = *(&v22 + 1);
        v8 = v23;
      }

      sub_1D2A75F30(&v18, v17);

LABEL_4:
      MEMORY[0x1D38A7100](v9, v8);

      sub_1D2A75F8C(&v18);
      v5 = (v5 + 88);
      --v4;
    }

    while (v4);
  }

  if ((a3 & 1) == 0)
  {
    *&v18 = a2;
    sub_1D2A87D04();
    v13 = sub_1D2AC6FE4();
    MEMORY[0x1D38A7100](v13);
  }

  return v24;
}

uint64_t sub_1D2A8D9BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705238, &unk_1D2AD12A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A90D24();
  sub_1D2AC74A4();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705220, &qword_1D2AD12A0);
  sub_1D2A90DCC(&qword_1EC705240, sub_1D2A90E44, MEMORY[0x1E69E6300]);
  sub_1D2AC7304();
  if (!v4)
  {
    v13 = 1;
    sub_1D2AC72B4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D2A8DBA8(uint64_t a1)
{
  v2 = sub_1D2A90D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A8DBE4(uint64_t a1)
{
  v2 = sub_1D2A90D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A8DC20@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D2A90AF0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1D2A8DC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D2A67F00(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D2A8DCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2A8D830(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D2A8DD08(double *a1, double *a2)
{
  v23 = *a1;
  v22 = *a2;
  v4 = *(&v23 + 1);
  v5 = v23;
  v7 = *(&v22 + 1);
  v6 = v22;
  if (*(&v23 + 1) >> 60 == 15)
  {
    if (*(&v22 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v23, &v21);
      sub_1D2A90F20(&v22, &v21);
      sub_1D2A47930(v5, v4);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2A90F20(&v23, &v21);
    v8 = &v22;
    v9 = &v21;
LABEL_18:
    sub_1D2A90F20(v8, v9);
    sub_1D2A47930(v5, v4);
    sub_1D2A47930(v6, v7);
    goto LABEL_19;
  }

  if (*(&v22 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1D2A90F20(&v23, &v21);
  sub_1D2A90F20(&v22, &v21);
  v10 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:
  v11 = *(a1 + 1);
  v20 = *(a2 + 1);
  v21 = v11;
  v4 = *(&v11 + 1);
  v5 = v11;
  v7 = *(&v20 + 1);
  v6 = v20;
  if (*(&v11 + 1) >> 60 == 15)
  {
    if (*(&v20 + 1) >> 60 == 15)
    {
      sub_1D2A90F20(&v21, &v19);
      sub_1D2A90F20(&v20, &v19);
      sub_1D2A47930(v5, v4);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(&v20 + 1) >> 60 == 15)
  {
LABEL_11:
    sub_1D2A90F20(&v21, &v19);
    v8 = &v20;
    v9 = &v19;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v21, &v19);
  sub_1D2A90F20(&v20, &v19);
  v12 = sub_1D2A973A0(v5, v4, v6, v7);
  sub_1D2A47930(v6, v7);
  sub_1D2A47930(v5, v4);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_13:
  v13 = *(a1 + 2);
  v18 = *(a2 + 2);
  v19 = v13;
  v4 = *(&v13 + 1);
  v5 = v13;
  v7 = *(&v18 + 1);
  v6 = v18;
  if (*(&v13 + 1) >> 60 != 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      goto LABEL_17;
    }

    sub_1D2A90F20(&v19, v17);
    sub_1D2A90F20(&v18, v17);
    v16 = sub_1D2A973A0(v5, v4, v6, v7);
    sub_1D2A47930(v6, v7);
    sub_1D2A47930(v5, v4);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_19:
    v14 = 0;
    return v14 & 1;
  }

  if (*(&v18 + 1) >> 60 != 15)
  {
LABEL_17:
    sub_1D2A90F20(&v19, v17);
    v8 = &v18;
    v9 = v17;
    goto LABEL_18;
  }

  sub_1D2A90F20(&v19, v17);
  sub_1D2A90F20(&v18, v17);
  sub_1D2A47930(v5, v4);
LABEL_22:
  if (a1[6] != a2[6] || a1[7] != a2[7] || ((*(a1 + 64) ^ *(a2 + 64)) & 1) != 0 || *(a1 + 65) != *(a2 + 65) || *(a1 + 66) != *(a2 + 66))
  {
    goto LABEL_19;
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D2AC7354();
  }

  return v14 & 1;
}

uint64_t sub_1D2A8E038(__int128 *a1, __int128 *a2)
{
  if (*(a1 + 3))
  {
    v3 = *(a1 + 2);
    v4 = *(a1 + 3);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v12 = *a1;
  v13 = v12;
  sub_1D2A90F90(&v13, &v11);

  MEMORY[0x1D38A7100](v3, v4);

  v5 = v12;
  if (*(a2 + 3))
  {
    v6 = *(a2 + 2);
    v7 = *(a2 + 3);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v11 = *a2;
  v12 = v11;

  sub_1D2A90F90(&v12, &v10);
  MEMORY[0x1D38A7100](v6, v7);

  if (v5 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2AC7354();
  }

  return v8 & 1;
}

uint64_t sub_1D2A8E160(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[8];
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (a2[8] >> 61 == 1)
        {
          if (v11 = a2[2], v3 == *a2) && v4 == a2[1] || (sub_1D2AC7354())
          {
            if (sub_1D2A682B4(v5, v11))
            {
              goto LABEL_29;
            }
          }
        }

LABEL_30:
        v13 = 0;
        return v13 & 1;
      }

      *&v25 = v3;
      *(&v25 + 1) = v4;
      v26 = v5;
      v27 = v7;
      v28 = v6;
      v29 = v8;
      v30 = *(a1 + 3);
      v31 = v9 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(a1 + 9);
      v16 = a2[8];
      if (v16 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v17 = *(a2 + 1);
      v19 = *a2;
      v20 = v17;
      v18 = *(a2 + 3);
      v21 = *(a2 + 2);
      v22 = v18;
      v23 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *(a2 + 9);
      v13 = sub_1D2A8DD08(&v25, &v19);
      return v13 & 1;
    }

    if (a2[8] >> 61)
    {
      goto LABEL_30;
    }

LABEL_17:
    if (v3 != *a2 || v4 != a2[1])
    {
      goto LABEL_21;
    }

LABEL_29:
    v13 = 1;
    return v13 & 1;
  }

  if (v10 == 3)
  {
    if (a2[8] >> 61 != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  if (v10 == 4)
  {
    *&v25 = v3;
    *(&v25 + 1) = v4;
    v26 = v5;
    v27 = v7;
    v28 = v6;
    v29 = v8;
    if (a2[8] >> 61 != 4)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 1);
    v19 = *a2;
    v20 = v12;
    v21 = *(a2 + 2);
    v13 = sub_1D2A8E038(&v25, &v19);
    return v13 & 1;
  }

  if (a2[8] >> 61 != 5)
  {
    goto LABEL_30;
  }

  if (v3 == *a2 && v4 == a2[1])
  {
    goto LABEL_29;
  }

LABEL_21:

  return sub_1D2AC7354();
}

uint64_t sub_1D2A8E340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2AC5F94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D2A91910(a1, &v21 - v13, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  sub_1D2A91910(a2, &v14[v15], type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_1D2A91910(v14, v10, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = sub_1D2AC5F74();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D2A91978(v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_1D2A90EB8(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D2A91978(v14, type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D2A8E640(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705378, &qword_1D2AD1A78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A91720();
  sub_1D2AC7494();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_1D2AC7234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705388, &qword_1D2AD1A80);
    v9[15] = 1;
    sub_1D2A91774(&qword_1EC705390, &qword_1EC705398, &unk_1D2AD1884, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1D2A8E87C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705678, &qword_1D2AD3368);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705680, &qword_1D2AD3370);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705688, &qword_1D2AD3378);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A93150();
  v11 = v26;
  sub_1D2AC7494();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D2AC7284();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D2A76160();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D2AC70B4();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v19 = &type metadata for GenerationRecipe_V4.DrawOnImageRecipe.AssignmentOptions;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D2A931A4();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D2A931F8();
    sub_1D2AC71E4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

void *sub_1D2A8ED38(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705628, &qword_1D2AD3340);
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705630, &qword_1D2AD3348);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705638, &qword_1D2AD3350);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705640, &qword_1D2AD3358);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705648, &qword_1D2AD3360);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D2A92FAC();
  v15 = v43;
  sub_1D2AC7494();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_1D2AC7284();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1D2A76164();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_1D2A930A8();
        v29 = v33;
        sub_1D2AC71E4();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1D2A930FC();
        v23 = v33;
        sub_1D2AC71E4();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_1D2A93054();
      v28 = v33;
      sub_1D2AC71E4();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_1D2A93000();
      v30 = v33;
      sub_1D2AC71E4();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_1D2AC70B4();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
  *v11 = &type metadata for GenerationRecipe_V4.DrawOnImageRecipe.SanitizationCategory;
  sub_1D2AC71F4();
  sub_1D2AC70A4();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v11;
}

void sub_1D2A8F378(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705588, &qword_1D2AD2DF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1D2AC5F94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2AC5F84();
  sub_1D2AC5F64();
  v55 = v13;
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92988();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1D2A723B8();
    sub_1D2AC7224();
    v33 = v40[0];
    LOBYTE(v34) = 1;
    sub_1D2AC7224();
    v32 = v40[0];
    LOBYTE(v34) = 2;
    sub_1D2AC7224();
    v14 = *(&v40[0] + 1);
    v31 = *&v40[0];
    LOBYTE(v40[0]) = 3;
    sub_1D2AC7254();
    v16 = v15;
    LOBYTE(v40[0]) = 4;
    sub_1D2AC7254();
    v18 = v17;
    LOBYTE(v40[0]) = 5;
    v19 = sub_1D2AC7244();
    LOBYTE(v34) = 6;
    sub_1D2A929DC();
    sub_1D2AC7264();
    v30 = LOBYTE(v40[0]);
    LOBYTE(v34) = 7;
    sub_1D2A92A30();
    sub_1D2AC7264();
    v29 = LOBYTE(v40[0]);
    v52 = 8;
    v28 = sub_1D2AC7234();
    v21 = v20;
    LOBYTE(v19) = v19 & 1;
    (*(v6 + 8))(v8, v5);

    v22 = v33;
    v34 = v33;
    v23 = *(&v33 + 1);
    v35 = v32;
    *&v36 = v31;
    *(&v36 + 1) = v14;
    *&v37 = v16;
    *(&v37 + 1) = v18;
    LOBYTE(v38) = v19;
    BYTE1(v38) = v30;
    BYTE2(v38) = v29;
    *(&v38 + 3) = v53;
    BYTE7(v38) = v54;
    v24 = v28;
    *(&v38 + 1) = v28;
    v39 = v21;
    sub_1D2A92A84(&v34, v40);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v40[0] = v22;
    *(&v40[0] + 1) = v23;
    v40[1] = v32;
    v41 = v31;
    v42 = v14;
    v43 = v16;
    v44 = v18;
    v45 = v19;
    v46 = v30;
    v47 = v29;
    v48 = v53;
    v49 = v54;
    v50 = v24;
    v51 = v21;
    sub_1D2A92ABC(v40);
    v25 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v25;
    *(a2 + 64) = v38;
    *(a2 + 80) = v39;
    v26 = v35;
    *a2 = v34;
    *(a2 + 16) = v26;
  }
}

uint64_t sub_1D2A8FA08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705578, &qword_1D2AD2DE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A92934();
  sub_1D2AC7494();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_1D2AC7234();
    v11[15] = 1;
    sub_1D2A723B8();
    sub_1D2AC7264();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_1D2A479B4(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_1D2A47944(v9, v10);
  }

  return v7;
}

uint64_t sub_1D2A8FC24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705568, &qword_1D2AD2DE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A928E0();
  sub_1D2AC7494();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D2A47930(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v21) = 0;
    v9 = sub_1D2AC7234();
    v11 = v10;
    v20 = v9;
    LOBYTE(v21) = 1;
    v12 = sub_1D2AC7204();
    v14 = v13;
    v19 = v12;
    v23 = 2;
    sub_1D2A723B8();
    sub_1D2AC7224();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v16 = v22;
    sub_1D2A47930(0, 0xF000000000000000);

    sub_1D2A479A0(v15, v16);
    __swift_destroy_boxed_opaque_existential_0(a1);

    result = sub_1D2A47930(v15, v16);
    v18 = v19;
    *a2 = v20;
    a2[1] = v11;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v15;
    a2[5] = v16;
  }

  return result;
}

__n128 sub_1D2A8FEC8@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v77 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705290, &qword_1D2AD1A00);
  v71 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v76.n128_u64[0] = &v58 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705298, &qword_1D2AD1A08);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v58 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052A0, &qword_1D2AD1A10);
  v70 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v74 = &v58 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052A8, &qword_1D2AD1A18);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v58 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052B0, &qword_1D2AD1A20);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052B8, &qword_1D2AD1A28);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7052C0, &unk_1D2AD1A30);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D2A91234();
  v17 = v78.n128_u64[0];
  sub_1D2AC7494();
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = v11;
  v59 = v9;
  v60 = v8;
  v19 = v73;
  v20 = v74;
  v21 = v75;
  v22 = v76.n128_u64[0];
  v61 = 0;
  v78.n128_u64[0] = v13;
  v23 = v77;
  v24 = sub_1D2AC7284();
  v25 = (2 * *(v24 + 16)) | 1;
  v88 = v24;
  v89 = v24 + 32;
  v90 = 0;
  v91 = v25;
  v26 = sub_1D2A76168();
  if (v26 == 6 || v90 != v91 >> 1)
  {
    v31 = sub_1D2AC70B4();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
    *v33 = &type metadata for GenerationRecipe_V4.Ingredient;
    sub_1D2AC71F4();
    sub_1D2AC70A4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
LABEL_10:
    v29 = v78.n128_u64[0];
    goto LABEL_11;
  }

  if (v26 > 2u)
  {
    if (v26 == 3)
    {
      LOBYTE(v79) = 3;
      sub_1D2A91384();
      v41 = v61;
      sub_1D2AC71E4();
      v29 = v78.n128_u64[0];
      if (!v41)
      {
        sub_1D2A913D8();
        v42 = v66;
        sub_1D2AC7264();
        v61 = 0;
        (*(v70 + 8))(v20, v42);
        v50 = *(v29 + 8);
        v18 = (v29 + 8);
        v50(v15, v12);
        swift_unknownObjectRelease();
        v52 = v79;
        v53 = v80;
        v54 = 0x6000000000000000;
        v78 = v81;
        goto LABEL_28;
      }

      goto LABEL_11;
    }

    v35 = v78.n128_u64[0];
    if (v26 == 4)
    {
      LOBYTE(v79) = 4;
      sub_1D2A912DC();
      v36 = v61;
      sub_1D2AC71E4();
      if (!v36)
      {
        sub_1D2A91330();
        v37 = v69;
        sub_1D2AC7264();
        v61 = 0;
        (*(v72 + 8))(v21, v37);
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v52 = v79;
        v53 = v80;
        v54 = 0x8000000000000000;
        v78 = v81;
        v76 = v82;
LABEL_27:
        v23 = v77;
        goto LABEL_28;
      }
    }

    else
    {
      LOBYTE(v79) = 5;
      sub_1D2A91288();
      v20 = v22;
      v46 = v61;
      sub_1D2AC71E4();
      if (!v46)
      {
        v47 = v63;
        v48 = sub_1D2AC7234();
        v61 = 0;
        v53 = v56;
        v57 = v48;
        (*(v71 + 8))(v20, v47);
        v52 = v57;
        (*(v35 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v54 = 0xA000000000000000;
        goto LABEL_27;
      }
    }

    (*(v35 + 8))(v15, v12);
    goto LABEL_12;
  }

  if (!v26)
  {
    LOBYTE(v79) = 0;
    sub_1D2A9157C();
    v38 = v61;
    sub_1D2AC71E4();
    if (!v38)
    {
      v39 = v59;
      v40 = sub_1D2AC7234();
      v61 = 0;
      v52 = v40;
      v53 = v49;
      (*(v62 + 8))(v18, v39);
      v18 = (v78.n128_u64[0] + 8);
      (*(v78.n128_u64[0] + 8))(v15, v12);
      swift_unknownObjectRelease();
      v54 = 0;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  if (v26 != 1)
  {
    LOBYTE(v79) = 2;
    sub_1D2A9142C();
    v43 = v19;
    v44 = v61;
    sub_1D2AC71E4();
    v29 = v78.n128_u64[0];
    if (!v44)
    {
      sub_1D2A91480();
      v45 = v68;
      sub_1D2AC7264();
      v61 = 0;
      (*(v67 + 8))(v43, v45);
      (*(v29 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v52 = v79;
      v53 = v80;
      v78 = v81;
      v76 = v82;
      v20 = v83;
      v18 = v84;
      v15 = v86;
      v12 = v87;
      v54 = v85 & 0x10301 | 0x4000000000000000;
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  LOBYTE(v79) = 1;
  sub_1D2A914D4();
  v27 = v60;
  v28 = v61;
  sub_1D2AC71E4();
  v29 = v78.n128_u64[0];
  if (v28)
  {
LABEL_11:
    (*(v29 + 8))(v15, v12);
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v92);
    return result;
  }

  sub_1D2A91528();
  v30 = v65;
  sub_1D2AC7264();
  v61 = 0;
  (*(v64 + 8))(v27, v30);
  v51 = *(v29 + 8);
  v18 = (v29 + 8);
  v51(v15, v12);
  swift_unknownObjectRelease();
  v52 = v79;
  v53 = v80;
  v54 = 0x2000000000000000;
  v55.n128_u64[0] = v81.n128_u64[0];
  v78 = v55;
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0(v92);
  v23->n128_u64[0] = v52;
  v23->n128_u64[1] = v53;
  result = v76;
  v23[1] = v78;
  v23[2] = result;
  v23[3].n128_u64[0] = v20;
  v23[3].n128_u64[1] = v18;
  v23[4].n128_u64[0] = v54;
  v23[4].n128_u64[1] = v15;
  v23[5].n128_u64[0] = v12;
  return result;
}

uint64_t sub_1D2A90AF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705210, &qword_1D2AD1298);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1D2A90D24();
  sub_1D2AC7494();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705220, &qword_1D2AD12A0);
    v9[7] = 0;
    sub_1D2A90DCC(&qword_1EC705228, sub_1D2A90D78, MEMORY[0x1E69E6330]);
    sub_1D2AC7264();
    v7 = v10;
    v9[6] = 1;
    sub_1D2AC7214();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_1D2A90D24()
{
  result = qword_1EC705218;
  if (!qword_1EC705218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705218);
  }

  return result;
}

unint64_t sub_1D2A90D78()
{
  result = qword_1EC705230;
  if (!qword_1EC705230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705230);
  }

  return result;
}

uint64_t sub_1D2A90DCC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705220, &qword_1D2AD12A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2A90E44()
{
  result = qword_1EC705248;
  if (!qword_1EC705248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705248);
  }

  return result;
}

uint64_t sub_1D2A90EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704BF8, &qword_1D2ACE600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2A90F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705250, &qword_1D2AD12B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D2A91044(uint64_t a1)
{
  type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1D2A72FB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D2A91130()
{
  result = qword_1EC705278;
  if (!qword_1EC705278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705278);
  }

  return result;
}

unint64_t sub_1D2A91188()
{
  result = qword_1EC705280;
  if (!qword_1EC705280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705280);
  }

  return result;
}

unint64_t sub_1D2A911E0()
{
  result = qword_1EC705288;
  if (!qword_1EC705288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705288);
  }

  return result;
}

unint64_t sub_1D2A91234()
{
  result = qword_1EC7052C8;
  if (!qword_1EC7052C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052C8);
  }

  return result;
}

unint64_t sub_1D2A91288()
{
  result = qword_1EC7052D0;
  if (!qword_1EC7052D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052D0);
  }

  return result;
}

unint64_t sub_1D2A912DC()
{
  result = qword_1EC7052D8;
  if (!qword_1EC7052D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052D8);
  }

  return result;
}

unint64_t sub_1D2A91330()
{
  result = qword_1EC7052E0;
  if (!qword_1EC7052E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052E0);
  }

  return result;
}

unint64_t sub_1D2A91384()
{
  result = qword_1EC7052E8;
  if (!qword_1EC7052E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052E8);
  }

  return result;
}

unint64_t sub_1D2A913D8()
{
  result = qword_1EC7052F0;
  if (!qword_1EC7052F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052F0);
  }

  return result;
}

unint64_t sub_1D2A9142C()
{
  result = qword_1EC7052F8;
  if (!qword_1EC7052F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7052F8);
  }

  return result;
}

unint64_t sub_1D2A91480()
{
  result = qword_1EC705300;
  if (!qword_1EC705300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705300);
  }

  return result;
}

unint64_t sub_1D2A914D4()
{
  result = qword_1EC705308;
  if (!qword_1EC705308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705308);
  }

  return result;
}

unint64_t sub_1D2A91528()
{
  result = qword_1EC705310;
  if (!qword_1EC705310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705310);
  }

  return result;
}

unint64_t sub_1D2A9157C()
{
  result = qword_1EC705318;
  if (!qword_1EC705318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705318);
  }

  return result;
}

unint64_t sub_1D2A915D0()
{
  result = qword_1EC705358;
  if (!qword_1EC705358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705358);
  }

  return result;
}

unint64_t sub_1D2A91624()
{
  result = qword_1EC705360;
  if (!qword_1EC705360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705360);
  }

  return result;
}

unint64_t sub_1D2A91678()
{
  result = qword_1EC705368;
  if (!qword_1EC705368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705368);
  }

  return result;
}

unint64_t sub_1D2A916CC()
{
  result = qword_1EC705370;
  if (!qword_1EC705370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705370);
  }

  return result;
}

unint64_t sub_1D2A91720()
{
  result = qword_1EC705380;
  if (!qword_1EC705380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705380);
  }

  return result;
}

uint64_t sub_1D2A91774(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC705388, &qword_1D2AD1A80);
    sub_1D2A91810(a2, type metadata accessor for GenerationRecipe_V4.Prompt.Entity, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D2A91810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D2A91858()
{
  result = qword_1EC7053C0;
  if (!qword_1EC7053C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7053C0);
  }

  return result;
}

uint64_t sub_1D2A918AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe_V4.Prompt.Entity.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2A91910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2A91978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2A919D8()
{
  result = qword_1EC705400;
  if (!qword_1EC705400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705400);
  }

  return result;
}

unint64_t sub_1D2A91A2C()
{
  result = qword_1EC705408;
  if (!qword_1EC705408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705408);
  }

  return result;
}

unint64_t sub_1D2A91A80()
{
  result = qword_1EC705410;
  if (!qword_1EC705410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705410);
  }

  return result;
}

unint64_t sub_1D2A91AD4()
{
  result = qword_1EC705418;
  if (!qword_1EC705418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705418);
  }

  return result;
}

unint64_t sub_1D2A91C2C()
{
  result = qword_1EC705440;
  if (!qword_1EC705440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705440);
  }

  return result;
}

unint64_t sub_1D2A91C84()
{
  result = qword_1EC705448;
  if (!qword_1EC705448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705448);
  }

  return result;
}

unint64_t sub_1D2A91CDC()
{
  result = qword_1EC705450;
  if (!qword_1EC705450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705450);
  }

  return result;
}

unint64_t sub_1D2A91D34()
{
  result = qword_1EC705458;
  if (!qword_1EC705458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705458);
  }

  return result;
}

unint64_t sub_1D2A91D8C()
{
  result = qword_1EC705460;
  if (!qword_1EC705460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705460);
  }

  return result;
}

unint64_t sub_1D2A91DE4()
{
  result = qword_1EC705468;
  if (!qword_1EC705468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705468);
  }

  return result;
}

unint64_t sub_1D2A91E3C()
{
  result = qword_1EC705470;
  if (!qword_1EC705470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705470);
  }

  return result;
}

unint64_t sub_1D2A91E94()
{
  result = qword_1EC705478;
  if (!qword_1EC705478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705478);
  }

  return result;
}

unint64_t sub_1D2A91EEC()
{
  result = qword_1EC705480;
  if (!qword_1EC705480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705480);
  }

  return result;
}

unint64_t sub_1D2A91F44()
{
  result = qword_1EC705488;
  if (!qword_1EC705488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705488);
  }

  return result;
}

unint64_t sub_1D2A91F9C()
{
  result = qword_1EC705490;
  if (!qword_1EC705490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705490);
  }

  return result;
}

unint64_t sub_1D2A91FF4()
{
  result = qword_1EC705498;
  if (!qword_1EC705498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705498);
  }

  return result;
}

unint64_t sub_1D2A9204C()
{
  result = qword_1EC7054A0;
  if (!qword_1EC7054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054A0);
  }

  return result;
}

unint64_t sub_1D2A920A4()
{
  result = qword_1EC7054A8;
  if (!qword_1EC7054A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054A8);
  }

  return result;
}

unint64_t sub_1D2A920FC()
{
  result = qword_1EC7054B0;
  if (!qword_1EC7054B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054B0);
  }

  return result;
}

unint64_t sub_1D2A92154()
{
  result = qword_1EC7054B8;
  if (!qword_1EC7054B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054B8);
  }

  return result;
}

unint64_t sub_1D2A921AC()
{
  result = qword_1EC7054C0;
  if (!qword_1EC7054C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054C0);
  }

  return result;
}

unint64_t sub_1D2A92204()
{
  result = qword_1EC7054C8;
  if (!qword_1EC7054C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054C8);
  }

  return result;
}

unint64_t sub_1D2A9225C()
{
  result = qword_1EC7054D0;
  if (!qword_1EC7054D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054D0);
  }

  return result;
}

unint64_t sub_1D2A922B4()
{
  result = qword_1EC7054D8;
  if (!qword_1EC7054D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054D8);
  }

  return result;
}

unint64_t sub_1D2A9230C()
{
  result = qword_1EC7054E0;
  if (!qword_1EC7054E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054E0);
  }

  return result;
}

unint64_t sub_1D2A92364()
{
  result = qword_1EC7054E8;
  if (!qword_1EC7054E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054E8);
  }

  return result;
}

unint64_t sub_1D2A923BC()
{
  result = qword_1EC7054F0;
  if (!qword_1EC7054F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054F0);
  }

  return result;
}

unint64_t sub_1D2A92414()
{
  result = qword_1EC7054F8;
  if (!qword_1EC7054F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7054F8);
  }

  return result;
}

unint64_t sub_1D2A9246C()
{
  result = qword_1EC705500;
  if (!qword_1EC705500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705500);
  }

  return result;
}

unint64_t sub_1D2A924C4()
{
  result = qword_1EC705508;
  if (!qword_1EC705508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705508);
  }

  return result;
}

unint64_t sub_1D2A9251C()
{
  result = qword_1EC705510;
  if (!qword_1EC705510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705510);
  }

  return result;
}

unint64_t sub_1D2A92574()
{
  result = qword_1EC705518;
  if (!qword_1EC705518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705518);
  }

  return result;
}

unint64_t sub_1D2A925CC()
{
  result = qword_1EC705520;
  if (!qword_1EC705520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705520);
  }

  return result;
}

unint64_t sub_1D2A92624()
{
  result = qword_1EC705528;
  if (!qword_1EC705528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705528);
  }

  return result;
}

unint64_t sub_1D2A9267C()
{
  result = qword_1EC705530;
  if (!qword_1EC705530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705530);
  }

  return result;
}

unint64_t sub_1D2A926D4()
{
  result = qword_1EC705538;
  if (!qword_1EC705538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705538);
  }

  return result;
}

unint64_t sub_1D2A9272C()
{
  result = qword_1EC705540;
  if (!qword_1EC705540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705540);
  }

  return result;
}

unint64_t sub_1D2A92784()
{
  result = qword_1EC705548;
  if (!qword_1EC705548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705548);
  }

  return result;
}

unint64_t sub_1D2A927DC()
{
  result = qword_1EC705550;
  if (!qword_1EC705550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705550);
  }

  return result;
}

unint64_t sub_1D2A92834()
{
  result = qword_1EC705558;
  if (!qword_1EC705558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705558);
  }

  return result;
}

unint64_t sub_1D2A9288C()
{
  result = qword_1EC705560;
  if (!qword_1EC705560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705560);
  }

  return result;
}

unint64_t sub_1D2A928E0()
{
  result = qword_1EC705570;
  if (!qword_1EC705570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705570);
  }

  return result;
}

unint64_t sub_1D2A92934()
{
  result = qword_1EC705580;
  if (!qword_1EC705580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705580);
  }

  return result;
}

unint64_t sub_1D2A92988()
{
  result = qword_1EC705590;
  if (!qword_1EC705590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705590);
  }

  return result;
}

unint64_t sub_1D2A929DC()
{
  result = qword_1EC705598;
  if (!qword_1EC705598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705598);
  }

  return result;
}

unint64_t sub_1D2A92A30()
{
  result = qword_1EC7055A0;
  if (!qword_1EC7055A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055A0);
  }

  return result;
}

unint64_t sub_1D2A92AEC()
{
  result = qword_1EC7055C0;
  if (!qword_1EC7055C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055C0);
  }

  return result;
}

unint64_t sub_1D2A92B40()
{
  result = qword_1EC7055C8;
  if (!qword_1EC7055C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055C8);
  }

  return result;
}

unint64_t sub_1D2A92BE8()
{
  result = qword_1EC7055D0;
  if (!qword_1EC7055D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055D0);
  }

  return result;
}

unint64_t sub_1D2A92C40()
{
  result = qword_1EC7055D8;
  if (!qword_1EC7055D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055D8);
  }

  return result;
}

unint64_t sub_1D2A92C98()
{
  result = qword_1EC7055E0;
  if (!qword_1EC7055E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055E0);
  }

  return result;
}

unint64_t sub_1D2A92CF0()
{
  result = qword_1EC7055E8;
  if (!qword_1EC7055E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055E8);
  }

  return result;
}

unint64_t sub_1D2A92D48()
{
  result = qword_1EC7055F0;
  if (!qword_1EC7055F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055F0);
  }

  return result;
}

unint64_t sub_1D2A92DA0()
{
  result = qword_1EC7055F8;
  if (!qword_1EC7055F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7055F8);
  }

  return result;
}

unint64_t sub_1D2A92DF8()
{
  result = qword_1EC705600;
  if (!qword_1EC705600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705600);
  }

  return result;
}

unint64_t sub_1D2A92E50()
{
  result = qword_1EC705608;
  if (!qword_1EC705608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705608);
  }

  return result;
}

unint64_t sub_1D2A92EA8()
{
  result = qword_1EC705610;
  if (!qword_1EC705610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705610);
  }

  return result;
}

unint64_t sub_1D2A92F00()
{
  result = qword_1EC705618;
  if (!qword_1EC705618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705618);
  }

  return result;
}

unint64_t sub_1D2A92F58()
{
  result = qword_1EC705620;
  if (!qword_1EC705620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705620);
  }

  return result;
}

unint64_t sub_1D2A92FAC()
{
  result = qword_1EC705650;
  if (!qword_1EC705650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705650);
  }

  return result;
}

unint64_t sub_1D2A93000()
{
  result = qword_1EC705658;
  if (!qword_1EC705658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705658);
  }

  return result;
}

unint64_t sub_1D2A93054()
{
  result = qword_1EC705660;
  if (!qword_1EC705660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705660);
  }

  return result;
}

unint64_t sub_1D2A930A8()
{
  result = qword_1EC705668;
  if (!qword_1EC705668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705668);
  }

  return result;
}

unint64_t sub_1D2A930FC()
{
  result = qword_1EC705670;
  if (!qword_1EC705670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705670);
  }

  return result;
}

unint64_t sub_1D2A93150()
{
  result = qword_1EC705690;
  if (!qword_1EC705690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705690);
  }

  return result;
}

unint64_t sub_1D2A931A4()
{
  result = qword_1EC705698;
  if (!qword_1EC705698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705698);
  }

  return result;
}

unint64_t sub_1D2A931F8()
{
  result = qword_1EC7056A0;
  if (!qword_1EC7056A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7056A0);
  }

  return result;
}

unint64_t sub_1D2A932D0()
{
  result = qword_1EC7056E8;
  if (!qword_1EC7056E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7056E8);
  }

  return result;
}

unint64_t sub_1D2A93328()
{
  result = qword_1EC7056F0;
  if (!qword_1EC7056F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7056F0);
  }

  return result;
}

unint64_t sub_1D2A93380()
{
  result = qword_1EC7056F8;
  if (!qword_1EC7056F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7056F8);
  }

  return result;
}

unint64_t sub_1D2A933D8()
{
  result = qword_1EC705700;
  if (!qword_1EC705700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705700);
  }

  return result;
}

unint64_t sub_1D2A93430()
{
  result = qword_1EC705708;
  if (!qword_1EC705708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705708);
  }

  return result;
}

unint64_t sub_1D2A93488()
{
  result = qword_1EC705710;
  if (!qword_1EC705710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705710);
  }

  return result;
}

unint64_t sub_1D2A934E0()
{
  result = qword_1EC705718;
  if (!qword_1EC705718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705718);
  }

  return result;
}

unint64_t sub_1D2A93538()
{
  result = qword_1EC705720;
  if (!qword_1EC705720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705720);
  }

  return result;
}

unint64_t sub_1D2A93590()
{
  result = qword_1EC705728;
  if (!qword_1EC705728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705728);
  }

  return result;
}

unint64_t sub_1D2A935E8()
{
  result = qword_1EC705730;
  if (!qword_1EC705730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705730);
  }

  return result;
}

unint64_t sub_1D2A93640()
{
  result = qword_1EC705738;
  if (!qword_1EC705738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705738);
  }

  return result;
}

unint64_t sub_1D2A93698()
{
  result = qword_1EC705740;
  if (!qword_1EC705740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705740);
  }

  return result;
}

unint64_t sub_1D2A936F0()
{
  result = qword_1EC705748;
  if (!qword_1EC705748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705748);
  }

  return result;
}

unint64_t sub_1D2A93748()
{
  result = qword_1EC705750;
  if (!qword_1EC705750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705750);
  }

  return result;
}

unint64_t sub_1D2A937A0()
{
  result = qword_1EC705758;
  if (!qword_1EC705758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705758);
  }

  return result;
}

unint64_t sub_1D2A937F8()
{
  result = qword_1EC705760;
  if (!qword_1EC705760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705760);
  }

  return result;
}

unint64_t sub_1D2A93850()
{
  result = qword_1EC705768;
  if (!qword_1EC705768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705768);
  }

  return result;
}

unint64_t sub_1D2A938A8()
{
  result = qword_1EC705770;
  if (!qword_1EC705770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC705770);
  }

  return result;
}

uint64_t sub_1D2A9390C(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705970, &qword_1D2AD42E0);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  v3 = sub_1D2AC5F94();
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705978, &qword_1D2AD42E8);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705980, &qword_1D2AD42F0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705988, &qword_1D2AD42F8);
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A854();
  v17 = v33;
  sub_1D2AC74A4();
  sub_1D2A9A78C(v34, v13, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_1D2A9A950();
      v19 = v35;
      sub_1D2AC7294();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_1D2A9A8FC();
      v19 = v35;
      sub_1D2AC7294();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_1D2A9A8A8();
    v21 = v30;
    v22 = v35;
    sub_1D2AC7294();
    sub_1D2A9A68C(&qword_1EC704648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v23 = v31;
    sub_1D2AC7304();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t sub_1D2A93E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705930, &qword_1D2AD42C0);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v45 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705938, &qword_1D2AD42C8);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v45 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705940, &qword_1D2AD42D0);
  v53 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705948, &qword_1D2AD42D8);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D2A9A854();
  v19 = v57;
  sub_1D2AC7494();
  if (!v19)
  {
    v20 = v12;
    v21 = v53;
    v22 = v54;
    v45 = v15;
    v46 = v17;
    v23 = v55;
    v57 = 0;
    v24 = sub_1D2AC7284();
    v25 = (2 * *(v24 + 16)) | 1;
    v59 = v24;
    v60 = v24 + 32;
    v61 = 0;
    v62 = v25;
    v26 = sub_1D2A7615C();
    v27 = v11;
    if (v26 == 3 || v61 != v62 >> 1)
    {
      v32 = sub_1D2AC70B4();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC704680, &qword_1D2ACBA90);
      *v34 = v20;
      sub_1D2AC71F4();
      sub_1D2AC70A4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v56 + 8))(v27, v9);
    }

    else
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v63 = 1;
          sub_1D2A9A8FC();
          v28 = v57;
          sub_1D2AC71E4();
          v29 = v56;
          if (!v28)
          {
            (*(v47 + 8))(v22, v49);
            (*(v29 + 8))(v11, v9);
            swift_unknownObjectRelease();
            v30 = sub_1D2AC5F94();
            v31 = v46;
            (*(*(v30 - 8) + 56))(v46, 2, 2, v30);
LABEL_17:
            v44 = v52;
            goto LABEL_18;
          }
        }

        else
        {
          v63 = 2;
          sub_1D2A9A8A8();
          v37 = v23;
          v38 = v57;
          sub_1D2AC71E4();
          v39 = v52;
          v29 = v56;
          if (!v38)
          {
            v40 = sub_1D2AC5F94();
            sub_1D2A9A68C(&qword_1EC704688, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            v41 = v45;
            v42 = v50;
            sub_1D2AC7264();
            (*(v51 + 8))(v37, v42);
            (*(v29 + 8))(v27, v9);
            swift_unknownObjectRelease();
            (*(*(v40 - 8) + 56))(v41, 0, 2, v40);
            v31 = v46;
            sub_1D2A9A728(v41, v46);
            v44 = v39;
LABEL_18:
            sub_1D2A9A728(v31, v44);
            return __swift_destroy_boxed_opaque_existential_0(v58);
          }
        }
      }

      else
      {
        v63 = 0;
        sub_1D2A9A950();
        v36 = v57;
        sub_1D2AC71E4();
        if (!v36)
        {
          (*(v21 + 8))(v8, v48);
          (*(v56 + 8))(v11, v9);
          swift_unknownObjectRelease();
          v43 = sub_1D2AC5F94();
          v31 = v46;
          (*(*(v43 - 8) + 56))(v46, 1, 2, v43);
          goto LABEL_17;
        }

        v29 = v56;
      }

      (*(v29 + 8))(v27, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1D2A945A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705920, &qword_1D2AD42B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A6D4();
  sub_1D2AC74A4();
  LOBYTE(v12) = 0;
  sub_1D2AC72D4();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity(0);
    LOBYTE(v12) = 1;
    type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
    sub_1D2A9A68C(&qword_1EC705928, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind, &unk_1D2AD3FFC);
    sub_1D2AC7304();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    sub_1D2A71DA4(&qword_1EC7046B8, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
    sub_1D2AC7304();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D2A947DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC705908, &qword_1D2AD42A8);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for GenerationRecipe_V1.Prompt.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2A9A6D4();
  v23 = v8;
  v12 = v24;
  sub_1D2AC7494();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v5;
    v14 = v21;
    v15 = v22;
    LOBYTE(v25) = 0;
    *v11 = sub_1D2AC7234();
    v11[1] = v16;
    v19 = v16;
    v24 = v11;
    LOBYTE(v25) = 1;
    sub_1D2A9A68C(&qword_1EC705918, type metadata accessor for GenerationRecipe_V1.Prompt.Entity.Kind, &unk_1D2AD4024);
    sub_1D2AC7264();
    sub_1D2A9A728(v13, v24 + *(v9 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7046B0, &qword_1D2AD42B0);
    v26 = 2;
    sub_1D2A71DA4(&qword_1EC7046D0, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    sub_1D2AC7264();
    (*(v14 + 8))(v23, v15);
    v17 = *(v9 + 24);
    v18 = v24;
    *(v24 + v17) = v25;
    sub_1D2A9A78C(v18, v20, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_1D2A9A7F4(v18, type metadata accessor for GenerationRecipe_V1.Prompt.Entity);
  }
}

uint64_t sub_1D2A94BA0(uint64_t a1)
{
  v2 = sub_1D2A9A854();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A94BDC(uint64_t a1)
{
  v2 = sub_1D2A9A854();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A94C18(uint64_t a1)
{
  v2 = sub_1D2A9A950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2A94C54(uint64_t a1)
{
  v2 = sub_1D2A9A950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2A94C90(uint64_t a1)
{
  v2 = sub_1D2A9A8A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}