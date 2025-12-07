void sub_25F5BFBC4(void *a1)
{
  v2 = sub_25F5E4444();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_25F5E3554();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25[-v11];
  if (a1)
  {
    v13 = a1;
    v14 = [v13 contentURL];
    if (v14)
    {
      v15 = v14;
      sub_25F5E3534();

      (*(v5 + 32))(v12, v9, v4);
      sub_25F5E4424();
      v16 = sub_25F5E43A4();
      v18 = v17;
      v19 = [v13 requestedHeaders];
      if (v19 && (v20 = v19, v21 = [v19 firstHeaderForKey_], v20, v21))
      {
        v22 = sub_25F5E43F4();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      *&v26 = v16;
      *(&v26 + 1) = v18;
      *&v27 = v22;
      *(&v27 + 1) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
      sub_25F5E4694();

      (*(v5 + 8))(v12, v4);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
      sub_25F5E4694();
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
    sub_25F5E4694();
  }
}

void sub_25F5BFE90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_25F5BFF50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F5BFFE8;

  return MessageExtractor.next()(a1);
}

uint64_t sub_25F5BFFE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F5C00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_25F5C017C;

  return MessageExtractor.next()(a1);
}

uint64_t sub_25F5C017C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_25F5E4684();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_25F5C02EC, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_25F5C02EC()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::String __swiftcall joinMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_25F5725A8(MEMORY[0x277D84F90]);
  v9 = *(a1._rawValue + 2);
  if (!v9)
  {
LABEL_27:
    v54 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50, MEMORY[0x277D83958]);
    v42 = sub_25F5E4364();
    v44 = v43;

    v45 = v42;
    v46 = v44;
    goto LABEL_31;
  }

  v10 = a1._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v49 = *(v3 + 72);
  v50 = v6;
  v51 = v2;
  while (1)
  {
    sub_25F5B6EB8(v10, v6, type metadata accessor for ExtractedMessage);
    v11 = &v6[*(v2 + 20)];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = sub_25F5E4464();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }

    v19 = v8 + 2;
    v18 = v8[2];
    v52 = v7;
    if (v18)
    {
      v20 = sub_25F5709C8(v15, v17);
      if (v21)
      {
        v19 = (v8[7] + 8 * v20);
      }
    }

    v22 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v8;
    v25 = sub_25F5709C8(v15, v17);
    v26 = v8[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v8[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v24)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_25F57B254();
        if (v29)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_25F579D84(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_25F5709C8(v15, v17);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_30;
      }

      v25 = v30;
      if (v29)
      {
LABEL_18:

        v8 = v54;
        *(*(v54 + 56) + 8 * v25) = v22;
        goto LABEL_22;
      }
    }

    v8 = v54;
    *(v54 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = (v8[6] + 16 * v25);
    *v32 = v15;
    v32[1] = v17;
    *(v8[7] + 8 * v25) = v22;
    v33 = v8[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_29;
    }

    v8[2] = v35;
LABEL_22:
    v53 = v22;
    v54 = 0x207265646E6553;
    v55 = 0xE700000000000000;
    v36 = sub_25F5E4B44();
    MEMORY[0x25F8E2BC0](v36);

    MEMORY[0x25F8E2BC0](8250, 0xE200000000000000);
    v6 = v50;
    v2 = v51;
    MEMORY[0x25F8E2BC0](*&v50[*(v51 + 32)], *&v50[*(v51 + 32) + 8]);
    v37 = v54;
    v38 = v55;
    v7 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25F578544(0, *(v7 + 2) + 1, 1, v7);
    }

    v40 = *(v7 + 2);
    v39 = *(v7 + 3);
    if (v40 >= v39 >> 1)
    {
      v7 = sub_25F578544((v39 > 1), v40 + 1, 1, v7);
    }

    *(v7 + 2) = v40 + 1;
    v41 = &v7[16 * v40];
    *(v41 + 4) = v37;
    *(v41 + 5) = v38;
    sub_25F5C2F24(v6, type metadata accessor for ExtractedMessage);
    v10 += v49;
    if (!--v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v45 = sub_25F5E4BC4();
  __break(1u);
LABEL_31:
  result._object = v46;
  result._countAndFlagsBits = v45;
  return result;
}

unint64_t joinMetadata(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E558, &unk_25F5EA4F0);
  inited = swift_initStackObject();
  v69 = xmmword_25F5E5EE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_25F5E5EE0;
  *(inited + 40) = 0x800000025F5EC780;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
  v7 = swift_allocObject();
  *(v7 + 16) = v69;
  v8 = *(a1 + 16);
  if (v8 >> 31)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    result = sub_25F5E4BC4();
    __break(1u);
    return result;
  }

  *(v7 + 32) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(inited + 48) = v7;
  v9 = sub_25F571FC4(inited);
  swift_setDeallocating();
  sub_25F57C148(inited + 32, &qword_27FD9E568, &qword_25F5EA500);
  v71 = v9;
  if (!v8)
  {
    return v9;
  }

  v10 = 0;
  v11 = *(v2 + 44);
  v64 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v65 = v11;
  v63 = *(v3 + 72);
  v62 = v8;
  while (2)
  {
    v12 = v66;
    sub_25F5B6EB8(v64 + v63 * v10, v66, type metadata accessor for ExtractedMessage);
    v68 = v10 + 1;
    v13 = *(v12 + v65);

    sub_25F5C2F24(v12, type metadata accessor for ExtractedMessage);
    v14 = 0;
    v16 = v13 + 64;
    v15 = *(v13 + 64);
    *&v69 = v13;
    v17 = 1 << *(v13 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v15;
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
LABEL_15:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v14 << 6);
      v26 = (*(v69 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      v29 = *(*(v69 + 56) + 8 * v25);
      v30 = v71;
      v31 = v71[2];

      if (v31 && (sub_25F5709C8(v28, v27), (v32 & 1) != 0))
      {
        v33 = sub_25F5C0D30(v70, v28, v27);
        v35 = v33;
        v36 = *v34;
        if (!*v34)
        {

          (v35)(v70, 0);
          goto LABEL_40;
        }

        v67 = v33;
        v37 = *(v29 + 16);
        v38 = *(v36 + 2);
        v39 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          goto LABEL_48;
        }

        v40 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v36;
        if (isUniquelyReferenced_nonNull_native && v39 <= *(v36 + 3) >> 1)
        {
          if (!*(v29 + 16))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v57 = *(v36 + 2);
          if (v57 <= v39)
          {
            v57 = v39;
          }

          v61 = v57;
          v58 = isUniquelyReferenced_nonNull_native;

          *v40 = sub_25F5782CC(v58, v61, 1, v36);

          v36 = *v40;
          if (!*(v29 + 16))
          {
LABEL_38:

            if (v37)
            {
              goto LABEL_49;
            }

            goto LABEL_39;
          }
        }

        if ((*(v36 + 3) >> 1) - *(v36 + 2) < v37)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v42 = *(*v40 + 2);
          v43 = __OFADD__(v42, v37);
          v44 = v42 + v37;
          if (v43)
          {
            goto LABEL_51;
          }

          *(*v40 + 2) = v44;
        }

LABEL_39:
        (v67)(v70, 0);
LABEL_40:
      }

      else
      {
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v30;
        v46 = sub_25F5709C8(v28, v27);
        v48 = v30[2];
        v49 = (v47 & 1) == 0;
        v43 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v43)
        {
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
          __break(1u);
          goto LABEL_52;
        }

        v51 = v47;
        if (v30[3] >= v50)
        {
          if (v45)
          {
            goto LABEL_31;
          }

          v59 = v46;
          sub_25F57AC68();
          v46 = v59;
          if (v51)
          {
            goto LABEL_9;
          }

LABEL_32:
          v53 = v70[0];
          v70[0][(v46 >> 6) + 8] |= 1 << v46;
          v54 = (v53[6] + 16 * v46);
          *v54 = v28;
          v54[1] = v27;
          *(v53[7] + 8 * v46) = v29;
          v55 = v53[2];
          v43 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v43)
          {
            goto LABEL_47;
          }

          v53[2] = v56;
          v71 = v53;
        }

        else
        {
          sub_25F5792E8(v50, v45);
          v46 = sub_25F5709C8(v28, v27);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_53;
          }

LABEL_31:
          if ((v51 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_9:
          v21 = v46;

          v22 = v70[0];
          *(v70[0][7] + 8 * v21) = v29;

          v71 = v22;
        }
      }
    }

    while (1)
    {
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v23 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v23);
      ++v14;
      if (v19)
      {
        v14 = v23;
        goto LABEL_15;
      }
    }

    v10 = v68;
    if (v68 != v62)
    {
      continue;
    }

    return v71;
  }
}

uint64_t (*sub_25F5C0D30(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F5C10CC(v6, a2, a3);
  return sub_25F5C0DB8;
}

void sub_25F5C0DB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25F5C0E18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return sub_25F573A4C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F5C0EB0()
{
  result = qword_27FD9E520;
  if (!qword_27FD9E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E520);
  }

  return result;
}

uint64_t sub_25F5C0F04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F5C0F14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F5E48F4() + 1) & ~v5;
    do
    {
      sub_25F5E4C34();

      sub_25F5E4334();
      v9 = sub_25F5E4C54();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void (*sub_25F5C10CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_25F5C13E4(v7);
  v7[9] = sub_25F5C11D8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25F5C1178;
}

void sub_25F5C1178(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25F5C11D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_25F5709C8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_25F57AC68();
      v13 = v21;
      goto LABEL_11;
    }

    sub_25F5792E8(v18, a4 & 1);
    v13 = sub_25F5709C8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_25F5E4BC4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_25F5C1330;
}

void sub_25F5C1330(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_25F57AA7C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_25F5C2ED0(*(v7 + 48) + 16 * v6);
    sub_25F5C0F14(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_25F5C13E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F5C140C;
}

uint64_t sub_25F5C1418(uint64_t *a1)
{
  v2 = *(type metadata accessor for ExtractedMessage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F5C77E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25F5C14C0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25F5C14C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F5E4B34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ExtractedMessage(0);
        v6 = sub_25F5E4654();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ExtractedMessage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25F5C183C(v8, v9, a1, v4);
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
    return sub_25F5C15EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F5C15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for ExtractedMessage(0);
  v9 = MEMORY[0x28223BE20](v37, v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - v14;
  result = MEMORY[0x28223BE20](v13, v16);
  v20 = &v29 - v19;
  v31 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v24 = -v22;
    v25 = a1 - a3;
    v36 = v21;
    v30 = v22;
    v26 = v21 + v22 * a3;
LABEL_5:
    v34 = v23;
    v35 = a3;
    v32 = v26;
    v33 = v25;
    while (1)
    {
      sub_25F5B6EB8(v26, v20, type metadata accessor for ExtractedMessage);
      sub_25F5B6EB8(v23, v15, type metadata accessor for ExtractedMessage);
      v27 = sub_25F5E3634();
      sub_25F5C2F24(v15, type metadata accessor for ExtractedMessage);
      result = sub_25F5C2F24(v20, type metadata accessor for ExtractedMessage);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v23 = v34 + v30;
        v25 = v33 - 1;
        v26 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_25F5C2E68(v26, v11, type metadata accessor for ExtractedMessage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25F5C2E68(v11, v23, type metadata accessor for ExtractedMessage);
      v23 += v24;
      v26 += v24;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F5C183C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v101 = a1;
  v113 = type metadata accessor for ExtractedMessage(0);
  v109 = *(v113 - 8);
  v10 = MEMORY[0x28223BE20](v113, v9);
  v103 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v112 = &v98 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v98 - v17;
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = &v98 - v21;
  v111 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_135;
    }

    a4 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_25F5C2700(a4);
    }

    v114 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v111)
      {
        v94 = *(result + 16 * a4);
        v95 = result;
        v96 = *(result + 16 * (a4 - 1) + 40);
        sub_25F5C2160(*v111 + *(v109 + 72) * v94, *v111 + *(v109 + 72) * *(result + 16 * (a4 - 1) + 32), *v111 + *(v109 + 72) * v96, v5);
        if (v6)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_25F5C2700(v95);
        }

        if (a4 - 2 >= *(v95 + 2))
        {
          goto LABEL_123;
        }

        v97 = &v95[16 * a4];
        *v97 = v94;
        *(v97 + 1) = v96;
        v114 = v95;
        sub_25F5C2674(a4 - 1);
        result = v114;
        a4 = *(v114 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v100 = a4;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    v104 = v25;
    if (v27 >= v23)
    {
      v33 = v27;
    }

    else
    {
      v28 = *(v109 + 72);
      v5 = *v111 + v28 * v27;
      v107 = *v111;
      v29 = v107;
      sub_25F5B6EB8(v107 + v28 * v27, v22, type metadata accessor for ExtractedMessage);
      sub_25F5B6EB8(v29 + v28 * v26, v18, type metadata accessor for ExtractedMessage);
      LODWORD(v108) = sub_25F5E3634();
      sub_25F5C2F24(v18, type metadata accessor for ExtractedMessage);
      result = sub_25F5C2F24(v22, type metadata accessor for ExtractedMessage);
      v99 = v26;
      v30 = v26 + 2;
      v110 = v28;
      v31 = v107 + v28 * (v26 + 2);
      while (v23 != v30)
      {
        sub_25F5B6EB8(v31, v22, type metadata accessor for ExtractedMessage);
        sub_25F5B6EB8(v5, v18, type metadata accessor for ExtractedMessage);
        v32 = sub_25F5E3634() & 1;
        sub_25F5C2F24(v18, type metadata accessor for ExtractedMessage);
        result = sub_25F5C2F24(v22, type metadata accessor for ExtractedMessage);
        ++v30;
        v31 += v110;
        v5 += v110;
        if ((v108 & 1) != v32)
        {
          v33 = v30 - 1;
          goto LABEL_11;
        }
      }

      v33 = v23;
LABEL_11:
      v26 = v99;
      a4 = v100;
      if (v108)
      {
        if (v33 < v99)
        {
          goto LABEL_126;
        }

        if (v99 < v33)
        {
          v98 = v6;
          v34 = v110 * (v33 - 1);
          v35 = v33 * v110;
          v108 = v33;
          v36 = v33;
          v37 = v99 * v110;
          do
          {
            if (v26 != --v36)
            {
              v38 = *v111;
              if (!*v111)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_25F5C2E68(v38 + v37, v103, type metadata accessor for ExtractedMessage);
              if (v37 < v34 || v5 >= v38 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25F5C2E68(v103, v38 + v34, type metadata accessor for ExtractedMessage);
            }

            ++v26;
            v34 -= v110;
            v35 -= v110;
            v37 += v110;
          }

          while (v26 < v36);
          v6 = v98;
          v26 = v99;
          a4 = v100;
          v33 = v108;
        }
      }
    }

    v39 = v111[1];
    if (v33 < v39)
    {
      if (__OFSUB__(v33, v26))
      {
        goto LABEL_125;
      }

      if (v33 - v26 < a4)
      {
        if (__OFADD__(v26, a4))
        {
          goto LABEL_127;
        }

        if ((v26 + a4) >= v39)
        {
          v40 = v111[1];
        }

        else
        {
          v40 = v26 + a4;
        }

        if (v40 < v26)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v33 != v40)
        {
          break;
        }
      }
    }

    v41 = v33;
    if (v33 < v26)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = v104;
    }

    else
    {
      result = sub_25F5788CC(0, *(v104 + 2) + 1, 1, v104);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v42 = *(v25 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_25F5788CC((v42 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v5;
    v43 = &v25[16 * a4];
    *(v43 + 4) = v26;
    *(v43 + 5) = v41;
    v44 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    v105 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v25 + 4);
          v47 = *(v25 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_54:
          if (v49)
          {
            goto LABEL_113;
          }

          v62 = &v25[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_116;
          }

          v68 = &v25[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_120;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v72 = &v25[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_68:
        if (v67)
        {
          goto LABEL_115;
        }

        v75 = &v25[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v111)
        {
          goto LABEL_131;
        }

        v83 = v25;
        v84 = *&v25[16 * a4 + 32];
        v5 = *&v25[16 * v45 + 40];
        sub_25F5C2160(*v111 + *(v109 + 72) * v84, *v111 + *(v109 + 72) * *&v25[16 * v45 + 32], *v111 + *(v109 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_25F5C2700(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v114 = v83;
        result = sub_25F5C2674(v45);
        v25 = v114;
        v5 = *(v114 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v25[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_111;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_112;
      }

      v57 = &v25[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_114;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_117;
      }

      if (v61 >= v53)
      {
        v79 = &v25[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v23 = v111[1];
    v24 = v105;
    a4 = v100;
    if (v105 >= v23)
    {
      goto LABEL_96;
    }
  }

  v98 = v6;
  v99 = v26;
  v86 = *v111;
  v87 = *(v109 + 72);
  v88 = *v111 + v87 * (v33 - 1);
  v89 = -v87;
  v90 = v26 - v33;
  v102 = v87;
  v5 = v86 + v33 * v87;
  v105 = v40;
LABEL_86:
  v107 = v90;
  v108 = v33;
  v106 = v5;
  v91 = v90;
  v110 = v88;
  while (1)
  {
    sub_25F5B6EB8(v5, v22, type metadata accessor for ExtractedMessage);
    sub_25F5B6EB8(v88, v18, type metadata accessor for ExtractedMessage);
    a4 = sub_25F5E3634();
    sub_25F5C2F24(v18, type metadata accessor for ExtractedMessage);
    result = sub_25F5C2F24(v22, type metadata accessor for ExtractedMessage);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v33 = v108 + 1;
      v88 = v110 + v102;
      v90 = v107 - 1;
      v41 = v105;
      v5 = v106 + v102;
      if (v108 + 1 != v105)
      {
        goto LABEL_86;
      }

      v6 = v98;
      v26 = v99;
      if (v105 < v99)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v86)
    {
      break;
    }

    a4 = type metadata accessor for ExtractedMessage;
    v92 = v112;
    sub_25F5C2E68(v5, v112, type metadata accessor for ExtractedMessage);
    swift_arrayInitWithTakeFrontToBack();
    sub_25F5C2E68(v92, v88, type metadata accessor for ExtractedMessage);
    v88 += v89;
    v5 += v89;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_25F5C2160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for ExtractedMessage(0);
  v9 = MEMORY[0x28223BE20](v44, v8);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v45 = &v38 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v49 = a1;
  v48 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v19 < 1)
    {
      v27 = a4 + v19;
    }

    else
    {
      v24 = -v15;
      v25 = a4 + v19;
      v26 = v44;
      v27 = a4 + v19;
      v41 = a1;
      v42 = a4;
      v40 = v24;
      do
      {
        v38 = v27;
        v28 = a2 + v24;
        v43 = a2;
        v44 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v47 = v38;
            goto LABEL_59;
          }

          v39 = v27;
          v30 = v26;
          v31 = a3 + v24;
          v32 = v25 + v24;
          v33 = v45;
          sub_25F5B6EB8(v32, v45, type metadata accessor for ExtractedMessage);
          v34 = v28;
          v35 = v46;
          sub_25F5B6EB8(v34, v46, type metadata accessor for ExtractedMessage);
          v36 = sub_25F5E3634();
          sub_25F5C2F24(v35, type metadata accessor for ExtractedMessage);
          sub_25F5C2F24(v33, type metadata accessor for ExtractedMessage);
          if (v36)
          {
            break;
          }

          v27 = v32;
          if (a3 < v25 || v31 >= v25)
          {
            a3 = v31;
            v26 = v30;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v41;
          }

          else
          {
            v37 = a3 == v25;
            a3 = v31;
            v26 = v30;
            a1 = v41;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v32;
          a2 = v43;
          v29 = v32 > v42;
          v28 = v44;
          v24 = v40;
          if (!v29)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v43 || v31 >= v43)
        {
          a3 = v31;
          v26 = v30;
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v40;
          a1 = v41;
          v27 = v39;
        }

        else
        {
          v37 = a3 == v43;
          a3 = v31;
          v26 = v30;
          a2 = v44;
          v24 = v40;
          a1 = v41;
          v27 = v39;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_57:
    v49 = a2;
    v47 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v18;
    v47 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      do
      {
        v21 = v45;
        sub_25F5B6EB8(a2, v45, type metadata accessor for ExtractedMessage);
        v22 = v46;
        sub_25F5B6EB8(a4, v46, type metadata accessor for ExtractedMessage);
        v23 = sub_25F5E3634();
        sub_25F5C2F24(v22, type metadata accessor for ExtractedMessage);
        sub_25F5C2F24(v21, type metadata accessor for ExtractedMessage);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v49 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_25F5C2714(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_25F5C2674(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F5C2700(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_25F5C2714(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ExtractedMessage(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25F5C284C(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5C28A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_25F5C290C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DEE8, &unk_25F5E7910);
  sub_25F5E4C64();
  result = sub_25F5E47F4();
  if (v2 <= 0x3F)
  {
    sub_25F5E46A4();
    result = sub_25F5E47F4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25F5C2A68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_25F5C2B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F5C2BE8(uint64_t a1)
{
  sub_25F5C3254(319, &qword_27FD9E608, 0x277D06D78);
  if (v1 <= 0x3F)
  {
    sub_25F5C3254(319, &unk_27FD9E610, 0x277D06D60);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ECMessageBodyStringAccumulatorOptions(319);
      if (v3 <= 0x3F)
      {
        sub_25F5B2AE4(319);
        if (v4 <= 0x3F)
        {
          sub_25F5C2DB4(319, &qword_27FD9E620, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_25F5C2D4C(319);
            if (v6 <= 0x3F)
            {
              sub_25F5C2DB4(319, &unk_27FD9E638, MEMORY[0x277D839B0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_25F5C2D4C(uint64_t a1)
{
  if (!qword_27FD9E628)
  {
    sub_25F5C3254(255, &qword_27FD9E630, 0x277D06DB8);
    v1 = sub_25F5E4674();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD9E628);
    }
  }
}

void sub_25F5C2DB4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25F5E47F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25F5C2E14()
{
  result = qword_27FD9E648;
  if (!qword_27FD9E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E648);
  }

  return result;
}

uint64_t sub_25F5C2E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5C2F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5C2F84()
{
  v1 = type metadata accessor for MessageExtractor(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  v6 = sub_25F5E3694();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_25F5C3100(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageExtractor(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F5BFFE8;

  return sub_25F5BD150(a1, v1 + v5, v6);
}

uint64_t sub_25F5C320C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F5C3254(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_25F5C329C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25F5C3330(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);

  sub_25F5BFBC4(a1);
}

uint64_t sub_25F5C33BC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_25F5C3408(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5C3440(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ExtractedItem(0);
    return a2;
  }

  return result;
}

uint64_t sub_25F5C34D8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 < a2)
  {

    return v2;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;

    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_25F56A000, v6, v7, "Subsampling from %ld to %ld items.", v8, 0x16u);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  sub_25F5C7558();
  v12 = sub_25F5C3440(a2, v2);
  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_25F5C722C(v12, v9, v10, v11);
    v2 = v13;
    swift_unknownObjectRelease();
    return v2;
  }

  v14 = v11;
  v15 = v10;
  v16 = v9;
  sub_25F5E4B94();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v14 >> 1, v15))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v18 != (v14 >> 1) - v15)
  {
LABEL_18:
    swift_unknownObjectRelease();
    v11 = v14;
    v10 = v15;
    v9 = v16;
    goto LABEL_9;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v2;
}

__n128 ExtractMorpheusParameters.init(morpheusProgram:samplingSize:generativeModelsAvailabilityType:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1[1].n128_u8[0];
  v6 = *a4;
  v7 = *(a4 + 8);
  a5[2].n128_u64[1] = 1;
  a5[3].n128_u8[0] = 0;
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u8[0] = v5;
  a5[1].n128_u64[1] = a2;
  a5[2].n128_u8[0] = a3 & 1;
  a5[3].n128_u64[1] = v6;
  a5[4].n128_u8[0] = v7;
  return result;
}

unint64_t sub_25F5C3738()
{
  v1 = 0x7375656870726F6DLL;
  v2 = 0x6C706D61536E696DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x676E696C706D6173;
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

uint64_t sub_25F5C37D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5C7974(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5C3800(uint64_t a1)
{
  v2 = sub_25F5C3BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5C383C(uint64_t a1)
{
  v2 = sub_25F5C3BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractMorpheusParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6E0, qword_25F5EA7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - v8;
  v46 = 1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5C3BE4();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v30) = 0;
  sub_25F5741E8();
  sub_25F5E4AD4();
  v10 = v35;
  v29 = v36;
  v49 = v37;
  LOBYTE(v35) = 1;
  v28 = sub_25F5E4A74();
  v48 = v11 & 1;
  LOBYTE(v35) = 2;
  v27 = sub_25F5E4A74();
  v47 = v12 & 1;
  v50 = 3;
  sub_25F5A9858();
  sub_25F5E4A84();
  (*(v6 + 8))(v9, v5);
  v24 = v44;
  v13 = v45;
  v46 = v45;
  v26 = v10;
  *&v30 = v10;
  v14 = v29;
  *(&v30 + 1) = v29;
  v25 = v49;
  LOBYTE(v31) = v49;
  v15 = v28;
  *(&v31 + 1) = v28;
  v16 = v48;
  LOBYTE(v32) = v48;
  v17 = v27;
  *(&v32 + 1) = v27;
  v18 = v47;
  LOBYTE(v33) = v47;
  *(&v33 + 1) = v44;
  v34 = v45;
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  *(a2 + 64) = v45;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  *a2 = v19;
  *(a2 + 16) = v20;
  sub_25F5C3C38(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v35 = v26;
  v36 = v14;
  v37 = v25;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v24;
  v43 = v13;
  return sub_25F5C3C70(&v35);
}

unint64_t sub_25F5C3BE4()
{
  result = qword_27FD9E6E8;
  if (!qword_27FD9E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E6E8);
  }

  return result;
}

unint64_t sub_25F5C3CA0(uint64_t a1)
{
  result = sub_25F5A9E5C();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F5C3D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F5C3D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F5C3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5C3EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MorpheusExtractor(uint64_t a1)
{
  result = qword_27FD9E6F0;
  if (!qword_27FD9E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5C3FA4(uint64_t a1)
{
  sub_25F5B2AE4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25F5C402C()
{
  result = qword_27FD9E700;
  if (!qword_27FD9E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E700);
  }

  return result;
}

unint64_t sub_25F5C4084()
{
  result = qword_27FD9E708;
  if (!qword_27FD9E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E708);
  }

  return result;
}

unint64_t sub_25F5C40DC()
{
  result = qword_27FD9E710;
  if (!qword_27FD9E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E710);
  }

  return result;
}

uint64_t sub_25F5C4130(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v2[49] = swift_task_alloc();
  v3 = sub_25F5E3774();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v2[53] = swift_task_alloc();
  v4 = sub_25F5E3794();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  v5 = type metadata accessor for ExtractedItem(0);
  v2[57] = v5;
  v2[58] = *(v5 - 8);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v6 = sub_25F5E3694();
  v2[63] = v6;
  v2[64] = *(v6 - 8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5C44C8, 0, 0);
}

uint64_t sub_25F5C44C8()
{
  v209 = v0;
  v1 = v0;
  if (*(*(v0 + 384) + 16))
  {
    sub_25F5A31D0();
    swift_allocError();
    v3 = 10;
    goto LABEL_3;
  }

  sub_25F5E4024();
  v4 = 0x27FD9D000uLL;
  sub_25F5E4014();
  sub_25F571A78(MEMORY[0x277D84F90]);
  sub_25F5E4004();

  if (!*(v0 + 72))
  {
    sub_25F57C148(v0 + 48, &qword_27FD9DD20, &unk_25F5E6DE0);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_73:
      v119 = sub_25F5E3FB4();
      __swift_project_value_buffer(v119, qword_27FD9EA20);
      v120 = sub_25F5E3F94();
      v121 = sub_25F5E47B4();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_25F56A000, v120, v121, "Running Morpheus program failed: Returned nil.", v122, 2u);
        MEMORY[0x25F8E3B70](v122, -1, -1);
      }

      sub_25F5A31D0();
      v123 = swift_allocError();
      *v124 = 11;
      swift_willThrow();

      goto LABEL_5;
    }

LABEL_115:
    swift_once();
    goto LABEL_73;
  }

  sub_25F571D88((v0 + 48), (v0 + 16));
  sub_25F5E3FD4();
  sub_25F573A4C(v0 + 80, v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
  if (!swift_dynamicCast())
  {
    sub_25F5A31D0();
    v123 = swift_allocError();
    *v125 = 12;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
LABEL_5:
    if (*(v4 + 2224) != -1)
    {
      swift_once();
    }

    v5 = sub_25F5E3FB4();
    __swift_project_value_buffer(v5, qword_27FD9EA20);
    v6 = v123;
    v7 = sub_25F5E3F94();
    v8 = sub_25F5E47B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v123;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_25F56A000, v7, v8, "Running Morpheus program failed with error: %@", v9, 0xCu);
      sub_25F57C148(v10, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v10, -1, -1);
      MEMORY[0x25F8E3B70](v9, -1, -1);
    }

    sub_25F5A31D0();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();

    goto LABEL_10;
  }

  v16 = *(v0 + 352);
  v17 = *(v16 + 16);
  v206 = v1;
  if (!v17)
  {
    v181 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v18 = 0;
  v19 = v1[64];
  v190 = (v19 + 48);
  v182 = (v19 + 16);
  v186 = (v19 + 8);
  v187 = (v19 + 32);
  v169 = (v1[51] + 8);
  v170 = (v1[55] + 8);
  v20 = v16 + 32;
  v172 = v17 - 1;
  v171 = v1[58];
  v174 = v1[57];
  v181 = MEMORY[0x277D84F90];
  v189 = v16;
  v183 = *(v16 + 16);
  v173 = v16 + 32;
  do
  {
    v21 = v20 + 32 * v18;
    v22 = v18;
    v4 = &unk_25F5EA410;
    while (1)
    {
      if (v22 >= *(v16 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      sub_25F573A4C(v21, (v1 + 18));
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_80;
      }

      v30 = v1[45];
      if (*(v30 + 16) != 6)
      {

LABEL_80:

        sub_25F5A31D0();
        v123 = swift_allocError();
        *v126 = 13;
        swift_willThrow();

LABEL_82:
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
        __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
        v4 = 0x27FD9D000;
        goto LABEL_5;
      }

      sub_25F5C6234(v1[45], v1[83]);
      if (*(v30 + 16) < 2uLL)
      {
        goto LABEL_114;
      }

      sub_25F573A4C(v30 + 64, (v1 + 22));
      if (!swift_dynamicCast())
      {
        v127 = v1[83];

        sub_25F5A31D0();
        v123 = swift_allocError();
        *v128 = 13;
        swift_willThrow();

        sub_25F57C148(v127, &qword_27FD9DE10, &unk_25F5E7240);
        goto LABEL_82;
      }

      v194 = v21;
      v197 = v22;
      v31 = v1[79];
      v32 = v1[78];
      v33 = v1[63];
      v184 = v1[38];
      v199 = v1[39];
      sub_25F5C64C4(v30, v31);
      sub_25F573B94(v31, v32, &unk_27FD9E500, &unk_25F5EA410);
      v34 = *v190;
      if ((*v190)(v32, 1, v33) == 1)
      {
        sub_25F57C148(v1[78], &unk_27FD9E500, &unk_25F5EA410);
        goto LABEL_38;
      }

      v35 = v1[77];
      v32 = v1[63];
      v36 = v1[48];
      v37 = *v187;
      (*v187)(v1[70], v1[78], v32);
      v38 = type metadata accessor for MorpheusExtractor(0);
      sub_25F573B94(v36 + *(v38 + 24), v35, &unk_27FD9E500, &unk_25F5EA410);
      if (v34(v35, 1, v32) == 1)
      {
        v67 = v1[77];
        (*v186)(v1[70], v1[63]);
        sub_25F57C148(v67, &unk_27FD9E500, &unk_25F5EA410);
        goto LABEL_38;
      }

      v37(v1[69], v1[77], v1[63]);
      if ((sub_25F5E3634() & 1) == 0)
      {
        break;
      }

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v39 = v1[83];
      v40 = v1[82];
      v41 = v1[70];
      v42 = v1[68];
      v43 = v1[63];
      v44 = sub_25F5E3FB4();
      __swift_project_value_buffer(v44, qword_27FD9EA20);
      sub_25F573B94(v39, v40, &qword_27FD9DE10, &unk_25F5E7240);
      (*v182)(v42, v41, v43);
      v45 = sub_25F5E3F94();
      v46 = sub_25F5E4794();
      if (os_log_type_enabled(v45, v46))
      {
        v203 = v46;
        v47 = v1[82];
        v48 = v1[81];
        v49 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v208[0] = v200;
        *v49 = 138412546;
        sub_25F573B94(v47, v48, &qword_27FD9DE10, &unk_25F5E7240);
        v50 = sub_25F5E36D4();
        v51 = *(v50 - 8);
        v52 = (*(v51 + 48))(v48, 1, v50);
        v53 = v1[82];
        v54 = v1[81];
        if (v52 == 1)
        {
          sub_25F57C148(v54, &qword_27FD9DE10, &unk_25F5E7240);
          sub_25F57C148(v53, &qword_27FD9DE10, &unk_25F5E7240);
          v55 = 0;
        }

        else
        {
          v56 = sub_25F5E36A4();
          v58 = v57;
          sub_25F5BA894();
          swift_allocError();
          *v59 = v56;
          v59[1] = v58;
          v1 = v206;
          (*(v51 + 8))(v54, v50);
          v55 = _swift_stdlib_bridgeErrorToNSError();
          sub_25F57C148(v53, &qword_27FD9DE10, &unk_25F5E7240);
        }

        v178 = v1[79];
        v179 = v1[83];
        v175 = v1[69];
        v176 = v1[70];
        v60 = v1[68];
        v61 = v1[63];
        *(v49 + 4) = v55;
        *v185 = v55;
        *(v49 + 12) = 2080;
        sub_25F5C7830(&qword_27FD9E498, MEMORY[0x277CC95B8]);
        v62 = sub_25F5E4B44();
        v64 = v63;
        v65 = *v186;
        (*v186)(v60, v61);
        v66 = sub_25F570AF8(v62, v64, v208);

        *(v49 + 14) = v66;
        _os_log_impl(&dword_25F56A000, v45, v203, "Skipping item %@ because it occurred before specified date: %s", v49, 0x16u);
        sub_25F57C148(v185, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v185, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v200);
        MEMORY[0x25F8E3B70](v200, -1, -1);
        MEMORY[0x25F8E3B70](v49, -1, -1);

        v65(v175, v61);
        v65(v176, v61);
        v1 = v206;
        sub_25F57C148(v178, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v179, &qword_27FD9DE10, &unk_25F5E7240);
      }

      else
      {
        v202 = v1[83];
        v23 = v1[82];
        v24 = v1[79];
        v25 = v1[70];
        v26 = v1[69];
        v27 = v1[68];
        v28 = v1[63];

        v29 = *v186;
        (*v186)(v27, v28);
        sub_25F57C148(v23, &qword_27FD9DE10, &unk_25F5E7240);
        v29(v26, v28);
        v29(v25, v28);
        v4 = &unk_25F5EA410;
        sub_25F57C148(v24, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v202, &qword_27FD9DE10, &unk_25F5E7240);
      }

      v22 = v197 + 1;
      v21 = v194 + 32;
      v16 = v189;
      if (v183 == v197 + 1)
      {
        v4 = 0x27FD9D000uLL;
        goto LABEL_84;
      }
    }

    v68 = v1[70];
    v32 = v1[63];
    v69 = *v186;
    (*v186)(v1[69], v32);
    v69(v68, v32);
LABEL_38:
    if (*(v30 + 16) < 4uLL)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    sub_25F573A4C(v30 + 128, (v1 + 26));
    if (!swift_dynamicCast())
    {
      goto LABEL_44;
    }

    v70 = v1[41];
    v71 = HIBYTE(v70) & 0xF;
    v204 = v1[40];
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v204 & 0xFFFFFFFFFFFFLL;
    }

    if (!v71)
    {

LABEL_44:
      v204 = 0;
      v70 = 0;
    }

    if (*(v30 + 16) < 5uLL)
    {
      goto LABEL_117;
    }

    sub_25F573A4C(v30 + 160, (v1 + 30));
    if (!swift_dynamicCast())
    {
      goto LABEL_51;
    }

    v72 = v1[42];
    v32 = v1[43];
    v73 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v73 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (!v73)
    {

LABEL_51:
      v72 = 0;
      v32 = 0;
    }

    v74 = sub_25F571FC4(MEMORY[0x277D84F90]);
    if (*(v30 + 16) < 6uLL)
    {
      goto LABEL_118;
    }

    v75 = v74;
    sub_25F573A4C(v30 + 192, (v1 + 34));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    v195 = v32;
    v177 = v72;
    if (swift_dynamicCast())
    {

      v180 = sub_25F5701E8(v1[46]);
    }

    else
    {
      v180 = v75;
    }

    v76 = v1[80];
    v77 = v1[79];
    v78 = v1[76];
    v79 = v1[61];
    sub_25F573B94(v1[83], v76, &qword_27FD9DE10, &unk_25F5E7240);
    sub_25F573B94(v77, v78, &unk_27FD9E500, &unk_25F5EA410);
    *(v79 + v174[6]) = 0;
    sub_25F571FC4(MEMORY[0x277D84F90]);
    v80 = v174;
    sub_25F5E3754();
    sub_25F573B94(v76, v79, &qword_27FD9DE10, &unk_25F5E7240);
    v81 = (v79 + v174[5]);
    *v81 = v184;
    v81[1] = v199;
    sub_25F573B94(v78, v79 + v174[7], &unk_27FD9E500, &unk_25F5EA410);
    v82 = v70;
    v83 = v204;
    if (!v70)
    {
      v85 = v1[52];
      v84 = v1[53];
      v86 = v1[50];
      sub_25F5E3784();
      sub_25F5E3764();
      (*v169)(v85, v86);
      v87 = sub_25F5E3704();
      v88 = *(v87 - 8);
      v89 = (*(v88 + 48))(v84, 1, v87);
      v90 = v1[53];
      if (v89 == 1)
      {
        sub_25F57C148(v1[53], &qword_27FD9DE08, &unk_25F5E7230);
        v83 = 0;
        v82 = 0;
      }

      else
      {
        v83 = sub_25F5E36F4();
        v82 = v91;
        (*(v88 + 8))(v90, v87);
      }
    }

    v92 = (v1[61] + v174[8]);
    *v92 = v83;
    v92[1] = v82;
    v93 = v195;
    if (v195)
    {
      v94 = v1[80];
      v95 = v1[76];
      (*v170)(v1[56], v1[54]);
      sub_25F57C148(v95, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v94, &qword_27FD9DE10, &unk_25F5E7240);

      v4 = 0x27FD9D000;
      v96 = v177;
    }

    else
    {
      v97 = v1[49];
      sub_25F5E3744();
      v98 = sub_25F5E3734();
      v99 = *(v98 - 8);
      v100 = (*(v99 + 48))(v97, 1, v98);
      v101 = v1[80];
      v102 = v1[76];
      v103 = v1[56];
      v104 = v1[54];
      v105 = v1[49];
      v4 = 0x27FD9D000;
      if (v100 == 1)
      {
        (*v170)(v1[56], v1[54]);
        sub_25F57C148(v102, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v101, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v105, &qword_27FD9DE00, &unk_25F5E9D40);

        v96 = 0;
        v93 = 0;
      }

      else
      {
        v106 = sub_25F5E36F4();
        v93 = v107;
        v108 = v103;
        v96 = v106;
        (*v170)(v108, v104);
        sub_25F57C148(v102, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v101, &qword_27FD9DE10, &unk_25F5E7240);
        (*(v99 + 8))(v105, v98);
      }

      v80 = v174;
    }

    v109 = v1[61];
    v110 = v1[62];
    v111 = v1[60];
    v112 = v80[10];
    v113 = (v109 + v80[9]);
    *v113 = v96;
    v113[1] = v93;
    *(v109 + v112) = v180;
    sub_25F57B6DC(v109, v110);
    sub_25F57B808(v110, v111);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = sub_25F57851C(0, v181[2] + 1, 1, v181);
    }

    v115 = v181[2];
    v114 = v181[3];
    if (v115 >= v114 >> 1)
    {
      v181 = sub_25F57851C((v114 > 1), v115 + 1, 1, v181);
    }

    v18 = v197 + 1;
    v116 = v1[83];
    v117 = v1[79];
    v118 = v1[60];
    sub_25F57B8D4(v1[62]);
    sub_25F57C148(v117, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v116, &qword_27FD9DE10, &unk_25F5E7240);
    v181[2] = v115 + 1;
    sub_25F57B6DC(v118, v181 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v115);
    v20 = v173;
    v16 = v189;
  }

  while (v172 != v197);
LABEL_84:
  v129 = v1[48];

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  if (*(v129 + 32))
  {
LABEL_90:
    v193 = *(v1[64] + 56);
    v193(v1[47], 1, 1, v1[63]);
    v136 = v181[2];
    if (v136)
    {
      v137 = v1[64];
      v138 = v1[58];
      v201 = v1[59];
      v198 = *(v1[57] + 28);
      v139 = v181 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v196 = *(v138 + 72);
      v207 = (v137 + 48);
      v140 = (v137 + 32);
      v188 = (v137 + 8);

      do
      {
        v141 = v1[75];
        v142 = v1[63];
        v143 = v1[59];
        sub_25F57B808(v139, v143);
        sub_25F573B94(v201 + v198, v141, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57B8D4(v143);
        v144 = *v207;
        if ((*v207)(v141, 1, v142) == 1)
        {
          sub_25F57C148(v1[75], &unk_27FD9E500, &unk_25F5EA410);
        }

        else
        {
          v145 = v1[74];
          v146 = v1[63];
          v147 = v1[47];
          v205 = *v140;
          (*v140)(v1[67], v1[75], v146);
          sub_25F573B94(v147, v145, &unk_27FD9E500, &unk_25F5EA410);
          v148 = v144(v145, 1, v146);
          v149 = v1[74];
          if (v148 == 1)
          {
            v191 = v1[67];
            v150 = v1[63];
            v151 = v1[47];
            sub_25F57C148(v151, &unk_27FD9E500, &unk_25F5EA410);
            sub_25F57C148(v149, &unk_27FD9E500, &unk_25F5EA410);
            v205(v151, v191, v150);
            v193(v151, 0, 1, v150);
          }

          else
          {
            v192 = v1[73];
            v152 = v1[67];
            v153 = v1[66];
            v154 = v206[63];
            v155 = v206[47];
            v205(v153, v149, v154);
            sub_25F5C7830(&qword_27FD9E490, MEMORY[0x277CC9590]);
            v156 = sub_25F5E4384();
            sub_25F57C148(v155, &unk_27FD9E500, &unk_25F5EA410);
            if (v156)
            {
              v157 = v152;
            }

            else
            {
              v157 = v153;
            }

            if (v156)
            {
              v158 = v153;
            }

            else
            {
              v158 = v152;
            }

            (*v188)(v157, v154);
            v205(v192, v158, v154);
            v159 = v154;
            v1 = v206;
            v193(v192, 0, 1, v159);
            sub_25F5B6F80(v192, v155);
          }
        }

        v139 += v196;
        --v136;
      }

      while (v136);
    }

    else
    {
    }

    v160 = v1[72];
    v162 = v1[63];
    v161 = v1[64];
    sub_25F573B94(v1[47], v160, &unk_27FD9E500, &unk_25F5EA410);
    if ((*(v161 + 48))(v160, 1, v162) == 1)
    {
      sub_25F57C148(v1[72], &unk_27FD9E500, &unk_25F5EA410);
    }

    else
    {
      v163 = v1[71];
      v164 = v1[65];
      v165 = v1[63];
      v166 = v1[64];
      v167 = v1[47];
      (*(v166 + 32))(v164, v1[72], v165);
      sub_25F5E3654();
      sub_25F5E3644();
      (*(v166 + 8))(v164, v165);
      sub_25F57C148(v167, &unk_27FD9E500, &unk_25F5EA410);
      v193(v163, 0, 1, v165);
      sub_25F5B6F80(v163, v167);
    }

    v168 = v1[1];

    return v168(v181);
  }

  v32 = *(v129 + 24);
  if (v181[2] >= v32)
  {
    v135 = sub_25F5C34D8(v181, v32);

    v181 = v135;
    goto LABEL_90;
  }

  if (*(v4 + 2224) != -1)
  {
LABEL_119:
    swift_once();
  }

  v130 = sub_25F5E3FB4();
  __swift_project_value_buffer(v130, qword_27FD9EA20);

  v131 = sub_25F5E3F94();
  v132 = sub_25F5E47B4();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 134218240;
    v134 = v181[2];

    *(v133 + 4) = v134;

    *(v133 + 12) = 2048;
    *(v133 + 14) = v32;
    _os_log_impl(&dword_25F56A000, v131, v132, "Extracted items %ld less than required sample size %ld.", v133, 0x16u);
    MEMORY[0x25F8E3B70](v133, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_25F5A31D0();
  swift_allocError();
  v3 = 7;
LABEL_3:
  *v2 = v3;
  swift_willThrow();
LABEL_10:

  v14 = v1[1];

  return v14();
}

uint64_t sub_25F5C6234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_25F573A4C(a1 + 32, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = sub_25F5E36D4();
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  v3 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v6 = *(v16 + 16);
      v7 = sub_25F5E3494();
      if (!v7)
      {
LABEL_21:
        sub_25F5E34B4();
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v8 = v7;
      v9 = sub_25F5E34C4();
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_19;
      }

      v10 = v6 - v9 + v8;
      sub_25F5E34B4();
      if (!v10)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    sub_25F5E36B4();
    sub_25F571820(v16, v17);
    v15 = sub_25F5E36D4();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if (v16 > v16 >> 32)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = sub_25F5E3494();
  if (!v11)
  {
LABEL_23:
    result = sub_25F5E34B4();
    __break(1u);
    goto LABEL_24;
  }

  v12 = v11;
  v13 = sub_25F5E34C4();
  if (__OFSUB__(v16, v13))
  {
    goto LABEL_20;
  }

  v14 = v16 - v13 + v12;
  result = sub_25F5E34B4();
  if (v14)
  {
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25F5C64C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  result = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v17 - v7;
  if (*(a1 + 16) < 3uLL)
  {
    __break(1u);
    return result;
  }

  sub_25F573A4C(a1 + 96, v19);
  if (swift_dynamicCast())
  {
    sub_25F5E3644();
    v9 = sub_25F5E3694();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }

  sub_25F573A4C(a1 + 96, v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v10 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

LABEL_11:
    v15 = sub_25F5E3694();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v12 = sub_25F5E43C4();

  v13 = [v11 dateFromString_];

  if (v13)
  {
    sub_25F5E3674();

    v14 = 0;
    v11 = v13;
  }

  else
  {
    v14 = 1;
  }

  v16 = sub_25F5E3694();
  (*(*(v16 - 8) + 56))(v8, v14, 1, v16);
  return sub_25F5B6F80(v8, a2);
}

uint64_t sub_25F5C672C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5C4130(a1);
}

void *sub_25F5C67C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E720, &unk_25F5EAA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E540, &qword_25F5E9D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5C68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E718, &qword_25F5EAA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5C6A08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5C6B3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25F5C6C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD8, &qword_25F5E71F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F5C6D88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_25F5C6F64(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD98, &unk_25F5E7190);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_25F5C7154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_25F5C722C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE8, &unk_25F5E7208);
      v7 = *(type metadata accessor for ExtractedItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for ExtractedItem(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_25F5C73CC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x25F8E3B80](&v19, 8);
      v6 = (v19 * v2) >> 64;
      if (v2 > v19 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v19 * v2)
        {
          do
          {
            v19 = 0;
            MEMORY[0x25F8E3B80](&v19, 8);
          }

          while (v7 > v19 * v2);
          v6 = (v19 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_25F5C7784(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v4 + 32];
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v17 = &v1[16 * v8 + 32];
        *v17 = v12;
        *(v17 + 1) = v11;

        *v18 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25F5C7558()
{
  v1 = type metadata accessor for ExtractedItem(0);
  v24 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3, v6);
  v25 = &v21 - v8;
  v23 = v0;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v22 = v10 - 2;
    while (1)
    {
      v26 = 0;
      result = MEMORY[0x25F8E3B80](&v26, 8);
      v14 = (v26 * v10) >> 64;
      if (v10 > v26 * v10)
      {
        v15 = -v10 % v10;
        if (v15 > v26 * v10)
        {
          do
          {
            v26 = 0;
            result = MEMORY[0x25F8E3B80](&v26, 8);
          }

          while (v15 > v26 * v10);
          v14 = (v26 * v10) >> 64;
        }
      }

      v16 = v12 + v14;
      if (__OFADD__(v12, v14))
      {
        break;
      }

      if (v12 != v16)
      {
        v17 = v9[2];
        if (v12 >= v17)
        {
          goto LABEL_19;
        }

        v18 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v19 = *(v24 + 72);
        result = sub_25F57B808(v9 + v18 + v19 * v12, v25);
        if (v16 >= v17)
        {
          goto LABEL_20;
        }

        sub_25F57B808(v9 + v18 + v19 * v16, v5);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25F5C7798(v9);
          v9 = result;
        }

        if (v12 >= v9[2])
        {
          goto LABEL_21;
        }

        v20 = v9 + v18;
        result = sub_25F5C7874(v5, &v20[v19 * v12]);
        if (v16 >= v9[2])
        {
          goto LABEL_22;
        }

        result = sub_25F5C7874(v25, &v20[v19 * v16]);
        v11 = v22;
        *v23 = v9;
      }

      --v10;
      if (v12++ == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F5C7830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25F5E3694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F5C7874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C78D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F5E44E4();

    return sub_25F5E45B4();
  }

  return result;
}

uint64_t sub_25F5C7974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7375656870726F6DLL && a2 == 0xEF6D6172676F7250;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C706D61536E696DLL && a2 == 0xED0000657A695365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5C7B94@<X0>(uint64_t result@<X0>, uint64_t (*a2)()@<X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x277D837D0];
  if (*(result + 16) && (v6 = result, result = sub_25F5709C8(1954047348, 0xE400000000000000), (v7 & 1) != 0) && (sub_25F573A4C(*(v6 + 56) + 32 * result, v11), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v8 = a2();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  a3[3] = v4;
  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_25F5C7C6C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_25F5709C8(1954047348, 0xE400000000000000), (v4 & 1) != 0) && (sub_25F573A4C(*(v3 + 56) + 32 * result, v13), v5 = MEMORY[0x277D837D0], result = swift_dynamicCast(), (result & 1) != 0))
  {
    v7 = v11;
    v6 = v12;
    v13[0] = v11;
    v13[1] = v12;
    sub_25F58C444();
    result = sub_25F5E4854();
    a2[3] = v5;
    if (v8)
    {
      v9 = result;
      v10 = v8;

      v7 = v9;
      v6 = v10;
    }

    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    a2[3] = MEMORY[0x277D837D0];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  return result;
}

unint64_t sub_25F5C7D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F5C8268(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F571D88(&v15, (v3[7] + 32 * result));
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

uint64_t sub_25F5C7E78()
{
  v1 = sub_25F5E4064();
  MEMORY[0x28223BE20](v1 - 8, v2);
  sub_25F5E4024();
  v3 = MEMORY[0x277D84F90];
  sub_25F5E4054();
  sub_25F5C7D68(v3);
  sub_25F5E4044();
  swift_allocObject();
  sub_25F5E4034();
  sub_25F5E3FF4();

  if (!v0)
  {
    v5 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v5);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();

    v6 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v6);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();

    v7 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v7);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();
  }

  return result;
}

uint64_t sub_25F5C8268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C82D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E44C4();
  v5 = MEMORY[0x25F8E2DC0](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v18 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a1;
  v15 = a2;
  v16 = 0;
  v17 = v6;
  v7 = sub_25F5E4514();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_25F5CEE20(v13, v9, v10);

      v9 = sub_25F5E4514();
      v10 = v11;
    }

    while (v11);
    v5 = v18;
  }

  return v5;
}

uint64_t sub_25F5C8398(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_25F571230(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_25F571230((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t SmsMessage.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SmsMessage.subject.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SmsMessage.sender.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SmsMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmsMessage(0) + 32);
  v4 = sub_25F5E3694();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmsMessage.groupID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SmsMessage(0) + 36));

  return v1;
}

uint64_t SmsMessage.init(content:subject:sender:isMe:timestamp:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v13 = type metadata accessor for SmsMessage(0);
  v14 = *(v13 + 32);
  v15 = sub_25F5E3694();
  result = (*(*(v15 - 8) + 32))(a9 + v14, a8, v15);
  v17 = (a9 + *(v13 + 36));
  *v17 = a10;
  v17[1] = a11;
  return result;
}

uint64_t sub_25F5C8724()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 1699574633;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0x444970756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463656A627573;
  if (v1 != 1)
  {
    v5 = 0x7265646E6573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5C87D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5D0C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5C8800(uint64_t a1)
{
  v2 = sub_25F5C8D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5C883C(uint64_t a1)
{
  v2 = sub_25F5C8D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmsMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_25F5E3694();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E728, &qword_25F5EAA50);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for SmsMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v15);
  sub_25F5C8D28();
  v16 = v10;
  v17 = v44;
  sub_25F5E4C74();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v19 = v42;
  v18 = v43;
  v44 = v11;
  v51 = 0;
  v21 = v14;
  *v14 = sub_25F5E4A94();
  v14[1] = v22;
  v50 = 1;
  v14[2] = sub_25F5E4A44();
  v14[3] = v23;
  v49 = 2;
  v24 = v19;
  *(v21 + 32) = sub_25F5E4A44();
  *(v21 + 40) = v25;
  v48 = 3;
  v26 = sub_25F5E4A54();
  v39 = 0;
  v38 = 0;
  *(v21 + 48) = v26;
  v47 = 4;
  sub_25F5C7830(&qword_27FD9E380, MEMORY[0x277CC95A0]);
  v27 = v39;
  sub_25F5E4AD4();
  v39 = v27;
  v28 = v41;
  v29 = v44;
  if (v27)
  {
    (*(v24 + 8))(v16, v18);
    v30 = 0;
  }

  else
  {
    (*(v41 + 32))(v21 + *(v44 + 32), v6, v3);
    v46 = 5;
    v31 = v39;
    v32 = sub_25F5E4A94();
    v39 = v31;
    if (!v31)
    {
      v35 = v32;
      v36 = v33;
      (*(v24 + 8))(v16, v18);
      v37 = (v21 + *(v29 + 36));
      *v37 = v35;
      v37[1] = v36;
      sub_25F5C8D7C(v21, v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      return sub_25F5C8DE0(v21);
    }

    (*(v24 + 8))(v16, v18);
    v30 = 1;
  }

  v34 = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v45);

  if (v34)
  {
    if (!v30)
    {
      return result;
    }
  }

  else
  {

    if ((v30 & 1) == 0)
    {
      return result;
    }
  }

  return (*(v28 + 8))(v21 + *(v29 + 32), v3);
}

unint64_t sub_25F5C8D28()
{
  result = qword_27FD9E730;
  if (!qword_27FD9E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E730);
  }

  return result;
}

uint64_t sub_25F5C8D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C8DE0(uint64_t a1)
{
  v2 = type metadata accessor for SmsMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5C8E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_25F5712B0(0, v10, 0);
  v11 = v24;
  v12 = *(a2 + 16);
  if (!v12)
  {

    return v11;
  }

  v13 = 0;
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22[1] = a2;
  v15 = a2 + v14;
  v16 = *(v5 + 72);
  do
  {
    result = sub_25F5C8D7C(v15, v9);
    v18 = *(v11 + 16);
    if (v18 < a1)
    {
      v24 = v11;
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25F5712B0((v17 > 1), v18 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v18 + 1;
      sub_25F5D0AF8(v9, v11 + v14 + v18 * v16, type metadata accessor for SmsMessage);
    }

    else
    {
      if (v13 >= v18)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_25F5D1008(v9, v11 + v14 + v16 * v13);
      if ((v13 + 1) < a1)
      {
        ++v13;
      }

      else
      {
        v13 = 0;
      }
    }

    v15 += v16;
    --v12;
  }

  while (v12);

  if (!v13)
  {
    return v11;
  }

  v19 = *(v11 + 16);
  v23 = MEMORY[0x277D84F90];
  result = sub_25F5712B0(0, v19, 0);
  if (v19 >= v13)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v20 = *(v11 + 16);
    if (v20 >= v13 && v20 >= v19)
    {

      sub_25F5CFE58(v21, v11 + v14, v13, (2 * v19) | 1);
      sub_25F5CFE58(v11, v11 + v14, 0, (2 * v13) | 1);
      return v23;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_25F5C90EC(uint64_t a1)
{
  v3 = sub_25F5E3694();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v44 = &v42 - v9;
  v43 = type metadata accessor for SmsMessage(0);
  v10 = *(v43 - 8);
  v12 = MEMORY[0x28223BE20](v43, v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v42 - v16;
  sub_25F5C8D7C(a1, &v42 - v16);
  v18 = (v1 + 16);
  v19 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v19 = sub_25F5789D0(0, v19[2] + 1, 1, v19);
  }

  v22 = v19[2];
  v21 = v19[3];
  v23 = v22 + 1;
  v46 = v4;
  if (v22 >= v21 >> 1)
  {
    v19 = sub_25F5789D0((v21 > 1), v22 + 1, 1, v19);
  }

  v19[2] = v23;
  v4 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v10 = *(v10 + 72);
  result = sub_25F5D0AF8(v17, v19 + v4 + v10 * v22, type metadata accessor for SmsMessage);
  *(v1 + 16) = v19;
  v25 = *(v1 + 50);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    v17 = v19 + v4 + v22 * v10;
    while (1)
    {
      if (v23 > v19[2])
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_25F5C8D7C(v17, v14);
      v26 = v14[48];
      result = sub_25F5C8DE0(v14);
      if (v26 != 2 && (v26 & 1) != 0)
      {
        break;
      }

      v17 -= v10;
      if (!--v23)
      {
        goto LABEL_13;
      }
    }

    if (v19[2] < v23)
    {
      goto LABEL_29;
    }

    result = sub_25F5D0F48(0, v23);
  }

LABEL_13:
  if ((*(v1 + 32) & 1) == 0)
  {
    v27 = *(*(v1 + 16) + 16);
    if (*(v1 + 24) < v27)
    {
      if (!v27)
      {
        __break(1u);
        goto LABEL_27;
      }

      result = sub_25F5D0F48(0, 1);
    }
  }

  if (*(v1 + 48))
  {
    return result;
  }

  v28 = *v18;
  v29 = *(*v18 + 16);
  if (v29 < 2)
  {
    return result;
  }

  v30 = *(v1 + 40);
  v31 = v28 + v4 + (v29 - 1) * v10;
  v32 = v43;
  v33 = v44;
  v35 = v46;
  v34 = v47;
  v36 = *(v46 + 16);
  v36(v44, v31 + *(v43 + 32), v47);
  v37 = v28 + v4 + *(v32 + 32);
  v38 = v45;
  v36(v45, v37, v34);
  sub_25F5E3614();
  v40 = v39;
  v41 = *(v35 + 8);
  v41(v38, v34);
  result = (v41)(v33, v34);
  if ((v30 * 86400) >> 64 == (86400 * v30) >> 63)
  {
    if (v40 <= (86400 * v30))
    {
      return result;
    }

    if (*(v28 + 16))
    {
      return sub_25F5D0F48(0, 1);
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t Dialogue.description.getter()
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E738, &qword_25F5EAA58);
  v2 = MEMORY[0x28223BE20](v105, v1);
  v104 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v103 = &v96 - v6;
  v8 = MEMORY[0x28223BE20](v5, v7);
  v101 = (&v96 - v9);
  MEMORY[0x28223BE20](v8, v10);
  v102 = &v96 - v11;
  v12 = type metadata accessor for SmsMessage(0);
  v107 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v100 = &v96 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v96 - v21;
  v23 = *(v0 + 16);
  v24 = *(v0 + 49);
  v106 = v23;
  if (v24 != 2 && (v24 & 1) != 0)
  {
    v25 = *(v23 + 16);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v110[0] = MEMORY[0x277D84F90];
      sub_25F571230(0, v25, 0);
      v26 = v110[0];
      v27 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v28 = *(v107 + 72);
      v29 = v25;
      do
      {
        sub_25F5C8D7C(v27, v22);
        if (*(v22 + 5))
        {
          v30 = *(v22 + 4);
          v31 = *(v22 + 5);
        }

        else
        {
          v31 = 0xE300000000000000;
          v30 = 6369134;
        }

        sub_25F5C8DE0(v22);
        v110[0] = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_25F571230((v32 > 1), v33 + 1, 1);
          v26 = v110[0];
        }

        *(v26 + 16) = v33 + 1;
        v34 = v26 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v27 += v28;
        --v29;
      }

      while (v29);
      v23 = v106;
    }

    v80 = sub_25F5D03B8(v26);

    v110[0] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
    sub_25F5AB824(&qword_27FD9E740, &qword_27FD9DD40, &qword_25F5E85F0, MEMORY[0x277D83B68]);
    sub_25F58C444();
    v81 = sub_25F5E45C4();
    v83 = v82;

    v84 = MEMORY[0x277D84F90];
    if (v25)
    {
      v106 = v83;
      v110[0] = MEMORY[0x277D84F90];
      sub_25F571230(0, v25, 0);
      v84 = v110[0];
      v85 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v86 = *(v107 + 72);
      v87 = v100;
      do
      {
        sub_25F5C8D7C(v85, v87);
        v88 = *v87;
        v89 = *(v87 + 1);

        sub_25F5C8DE0(v87);
        v110[0] = v84;
        v91 = *(v84 + 16);
        v90 = *(v84 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_25F571230((v90 > 1), v91 + 1, 1);
          v87 = v100;
          v84 = v110[0];
        }

        *(v84 + 16) = v91 + 1;
        v92 = v84 + 16 * v91;
        *(v92 + 32) = v88;
        *(v92 + 40) = v89;
        v85 += v86;
        --v25;
      }

      while (v25);
      v83 = v106;
    }

    v110[0] = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50, MEMORY[0x277D83958]);
    v93 = sub_25F5E4364();
    v95 = v94;

    v110[0] = v81;
    v110[1] = v83;
    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](v93, v95);

    goto LABEL_46;
  }

  v35 = *(v23 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v110[0] = MEMORY[0x277D84F90];
    sub_25F571230(0, v35, 0);
    v36 = v110[0];
    v37 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v38 = *(v107 + 72);
    do
    {
      sub_25F5C8D7C(v37, v16);
      if (*(v16 + 5))
      {
        v39 = *(v16 + 4);
        v40 = *(v16 + 5);
      }

      else
      {
        v40 = 0xE300000000000000;
        v39 = 6369134;
      }

      sub_25F5C8DE0(v16);
      v110[0] = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_25F571230((v41 > 1), v42 + 1, 1);
        v36 = v110[0];
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v37 += v38;
      --v35;
    }

    while (v35);
    v23 = v106;
  }

  v44 = sub_25F5D03B8(v36);

  v110[0] = 0;
  v110[1] = 0xE000000000000000;
  sub_25F5E4954();

  strcpy(v110, "Participants: ");
  HIBYTE(v110[1]) = -18;
  v109 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  sub_25F5AB824(&qword_27FD9E740, &qword_27FD9DD40, &qword_25F5E85F0, MEMORY[0x277D83B68]);
  sub_25F58C444();
  v45 = sub_25F5E45C4();
  v47 = v46;

  MEMORY[0x25F8E2BC0](v45, v47);

  v49 = v110[0];
  v48 = v110[1];
  v50 = *(v23 + 16);
  v51 = MEMORY[0x277D84F90];
  if (!v50)
  {
LABEL_38:
    v110[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50, MEMORY[0x277D83958]);
    v77 = sub_25F5E4364();
    v79 = v78;

    strcpy(v110, "[Dialogue]\n");
    HIDWORD(v110[1]) = -352321536;
    MEMORY[0x25F8E2BC0](v49, v48);

    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](v77, v79);

    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](0xD000000000000011, 0x800000025F5ECA80);
LABEL_46:
    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    return v110[0];
  }

  v96 = v110[0];
  v97 = v110[1];
  v109 = MEMORY[0x277D84F90];
  result = sub_25F571230(0, v50, 0);
  v53 = 0;
  v51 = v109;
  v54 = *(v23 + 16);
  if (v54 >= v50)
  {
    v54 = v50;
  }

  v99 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v100 = v54;
  v98 = v50;
  while (v100 != v53)
  {
    if (v53 >= *(v23 + 16))
    {
      goto LABEL_48;
    }

    v55 = v53 + 1;
    v56 = v105;
    v57 = *(v105 + 48);
    v58 = v102;
    sub_25F5C8D7C(v99 + *(v107 + 72) * v53, &v102[v57]);
    v59 = v101;
    *v101 = v53;
    sub_25F5D0AF8(&v58[v57], v59 + *(v56 + 48), type metadata accessor for SmsMessage);
    v110[0] = 0;
    v110[1] = 0xE000000000000000;
    sub_25F5E4954();

    strcpy(v110, "Message #");
    WORD1(v110[1]) = 0;
    HIDWORD(v110[1]) = -385875968;
    v108 = v53 + 1;
    v60 = sub_25F5E4B44();
    MEMORY[0x25F8E2BC0](v60);

    MEMORY[0x25F8E2BC0](0x7265646E65530A3ALL, 0xEA0000000000203ALL);
    v61 = v103;
    sub_25F573B94(v59, v103, &qword_27FD9E738, &qword_25F5EAA58);
    v62 = v61 + *(v56 + 48);
    v64 = *(v62 + 32);
    v63 = *(v62 + 40);

    sub_25F5C8DE0(v62);
    if (v63)
    {
      v65 = v64;
    }

    else
    {
      v65 = 6369134;
    }

    if (v63)
    {
      v66 = v63;
    }

    else
    {
      v66 = 0xE300000000000000;
    }

    MEMORY[0x25F8E2BC0](v65, v66);

    MEMORY[0x25F8E2BC0](0x203A79646F420ALL, 0xE700000000000000);
    v67 = v104;
    sub_25F573B94(v59, v104, &qword_27FD9E738, &qword_25F5EAA58);
    v68 = (v67 + *(v56 + 48));
    v69 = *v68;
    v70 = v68[1];

    sub_25F5C8DE0(v68);
    MEMORY[0x25F8E2BC0](v69, v70);

    v71 = v110[0];
    v72 = v110[1];
    result = sub_25F57C148(v59, &qword_27FD9E738, &qword_25F5EAA58);
    v109 = v51;
    v74 = *(v51 + 16);
    v73 = *(v51 + 24);
    if (v74 >= v73 >> 1)
    {
      result = sub_25F571230((v73 > 1), v74 + 1, 1);
      v51 = v109;
    }

    *(v51 + 16) = v74 + 1;
    v75 = v51 + 16 * v74;
    *(v75 + 32) = v71;
    *(v75 + 40) = v72;
    v53 = v55;
    v76 = v98 == v55;
    v23 = v106;
    if (v76)
    {
      v49 = v96;
      v48 = v97;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_25F5C9ED8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v2[10] = swift_task_alloc();
  v3 = sub_25F5E3774();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v2[14] = swift_task_alloc();
  v4 = sub_25F5E3794();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E780, &qword_25F5EAC58);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for ExtractedItem(0);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for SmsMessage(0);
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_25F5E37E4();
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v8 = sub_25F5E3804();
  v2[34] = v8;
  v2[35] = *(v8 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v9 = sub_25F5E3694();
  v2[45] = v9;
  v2[46] = *(v9 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5CA3E8, 0, 0);
}

uint64_t sub_25F5CA3E8()
{
  v260 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[9];
  v5 = objc_opt_self();
  v6 = [v5 currentCalendar];
  sub_25F5E37A4();

  v7 = *MEMORY[0x277CC9968];
  v8 = *(v2 + 104);
  (v8)(v1, *MEMORY[0x277CC9968], v3);
  if (__OFSUB__(0, *v4))
  {
    goto LABEL_97;
  }

  v236 = v8;
  v239 = v7;
  v242 = v5;
  v9 = v0[53];
  v11 = v0[45];
  v10 = v0[46];
  v12 = v0[44];
  v14 = v0[35];
  v13 = v0[36];
  v15 = v0[33];
  v16 = v0[32];
  v249 = v0[31];
  v254 = v0[34];
  sub_25F5E3684();
  sub_25F5E37B4();
  v220 = *(v10 + 8);
  v220(v9, v11);
  v17 = *(v16 + 8);
  v17(v15, v249);
  v18 = *(v14 + 8);
  v18(v13, v254);
  v19 = *(v10 + 48);
  if (v19(v12, 1, v11) == 1)
  {
    sub_25F57C148(v0[44], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5A31D0();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
LABEL_91:

    v218 = v0[1];

    return v218();
  }

  v231 = v18;
  v233 = v17;
  v21 = v0[45];
  v22 = v0[43];
  v23 = v0[9];
  v24 = *(v0[46] + 32);
  v24(v0[54], v0[44], v21);
  v8 = type metadata accessor for SmsExtractor(0);
  sub_25F573B94(v23 + *(v8 + 20), v22, &unk_27FD9E500, &unk_25F5EA410);
  if (v19(v22, 1, v21) == 1)
  {
    v25 = v0[45];
    v26 = v0[43];
    (*(v0[46] + 16))(v0[51], v0[54], v25);
    if (v19(v26, 1, v25) != 1)
    {
      sub_25F57C148(v0[43], &unk_27FD9E500, &unk_25F5EA410);
    }
  }

  else
  {
    v24(v0[51], v0[43], v0[45]);
  }

  sub_25F5C7830(&qword_27FD9E490, MEMORY[0x277CC9590]);
  if (sub_25F5E4384())
  {
    v24(v0[52], v0[51], v0[45]);
  }

  else
  {
    v27 = v0[54];
    v28 = v0[52];
    v30 = v0[45];
    v29 = v0[46];
    v220(v0[51], v30);
    (*(v29 + 16))(v28, v27, v30);
  }

  v31 = v0[9];
  v235 = *(v0[46] + 56);
  v235(v0[42], 1, 1, v0[45]);
  if (*(v31 + 16))
  {
    goto LABEL_12;
  }

  v228 = v24;
  v50 = *(v31 + 8);
  v51 = v0[33];
  v52 = v0[31];
  v53 = [v242 currentCalendar];
  sub_25F5E37A4();

  v236(v51, v239, v52);
  if (__OFSUB__(0, v50))
  {
    __break(1u);
    goto LABEL_100;
  }

  v225 = v50;
  v247 = v8;
  v54 = v0[53];
  v237 = v0[45];
  v56 = v0[41];
  v55 = v0[42];
  v244 = v0[40];
  v57 = v0[36];
  v58 = v0[33];
  v241 = v0[34];
  v59 = v0[31];
  sub_25F5E3684();
  sub_25F5E37B4();
  v220(v54, v237);
  v233(v58, v59);
  v231(v57, v241);
  sub_25F5D0B60(v56, v55);
  sub_25F573B94(v55, v244, &unk_27FD9E500, &unk_25F5EA410);
  if (v19(v244, 1, v237) == 1)
  {
    v60 = v0[54];
    v61 = v0[52];
    v62 = v0[45];
    v63 = v0[42];
    sub_25F57C148(v0[40], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5A31D0();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
    v220(v61, v62);
    v220(v60, v62);
    v65 = v63;
    goto LABEL_90;
  }

  v228(v0[50], v0[40], v0[45]);
  v8 = v247;
  if (sub_25F5E3634())
  {
    if (qword_27FD9D8B0 == -1)
    {
LABEL_22:
      v66 = v0[52];
      v68 = v0[49];
      v67 = v0[50];
      v69 = v0[48];
      v70 = v0[45];
      v71 = v0[46];
      v72 = sub_25F5E3FB4();
      __swift_project_value_buffer(v72, qword_27FD9EA20);
      v73 = *(v71 + 16);
      v73(v68, v67, v70);
      v73(v69, v66, v70);
      v74 = sub_25F5E3F94();
      v75 = sub_25F5E47B4();
      v76 = os_log_type_enabled(v74, v75);
      v78 = v0[48];
      v77 = v0[49];
      v79 = v0[45];
      if (v76)
      {
        v251 = v75;
        v80 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *&v257[0] = v255;
        *v80 = 136315650;
        sub_25F5C7830(&qword_27FD9E498, MEMORY[0x277CC95B8]);
        v81 = sub_25F5E4B44();
        v83 = v82;
        v84 = v220;
        v220(v77, v79);
        v85 = sub_25F570AF8(v81, v83, v257);

        *(v80 + 4) = v85;
        *(v80 + 12) = 2048;
        *(v80 + 14) = v225;
        *(v80 + 22) = 2080;
        v86 = sub_25F5E4B44();
        v88 = v87;
        v220(v78, v79);
        v89 = sub_25F570AF8(v86, v88, v257);

        *(v80 + 24) = v89;
        _os_log_impl(&dword_25F56A000, v74, v251, "End date '%s' derived from untilNDaysAgo '%ld' is earlier than start date '%s', abort.", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8E3B70](v255, -1, -1);
        MEMORY[0x25F8E3B70](v80, -1, -1);
      }

      else
      {

        v84 = v220;
        v220(v78, v79);
        v220(v77, v79);
      }

      v213 = v0[54];
      v214 = v0[52];
      v215 = v0[50];
      v216 = v0[45];
      v113 = v0[42];
      sub_25F5A31D0();
      swift_allocError();
      *v217 = 5;
      swift_willThrow();
      v84(v215, v216);
      v84(v214, v216);
      v84(v213, v216);
LABEL_89:
      v65 = v113;
LABEL_90:
      sub_25F57C148(v65, &unk_27FD9E500, &unk_25F5EA410);
      goto LABEL_91;
    }

LABEL_100:
    swift_once();
    goto LABEL_22;
  }

  v220(v0[50], v0[45]);
LABEL_12:
  v230 = v19;
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v32 = v0[52];
    v34 = v0[46];
    v33 = v0[47];
    v35 = v0[45];
    v36 = sub_25F5E3FB4();
    __swift_project_value_buffer(v36, qword_27FD9EA20);
    v250 = *(v34 + 16);
    v250(v33, v32, v35);
    v37 = sub_25F5E3F94();
    v38 = sub_25F5E47A4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[47];
    v41 = v0[45];
    if (v39)
    {
      v243 = v38;
      v246 = v8;
      v42 = v0[42];
      v43 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      *&v257[0] = v240;
      *v43 = 136315394;
      sub_25F5C7830(&qword_27FD9E498, MEMORY[0x277CC95B8]);
      v44 = sub_25F5E4B44();
      v46 = v45;
      v220(v40, v41);
      v47 = sub_25F570AF8(v44, v46, v257);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      swift_beginAccess();
      if ((v230)(v42, 1, v41))
      {
        v48 = 0xEB00000000657461;
        v49 = 0x6420646E65206F6ELL;
      }

      else
      {
        v90 = v0[53];
        v91 = v0[45];
        v250(v90, v0[42], v91);
        v92 = sub_25F5E3604();
        v48 = v93;
        v220(v90, v91);
        v49 = v92;
      }

      v8 = v246;
      v94 = sub_25F570AF8(v49, v48, v257);

      *(v43 + 14) = v94;
      _os_log_impl(&dword_25F56A000, v37, v243, "Query date start: %s, end: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8E3B70](v240, -1, -1);
      MEMORY[0x25F8E3B70](v43, -1, -1);
    }

    else
    {

      v220(v40, v41);
    }

    v95 = v0[52];
    v96 = v0[42];
    v97 = v0[39];
    v98 = v0[9];
    swift_beginAccess();
    sub_25F573B94(v96, v97, &unk_27FD9E500, &unk_25F5EA410);
    if (*(v98 + 64))
    {
      v99 = 0;
    }

    else
    {
      v99 = *(v98 + 56);
    }

    if (*(v98 + 48))
    {
      v100 = 0;
    }

    else
    {
      v100 = *(v98 + 40);
    }

    v101 = sub_25F5CBF24(v95, v97, *(v98 + 129) & 1, *(v98 + *(v8 + 24)), *(v98 + *(v8 + 24) + 8), v99, v100);
    sub_25F57C148(v97, &unk_27FD9E500, &unk_25F5EA410);
    v102 = v101[2];
    if (!v102)
    {
      v110 = v0[54];
      v111 = v0[52];
      v112 = v0[45];
      v113 = v0[42];

      sub_25F5A31D0();
      swift_allocError();
      *v114 = 5;
      swift_willThrow();
      v220(v111, v112);
      v220(v110, v112);
      goto LABEL_89;
    }

    v103 = *(v0[26] + 80);
    v104 = v101 + ((v103 + 32) & ~v103);
    sub_25F5C8D7C(v104, v0[28]);
    if (v102 != 1)
    {
      v115 = v0[26];
      v8 = 1;
      while (v8 < v101[2])
      {
        sub_25F5C8D7C(v104 + *(v115 + 72) * v8, v0[27]);
        if (sub_25F5E3634())
        {
          v117 = v0[27];
          v116 = v0[28];
          sub_25F5C8DE0(v116);
          sub_25F5D0AF8(v117, v116, type metadata accessor for SmsMessage);
        }

        else
        {
          sub_25F5C8DE0(v0[27]);
        }

        if (v102 == ++v8)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_96;
    }

LABEL_35:
    v106 = v0[29];
    v105 = v0[30];
    v107 = v0[25];
    v108 = v0[26];
    sub_25F5D0AF8(v0[28], v105, type metadata accessor for SmsMessage);
    (*(v108 + 56))(v105, 0, 1, v107);
    sub_25F573B94(v105, v106, &qword_27FD9E788, &qword_25F5EAC60);
    if ((*(v108 + 48))(v106, 1, v107) == 1)
    {
      sub_25F57C148(v0[29], &qword_27FD9E788, &qword_25F5EAC60);
      v109 = 1;
    }

    else
    {
      v118 = v0[29];
      v250(v0[38], v118 + *(v0[25] + 32), v0[45]);
      sub_25F5C8DE0(v118);
      v109 = 0;
    }

    v119 = v0[9];
    v235(v0[38], v109, 1, v0[45]);
    v120 = sub_25F5CCAF0(v101, *(v119 + 97), *(v119 + 104), *(v119 + 112), 0, 1, *(v119 + 98), *(v119 + 99));

    v121 = *(v120 + 2);
    if (v121)
    {
      v122 = 0;
      v8 = (v120 + 32);
      v123 = MEMORY[0x277D84F90];
      while (v122 < *(v120 + 2))
      {
        v124 = *(v8 + 16);
        v257[0] = *v8;
        v257[1] = v124;
        v258[0] = *(v8 + 32);
        *(v258 + 15) = *(v8 + 47);
        v125 = Dialogue.description.getter();
        v127 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_25F578544(0, *(v123 + 2) + 1, 1, v123);
        }

        v129 = *(v123 + 2);
        v128 = *(v123 + 3);
        if (v129 >= v128 >> 1)
        {
          v123 = sub_25F578544((v128 > 1), v129 + 1, 1, v123);
        }

        ++v122;
        *(v123 + 2) = v129 + 1;
        v130 = &v123[16 * v129];
        *(v130 + 4) = v125;
        *(v130 + 5) = v127;
        v8 += 56;
        if (v121 == v122)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v123 = MEMORY[0x277D84F90];
LABEL_55:
    v131 = v0[9];

    v8 = 0;
    v132 = *(v131 + 169);
    v133 = *(v131 + 184);
    v259 = *(v131 + 168) & 1;
    LOBYTE(v257[0]) = v132 & 1;
    if ((v132 & 1) != 0 && v133)
    {
      sub_25F5E4024();
      v8 = sub_25F5E4014();
    }

    v134 = v0[9];
    v234 = v259;
    v232 = v257[0];
    v135 = swift_task_alloc();
    *(v135 + 16) = v134;
    v136 = sub_25F5C8398(sub_25F5D0AD8, v135, v123);

    v230 = *(v136 + 16);
    if (!v230)
    {
      break;
    }

    v137 = 0;
    v224 = (v0[16] + 8);
    v226 = (v0[12] + 8);
    v138 = v0[21];
    v256 = v0[20];
    v219 = v138;
    v222 = (v138 + 48);
    v223 = (v138 + 56);
    v139 = MEMORY[0x277D84F90];
    v140 = (v136 + 40);
    v221 = v0[9];
    v227 = v136;
    v229 = v8;
    while (v137 < *(v136 + 16))
    {
      v142 = v0[18];
      v143 = *(v140 - 1);
      v144 = *v140;
      v145 = sub_25F5E36D4();
      (*(*(v145 - 8) + 56))(v142, 1, 1, v145);
      v146 = *(v221 + 32);
      LOBYTE(v257[0]) = v234;
      BYTE1(v257[0]) = v232;
      *(&v257[0] + 1) = v8;

      v148 = sub_25F5D49F4(v143, v144, v257);
      v149 = v147;
      v248 = v137;
      v252 = v139;
      v245 = v140;
      if (v146 >= 1)
      {
        v150 = sub_25F5C78D8(v146, v148, v147);
        v152 = v151;
        v154 = v153;
        v156 = v155;

        v148 = MEMORY[0x25F8E2B40](v150, v152, v154, v156);
        v149 = v157;
      }

      v158 = v0[37];
      v159 = v0[23];
      v160 = v0[18];
      v162 = v0[13];
      v161 = v0[14];
      v238 = v0[11];
      v235(v158, 1, 1, v0[45]);
      *(v159 + v256[6]) = 0;
      sub_25F5E3754();
      sub_25F573B94(v160, v159, &qword_27FD9DE10, &unk_25F5E7240);
      v163 = (v159 + v256[5]);
      *v163 = v148;
      v163[1] = v149;
      sub_25F573B94(v158, v159 + v256[7], &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5E3784();
      sub_25F5E3764();
      (*v226)(v162, v238);
      v164 = sub_25F5E3704();
      v165 = *(v164 - 8);
      v166 = (*(v165 + 48))(v161, 1, v164);
      v167 = v0[14];
      if (v166 == 1)
      {
        sub_25F57C148(v0[14], &qword_27FD9DE08, &unk_25F5E7230);
        v168 = 0;
        v169 = 0;
      }

      else
      {
        v168 = sub_25F5E36F4();
        v169 = v170;
        (*(v165 + 8))(v167, v164);
      }

      v171 = v0[10];
      v172 = (v0[23] + v256[8]);
      *v172 = v168;
      v172[1] = v169;
      sub_25F5E3744();
      v173 = sub_25F5E3734();
      v174 = *(v173 - 8);
      v175 = (*(v174 + 48))(v171, 1, v173);
      v176 = v0[37];
      v177 = v0[17];
      v178 = v0[18];
      v179 = v0[15];
      v180 = v0[10];
      if (v175 == 1)
      {
        (*v224)(v0[17], v0[15]);
        sub_25F57C148(v176, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v178, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v180, &qword_27FD9DE00, &unk_25F5E9D40);
        v181 = 0;
        v182 = 0;
      }

      else
      {
        v181 = sub_25F5E36F4();
        v182 = v183;
        (*v224)(v177, v179);
        sub_25F57C148(v176, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v178, &qword_27FD9DE10, &unk_25F5E7240);
        (*(v174 + 8))(v180, v173);
      }

      v184 = v0[23];
      v185 = v0[19];
      v186 = v0[20];
      v187 = v256[10];
      v188 = (v184 + v256[9]);
      *v188 = v181;
      v188[1] = v182;
      *(v184 + v187) = MEMORY[0x277D84F98];
      sub_25F5D0AF8(v184, v185, type metadata accessor for ExtractedItem);
      (*v223)(v185, 0, 1, v186);

      v8 = v229;
      if ((*v222)(v185, 1, v186) == 1)
      {
        sub_25F57C148(v0[19], &qword_27FD9E780, &qword_25F5EAC58);
        v141 = v248;
        v139 = v252;
        v136 = v227;
      }

      else
      {
        v189 = v0[24];
        v190 = v0[22];
        sub_25F5D0AF8(v0[19], v189, type metadata accessor for ExtractedItem);
        sub_25F5D0AF8(v189, v190, type metadata accessor for ExtractedItem);
        v139 = v252;
        v136 = v227;
        v141 = v248;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_25F57851C(0, v252[2] + 1, 1, v252);
        }

        v192 = v139[2];
        v191 = v139[3];
        if (v192 >= v191 >> 1)
        {
          v139 = sub_25F57851C((v191 > 1), v192 + 1, 1, v139);
        }

        v193 = v0[22];
        v139[2] = v192 + 1;
        sub_25F5D0AF8(v193, v139 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v192, type metadata accessor for ExtractedItem);
      }

      v137 = v141 + 1;
      v140 = v245 + 2;
      if (v230 == v137)
      {
        goto LABEL_78;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  v139 = MEMORY[0x277D84F90];
LABEL_78:
  v194 = v0[9];

  if (*(v194 + 80))
  {
    v253 = v139;
    goto LABEL_84;
  }

  v195 = v0[9];
  v196 = sub_25F5C7AF4();

  if ((*(v195 + 96) & 1) == 0 && *(v196 + 16) < *(v0[9] + 88))
  {
    v197 = v0[54];
    v198 = v0[52];
    v199 = v0[45];
    v200 = v0[42];
    v201 = v0[38];
    v202 = v0[30];

    sub_25F5A31D0();
    swift_allocError();
    *v203 = 7;
    swift_willThrow();

    sub_25F57C148(v201, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v202, &qword_27FD9E788, &qword_25F5EAC60);
    v220(v198, v199);
    v220(v197, v199);
    v65 = v200;
    goto LABEL_90;
  }

  v253 = v196;
LABEL_84:
  v204 = v0[54];
  v205 = v0[52];
  v206 = v0[45];
  v207 = v0[42];
  v208 = v0[38];
  v209 = v0[30];
  v210 = v0[8];

  sub_25F57C148(v209, &qword_27FD9E788, &qword_25F5EAC60);
  v220(v205, v206);
  v220(v204, v206);
  sub_25F57B86C(v208, v210, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F57C148(v207, &unk_27FD9E500, &unk_25F5EA410);

  v211 = v0[1];

  return v211(v253);
}

void *sub_25F5CBF24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v93 = (&v89 - v13);
  v97 = type metadata accessor for SmsMessage(0);
  v92 = *(v97 - 8);
  v15 = MEMORY[0x28223BE20](v97, v14);
  v96 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v90 = &v89 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v100 = *(v107 - 8);
  v20 = MEMORY[0x28223BE20](v107, v19);
  v98 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v103 = (&v89 - v24);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v102 = (&v89 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v91 = &v89 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v101 = &v89 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v89 - v35;
  sub_25F573B94(a2, &v89 - v35, &unk_27FD9E500, &unk_25F5EA410);
  v37 = sub_25F5E3624();
  v38 = sub_25F5E3694();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  v108 = v38;
  v41 = 0;
  if (v40(v36, 1) != 1)
  {
    v41 = sub_25F5E3624();
    (*(v39 + 8))(v36, v108);
  }

  v104 = v39;
  v42 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v37 endDate:v41 maxEvents:a6 lastN:a7 reversed:0];
  v106 = v42;

  v43 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v44 = [v43 Intent];
  swift_unknownObjectRelease();
  v45 = sub_25F5E43C4();
  v105 = v44;
  v46 = [v44 publisherWithUseCase:v45 options:v42];

  v47 = [v44 identifier];
  v48 = sub_25F5E43F4();
  v50 = v49;

  v51 = swift_allocObject();
  *(v51 + 16) = MEMORY[0x277D84F90];
  v52 = swift_allocObject();
  *(v52 + 16) = a3 & 1;
  v115 = sub_25F5D10B4;
  v116 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_25F5CE0D4;
  v114 = &block_descriptor_1;
  v53 = _Block_copy(&aBlock);

  v54 = [v46 filterWithIsIncluded_];
  _Block_release(v53);
  v55 = swift_allocObject();
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  v115 = sub_25F5D110C;
  v116 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_25F5D127C;
  v114 = &block_descriptor_31;
  v56 = _Block_copy(&aBlock);

  v57 = swift_allocObject();
  v57[2] = v51;
  v57[3] = v48;
  v57[4] = v50;
  v115 = sub_25F5D1154;
  v116 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v112 = 1107296256;
  v113 = sub_25F5D127C;
  v114 = &block_descriptor_37;
  v58 = _Block_copy(&aBlock);

  v59 = [v54 sinkWithCompletion:v56 receiveInput:v58];

  _Block_release(v58);
  _Block_release(v56);

  swift_beginAccess();
  v60 = *(v51 + 16);

  v61 = *(v60 + 16);
  if (!v61)
  {

    return MEMORY[0x277D84F90];
  }

  v62 = 0;
  v99 = v102 + 1;
  v94 = v103 + 1;
  v106 = (v104 + 8);
  v104 = MEMORY[0x277D84F90];
  v63 = v101;
  v95 = v61;
  do
  {
    if (v62 >= *(v60 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);

      sub_25F57C148(v48, &qword_27FD9DDA0, &qword_25F5EAA10);

      __break(1u);
      return result;
    }

    v105 = ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v109 = *(v100 + 72);
    sub_25F573B94(&v105[v60 + v109 * v62], v63, &qword_27FD9DDA0, &qword_25F5EAA10);
    v64 = v102;
    sub_25F573B94(v63, v102, &qword_27FD9DDA0, &qword_25F5EAA10);
    v65 = *v64;
    v48 = *(v107 + 48);

    v66 = [v65 outgoingMessageType];

    v67 = *v106;
    (*v106)(v64 + v48, v108);
    v68 = v66 == 2;
    v63 = v101;
    v69 = v103;
    if (v68)
    {
      goto LABEL_6;
    }

    v70 = v60;
    sub_25F573B94(v101, v103, &qword_27FD9DDA0, &qword_25F5EAA10);
    v71 = v63;
    v72 = *v69;
    v48 = *(v107 + 48);

    v73 = [v72 content];

    if (!v73)
    {
      v67(v69 + v48, v108);
      v63 = v71;
      v60 = v70;
      v61 = v95;
LABEL_6:
      sub_25F57C148(v63, &qword_27FD9DDA0, &qword_25F5EAA10);
      goto LABEL_7;
    }

    v67(v69 + v48, v108);
    sub_25F57B86C(v71, v98, &qword_27FD9DDA0, &qword_25F5EAA10);
    v74 = v104;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v74;
    v63 = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F5712D0(0, *(v74 + 16) + 1, 1);
      v74 = v110;
    }

    v60 = v70;
    v48 = *(v74 + 16);
    v76 = *(v74 + 24);
    v61 = v95;
    if (v48 >= v76 >> 1)
    {
      sub_25F5712D0((v76 > 1), v48 + 1, 1);
      v74 = v110;
    }

    *(v74 + 16) = v48 + 1;
    v104 = v74;
    sub_25F57B86C(v98, &v105[v74 + v48 * v109], &qword_27FD9DDA0, &qword_25F5EAA10);
LABEL_7:
    ++v62;
  }

  while (v61 != v62);

  v77 = *(v104 + 16);
  if (v77)
  {
    v78 = 0;
    v62 = 0;
    v79 = (v92 + 48);
    v80 = v104;
    v81 = &v105[v104];
    v82 = MEMORY[0x277D84F90];
    v83 = v93;
    v48 = v91;
    while (v78 < *(v80 + 16))
    {
      sub_25F573B94(v81, v48, &qword_27FD9DDA0, &qword_25F5EAA10);
      sub_25F5CD858(v48, v83);
      sub_25F57C148(v48, &qword_27FD9DDA0, &qword_25F5EAA10);
      if ((*v79)(v83, 1, v97) == 1)
      {
        sub_25F57C148(v83, &qword_27FD9E788, &qword_25F5EAC60);
      }

      else
      {
        v84 = v83;
        v85 = v90;
        sub_25F5D0AF8(v84, v90, type metadata accessor for SmsMessage);
        sub_25F5D0AF8(v85, v96, type metadata accessor for SmsMessage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_25F5789D0(0, v82[2] + 1, 1, v82);
        }

        v87 = v82[2];
        v86 = v82[3];
        if (v87 >= v86 >> 1)
        {
          v82 = sub_25F5789D0((v86 > 1), v87 + 1, 1, v82);
        }

        v82[2] = v87 + 1;
        sub_25F5D0AF8(v96, v82 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v87, type metadata accessor for SmsMessage);
        v83 = v93;
        v48 = v91;
      }

      ++v78;
      v81 += v109;
      v80 = v104;
      if (v77 == v78)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_32;
  }

  v82 = MEMORY[0x277D84F90];
LABEL_29:

  return v82;
}

char *sub_25F5CCAF0(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v129 = a7;
  v130 = a8;
  v131 = a6;
  v128 = a5;
  v133 = a4;
  v132 = a3;
  v10 = a2;
  v125 = type metadata accessor for SmsMessage(0);
  isUniquelyReferenced_nonNull_native = *(v125 - 8);
  v13 = MEMORY[0x28223BE20](v125, v12);
  v127 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v119 - v16;
  if (v10 == 2 || (a2 & 1) != 0)
  {
    if (qword_27FD9D8B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_69;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v39 = sub_25F5E3FB4();
  __swift_project_value_buffer(v39, qword_27FD9EA20);
  v40 = sub_25F5E3F94();
  v41 = sub_25F5E47A4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_25F56A000, v40, v41, "Grouping SMS messages into dialogues.", v42, 2u);
    MEMORY[0x25F8E3B70](v42, -1, -1);
  }

  v43 = sub_25F5726A4(MEMORY[0x277D84F90]);
  if (*(a1 + 16))
  {
    v44 = *(a1 + 16);
    v45 = *(isUniquelyReferenced_nonNull_native + 80);
    v123 = (v45 + 32) & ~v45;
    v124 = v45;
    v46 = a1 + v123;
    v134 = *(isUniquelyReferenced_nonNull_native + 72);
    v47 = v132;
    if (v133)
    {
      v47 = 1;
    }

    v122 = v47;
    v121 = xmmword_25F5E5EE0;
    isUniquelyReferenced_nonNull_native = v44;
    v120 = v17;
    while (1)
    {
      sub_25F5C8D7C(v46, v17);
      v53 = &v17[*(v125 + 36)];
      v54 = *v53;
      v55 = v53[1];
      if (*(v43 + 16))
      {
        v56 = sub_25F5709C8(v54, v55);
        if (v57)
        {
          break;
        }
      }

      v126 = v46;
      v74 = isUniquelyReferenced_nonNull_native;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD88, &unk_25F5EAA00);
      v75 = v123;
      v76 = swift_allocObject();
      *(v76 + 16) = v121;
      sub_25F5C8D7C(v17, v76 + v75);

      v127 = sub_25F5C8E54(v122, v76);
      v77 = v133 & 1;
      LOBYTE(v135[0]) = v133 & 1;
      v78 = v131 & 1;
      LOBYTE(v137) = v131 & 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v140 = v43;
      a1 = v54;
      v79 = v54;
      v80 = v55;
      v81 = sub_25F5709C8(v79, v55);
      v83 = *(v43 + 16);
      v84 = (v82 & 1) == 0;
      v70 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v70)
      {
        goto LABEL_65;
      }

      v86 = v82;
      if (*(v43 + 24) >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v97 = v81;
          sub_25F57B3BC();
          v81 = v97;
        }
      }

      else
      {
        sub_25F57A024(v85, isUniquelyReferenced_nonNull_native);
        v81 = sub_25F5709C8(a1, v80);
        if ((v86 & 1) != (v87 & 1))
        {
LABEL_70:
          result = sub_25F5E4BC4();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v74;
      v46 = v126;
      if (v86)
      {
        v43 = v140;
        v48 = *(v140 + 56) + 56 * v81;
        v50 = *(v48 + 16);
        v49 = *(v48 + 32);
        v51 = *v48;
        *(v145 + 15) = *(v48 + 47);
        v144 = v50;
        v145[0] = v49;
        v143 = v51;
        *v48 = a1;
        *(v48 + 8) = v80;
        v52 = v132;
        *(v48 + 16) = v127;
        *(v48 + 24) = v52;
        *(v48 + 32) = v77;
        *(v48 + 33) = v138[0];
        *(v48 + 36) = *(v138 + 3);
        *(v48 + 40) = v128;
        *(v48 + 48) = v78;
        LOBYTE(v52) = v130;
        *(v48 + 49) = v129;
        *(v48 + 50) = v52;
        sub_25F5D0BD0(&v143);
      }

      else
      {
        v43 = v140;
        *(v140 + 8 * (v81 >> 6) + 64) |= 1 << v81;
        v88 = (*(v43 + 48) + 16 * v81);
        *v88 = a1;
        v88[1] = v80;
        v89 = *(v43 + 56) + 56 * v81;
        *v89 = a1;
        *(v89 + 8) = v80;
        v90 = v132;
        *(v89 + 16) = v127;
        *(v89 + 24) = v90;
        *(v89 + 32) = v77;
        *(v89 + 33) = v138[0];
        *(v89 + 36) = *(v138 + 3);
        *(v89 + 40) = v128;
        *(v89 + 48) = v78;
        LOBYTE(v90) = v130;
        *(v89 + 49) = v129;
        *(v89 + 50) = v90;
        v91 = *(v43 + 16);
        v70 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v70)
        {
          goto LABEL_66;
        }

        *(v43 + 16) = v92;
      }

      v17 = v120;
LABEL_27:
      sub_25F5C8DE0(v17);
      v46 += v134;
      if (!--isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_49;
      }
    }

    v58 = *(v43 + 56) + 56 * v56;
    v60 = *(v58 + 16);
    v59 = *(v58 + 32);
    v61 = *v58;
    *(v139 + 15) = *(v58 + 47);
    v138[1] = v60;
    v139[0] = v59;
    v138[0] = v61;
    v143 = *v58;
    v144 = *(v58 + 16);
    v145[0] = *(v58 + 32);
    *(v145 + 15) = *(v58 + 47);
    sub_25F57C030(v138, &v140);
    sub_25F5C90EC(v17);
    v140 = v143;
    v141 = v144;
    v142[0] = v145[0];
    *(v142 + 15) = *(v145 + 15);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v55;
    v64 = v62;
    v137 = v43;
    v65 = v54;
    a1 = v63;
    v66 = sub_25F5709C8(v54, v63);
    v68 = *(v43 + 16);
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_67;
    }

    v72 = v67;
    if (*(v43 + 24) >= v71)
    {
      if ((v64 & 1) == 0)
      {
        v98 = v66;
        sub_25F57B3BC();
        v66 = v98;
        if (v72)
        {
LABEL_45:
          v43 = v137;
          v93 = *(v137 + 56) + 56 * v66;
          v95 = *(v93 + 16);
          v94 = *(v93 + 32);
          v96 = *v93;
          *&v136[15] = *(v93 + 47);
          v135[1] = v95;
          *v136 = v94;
          v135[0] = v96;
          *v93 = v140;
          *(v93 + 16) = v141;
          *(v93 + 32) = v142[0];
          *(v93 + 47) = *(v142 + 15);
          sub_25F5D0BD0(v135);
          goto LABEL_27;
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_25F57A024(v71, v64);
      v66 = sub_25F5709C8(v65, a1);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_70;
      }
    }

    if (v72)
    {
      goto LABEL_45;
    }

LABEL_47:
    v43 = v137;
    *(v137 + 8 * (v66 >> 6) + 64) |= 1 << v66;
    v99 = (*(v43 + 48) + 16 * v66);
    *v99 = v65;
    v99[1] = a1;
    v100 = *(v43 + 56) + 56 * v66;
    *v100 = v140;
    *(v100 + 16) = v141;
    *(v100 + 32) = v142[0];
    *(v100 + 47) = *(v142 + 15);
    v101 = *(v43 + 16);
    v70 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v70)
    {
      goto LABEL_68;
    }

    *(v43 + 16) = v102;

    goto LABEL_27;
  }

LABEL_49:
  a1 = v43 + 64;
  v103 = 1 << *(v43 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  isUniquelyReferenced_nonNull_native = v104 & *(v43 + 64);
  v105 = (v103 + 63) >> 6;

  v106 = 0;
  v26 = MEMORY[0x277D84F90];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v107 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v107 >= v105)
    {

      return v26;
    }

    isUniquelyReferenced_nonNull_native = *(a1 + 8 * v107);
    ++v106;
    if (isUniquelyReferenced_nonNull_native)
    {
      v106 = v107;
      do
      {
LABEL_56:
        v108 = *(v43 + 56) + 56 * (__clz(__rbit64(isUniquelyReferenced_nonNull_native)) | (v106 << 6));
        v110 = *(v108 + 16);
        v109 = *(v108 + 32);
        v111 = *v108;
        *(v145 + 15) = *(v108 + 47);
        v144 = v110;
        v145[0] = v109;
        v143 = v111;
        sub_25F57C030(&v143, &v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_25F578BD4(0, *(v26 + 2) + 1, 1, v26);
        }

        v113 = *(v26 + 2);
        v112 = *(v26 + 3);
        if (v113 >= v112 >> 1)
        {
          v26 = sub_25F578BD4((v112 > 1), v113 + 1, 1, v26);
        }

        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        *(v26 + 2) = v113 + 1;
        v114 = &v26[56 * v113];
        v115 = v143;
        v116 = v144;
        v117 = v145[0];
        *(v114 + 79) = *(v145 + 15);
        *(v114 + 3) = v116;
        *(v114 + 4) = v117;
        *(v114 + 2) = v115;
      }

      while (isUniquelyReferenced_nonNull_native);
    }
  }

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
  swift_once();
LABEL_4:
  v18 = sub_25F5E3FB4();
  __swift_project_value_buffer(v18, qword_27FD9EA20);
  v19 = sub_25F5E3F94();
  v20 = sub_25F5E47A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25F56A000, v19, v20, "Convert single SMS messages into dialogues.", v21, 2u);
    MEMORY[0x25F8E3B70](v21, -1, -1);
  }

  v22 = *(a1 + 16);
  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v126 = (v127 + *(v125 + 36));
  v23 = *(isUniquelyReferenced_nonNull_native + 80);
  v124 = (v23 + 32) & ~v23;
  v125 = v23;
  v24 = a1 + v124;
  v25 = *(isUniquelyReferenced_nonNull_native + 72);
  v26 = MEMORY[0x277D84F90];
  v27 = v132;
  if (v133)
  {
    v27 = 1;
  }

  v122 = v27;
  v121 = xmmword_25F5E5EE0;
  v123 = v25;
  do
  {
    v28 = v127;
    sub_25F5C8D7C(v24, v127);
    v29 = v126[1];
    v134 = *v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD88, &unk_25F5EAA00);
    v30 = v124;
    v31 = swift_allocObject();
    *(v31 + 16) = v121;
    sub_25F5C8D7C(v28, v31 + v30);

    v32 = sub_25F5C8E54(v122, v31);
    sub_25F5C8DE0(v28);
    v33 = v133 & 1;
    LOBYTE(v140) = v133 & 1;
    v34 = v131 & 1;
    LOBYTE(v138[0]) = v131 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_25F578BD4(0, *(v26 + 2) + 1, 1, v26);
    }

    v36 = *(v26 + 2);
    v35 = *(v26 + 3);
    if (v36 >= v35 >> 1)
    {
      v26 = sub_25F578BD4((v35 > 1), v36 + 1, 1, v26);
    }

    *(v26 + 2) = v36 + 1;
    v37 = &v26[56 * v36];
    *(v37 + 4) = v134;
    *(v37 + 5) = v29;
    v38 = v132;
    *(v37 + 6) = v32;
    *(v37 + 7) = v38;
    v37[64] = v33;
    LODWORD(v38) = *(&v143 + 3);
    *(v37 + 65) = v143;
    *(v37 + 17) = v38;
    *(v37 + 9) = v128;
    v37[80] = v34;
    LOBYTE(v38) = v130;
    v37[81] = v129;
    v37[82] = v38;
    v24 += v123;
    --v22;
  }

  while (v22);
  return v26;
}

BOOL sub_25F5CD548(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E790, &qword_25F5EAC68);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E518, &qword_25F5EA4B8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a2[3];
  if (a2[20])
  {

    sub_25F5E3C04();
    if (v2)
    {

      (*(v10 + 56))(v8, 1, 1, v9);
      sub_25F57C148(v8, &qword_27FD9E790, &qword_25F5EAC68);
    }

    else
    {
      (*(v10 + 56))(v8, 0, 1, v9);
      (*(v10 + 32))(v13, v8, v9);
      v19[0] = v14;
      v19[1] = v15;
      sub_25F5C0EB0();
      sub_25F5AB824(&qword_27FD9E528, &qword_27FD9E518, &qword_25F5EA4B8, MEMORY[0x277D85AC0]);
      v17 = sub_25F5E4354();
      (*(v10 + 8))(v13, v9);
      result = 0;
      if (v17)
      {
        return result;
      }
    }
  }

  return sub_25F5E44C4() >= v16;
}

uint64_t sub_25F5CD7C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5C9ED8(a1);
}

void sub_25F5CD858(void (*a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v87 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5, v7);
  v86 = (&v75 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v84 = &v75 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = (&v75 - v15);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = (&v75 - v19);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (&v75 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v27 = (&v75 - v26);
  sub_25F573B94(a1, &v75 - v26, &qword_27FD9DDA0, &qword_25F5EAA10);
  v28 = *v27;
  v85 = v27;

  v29 = [v28 content];

  if (v29)
  {
    v30 = sub_25F5E43F4();
    v82 = v31;
    v83 = v30;

    sub_25F573B94(a1, v24, &qword_27FD9DDA0, &qword_25F5EAA10);
    v32 = *v24;
    v33 = *(v3 + 48);

    v34 = [v32 sender];

    if (v34)
    {
      v35 = [v34 displayName];

      v36 = sub_25F5E43F4();
      v80 = v37;
      v81 = v36;

      v38 = sub_25F5E3694();
      (*(*(v38 - 8) + 8))(v24 + v33, v38);
    }

    else
    {
      v39 = sub_25F5E3694();
      v78 = *(*(v39 - 8) + 8);
      v79 = v39;
      v78(v24 + v33);
      sub_25F573B94(a1, v20, &qword_27FD9DDA0, &qword_25F5EAA10);
      v40 = *v20;
      v41 = *(v3 + 48);

      v42 = [v40 0x279A854F8];

      if (v42 && (v43 = [v42 contactIdentifier], v42, v43))
      {
        v44 = sub_25F5E43F4();
        v80 = v45;
        v81 = v44;

        (v78)(v20 + v41, v79);
      }

      else
      {
        v46 = v20 + v41;
        v47 = v78;
        v48 = v79;
        (v78)(v46, v79);
        v77 = a1;
        sub_25F573B94(a1, v16, &qword_27FD9DDA0, &qword_25F5EAA10);
        v49 = *v16;
        v50 = *(v3 + 48);

        v51 = [v49 sender];

        if (v51)
        {
          v52 = [v51 customIdentifier];

          if (v52)
          {
            v53 = sub_25F5E43F4();
            v80 = v54;
            v81 = v53;
          }

          else
          {
            v80 = 0;
            v81 = 0;
          }

          (v78)(v16 + v50, v79);
        }

        else
        {
          v47(v16 + v50, v48);
          v80 = 0;
          v81 = 0;
        }

        a1 = v77;
      }
    }

    v55 = v84;
    sub_25F573B94(a1, v84, &qword_27FD9DDA0, &qword_25F5EAA10);
    v56 = *v55;

    v57 = [v56 sender];

    if (v57)
    {
      LODWORD(v79) = [v57 isMe];
    }

    else
    {
      LODWORD(v79) = 0;
    }

    v58 = *(v3 + 48);
    v78 = v58;
    v59 = sub_25F5E3694();
    v60 = *(v59 - 8);
    v77 = *(v60 + 8);
    v77(v58 + v55, v59);
    v61 = a1;
    v62 = a1;
    v63 = v86;
    sub_25F573B94(v61, v86, &qword_27FD9DDA0, &qword_25F5EAA10);

    v84 = *(v3 + 48);

    v64 = v62;
    v65 = v87;
    sub_25F573B94(v64, v87, &qword_27FD9DDA0, &qword_25F5EAA10);

    v76 = *(v3 + 48);
    v66 = (v65 + *(v3 + 64));
    v67 = *v66;
    v68 = v66[1];
    v69 = v88;
    v70 = v82;
    *v88 = v83;
    v69[1] = v70;
    v69[2] = 0;
    v69[3] = 0;
    v71 = v80;
    v69[4] = v81;
    v69[5] = v71;
    *(v69 + 48) = v79;
    v72 = type metadata accessor for SmsMessage(0);
    (*(v60 + 32))(v69 + *(v72 + 32), v63 + v84, v59);
    v73 = (v69 + *(v72 + 36));
    *v73 = v67;
    v73[1] = v68;
    v74 = v77;
    v77(v65 + v76, v59);
    v74(v78 + v85, v59);
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25F5CDEFC(void *a1, char a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 intentClass];

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = sub_25F5E43F4();
  v9 = v8;

  if (v7 == 0xD000000000000013 && 0x800000025F5ECAD0 == v9)
  {
  }

  else
  {
    v11 = sub_25F5E4B84();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 bundleID];

  if (v14)
  {
    v15 = sub_25F5E43F4();
    v17 = v16;

    if (v15 == 0xD000000000000013 && 0x800000025F5ECAF0 == v17)
    {

      if ((a2 & 1) == 0)
      {
        LOBYTE(v14) = 1;
        return v14 & 1;
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = sub_25F5E4B84();

    if (v14 & 1) != 0 && (a2)
    {
LABEL_18:
      v18 = [a1 eventBody];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 interactionDirection];

        LOBYTE(v14) = v20 == 2;
        return v14 & 1;
      }

LABEL_20:
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_25F5CE0D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_25F5CE12C(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 state])
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = sub_25F5E3FB4();
    __swift_project_value_buffer(v6, qword_27FD9EA20);

    v7 = a1;
    oslog = sub_25F5E3F94();
    v8 = sub_25F5E47B4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_25F570AF8(a2, a3, &v17);
      *(v9 + 12) = 2080;
      [v7 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A0, &qword_25F5EAC70);
      v11 = sub_25F5E4454();
      v13 = sub_25F570AF8(v11, v12, &v17);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_25F56A000, oslog, v8, "Failed to read events from biome stream %s, error %s", v9, 0x16u);
      swift_arrayDestroy();
LABEL_10:
      MEMORY[0x25F8E3B70](v10, -1, -1);
      MEMORY[0x25F8E3B70](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v14 = sub_25F5E3FB4();
    __swift_project_value_buffer(v14, qword_27FD9EA20);

    oslog = sub_25F5E3F94();
    v15 = sub_25F5E47A4();

    if (os_log_type_enabled(oslog, v15))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_25F570AF8(a2, a3, &v17);
      _os_log_impl(&dword_25F56A000, oslog, v15, "Read events from biome stream %s successfully.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      goto LABEL_10;
    }
  }
}

void sub_25F5CE418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v63 - v11);
  v13 = sub_25F5E3694();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 eventBody];
  if (!v18)
  {
    return;
  }

  v73 = v18;
  v19 = [v18 interaction];
  if (v19)
  {
    v69 = a3;
    v70 = a4;
    v20 = v19;
    v21 = sub_25F5E35E4();
    v23 = v22;

    v24 = [v73 absoluteTimestamp];
    if (v24)
    {
      v71 = v23;
      v72 = v21;
      v25 = v24;
      sub_25F5E3674();

      v26 = [v73 groupIdentifier];
      if (!v26)
      {
        (*(v14 + 8))(v17, v13);

        sub_25F571820(v72, v71);
        return;
      }

      v66 = v9;
      v67 = v13;
      v68 = v14;
      v27 = v26;
      v28 = sub_25F5E43F4();
      v30 = v29;

      v31 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v33 = v71;
      v32 = v72;
      sub_25F5717CC(v72, v71);
      v34 = sub_25F5D1160();
      v63 = a2;
      v64 = v30;
      v36 = v34;
      sub_25F571820(v32, v33);
      sub_25F5D1220();
      sub_25F5E43F4();
      v65 = v36;
      v37 = sub_25F5E47C4();

      if (v37)
      {
        v38 = [v37 intent];
        v39 = v67;
        v40 = v68;
        v41 = v70;
        v42 = v64;
        if (v38)
        {
          v43 = v38;
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = *(v8 + 48);
            v46 = (v12 + *(v8 + 64));
            *v12 = v44;
            (*(v40 + 16))(v12 + v45, v17, v39);
            *v46 = v28;
            v46[1] = v42;
            v47 = v63;
            swift_beginAccess();
            v48 = *(v47 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v47 + 16) = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v48 = sub_25F578CF8(0, v48[2] + 1, 1, v48);
              *(v47 + 16) = v48;
            }

            v50 = v66;
            v52 = v48[2];
            v51 = v48[3];
            if (v52 >= v51 >> 1)
            {
              v48 = sub_25F578CF8((v51 > 1), v52 + 1, 1, v48);
            }

            v48[2] = v52 + 1;
            sub_25F57B86C(v12, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52, &qword_27FD9DDA0, &qword_25F5EAA10);
            *(v47 + 16) = v48;
            swift_endAccess();

            sub_25F571820(v72, v71);
            (*(v68 + 8))(v17, v39);
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        v39 = v67;
        v40 = v68;
        v41 = v70;
      }

      v53 = v71;
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v54 = sub_25F5E3FB4();
      __swift_project_value_buffer(v54, qword_27FD9EA20);

      v55 = sub_25F5E3F94();
      v56 = sub_25F5E47B4();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v37;
        v58 = v40;
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v41;
        v62 = v60;
        v74[0] = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_25F570AF8(v69, v61, v74);
        _os_log_impl(&dword_25F56A000, v55, v56, "Interaction intent read from biome stream %s is not of INSendMessageIntent type, message will be discarded.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        MEMORY[0x25F8E3B70](v62, -1, -1);
        MEMORY[0x25F8E3B70](v59, -1, -1);

        sub_25F571820(v72, v53);
        (*(v58 + 8))(v17, v39);
      }

      else
      {

        sub_25F571820(v72, v53);
        (*(v40 + 8))(v17, v39);
      }
    }

    else
    {

      sub_25F571820(v21, v23);
    }
  }

  else
  {
    v35 = v73;
  }
}

void sub_25F5CEC68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_25F5CECD0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25F5E4C34();
  sub_25F5E4334();
  v8 = sub_25F5E4C54();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25F5E4B84() & 1) != 0)
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

    sub_25F5CF430(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F5CEE20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25F5E4C34();
  sub_25F5E4334();
  v8 = sub_25F5E4C54();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25F5E4B84() & 1) != 0)
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

    sub_25F5CF5B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F5CEF70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  result = sub_25F5E4914();
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
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
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

uint64_t sub_25F5CF1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  result = sub_25F5E4914();
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
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
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

uint64_t sub_25F5CF430(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25F5CEF70(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F5CF730();
      goto LABEL_16;
    }

    sub_25F5CF9E8(v8 + 1);
  }

  v10 = *v4;
  sub_25F5E4C34();
  sub_25F5E4334();
  result = sub_25F5E4C54();
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

      result = sub_25F5E4B84();
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
  result = sub_25F5E4BB4();
  __break(1u);
  return result;
}

uint64_t sub_25F5CF5B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25F5CF1D0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F5CF88C();
      goto LABEL_16;
    }

    sub_25F5CFC20(v8 + 1);
  }

  v10 = *v4;
  sub_25F5E4C34();
  sub_25F5E4334();
  result = sub_25F5E4C54();
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

      result = sub_25F5E4B84();
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
  result = sub_25F5E4BB4();
  __break(1u);
  return result;
}

void *sub_25F5CF730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  v2 = *v0;
  v3 = sub_25F5E4904();
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

void *sub_25F5CF88C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  v2 = *v0;
  v3 = sub_25F5E4904();
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

uint64_t sub_25F5CF9E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  result = sub_25F5E4914();
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
      sub_25F5E4C34();

      sub_25F5E4334();
      result = sub_25F5E4C54();
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

uint64_t sub_25F5CFC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7B0, &unk_25F5EAC80);
  result = sub_25F5E4914();
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
      v19 = *v17;
      v18 = v17[1];
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
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
      *v13 = v19;
      v13[1] = v18;
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

void *sub_25F5CFE58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v57 = a2;
  v66 = type metadata accessor for SmsMessage(0);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  result = MEMORY[0x28223BE20](v17, v18);
  v22 = &v53 - v21;
  v23 = a4 >> 1;
  v58 = a3;
  v24 = v23 - a3;
  if (__OFSUB__(v23, a3))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v55 = v20;
  v25 = *v4;
  v26 = *(*v4 + 16);
  v27 = v26 + v24;
  if (__OFADD__(v26, v24))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v25;
  if (result)
  {
    v28 = *(v25 + 24) >> 1;
    if (v28 >= v27)
    {
      goto LABEL_12;
    }

    if (v26 <= v27)
    {
      v29 = v26 + v24;
    }

    else
    {
      v29 = v26;
    }
  }

  else if (v26 <= v27)
  {
    v29 = v26 + v24;
  }

  else
  {
    v29 = v26;
  }

  result = sub_25F5712B0(result, v29, 1);
  v25 = *v4;
  v28 = *(*v4 + 24) >> 1;
LABEL_12:
  v62 = v10;
  v30 = v25;
  v31 = v28 - *(v25 + 16);
  if (v23 == v58)
  {
    if (v24 <= 0)
    {
      v32 = v58;
      if (v31)
      {
LABEL_15:
        result = swift_unknownObjectRelease();
LABEL_23:
        *v4 = v30;
        return result;
      }

LABEL_21:
      v53 = a1;
      v36 = *(v25 + 16);
      v37 = v63;
      v38 = *(v63 + 56);
      v39 = v66;
      v60 = v63 + 56;
      v61 = v23;
      v59 = v38;
      v38(v22, 1, 1, v66);
      v40 = v55;
      sub_25F573B94(v22, v55, &qword_27FD9E788, &qword_25F5EAC60);
      v64 = *(v37 + 48);
      v65 = v37 + 48;
      if (v64(v40, 1, v39) != 1)
      {
        v54 = v4;
        do
        {
          sub_25F57C148(v40, &qword_27FD9E788, &qword_25F5EAC60);
          v43 = *(v30 + 24);
          if (v36 + 1 > (v43 >> 1))
          {
            sub_25F5712B0((v43 > 1), v36 + 1, 1);
          }

          v44 = *v4;
          v45 = *(*v4 + 24);
          v46 = *(v63 + 80);
          sub_25F573B94(v22, v15, &qword_27FD9E788, &qword_25F5EAC60);
          v47 = v64(v15, 1, v66);
          v56 = v44;
          if (v47 != 1)
          {
            v48 = v44 + ((v46 + 32) & ~v46);
            if (v36 <= (v45 >> 1))
            {
              v41 = v45 >> 1;
            }

            else
            {
              v41 = v36;
            }

            do
            {
              v51 = v62;
              sub_25F5D0AF8(v15, v62, type metadata accessor for SmsMessage);
              if (v41 == v36)
              {
                sub_25F5C8DE0(v51);
                v36 = v41;
                goto LABEL_26;
              }

              sub_25F57C148(v22, &qword_27FD9E788, &qword_25F5EAC60);
              v52 = *(v63 + 72);
              result = sub_25F5D0AF8(v51, v48 + v52 * v36, type metadata accessor for SmsMessage);
              if (v32 == v61)
              {
                v49 = 1;
                v32 = v61;
              }

              else
              {
                if (v32 < v58 || v32 >= v61)
                {
                  __break(1u);
                  goto LABEL_42;
                }

                sub_25F5C8D7C(v57 + v52 * v32, v22);
                v49 = 0;
                ++v32;
              }

              v50 = v66;
              v59(v22, v49, 1, v66);
              sub_25F573B94(v22, v15, &qword_27FD9E788, &qword_25F5EAC60);
              ++v36;
            }

            while (v64(v15, 1, v50) != 1);
          }

          sub_25F57C148(v15, &qword_27FD9E788, &qword_25F5EAC60);
          v41 = v36;
LABEL_26:
          v40 = v55;
          v30 = v56;
          *(v56 + 16) = v41;
          sub_25F573B94(v22, v40, &qword_27FD9E788, &qword_25F5EAC60);
          v42 = v64(v40, 1, v66);
          v4 = v54;
        }

        while (v42 != 1);
      }

      sub_25F57C148(v22, &qword_27FD9E788, &qword_25F5EAC60);
      swift_unknownObjectRelease();
      result = sub_25F57C148(v40, &qword_27FD9E788, &qword_25F5EAC60);
      goto LABEL_23;
    }

    goto LABEL_44;
  }

  if (v31 < v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = swift_arrayInitWithCopy();
  if (v24 <= 0)
  {
LABEL_20:
    v32 = v23;
    if (v24 != v31)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v33 = *(v25 + 16);
  v34 = __OFADD__(v33, v24);
  v35 = v33 + v24;
  if (!v34)
  {
    *(v25 + 16) = v35;
    goto LABEL_20;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25F5D03B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8E2DC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25F5CECD0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_25F5D0464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F5E3694();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5D0524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F5E3694();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F5D05C8(uint64_t a1)
{
  sub_25F5C2DB4(319, &qword_27FD9E620, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25F5C2DB4(319, &unk_27FD9E638, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_25F5E3694();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F5D06AC(uint64_t a1, int a2)
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

uint64_t sub_25F5D06F4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F5D077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F5D0860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25F5D094C(uint64_t a1)
{
  sub_25F5B2AE4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25F5D09D4()
{
  result = qword_27FD9E768;
  if (!qword_27FD9E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E768);
  }

  return result;
}

unint64_t sub_25F5D0A2C()
{
  result = qword_27FD9E770;
  if (!qword_27FD9E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E770);
  }

  return result;
}

unint64_t sub_25F5D0A84()
{
  result = qword_27FD9E778;
  if (!qword_27FD9E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E778);
  }

  return result;
}

uint64_t sub_25F5D0AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5D0B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5D0C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1699574633 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_25F5D0E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for SmsMessage(0);
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

unint64_t sub_25F5D0F48(unint64_t result, uint64_t a2)
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

    v4 = sub_25F5789D0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25F5D0E00(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25F5D1008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5D106C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F5D10D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F5D1114()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_25F5D1160()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_25F5E35D4();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_25F5E34F4();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_25F5D1220()
{
  result = qword_27FD9E798;
  if (!qword_27FD9E798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD9E798);
  }

  return result;
}

uint64_t sub_25F5D1280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25F5E4C34();
  sub_25F5E4334();
  v6 = sub_25F5E4C54();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25F5E4B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F5D1378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25F5E4C34();
  sub_25F5E4334();
  v6 = sub_25F5E4C54();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25F5E4B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F5D1470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v9 = sub_25F5E43C4();
  [v8 setString_];

  if (a2)
  {
    v10 = [v8 setLanguage_];
  }

  v11 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v11 = a4;
  }

  v12 = 7;
  if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
  {
    v12 = 11;
  }

  MEMORY[0x28223BE20](v10, v12 | (v11 << 16));
  sub_25F5E4754();

  return 0;
}

uint64_t sub_25F5D159C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E4444();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_25F5E3554();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v39 - v13;
  v15 = sub_25F5E43C4();
  v16 = [objc_opt_self() bundleWithIdentifier_];

  if (!v16)
  {
    goto LABEL_5;
  }

  v39[0] = v7;
  v17 = sub_25F5E43C4();
  v18 = sub_25F5E43C4();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (!v19)
  {

LABEL_5:

    return a1;
  }

  sub_25F5E3534();

  (*(v39[0] + 32))(v14, v11, v6);
  v20 = sub_25F5E3574();
  v22 = v21;
  v23 = sub_25F5AD100(v20, v21);
  v26 = v25;
  v27 = v23;
  sub_25F571820(v20, v22);
  sub_25F5E4424();
  v28 = sub_25F5E4414();
  v30 = v26;
  v31 = v27;
  if (v29)
  {
    v32 = sub_25F5C82D8(v28, v29);
    v40 = 0;
    v41 = 0xE000000000000000;
    v33 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v33 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v39[1] = a1;
    v39[2] = a2;
    v39[3] = 0;
    v39[4] = v33;

    v34 = sub_25F5E4514();
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      do
      {
        if (sub_25F5A3224(v36, v37) & 1) == 0 || (sub_25F5D1378(v36, v37, v32))
        {
          MEMORY[0x25F8E2BB0](v36, v37);
        }

        v36 = sub_25F5E4514();
        v37 = v38;
      }

      while (v38);
    }

    sub_25F571820(v31, v30);

    (*(v39[0] + 8))(v14, v6);
    return v40;
  }

  else
  {
    (*(v39[0] + 8))(v14, v6);

    sub_25F571820(v27, v30);
  }

  return a1;
}

id sub_25F5D199C(uint64_t a1, unint64_t a2)
{

  sub_25F5E4584();
  v4 = HIBYTE(a2) & 0xF;
  v23 = a1;
  v24 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 0;
  v26 = v4;

  v5 = sub_25F5E4514();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = &selRef_synopsis;
    while (1)
    {
      while ((sub_25F5A3224(v7, v8) & 1) == 0)
      {
        MEMORY[0x25F8E2BB0](v7, v8);

        v7 = sub_25F5E4514();
        v8 = v11;
        if (!v11)
        {
          v22 = v9;
          goto LABEL_16;
        }
      }

      if (!v9)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D072F8]) init];
      }

      v22 = v9;

      v12 = sub_25F5E43C4();

      v13 = v10;
      v14 = [objc_opt_self() v10[38]];

      v15 = [v14 copyWithoutModifiers];
      if (!v15)
      {
        v15 = [objc_allocWithZone(MEMORY[0x277D07318]) init];
      }

      result = [v15 string];
      if (!result)
      {
        break;
      }

      v17 = result;

      v18 = sub_25F5E43F4();
      v20 = v19;

      MEMORY[0x25F8E2BC0](v18, v20);

      v7 = sub_25F5E4514();
      v8 = v21;
      v10 = v13;
      if (!v21)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_16:

    return a1;
  }

  return result;
}

BOOL sub_25F5D1BC4()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 < v3;
  }

  return result;
}

unint64_t sub_25F5D1BEC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F5D26F4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_25F5E4944();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_25F5E49A4();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}