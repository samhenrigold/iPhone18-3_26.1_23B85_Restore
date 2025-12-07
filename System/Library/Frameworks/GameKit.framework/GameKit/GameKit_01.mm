uint64_t sub_21869FAE4(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = sub_2186B749C();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();
  v7 = sub_2186B761C();
  v2[33] = v7;
  v2[34] = *(v7 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869FD38, 0, 0);
}

uint64_t sub_21869FD38()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v2 + 16))(v1, *(v0 + 160), v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D0CC00])
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    (*(*(v0 + 248) + 96))(v7, *(v0 + 240));
    (*(v5 + 32))(v4, v7, v6);
    v8 = [objc_allocWithZone(off_278236548) init];
    *(v0 + 288) = v8;
    v9 = sub_2186B760C();
    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 224);
      [v8 setContext_];
      sub_2186B75CC();
      sub_2186B783C();
      (*(v10 + 8))(*(v0 + 232), *(v0 + 216));
      v12 = sub_2186B79FC();

      [v8 setLeaderboardID_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2186B8F70;
      sub_2186B75FC();
      v15 = sub_2186B787C();
      v17 = v16;
      v18 = *(v0 + 200);
      v19 = *(v0 + 208);
      v20 = *(v0 + 192);
      v25 = *(v0 + 184);
      v21 = *(v0 + 176);
      v24 = *(v0 + 168);
      v26 = objc_opt_self();
      (*(v18 + 8))(v19, v20);
      *(v13 + 32) = v15;
      *(v13 + 40) = v17;
      v22 = sub_2186B7A9C();
      *(v0 + 296) = v22;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_2186A026C;
      swift_continuation_init();
      *(v0 + 136) = v24;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
      sub_2186B7B1C();
      (*(v21 + 32))(boxed_opaque_existential_0, v25, v24);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_2186933E4;
      *(v0 + 104) = &block_descriptor_171;
      [v26 loadPlayersForIdentifiersPrivate:v22 withCompletionHandler:?];
      (*(v21 + 8))(boxed_opaque_existential_0, v24);
      v9 = v0 + 16;
    }

    return MEMORY[0x282200938](v9);
  }

  else
  {
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    **(v0 + 152) = 0;

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2186A026C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_2186A0560;
  }

  else
  {
    v2 = sub_2186A037C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186A037C()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    result = sub_2186B7CCC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 264);

    (*(v13 + 8))(v12, v14);
    v9 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);

  [v5 setPlayer_];
  [v5 setValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070B0, &qword_2186B93E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B9010;
  *(v9 + 32) = v5;

  (*(v7 + 8))(v6, v8);
LABEL_9:
  **(v0 + 152) = v9;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2186A0560(uint64_t a1)
{
  v2 = v1[37];
  v3 = v1[35];
  v4 = v1[36];
  v5 = v1[33];
  v6 = v1[34];
  swift_willThrow();

  (*(v6 + 8))(v3, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_2186A0654@<X0>(uint64_t *a1@<X0>, uint64_t (*a3)(uint64_t, void, uint64_t)@<X2>, void *a4@<X8>)
{
  v8 = *a1;

  result = sub_2186A59E8(v6, a3);
  *a4 = v8;
  return result;
}

unint64_t sub_2186A06FC(uint64_t a1)
{
  v81 = sub_2186B753C();
  v2 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v82 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = &v64 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07080, &qword_2186B93B8);
  v7 = MEMORY[0x28223BE20](v77);
  v76 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - v9;
  v66 = sub_2186A6594(MEMORY[0x277D84F90]);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v74 = v2 + 16;
  v75 = v5 + 16;
  v72 = v2 + 32;
  v73 = v5 + 32;
  v78 = v5;
  v79 = v2;
  v69 = (v5 + 8);
  v70 = (v2 + 8);
  v83 = a1;

  v16 = 0;
  v67 = v15;
  v68 = a1 + 64;
  v71 = v10;
LABEL_4:
  v17 = v16;
  v18 = v4;
  if (!v14)
  {
    goto LABEL_6;
  }

  do
  {
    v84 = 0;
    v16 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v16 << 6);
    v21 = v83;
    v22 = v78;
    v23 = v18;
    (*(v78 + 16))(v10, *(v83 + 48) + *(v78 + 72) * v20, v18);
    v24 = v79;
    v25 = *(v21 + 56) + *(v79 + 72) * v20;
    v26 = v77;
    v27 = v81;
    (*(v79 + 16))(&v10[*(v77 + 48)], v25, v81);
    v28 = v76;
    sub_2186A7D78(v10, v76, &qword_27CC07080, &qword_2186B93B8);
    v29 = *(v26 + 48);
    v30 = v80;
    (*(v22 + 32))(v80, v28, v23);
    v31 = v28 + v29;
    v4 = v23;
    v32 = v82;
    (*(v24 + 32))(v82, v31, v27);
    v33 = v84;
    v34 = sub_2186B787C();
    if (!v33)
    {
      v37 = v34;
      v38 = v35;
      v10 = v71;
      v39 = sub_2186B752C();
      v41 = v40;
      v42 = v66;
      LODWORD(v84) = swift_isUniquelyReferenced_nonNull_native();
      v85 = v42;
      v44 = sub_2186A1B54(v37, v38, sub_218683C08);
      v45 = *(v42 + 16);
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_27;
      }

      v65 = v39;
      if (*(v42 + 24) >= v47)
      {
        v53 = v82;
        v52 = v80;
        if (v84)
        {
          goto LABEL_19;
        }

        LODWORD(v84) = v43;
        v66 = v44;
        sub_2186A4B0C();
        v44 = v66;
        LOBYTE(v43) = v84;
      }

      else
      {
        v48 = v43;
        sub_2186A5130(v47, v84);
        v49 = sub_2186A1B54(v37, v38, sub_218683C08);
        v50 = v43 & 1;
        LOBYTE(v43) = v48;
        v51 = v48 & 1;
        v52 = v80;
        if (v51 != v50)
        {
          goto LABEL_29;
        }

        v44 = v49;
      }

      v53 = v82;
LABEL_19:
      if (v43)
      {
        v54 = v44;

        v66 = v85;
        v55 = (v85[7] + 16 * v54);
        *v55 = v65;
        v55[1] = v41;

        (*v70)(v53, v81);
        (*v69)(v52, v4);
        sub_21867F0B8(v10, &qword_27CC07080, &qword_2186B93B8);
      }

      else
      {
        v56 = v41;
        v57 = v85;
        v85[(v44 >> 6) + 8] |= 1 << v44;
        v58 = (v57[6] + 16 * v44);
        *v58 = v37;
        v58[1] = v38;
        v59 = (v57[7] + 16 * v44);
        *v59 = v65;
        v59[1] = v56;
        (*v70)(v53, v81);
        (*v69)(v52, v4);
        sub_21867F0B8(v10, &qword_27CC07080, &qword_2186B93B8);
        v60 = v57[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_28;
        }

        v66 = v57;
        v57[2] = v62;
      }

      v15 = v67;
      v11 = v68;
      goto LABEL_4;
    }

    (*v70)(v32, v27);
    (*v69)(v30, v4);
    v36 = v71;
    sub_21867F0B8(v71, &qword_27CC07080, &qword_2186B93B8);
    v17 = v16;
    v18 = v4;
    v10 = v36;
    v15 = v67;
    v11 = v68;
  }

  while (v14);
LABEL_6:
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return v66;
    }

    v14 = *(v11 + 8 * v16);
    ++v17;
    if (v14)
    {
      v84 = 0;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_2186B7E7C();
  __break(1u);
  return result;
}

id GSGameActivitySupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GSGameActivitySupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186A0E44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07050, &qword_2186B9370);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v29[1] = v1;
  v44 = MEMORY[0x277D84F90];
  sub_2186A5B9C(0, v9, 0);
  v10 = v44;
  v11 = a1 + 64;
  result = sub_2186B7C8C();
  v13 = result;
  v14 = 0;
  v43 = *(a1 + 36);
  v30 = a1 + 72;
  v31 = *MEMORY[0x277D0CD90];
  v37 = v8;
  v33 = v9;
  v34 = a1;
  v32 = a1 + 64;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_27;
    }

    if (v43 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v39 = 1 << v13;
    v40 = v13 >> 6;
    v38 = v14;
    v42 = v10;
    v41 = *(v36 + 48);
    swift_bridgeObjectRetain_n();

    sub_2186B786C();

    sub_2186B751C();
    v16 = sub_2186B753C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (v18(v5, 1, v16) == 1)
    {
      (*(v17 + 104))(&v8[v41], v31, v16);
      if (v18(v5, 1, v16) != 1)
      {
        sub_21867F0B8(v5, &qword_27CC07050, &qword_2186B9370);
      }
    }

    else
    {
      (*(v17 + 32))(&v8[v41], v5, v16);
    }

    v10 = v42;
    v44 = v42;
    v20 = *(v42 + 16);
    v19 = *(v42 + 24);
    v11 = v32;
    v21 = v33;
    if (v20 >= v19 >> 1)
    {
      sub_2186A5B9C((v19 > 1), v20 + 1, 1);
      v10 = v44;
    }

    *(v10 + 16) = v20 + 1;
    v8 = v37;
    result = sub_2186A7CC4(v37, v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v20, &qword_27CC07038, &qword_2186B9368);
    a1 = v34;
    v15 = 1 << *(v34 + 32);
    if (v13 >= v15)
    {
      goto LABEL_29;
    }

    v22 = *(v11 + 8 * v40);
    if ((v22 & v39) == 0)
    {
      goto LABEL_30;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_31;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v15 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v40 << 6;
      v25 = v40 + 1;
      v26 = (v30 + 8 * v40);
      while (v25 < (v15 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_2186A7D2C(v13, v43, 0);
          v15 = __clz(__rbit64(v27)) + v24;
          goto LABEL_24;
        }
      }

      result = sub_2186A7D2C(v13, v43, 0);
LABEL_24:
      v8 = v37;
    }

    v14 = v38 + 1;
    v13 = v15;
    if (v38 + 1 == v21)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2186A12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2186A7D78(a3, v23 - v10, &qword_27CC06E10, &qword_2186B9590);
  v12 = sub_2186B7B7C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21867F0B8(v11, &qword_27CC06E10, &qword_2186B9590);
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

  sub_2186B7B6C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2186B7B0C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2186B7A3C() + 32;
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

    sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);

    return v21;
  }

LABEL_8:
  sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);
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

void *sub_2186A15F4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07068, &qword_2186B9388);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0) - 8);
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

char *sub_2186A17E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
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

void *sub_2186A18F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2186A1ACC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070B0, &qword_2186B93E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2186A1B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2186B7EBC();
  sub_2186B7A4C();
  v5 = sub_2186B7ECC();

  return a3(a1, a2, v5);
}

unint64_t sub_2186A1BD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
  v2 = sub_2186B79CC();

  return sub_2186A1C80(a1, v2);
}

unint64_t sub_2186A1C80(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
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
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D510]);
      v15 = sub_2186B79EC();
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

uint64_t sub_2186A1E44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
  v31 = a2;
  v11 = sub_2186B79CC();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D510]);
      v19 = sub_2186B79EC();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_2186A2F50(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_2186A2128(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2186B7EBC();
  sub_2186B7A4C();
  v8 = sub_2186B7ECC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2186B7E5C() & 1) != 0)
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

    sub_2186A31F4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2186A2278(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2186B7CDC();

    if (v17)
    {

      sub_2186804FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_2186B7CCC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2186A24EC(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2186A2CAC(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_2186A2ECC(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2186804FC(0, a3, a4);
    v19 = sub_2186B7C3C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_2186B7C4C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2186A3374(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2186A24EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2186B7D2C();
    v23 = v10;
    sub_2186B7CBC();
    if (sub_2186B7CEC())
    {
      sub_2186804FC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2186A2CAC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_2186B7C3C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_2186B7CEC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2186A26EC(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  result = sub_2186B7D1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
      result = sub_2186B79CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2186A2A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  result = sub_2186B7D1C();
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
      sub_2186B7EBC();
      sub_2186B7A4C();
      result = sub_2186B7ECC();
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

uint64_t sub_2186A2CAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2186B7D1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_2186B7C3C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_2186A2ECC(uint64_t a1, uint64_t a2)
{
  sub_2186B7C3C();
  result = sub_2186B7CAC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2186A2F50(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2186A26EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2186A3504();
      goto LABEL_12;
    }

    sub_2186A39E0(v10 + 1);
  }

  v12 = *v3;
  sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
  v13 = sub_2186B79CC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_218680664(&qword_27CC07048, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D510]);
      v21 = sub_2186B79EC();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2186B7E6C();
  __break(1u);
  return result;
}

uint64_t sub_2186A31F4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2186A2A4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2186A3744();
      goto LABEL_16;
    }

    sub_2186A3D00(v8 + 1);
  }

  v10 = *v4;
  sub_2186B7EBC();
  sub_2186B7A4C();
  result = sub_2186B7ECC();
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

      result = sub_2186B7E5C();
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
  result = sub_2186B7E6C();
  __break(1u);
  return result;
}

void sub_2186A3374(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2186A2CAC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2186A38A0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2186A3F38(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_2186B7C3C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2186804FC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_2186B7C4C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2186B7E6C();
  __break(1u);
}

void *sub_2186A3504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  v6 = *v0;
  v7 = sub_2186B7D0C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2186A3744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  v2 = *v0;
  v3 = sub_2186B7D0C();
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

id sub_2186A38A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2186B7D0C();
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
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t sub_2186A39E0(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07060, &qword_2186B9380);
  v7 = sub_2186B7D1C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
      result = sub_2186B79CC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2186A3D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07090, &qword_2186B93C8);
  result = sub_2186B7D1C();
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
      sub_2186B7EBC();

      sub_2186B7A4C();
      result = sub_2186B7ECC();
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

uint64_t sub_2186A3F38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2186B7D1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_2186B7C3C();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

void sub_2186A4144(uint64_t a1, char a2, void *a3)
{
  v68 = a3;
  v6 = sub_2186B753C();
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v9 = v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368);
  v63 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v56 - v12;
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v63 + 80);
  v61 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v64 + 32);
  v18 = (v65 + 32);
  v58 = v16;
  sub_2186A7D78(v16, v13, &qword_27CC07038, &qword_2186B9368);
  v57 = *v17;
  v57(v9, v13, v67);
  v19 = *v18;
  v59 = v14;
  v62 = v6;
  v20 = v6;
  v21 = v19;
  v19(v66, &v13[v14], v20);
  v22 = *v68;
  v24 = sub_2186A1BD8(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2186A47B0();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_2186A4C84(v27, a2 & 1);
  v29 = sub_2186A1BD8(v9);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v33 = v67;
      v34 = *v68;
      *(*v68 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v57((v34[6] + *(v64 + 72) * v24), v9, v33);
      v35 = v62;
      v21((v34[7] + *(v65 + 72) * v24), v66, v62);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_2186A7D78(v58 + *(v63 + 72) * v39, v13, &qword_27CC07038, &qword_2186B9368);
          v40 = *v17;
          (*v17)(v9, v13, v67);
          v41 = *v18;
          (*v18)(v66, &v13[v59], v35);
          v42 = *v68;
          v43 = sub_2186A1BD8(v9);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v37 = __OFADD__(v45, v46);
          v47 = v45 + v46;
          if (v37)
          {
            goto LABEL_26;
          }

          v48 = v44;
          if (v42[3] < v47)
          {
            sub_2186A4C84(v47, 1);
            v43 = sub_2186A1BD8(v9);
            if ((v48 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v48)
          {
            goto LABEL_11;
          }

          v50 = v67;
          v51 = *v68;
          *(*v68 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v52 = v43;
          v40((v51[6] + *(v64 + 72) * v43), v9, v50);
          v53 = v51[7] + *(v65 + 72) * v52;
          v35 = v62;
          v41(v53, v66, v62);
          v54 = v51[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v51[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v71 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v65 + 8))(v66, v62);
      (*(v64 + 8))(v9, v67);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_2186B7E7C();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_2186B7D4C();
  MEMORY[0x21CEB1070](0xD00000000000001BLL, 0x80000002186BA180);
  sub_2186B7DDC();
  MEMORY[0x21CEB1070](39, 0xE100000000000000);
  sub_2186B7DEC();
  __break(1u);
}

char *sub_2186A47B0()
{
  v1 = v0;
  v41 = sub_2186B753C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
  v4 = *v0;
  v5 = sub_2186B7E0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2186A4B0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
  v2 = *v0;
  v3 = sub_2186B7E0C();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2186A4C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2186B753C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
  v47 = v4;
  result = sub_2186B7E1C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
      result = sub_2186B79CC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2186A5130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
  v37 = v4;
  result = sub_2186B7E1C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2186B7EBC();
      sub_2186B7A4C();
      result = sub_2186B7ECC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2186A53F0(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_2186B7CFC();

    if (v6)
    {
      v7 = sub_2186A5598(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v10 = sub_2186B7C3C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_2186B7C4C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2186A38A0(&qword_27CC070A0, &qword_2186B93D8);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2186A5720(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2186A5598(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_2186B7CCC();
  v5 = swift_unknownObjectRetain();
  v6 = sub_2186A24EC(v5, v4, &qword_27CC070A0, &qword_2186B93D8, &qword_27CC06E60, &off_278236520);
  v15 = v6;

  v7 = sub_2186B7C3C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_2186B7C4C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2186A5720(v9);
  result = sub_2186B7C4C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2186A5720(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2186B7C9C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_2186B7C3C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2186A58C0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x21CEB1380](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2186B7CCC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2186A59E8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2186B7CCC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_2186B7CCC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2186A5AE0(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_2186A5AE0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_2186B7CCC();
    }

    result = sub_2186B7D7C();
    *v2 = result;
  }

  return result;
}

void *sub_2186A5B9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2186A5BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2186A5BBC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07058, &qword_2186B9378);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07038, &qword_2186B9368) - 8);
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

uint64_t sub_2186A5DAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2186B7CCC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2186B7CCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218680664(&qword_27CC070B8, &qword_27CC06F60, &qword_2186B9108, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
            v9 = sub_2186A61E4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2186A5F60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2186B7CCC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2186B7CCC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218680664(&qword_27CC070A8, &qword_27CC06F68, &qword_2186B9118, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F68, &qword_2186B9118);
            v9 = sub_2186A626C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t **sub_2186A6114(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_2186B7CCC();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v9 = sub_2186A1ACC(v8, 0);

    a4 = sub_2186A62EC(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_2186A67A0(v11);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v9;
}

void (*sub_2186A61E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEB1380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2186A6264;
  }

  __break(1u);
  return result;
}

void (*sub_2186A626C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEB1380](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2186A8708;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2186A62EC(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_2186B7CBC();
  sub_2186804FC(0, a5, a6);
  sub_21869D768(a7, a5, a6, MEMORY[0x277D85378]);
  result = sub_2186B7BBC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_2186B7CEC())
      {
        goto LABEL_30;
      }

      sub_2186804FC(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_2186A6530(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2186B7CCC();
  }

  return sub_2186B7D7C();
}

unint64_t sub_2186A6594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07088, &qword_2186B93C0);
    v3 = sub_2186B7E2C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2186A1B54(v5, v6, sub_218683C08);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2186A67A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2186818F8;

  return sub_21868F3D0(v3, v4, v5, v2);
}

uint64_t sub_2186A685C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v9 = sub_2186A6114(*a1, &qword_27CC06E70, &off_278236548, &qword_27CC06E78);

  v5 = sub_2186A81BC(&v9, v4, v3);

  if (v9 >> 62)
  {
    result = sub_2186B7CCC();
    v7 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      sub_2186A7F6C(v5, v7, &qword_27CC06E70, &off_278236548);
      v8 = sub_2186A70E0(v9);

      *a1 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2186A69B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_218680664(&qword_27CC07040, &qword_27CC06F40, &unk_2186B90E0, MEMORY[0x277D0D508]);
  result = MEMORY[0x21CEB11C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_2186A1E44(v8, v6);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_2186A6B5C(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_2186B7CCC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEB1380](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    MEMORY[0x28223BE20](v6);
    v11[2] = &v13;
    v8 = sub_2186A58C0(sub_2186A8728, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_2186A6CA4(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_2186A6B5C(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_2186B7CCC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_2186B7CCC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CEB1380](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    MEMORY[0x28223BE20](v12);
    v25[2] = &v27;
    v14 = sub_2186A58C0(sub_2186A7DE0, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x21CEB1380](v2, v6);
    v16 = MEMORY[0x21CEB1380](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_2186A6530(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_2186A6530(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
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
  return sub_2186B7CCC();
}

uint64_t sub_2186A6F40(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2186B7CCC())
  {
    v4 = sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    v5 = sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
    result = MEMORY[0x21CEB11C0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = &off_278236520;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEB1380](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2186A2278(&v12, v10, &qword_27CC06E60, &off_278236520, &qword_27CC070A0, &qword_2186B93D8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2186B7CCC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2186A70E0(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2186B7CCC())
  {
    v4 = sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
    v5 = sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
    result = MEMORY[0x21CEB11C0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = &off_278236548;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEB1380](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_2186A2278(&v12, v10, &qword_27CC06E70, &off_278236548, &qword_27CC07098, &qword_2186B93D0);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2186B7CCC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2186A7280(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEB11C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2186A2128(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2186A7360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for GKGameActivityTestUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GKGameActivityTestUtils(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2186A7754()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_218681150;

  return sub_21869DAC0(v2, v3);
}

uint64_t sub_2186A7800()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_21869A7D4(v2, v3);
}

uint64_t sub_2186A78B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_2186943E0(a1, v4);
}

uint64_t sub_2186A7954()
{
  v1 = [*(v0 + 24) activityDefinition];
  [v1 supportsPartyCode];

  return sub_2186B719C();
}

uint64_t sub_2186A7A00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_21869357C(v2, v3);
}

uint64_t objectdestroy_54Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2186A7B18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_218692C64(v2, v3);
}

uint64_t sub_2186A7BCC()
{
  v2 = *(sub_2186B74BC() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2186818F8;

  return sub_21869B2A0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_2186A7CC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2186A7D2C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t objectdestroy_58Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2186A7D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2186A7E64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_2186804FC(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
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
  result = sub_2186B7CCC();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_2186B7CCC();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2186A7F6C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_2186B7CCC();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_2186B7CCC();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_2186A5AE0(result, 1);
    return sub_2186A7E64(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_2186A8050(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_2186B7CCC();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v18 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEB1380](v6, a1);
    }

    else
    {
      if (v6 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 leaderboardID];
    v10 = sub_2186B7A0C();
    v12 = v11;

    if (v10 == a2 && v12 == a3)
    {
      break;
    }

    v14 = sub_2186B7E5C();

    if (v14)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_2186A81BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v9 = sub_2186A8050(*a1, a2, a3);
  v11 = v9;
  if (v3)
  {
    return v11;
  }

  v34 = a3;
  if (v10)
  {
    if (v8 >> 62)
    {
      return sub_2186B7CCC();
    }

    return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = a1;
  v12 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v8 >> 62)
    {
      if (v12 == sub_2186B7CCC())
      {
        return v11;
      }
    }

    else if (v12 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v11;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CEB1380](v12, v8);
      goto LABEL_16;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v14 = *(v8 + 8 * v12 + 32);
LABEL_16:
    v4 = v14;
    v15 = [v14 leaderboardID];
    v16 = sub_2186B7A0C();
    v18 = v17;

    if (v16 == a2 && v18 == v34)
    {
LABEL_8:
    }

    else
    {
      v20 = sub_2186B7E5C();

      if ((v20 & 1) == 0)
      {
        if (v11 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x21CEB1380](v11, v8);
            v22 = MEMORY[0x21CEB1380](v12, v8);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_52;
            }

            v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11 >= v23)
            {
              goto LABEL_53;
            }

            if (v12 >= v23)
            {
              goto LABEL_54;
            }

            v24 = *(v8 + 32 + 8 * v12);
            v21 = *(v8 + 32 + 8 * v11);
            v22 = v24;
          }

          v25 = v22;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
          {
            v8 = sub_2186A6530(v8);
            v26 = (v8 >> 62) & 1;
          }

          else
          {
            LODWORD(v26) = 0;
          }

          v27 = v8 & 0xFFFFFFFFFFFFFF8;
          v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
          *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v25;

          if ((v8 & 0x8000000000000000) != 0 || v26)
          {
            v8 = sub_2186A6530(v8);
            v27 = v8 & 0xFFFFFFFFFFFFFF8;
            if ((v12 & 0x8000000000000000) != 0)
            {
LABEL_45:
              __break(1u);
              return v11;
            }
          }

          else if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v12 >= *(v27 + 16))
          {
            goto LABEL_51;
          }

          v29 = v27 + 8 * v12;
          v30 = *(v29 + 32);
          *(v29 + 32) = v21;

          *v33 = v8;
        }

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_50;
        }
      }
    }

    v13 = __OFADD__(v12++, 1);
    if (v13)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
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
LABEL_54:
  __break(1u);
  return sub_2186B7CCC();
}

uint64_t sub_2186A846C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2186818F8;

  return sub_21868FF24(v3, v2);
}

uint64_t objectdestroy_143Tm()
{
  v1 = sub_2186B74BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2186A85D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2186A85F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2186A8784()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_identifier);

  return v1;
}

uint64_t sub_2186A87CC()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_groupIdentifier);

  return v1;
}

uint64_t sub_2186A8814()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_title);

  return v1;
}

id sub_2186A885C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_2186B79FC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2186A88C8()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivityDefinition_details);

  return v1;
}

uint64_t sub_2186A8A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  v6 = [v1 _fallbackURL];
  v7 = sub_2186B6FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  if (v6)
  {
    v10 = *(v7 - 8);
    v14[0] = *(v8 + 56);
    v14[1] = v8 + 56;
    v9(v5, 1, 1, v7);
    sub_2186AD6F4(&qword_27CC07118, MEMORY[0x277CC9260], MEMORY[0x277CC9288]);
    sub_2186B7E3C();

    if ((*(v10 + 48))(v5, 1, v7) == 1)
    {
      v11 = a1;
      v12 = 1;
    }

    else
    {
      (*(v10 + 32))(a1, v5, v7);
      v11 = a1;
      v12 = 0;
    }

    return (v14[0])(v11, v12, 1, v7);
  }

  else
  {

    return (v9)(a1, 1, 1, v7);
  }
}

id GKGameActivityDefinition.playerRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = [v1 minPlayers];
  if (result && (v5 = result, v6 = [result integerValue], v5, (result = objc_msgSend(v2, sel_internalMaxPlayers)) != 0))
  {
    v7 = result;
    v8 = [result integerValue];

    if (v8 < 0)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07128, &unk_2186B94C0);
      result = sub_218680664(&qword_27CC07130, &qword_27CC07128, &unk_2186B94C0, MEMORY[0x277D84338]);
      *(a1 + 32) = result;
      *a1 = v6;
    }

    else
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC0, &qword_2186B92E0);
      result = sub_218680664(&qword_27CC07120, &qword_27CC06FC0, &qword_2186B92E0, MEMORY[0x277D83660]);
      *(a1 + 32) = result;
      if (v8 < v6)
      {
        __break(1u);
      }

      else
      {
        *a1 = v6;
        *(a1 + 8) = v8;
      }
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id sub_2186A8E64()
{
  result = [v0 internalMaxPlayers];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];
    result = v2;
    if (v3 == -1)
    {

      return 0;
    }
  }

  return result;
}

void *sub_2186A8F10()
{
  v1 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2186A8FBC(uint64_t a1)
{
  v3 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2186A90D0()
{
  GKGameActivityDefinition.playerRange.getter(&v1);
  if (v2)
  {
    sub_2186A9180(&v1, v3);
    sub_2186A9180(v3, &v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FB8, &qword_2186B94D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07128, &unk_2186B94C0);
    return swift_dynamicCast();
  }

  else
  {
    sub_21867F0B8(&v1, &qword_27CC06FB0, &unk_2186B92D0);
    return 0;
  }
}

uint64_t sub_2186A9180(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_2186A91F0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2186B7A9C();

  return v3;
}

void GKGameActivityDefinition.loadAchievementDescriptions(completionHandler:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 associatedAchievementDescriptionIDs];
  v7 = sub_2186B7AAC();

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a1;
    v10[4] = a2;
    v13[4] = sub_2186A95D4;
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2186A95E0;
    v13[3] = &block_descriptor_3;
    v11 = _Block_copy(v13);
    v12 = v3;

    [v9 loadAchievementDescriptionsWithCompletionHandler_];
    _Block_release(v11);
  }

  else
  {
    a1(MEMORY[0x277D84F90], 0);
  }
}

uint64_t sub_2186A93A4(unint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v32 = a3;
  if (a1)
  {
    v6 = a1;
    v34 = MEMORY[0x277D84F90];
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      do
      {
        v26 = a2;
        v27 = a5;
        v28 = a4;
        v29 = v8;
        v9 = 0;
        v30 = v6;
        v31 = v6 & 0xC000000000000001;
        while (1)
        {
          if (v31)
          {
            v10 = MEMORY[0x21CEB1380](v9, v6);
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_17;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v13 = [v32 associatedAchievementDescriptionIDs];
          v14 = sub_2186B7AAC();

          v15 = [v11 identifier];
          v16 = sub_2186B7A0C();
          v18 = v17;

          v33[0] = v16;
          v33[1] = v18;
          MEMORY[0x28223BE20](v19);
          v25[2] = v33;
          a5 = sub_2186ADE70(sub_2186AEA98, v25, v14);

          if (a5)
          {
            a5 = &v34;
            sub_2186B7D9C();
            sub_2186B7DBC();
            sub_2186B7DCC();
            sub_2186B7DAC();
          }

          else
          {
          }

          v6 = v30;
          ++v9;
          if (v12 == v29)
          {
            v28(v34, v26);
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v21 = a4;
        v22 = a2;
        v23 = sub_2186B7CCC();
        a2 = v22;
        a4 = v21;
        v8 = v23;
      }

      while (v23);
    }

    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = 0;
  }

  a4(v20, a2);
}

void GKGameActivityDefinition.loadLeaderboards(completionHandler:)(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = [v3 associatedLeaderboardIDs];
  v7 = sub_2186B7AAC();

  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v3 associatedLeaderboardIDs];
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2186A9758;
    v12[3] = &block_descriptor_3;
    v11 = _Block_copy(v12);

    [v9 loadLeaderboardsWithIDs:v10 completionHandler:v11];
    _Block_release(v11);
  }

  else
  {
    a1(MEMORY[0x277D84F90], 0);
  }
}

uint64_t sub_2186A976C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_2186804FC(0, a4, a5);
    v6 = sub_2186B7AAC();
  }

  v8 = a3;
  v7(v6, a3);
}

void sub_2186A9820(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v7 = a1;
  if (a1)
  {
    sub_2186804FC(0, a4, a5);
    v7 = sub_2186B7A9C();
  }

  if (a2)
  {
    v8 = sub_2186B6F6C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

uint64_t sub_2186A9BC0(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_2186B6FAC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = [v3 imageURL];
  if (!v16)
  {
    return a1(0, 0);
  }

  v17 = v16;
  sub_2186B6F9C();

  (*(v10 + 32))(v15, v13, v9);
  sub_2186804FC(0, &qword_27CC07158, off_278236500);
  (*(v10 + 16))(v8, v15, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_218682758(v8, a1, a2);
  sub_21867F0B8(v8, &qword_27CC06D70, &qword_2186B92A0);
  return (*(v10 + 8))(v15, v9);
}

void sub_2186A9E00(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_2186A9E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2186B6F6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id GKGameActivityDefinition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2186AA094()
{
  v0 = sub_2186B6FAC();
  v89 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v88 = v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2186B72BC();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v84 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2186B75AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v69 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07198, &qword_2186B94D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v69 - v17;
  v78 = sub_2186B71EC();
  v79 = v19;
  v69[1] = sub_2186B739C();
  v80 = v20;
  v81 = sub_2186B736C();
  v82 = v21;
  v69[2] = sub_2186B738C();
  v83 = v22;
  v23 = sub_2186B732C();
  v87 = v18;
  sub_2186B72EC();
  sub_2186B72CC();
  v24 = 0;
  if ((v25 & 1) == 0)
  {
    result = sub_2186B72CC();
    if (v27)
    {
      __break(1u);
      goto LABEL_36;
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  sub_2186B72DC();
  v76 = v23;
  v75 = v24;
  if (v28)
  {
    v29 = v0;
    v74 = 0;
    goto LABEL_8;
  }

  result = sub_2186B72DC();
  if (v30)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  v29 = v0;
  v74 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_8:
  v73 = sub_2186B731C();
  sub_2186B737C();
  v31 = sub_2186B78FC();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v12, 1, v31) == 1)
  {
    sub_21867F0B8(v12, &qword_27CC07198, &qword_2186B94D8);
    v33 = v29;
    (*(v89 + 56))(v16, 1, 1, v29);
LABEL_11:
    v72 = 0;
    goto LABEL_13;
  }

  sub_2186AF21C(v16);
  (*(v32 + 8))(v12, v31);
  v34 = v89;
  v33 = v29;
  if ((*(v89 + 48))(v16, 1, v29) == 1)
  {
    goto LABEL_11;
  }

  v72 = sub_2186B6F8C();
  (*(v34 + 8))(v16, v29);
LABEL_13:
  sub_2186B72FC();
  v35 = v77;
  (*(v5 + 104))(v77, *MEMORY[0x277D0CEE8], v4);
  sub_2186AD6F4(&qword_27CC071A0, MEMORY[0x277D0CF00], MEMORY[0x277D0CF20]);
  sub_2186B7A7C();
  sub_2186B7A7C();
  if (v92 == v90 && v93 == v91)
  {
    v36 = 1;
  }

  else
  {
    v37 = sub_2186B7E5C();
    v36 = 1;
    if ((v37 & 1) == 0)
    {
      v36 = 2;
    }
  }

  v71 = v36;
  v38 = *(v5 + 8);
  v38(v35, v4);
  v38(v9, v4);

  v39 = v84;
  sub_2186B73BC();
  v41 = v85;
  v40 = v86;
  v42 = (*(v85 + 88))(v39, v86);
  if (v42 == *MEMORY[0x277D0CB40])
  {
    v43 = 0;
    v44 = v89;
    v45 = v87;
  }

  else
  {
    v44 = v89;
    v45 = v87;
    if (v42 == *MEMORY[0x277D0CB38])
    {
      v43 = 1;
    }

    else if (v42 == *MEMORY[0x277D0CB48])
    {
      v43 = 2;
    }

    else
    {
      (*(v41 + 8))(v39, v40);
      v43 = 0;
    }
  }

  sub_2186B733C();
  sub_2186B735C();
  v77 = sub_2186B73AC();
  sub_2186B730C();
  v87 = sub_2186B79FC();

  if (v80)
  {
    v86 = sub_2186B79FC();
  }

  else
  {
    v86 = 0;
  }

  v46 = v83;
  v85 = sub_2186B79FC();

  if (v46)
  {
    v84 = sub_2186B79FC();
  }

  else
  {
    v84 = 0;
  }

  v47 = (*(v44 + 48))(v45, 1, v33);
  v70 = v33;
  if (v47 == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_2186B6F8C();
    (*(v44 + 8))(v45, v33);
  }

  v48 = objc_allocWithZone(GKGameActivityDefinition);
  v49 = sub_2186B79AC();

  v50 = sub_2186B7A9C();
  v80 = v50;

  v51 = sub_2186B7A9C();
  v81 = v51;

  v52 = sub_2186B79FC();
  v82 = v52;

  v53 = sub_2186B6F8C();
  v68 = v52;
  v66 = v50;
  v67 = v51;
  v65 = v43;
  v54 = v72;
  v64 = v49;
  v55 = v49;
  v56 = v74;
  v57 = v75;
  v58 = v48;
  v59 = v86;
  v60 = v87;
  v62 = v84;
  v61 = v85;
  v63 = v83;
  v79 = [v58 initWithIdentifier:v87 groupIdentifier:v86 title:v85 details:v84 supportPartyCode:v76 & 1 fallbackURL:v83 maxPlayers:v75 minPlayers:v74 defaultProperties:v64 imageURL:v72 releaseState:v71 playStyle:v65 associatedLeaderboardIDs:v66 associatedAchievementDescriptionIDs:v67 language:v68 partyStartURL:v53];

  (*(v89 + 8))(v88, v70);
  return v79;
}

uint64_t sub_2186AA998()
{
  v0 = sub_2186B72BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186B73BC();
  v4 = (*(v1 + 88))(v3, v0);
  result = 0;
  if (v4 != *MEMORY[0x277D0CB40])
  {
    if (v4 == *MEMORY[0x277D0CB38])
    {
      return 1;
    }

    else if (v4 == *MEMORY[0x277D0CB48])
    {
      return 2;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2186AAACC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_2186B6FAC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  result = sub_218680544();
  if (!v2)
  {
    v16[6] = 0;
    v11 = [v1 identifier];
    v15[2] = a1;
    v12 = v11;
    v15[1] = sub_2186B7A0C();

    v13 = [v1 language];
    sub_2186B7A0C();

    v14 = [v3 partyStartURL];
    sub_2186B6F9C();

    v16[3] = sub_2186B708C();
    v16[4] = sub_2186AD6F4(&qword_27CC071A8, MEMORY[0x277D0C9B8], MEMORY[0x277D0C9B0]);
    __swift_allocate_boxed_opaque_existential_0(v16);
    sub_2186B707C();
    sub_2186B77BC();
    (*(v7 + 8))(v9, v6);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

id sub_2186AAD3C()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C08;

  return v1;
}

id static GKGameActivityDefinitionSupport.shared.getter()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C08;

  return v1;
}

uint64_t static GKGameActivityDefinitionSPIs.loadGameActivityDefinitions(support:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C8F4;
  v2 = MEMORY[0x277D84F90];

  return sub_2186AB138(v2);
}

uint64_t GKGameActivityDefinitionSupport.loadGameActivityDefinitions()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2186A8774;
  v2 = MEMORY[0x277D84F90];

  return sub_2186AB138(v2);
}

uint64_t sub_2186AAF28()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v6);
  v1 = type metadata accessor for GKGameActivityDefinitionSupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v6, v2 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  qword_27CC07C08 = v3;
  return result;
}

void *sub_2186AAFA4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21867FF24(a1, v3 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t *sub_2186AB018()
{
  if (qword_27CC07C00 != -1)
  {
    swift_once();
  }

  return &qword_27CC07C08;
}

void *sub_2186AB0C4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, v1 + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_2186AB138(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2186B794C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_2186B73CC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500) - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071B8, &qword_2186B9510);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v2[21] = *(v7 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186AB3EC, 0, 0);
}

uint64_t sub_2186AB3EC()
{
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service;
  v0[24] = OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_2186AB5A0;
  v6 = v0[23];

  return MEMORY[0x282164898](v6, v3, v4);
}

uint64_t sub_2186AB5A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2186AC058;
  }

  else
  {
    v2 = sub_2186AB6B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186AB6B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[3];
  v8 = v0[4];
  v9 = sub_2186B789C();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  (*(v3 + 16))(v2, v1, v5);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v10, v2, v5);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v12 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C0, &qword_27CC06F58, &qword_2186B90F8, MEMORY[0x277D0D520]);
  sub_218680664(&qword_27CC071C8, &qword_27CC06F58, &qword_2186B90F8, MEMORY[0x277D0D500]);
  sub_2186B762C();
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_2186AB8EC;
  v14 = v0[16];

  return MEMORY[0x282164EA8](v14);
}

uint64_t sub_2186AB8EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  *(*v2 + 224) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_2186AC3C4;
  }

  else
  {
    *(v4 + 232) = a1;
    v8 = sub_2186ABA78;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2186ABA78()
{
  v1 = (v0[4] + v0[24]);
  v0[2] = MEMORY[0x277D84F90];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_2186ABB48;
  v5 = v0[29];

  return MEMORY[0x2821648A8](v5, v2, v3);
}

uint64_t sub_2186ABB48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_2186AC4B4;
  }

  else
  {
    v4 = sub_2186ABC7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186ABC7C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[9];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v27 = v4;
    v28 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    v29 = *(v3 + 72);
    do
    {
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[8];
      sub_2186A7D78(v5, v8, &qword_27CC06F48, &unk_2186B9500);
      sub_2186AD86C(v8, v9);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(v0[13], &qword_27CC06F48, &unk_2186B9500);
      }

      else
      {
        v11 = *v28;
        (*v28)(v0[10], v0[13], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186AD8DC(0, *(v7 + 2) + 1, 1, v7, &qword_27CC071D8, &qword_2186B9608, MEMORY[0x277D0CB78]);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186AD8DC((v12 > 1), v13 + 1, 1, v7, &qword_27CC071D8, &qword_2186B9608, MEMORY[0x277D0CB78]);
        }

        v14 = v0[10];
        v15 = v0[8];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v13], v14, v15);
      }

      v5 += v29;
      --v2;
    }

    while (v2);

    v16 = *(v7 + 2);
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_18:

    v31 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_12:
  v17 = v0[9];
  v19 = *(v17 + 16);
  v18 = v17 + 16;
  v30 = v19;
  v20 = &v7[(*(v18 + 64) + 32) & ~*(v18 + 64)];
  v21 = *(v18 + 56);
  do
  {
    v22 = v0[11];
    v23 = v0[8];
    v30(v22, v20, v23);
    sub_2186AA094();
    v24 = (*(v18 - 8))(v22, v23);
    MEMORY[0x21CEB10A0](v24);
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2186B7ACC();
    }

    sub_2186B7AEC();
    v20 += v21;
    --v16;
  }

  while (v16);
  v31 = v0[2];

LABEL_19:
  (*(v0[20] + 8))(v0[23], v0[19]);

  v25 = v0[1];

  return v25(v31);
}

uint64_t sub_2186AC058()
{
  v1 = v0[26];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_21867F9D4();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to refresh game activity definitions: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[20];
  v18 = v0[21];
  v19 = v0[19];
  v20 = v0[15];
  v21 = v0[3];
  v22 = v0[4];
  v23 = sub_2186B789C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  (*(v17 + 16))(v16, v15, v19);
  v24 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v17 + 32))(v25 + v24, v16, v19);
  *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v26 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  sub_218680664(&qword_27CC071C0, &qword_27CC06F58, &qword_2186B90F8, MEMORY[0x277D0D520]);
  sub_218680664(&qword_27CC071C8, &qword_27CC06F58, &qword_2186B90F8, MEMORY[0x277D0D500]);
  sub_2186B762C();
  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = sub_2186AB8EC;
  v28 = v0[16];

  return MEMORY[0x282164EA8](v28);
}

uint64_t sub_2186AC3C4()
{
  (*(v0[20] + 8))(v0[23], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2186AC4B4()
{
  (*(v0[20] + 8))(v0[23], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2186AC5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2186AC5CC, 0, 0);
}

uint64_t sub_2186AC5CC()
{
  v1 = (v0[4] + OBJC_IVAR____TtC7GameKit31GKGameActivityDefinitionSupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071D0, &qword_2186B9600);
  v4 = sub_2186B750C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2186B8F70;
  *(v7 + v6) = 0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D0CD50], v4);

  sub_2186ADF1C(v8);
  v0[7] = v7;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_2186AC794;
  v10 = v0[5];
  v11 = v0[2];
  v12 = v0[3];

  return MEMORY[0x282164890](v11, v10, v7, v12, v2, v3);
}

uint64_t sub_2186AC794()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2186AC8D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2186AC8D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2186ACAA8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2186ACB5C;
  v5 = MEMORY[0x277D84F90];

  return sub_2186AB138(v5);
}

uint64_t sub_2186ACB5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2186ACCEC, 0, 0);
  }

  else
  {

    type metadata accessor for GKGameActivityDefinition(v4);
    v5 = sub_2186B7A9C();

    v6 = *(v3 + 24);
    (v6)[2](v6, v5, 0);

    _Block_release(v6);
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_2186ACCEC()
{
  v1 = *(v0 + 40);

  v2 = sub_2186B6F6C();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t GKGameActivityDefinitionSupport.loadGameActivityDefinitions(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2186B750C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186ACE4C, 0, 0);
}

uint64_t sub_2186ACE4C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[5];
    v14 = v0[6];
    v15 = MEMORY[0x277D84F90];
    sub_2186ADAB8(0, v2, 0);
    v3 = v15;
    v13 = *(v4 + 104);
    v5 = (v1 + 40);
    do
    {
      v6 = *v5;
      *v0[6] = *(v5 - 1);
      *(v14 + 8) = v6;
      v13();
      v8 = *(v15 + 16);
      v7 = *(v15 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_2186ADAB8((v7 > 1), v8 + 1, 1);
      }

      v9 = v0[6];
      v10 = v0[4];
      *(v15 + 16) = v8 + 1;
      (*(v4 + 32))(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v9, v10);
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2186AD00C;

  return sub_2186AB138(v3);
}

uint64_t sub_2186AD00C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2186AD1A4;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_2186AD134;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2186AD134()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2186AD1A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2186AD398(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2186B7AAC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_2186AD46C;

  return GKGameActivityDefinitionSupport.loadGameActivityDefinitions(with:)(v5);
}

uint64_t sub_2186AD46C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v8 = sub_2186B6F6C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for GKGameActivityDefinition(v7);
    v11 = sub_2186B7A9C();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v6 + 8);

  return v13();
}

id GKGameActivityDefinitionSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKGameActivityDefinitionSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186AD6F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186AD73C(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_218681150;

  return sub_2186AC5A4(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_2186AD86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2186AD8DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2186ADAB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2186ADC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2186ADB38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_218681150;

  return sub_2186AD398(v2, v3, v4);
}

uint64_t sub_2186ADBEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_2186ACAA8(v2, v3);
}

void *sub_2186ADC98(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071D0, &qword_2186B9600);
  v10 = *(sub_2186B750C() - 8);
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
  v15 = *(sub_2186B750C() - 8);
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

uint64_t sub_2186ADE70(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_2186ADF1C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2186AD8DC(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27CC071D0, &qword_2186B9600, MEMORY[0x277D0CD78]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2186B750C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2186AE06C(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 associatedAchievementDescriptionIDs];
  v6 = sub_2186B7AAC();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = sub_2186AEA2C;
    v9[4] = v4;
    aBlock[4] = sub_2186AEAFC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2186A95E0;
    aBlock[3] = &block_descriptor_85;
    v10 = _Block_copy(aBlock);
    v11 = a1;

    [v8 loadAchievementDescriptionsWithCompletionHandler_];
    _Block_release(v10);
  }

  else
  {
    sub_2186804FC(0, &qword_27CC07078, &off_278236528);
    v12 = sub_2186B7A9C();
    (a2)[2](a2, v12, 0);
  }
}

void sub_2186AE260(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 associatedLeaderboardIDs];
  v6 = sub_2186B7AAC();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = [a1 associatedLeaderboardIDs];
    aBlock[4] = sub_2186AEA00;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2186A9758;
    aBlock[3] = &block_descriptor_75;
    v10 = _Block_copy(aBlock);

    [v8 loadLeaderboardsWithIDs:v9 completionHandler:v10];
    _Block_release(v10);
  }

  else
  {
    sub_2186804FC(0, &qword_27CC06FD8, &off_278236540);
    v11 = sub_2186B7A9C();
    (a2)[2](a2, v11, 0);
  }
}

id sub_2186AE444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, void *a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v68 = a20;
  v69 = a21;
  v64 = a17;
  v65 = a18;
  v63 = a16;
  v66 = a14;
  v67 = a19;
  v61 = a13;
  v62 = a15;
  v59 = a11;
  v60 = a12;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v56 - v29;
  v31 = OBJC_IVAR___GKGameActivityDefinition___minPlayers;
  *&v22[OBJC_IVAR___GKGameActivityDefinition___minPlayers] = 0;
  v32 = &v22[OBJC_IVAR___GKGameActivityDefinition_identifier];
  *v32 = a1;
  v32[1] = a2;
  v33 = &v22[OBJC_IVAR___GKGameActivityDefinition_groupIdentifier];
  *v33 = a3;
  v33[1] = a4;
  v34 = &v22[OBJC_IVAR___GKGameActivityDefinition_title];
  v35 = v56;
  v36 = v57;
  *v34 = a5;
  v34[1] = v35;
  v37 = &v22[OBJC_IVAR___GKGameActivityDefinition_details];
  v38 = v58;
  *v37 = v36;
  v37[1] = v38;
  v22[OBJC_IVAR___GKGameActivityDefinition_supportsPartyCode] = a9;
  sub_2186A7D78(a10, v30, &qword_27CC06D70, &qword_2186B92A0);
  v39 = sub_2186B6FAC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    sub_21867F0B8(v30, &qword_27CC06D70, &qword_2186B92A0);
    v41 = 0;
  }

  else
  {
    v41 = sub_2186B6F8C();
    (*(v40 + 8))(v30, v39);
  }

  *&v22[OBJC_IVAR___GKGameActivityDefinition__fallbackURL] = v41;
  v42 = v59;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_internalMaxPlayers] = v59;
  swift_beginAccess();
  v43 = *&v22[v31];
  v44 = v60;
  *&v22[v31] = v60;
  v45 = v42;
  v46 = v44;

  v47 = v62;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_defaultProperties] = v61;
  v48 = v66;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_imageURL] = v66;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_releaseState] = v47;
  v49 = v64;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_playStyle] = v63;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_associatedLeaderboardIDs] = v49;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_associatedAchievementDescriptionIDs] = v65;
  v50 = &v22[OBJC_IVAR___GKGameActivityDefinition_language];
  v51 = v68;
  *v50 = v67;
  v50[1] = v51;
  v52 = v48;
  v53 = v69;
  *&v22[OBJC_IVAR___GKGameActivityDefinition_partyStartURL] = sub_2186B6F8C();
  v70.receiver = v22;
  v70.super_class = GKGameActivityDefinition;
  v54 = objc_msgSendSuper2(&v70, sel_init);
  (*(v40 + 8))(v53, v39);
  sub_21867F0B8(a10, &qword_27CC06D70, &qword_2186B92A0);
  return v54;
}

uint64_t sub_2186AE764(void *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2186B6FAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  _Block_copy(a2);
  v15 = [a1 imageURL];
  if (v15)
  {
    v16 = v15;
    sub_2186B6F9C();

    (*(v8 + 32))(v13, v11, v7);
    sub_2186804FC(0, &qword_27CC07158, off_278236500);
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_218682758(v6, sub_2186AE9F8, v14);
    sub_21867F0B8(v6, &qword_27CC06D70, &qword_2186B92A0);
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    a2[2](a2, 0, 0);
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2186AEA98(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2186B7E5C() & 1;
  }
}

uint64_t sub_2186AEB0C()
{
  sub_2186AEF8C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071E8, &qword_2186B9610);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071F0, &qword_2186B9618);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v25 = v0;
  sub_2186B780C();
  v16 = *(v3 + 56);
  v16(v15, 0, 1, v2);
  (*(v3 + 104))(v13, *MEMORY[0x277D0D4C8], v2);
  v16(v13, 0, 1, v2);
  v17 = *(v5 + 48);
  sub_2186AEFD4(v15, v7);
  sub_2186AEFD4(v13, &v7[v17]);
  v18 = *(v3 + 48);
  if (v18(v7, 1, v2) == 1)
  {
    sub_21867F0B8(v13, &qword_27CC071F0, &qword_2186B9618);
    sub_21867F0B8(v15, &qword_27CC071F0, &qword_2186B9618);
    if (v18(&v7[v17], 1, v2) == 1)
    {
      sub_21867F0B8(v7, &qword_27CC071F0, &qword_2186B9618);
      return sub_2186B781C();
    }

    goto LABEL_6;
  }

  v19 = v26;
  sub_2186AEFD4(v7, v26);
  if (v18(&v7[v17], 1, v2) == 1)
  {
    sub_21867F0B8(v13, &qword_27CC071F0, &qword_2186B9618);
    sub_21867F0B8(v15, &qword_27CC071F0, &qword_2186B9618);
    (*(v3 + 8))(v19, v2);
LABEL_6:
    sub_21867F0B8(v7, &qword_27CC071E8, &qword_2186B9610);
    return 0;
  }

  v20 = v24;
  (*(v3 + 32))(v24, &v7[v17], v2);
  sub_2186AF044(&qword_27CC071F8, sub_2186AEF8C, MEMORY[0x277D0D4D0]);
  v21 = sub_2186B79EC();
  v22 = *(v3 + 8);
  v22(v20, v2);
  sub_21867F0B8(v13, &qword_27CC071F0, &qword_2186B9618);
  sub_21867F0B8(v15, &qword_27CC071F0, &qword_2186B9618);
  v22(v26, v2);
  sub_21867F0B8(v7, &qword_27CC071F0, &qword_2186B9618);
  if (v21)
  {
    return sub_2186B781C();
  }

  return 0;
}

void sub_2186AEF8C()
{
  if (!qword_27CC071E0)
  {
    v0 = sub_2186B77FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC071E0);
    }
  }
}

uint64_t sub_2186AEFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC071F0, &qword_2186B9618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2186AF044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2186AF184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2186B794C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2186AF21C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_2186B78EC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07200, &unk_2186B9620);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_2186B78BC();
  sub_2186AEB0C();
  v13 = v12;
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    sub_2186AF4A8();
    sub_2186B78AC();
    sub_2186B78CC();
    v14 = *(v2 + 8);
    v14(v7, v1);
    sub_2186B78AC();
    sub_2186B78DC();
    v14(v5, v1);
    sub_2186B7BFC();
  }

  else
  {
    v16 = sub_2186B6FAC();
    return (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
  }
}

unint64_t sub_2186AF4A8()
{
  result = qword_27CC07208;
  if (!qword_27CC07208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC07208);
  }

  return result;
}

uint64_t sub_2186AF500()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_identifier);

  return v1;
}

uint64_t sub_2186AF548()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_groupIdentifier);

  return v1;
}

uint64_t sub_2186AF590()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_title);

  return v1;
}

uint64_t sub_2186AF5D8()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_details);

  return v1;
}

void *sub_2186AF6B8()
{
  v1 = *(v0 + OBJC_IVAR___GKChallengeDefinition_leaderboard);
  v2 = v1;
  return v1;
}

id sub_2186AF718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = (v13 + OBJC_IVAR___GKChallengeDefinition_identifier);
  *v14 = a1;
  v14[1] = a2;
  v15 = (v13 + OBJC_IVAR___GKChallengeDefinition_groupIdentifier);
  *v15 = a3;
  v15[1] = a4;
  v16 = (v13 + OBJC_IVAR___GKChallengeDefinition_title);
  *v16 = a5;
  v16[1] = a6;
  v17 = (v13 + OBJC_IVAR___GKChallengeDefinition_details);
  *v17 = a7;
  v17[1] = a8;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_isRepeatable) = a9;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_durationOptions) = a10;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_leaderboard) = a11;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_imageUrl) = a12;
  *(v13 + OBJC_IVAR___GKChallengeDefinition_releaseState) = a13;
  v19.super_class = GKChallengeDefinition;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_2186AF8E4(uint64_t (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = [v3 imageUrl];
  if (!v9)
  {
    return a1(0, 0);
  }

  v10 = v9;
  sub_2186804FC(0, &qword_27CC07158, off_278236500);
  sub_2186B6F9C();
  v11 = sub_2186B6FAC();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  sub_218682758(v8, a1, a2);

  return sub_21867F0B8(v8, &qword_27CC06D70, &qword_2186B92A0);
}

id GKChallengeDefinition.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2186AFD68()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v8);
  v1 = type metadata accessor for GKChallengeDefinitionSupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v8, &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v3 = &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v3 = &unk_2186B97D0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v4 = sub_2186B03A0;
  v4[1] = 0;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v8);
  qword_27CC07C30 = v5;
  return result;
}

uint64_t sub_2186AFE24(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F10, &qword_2186B90B0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186AFEF0, 0, 0);
}

uint64_t sub_2186AFEF0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[21];
  v8 = v1[19];
  v7 = v1[20];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B8F70;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;

  v10 = sub_2186B7A9C();
  v1[24] = v10;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_2186B0128;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F78, &qword_2186B9130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2186A06D8;
  v1[13] = &block_descriptor_4;
  [v13 loadLeaderboardsWithIDs:v10 completionHandler:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_2186B0128()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2186B0324;
  }

  else
  {
    v2 = sub_2186B0238;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B0238()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    result = sub_2186B7CCC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2186B0324(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2186B03A0()
{
  v0 = [objc_opt_self() playerID];
  v1 = sub_2186B7A0C();

  return v1;
}

void *sub_2186B0400(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  sub_21867FF24(a1, &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v12 = &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v11;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t *sub_2186B04B4()
{
  if (qword_27CC07C28 != -1)
  {
    swift_once();
  }

  return &qword_27CC07C30;
}

id static GKChallengeDefinitionSupport.shared.getter()
{
  if (qword_27CC07C28 != -1)
  {
    swift_once();
  }

  v1 = qword_27CC07C30;

  return v1;
}

void *sub_2186B05BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service]);
  v12 = &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_2186B0690()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07270, &qword_2186B9660);
  *v3 = v0;
  v3[1] = sub_2186B0770;

  return sub_218682BE4((v0 + 2), &unk_2186B9658);
}

uint64_t sub_2186B0770()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2186B08A8;
  }

  else
  {

    v2 = sub_2186B088C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B08A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2186B090C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2186B794C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2186B6EEC();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07198, &qword_2186B94D8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07290, &unk_2186B9770);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_2186B776C();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_2186B778C();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07298, &qword_2186B9780) - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740);
  v2[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072A0, &qword_2186B9788);
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[34] = v9;
  v10 = *(v9 - 8);
  v2[35] = v10;
  v2[36] = *(v10 + 64);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186B0DA0, 0, 0);
}

uint64_t sub_2186B0DA0()
{
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072A8, &qword_2186B9790);
  v2 = sub_2186B779C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2186B8F70;
  *(v5 + v4) = 0;
  v0[39] = v5;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D0D410], v2);
  v6 = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v0[40] = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v7 = (v1 + v6);
  v8 = *(v1 + v6 + 24);
  v9 = *(v1 + v6 + 32);
  __swift_project_boxed_opaque_existential_0(v7, v8);

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_2186B108C;
  v11 = v0[38];

  return MEMORY[0x2821648C8](v11, v5, v8, v9);
}

uint64_t sub_2186B108C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2186B2ED0;
  }

  else
  {

    v2 = sub_2186B11A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B11A8()
{
  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[30];
  v8 = v0[5];
  v9 = sub_2186B789C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v6 + 16))(v3, v1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, v3, v5);
  *(v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  sub_2186B6B18(&qword_27CC072B0, MEMORY[0x277D0D520]);
  sub_2186B6B18(&qword_27CC072B8, MEMORY[0x277D0D500]);
  sub_2186B762C();
  v13 = swift_task_alloc();
  v0[43] = v13;
  *v13 = v0;
  v13[1] = sub_2186B13C4;
  v14 = v0[31];

  return MEMORY[0x282164EA8](v14);
}

uint64_t sub_2186B13C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 248);
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_2186B3228;
  }

  else
  {
    v7 = sub_2186B1538;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2186B1538()
{
  if (*(v0[44] + 16))
  {
    v1 = (v0[5] + v0[40]);
    v0[2] = MEMORY[0x277D84F90];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v2);
    v4 = swift_task_alloc();
    v0[46] = v4;
    *v4 = v0;
    v4[1] = sub_2186B1764;
    v5 = v0[44];

    return MEMORY[0x2821648D0](v5, v2, v3);
  }

  else
  {
    v6 = v0[38];
    v7 = v0[34];
    v8 = v0[35];
    v9 = v0[4];

    (*(v8 + 8))(v6, v7);
    *v9 = MEMORY[0x277D84F90];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2186B1764(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_2186B3384;
  }

  else
  {
    v4 = sub_2186B1898;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B1898()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v100 = *(v3 + 72);
    v6 = (v4 + 48);
    v97 = v4;
    v98 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v10 = *(v0 + 184);
      sub_2186A7D78(v5, v8, &qword_27CC07298, &qword_2186B9780);
      sub_2186B6B68(v8, v9);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(*(v0 + 224), &qword_27CC07298, &qword_2186B9780);
      }

      else
      {
        v11 = *v98;
        (*v98)(*(v0 + 208), *(v0 + 224), *(v0 + 184));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186B6810(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186B6810((v12 > 1), v13 + 1, 1, v7);
        }

        v14 = *(v0 + 208);
        v15 = *(v0 + 184);
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v13], v14, v15);
      }

      v5 += v100;
      --v2;
    }

    while (v2);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 392) = v7;
  v17 = *(v7 + 2);
  *(v0 + 400) = v17;
  if (v17)
  {
    v18 = MEMORY[0x277D84F90];
    v19 = *(v0 + 192);
    *(v0 + 408) = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_leaderboardLoader;
    *(v0 + 464) = *(v19 + 80);
    *(v0 + 468) = *MEMORY[0x277D0D1B0];
    *(v0 + 472) = *MEMORY[0x277D0CEE8];
    *(v0 + 476) = *MEMORY[0x277D0CEF0];
    *(v0 + 480) = *MEMORY[0x277D0CEE0];
    v95 = *(v0 + 384);
    *(v0 + 416) = 0;
    *(v0 + 424) = v18;
    if (!*(v7 + 2))
    {
LABEL_56:
      __break(1u);
      return result;
    }

    v20 = 0;
    v21 = &qword_27CC07290;
    while (1)
    {
      v22 = *(v0 + 468);
      v23 = *(v0 + 176);
      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = *(v0 + 152);
      (*(*(v0 + 192) + 16))(*(v0 + 200), &v7[((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 192) + 72) * v20], *(v0 + 184));
      sub_2186B775C();
      (*(v25 + 16))(v24, v23, v26);
      if ((*(v25 + 88))(v24, v26) == v22)
      {
        v27 = *(v0 + 168);
        v28 = *(v0 + 144);
        v29 = *(v0 + 128);
        v30 = *(v0 + 136);
        (*(*(v0 + 160) + 96))(v27, *(v0 + 152));
        (*(v30 + 32))(v28, v27, v29);
        v31 = sub_2186B783C();
        *(v0 + 432) = v32;
        if (!v95)
        {
          v88 = *(v0 + 176);
          v89 = *(v0 + 152);
          v90 = *(v0 + 160);
          v91 = (*(v0 + 40) + *(v0 + 408));
          v92 = v31;
          v93 = v32;
          (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
          (*(v90 + 8))(v88, v89);
          v102 = (*v91 + **v91);
          v94 = swift_task_alloc();
          *(v0 + 440) = v94;
          *v94 = v0;
          v94[1] = sub_2186B2418;

          return v102(v92, v93);
        }

        v33 = *(v0 + 176);
        v34 = *(v0 + 152);
        v35 = *(v0 + 160);
        v36 = *(v0 + 136);
        v37 = *(v0 + 144);
        v38 = *(v0 + 128);

        (*(v36 + 8))(v37, v38);
        (*(v35 + 8))(v33, v34);
        v95 = 0;
      }

      else
      {
        v39 = *(v0 + 168);
        v40 = *(v0 + 152);
        v41 = *(*(v0 + 160) + 8);
        v41(*(v0 + 176), v40);
        v41(v39, v40);
      }

      v42 = *(v0 + 120);
      sub_2186B76CC();
      v43 = sub_2186B75AC();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) == 1)
      {
        goto LABEL_25;
      }

      v45 = *(v0 + 472);
      v46 = *(v0 + 112);
      sub_2186A7D78(*(v0 + 120), v46, v21, &unk_2186B9770);
      v47 = (*(v44 + 88))(v46, v43);
      if (v47 == v45)
      {
        goto LABEL_25;
      }

      if (v47 != *(v0 + 476))
      {
        break;
      }

      v48 = 2;
LABEL_26:
      v101 = v48;
      sub_21867F0B8(*(v0 + 120), v21, &unk_2186B9770);
      sub_2186B771C();
      sub_2186B774C();
      v50 = v49;
      sub_2186B772C();
      sub_2186B76AC();
      v52 = v51;
      v99 = sub_2186B76BC();
      v53 = *(sub_2186B777C() + 16);
      if (v53)
      {
        v96 = v52;
        v54 = v21;
        *(v0 + 24) = MEMORY[0x277D84F90];
        sub_2186B6BD8(0, v53, 0);
        v55 = *(v0 + 24);
        v56 = 32;
        do
        {
          v57 = *(v0 + 88);

          sub_2186B38F0(v58, v57);

          *(v0 + 24) = v55;
          v60 = *(v55 + 16);
          v59 = *(v55 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_2186B6BD8((v59 > 1), v60 + 1, 1);
            v55 = *(v0 + 24);
          }

          v62 = *(v0 + 80);
          v61 = *(v0 + 88);
          v63 = *(v0 + 72);
          *(v55 + 16) = v60 + 1;
          (*(v62 + 32))(v55 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v60, v61, v63);
          v56 += 8;
          --v53;
        }

        while (v53);

        v21 = v54;
        v52 = v96;
      }

      else
      {
      }

      v64 = *(v0 + 96);
      sub_2186B773C();
      v65 = sub_2186B78FC();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 48))(v64, 1, v65);
      v69 = *(v0 + 96);
      v68 = *(v0 + 104);
      if (v67 == 1)
      {
        sub_21867F0B8(*(v0 + 96), &qword_27CC07198, &qword_2186B94D8);
        v70 = sub_2186B6FAC();
        (*(*(v70 - 8) + 56))(v68, 1, 1, v70);
        v71 = 0;
      }

      else
      {
        sub_2186AF21C(*(v0 + 104));
        (*(v66 + 8))(v69, v65);
        v72 = sub_2186B6FAC();
        v73 = *(v72 - 8);
        v71 = 0;
        if ((*(v73 + 48))(v68, 1, v72) != 1)
        {
          v74 = *(v0 + 104);
          v71 = sub_2186B6F8C();
          (*(v73 + 8))(v74, v72);
        }
      }

      v75 = sub_2186B79FC();

      if (v50)
      {
        v76 = sub_2186B79FC();
      }

      else
      {
        v76 = 0;
      }

      v77 = sub_2186B79FC();

      if (v52)
      {
        v52 = sub_2186B79FC();
      }

      v78 = objc_allocWithZone(GKChallengeDefinition);
      v79 = sub_2186B7A9C();

      [v78 initWithIdentifier:v75 groupIdentifier:v76 title:v77 details:v52 isRepeatable:v99 & 1 durationOptions:v79 leaderboard:0 imageUrl:v71 releaseState:v101];

      MEMORY[0x21CEB10A0]();
      if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2186B7ACC();
      }

      v80 = *(v0 + 400);
      v82 = *(v0 + 192);
      v81 = *(v0 + 200);
      v83 = *(v0 + 184);
      v84 = *(v0 + 416) + 1;
      sub_2186B7AEC();
      result = (*(v82 + 8))(v81, v83);
      v85 = *(v0 + 16);
      if (v84 == v80)
      {

        goto LABEL_50;
      }

      v20 = *(v0 + 416) + 1;
      *(v0 + 416) = v20;
      *(v0 + 424) = v85;
      v7 = *(v0 + 392);
      if (v20 >= *(v7 + 2))
      {
        goto LABEL_56;
      }
    }

    v48 = 2;
    if (v47 == *(v0 + 480))
    {
      goto LABEL_26;
    }

    (*(v44 + 8))(*(v0 + 112), v43);
LABEL_25:
    v48 = 1;
    goto LABEL_26;
  }

  v85 = MEMORY[0x277D84F90];
LABEL_50:
  v86 = *(v0 + 32);
  (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
  *v86 = v85;

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_2186B2418(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {

    v5 = sub_2186B34E0;
  }

  else
  {
    *(v4 + 456) = a1;
    v5 = sub_2186B2578;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2186B2578(uint64_t a1)
{
  v2 = *(v1 + 456);
  v81 = *(v1 + 448);
  while (1)
  {
    v3 = *(v1 + 120);
    sub_2186B76CC();
    v4 = sub_2186B75AC();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v6 = *(v1 + 472);
      v7 = *(v1 + 112);
      sub_2186A7D78(*(v1 + 120), v7, &qword_27CC07290, &unk_2186B9770);
      v8 = (*(v5 + 88))(v7, v4);
      if (v8 != v6)
      {
        if (v8 == *(v1 + 476) || v8 == *(v1 + 480))
        {
          v10 = 2;
          goto LABEL_11;
        }

        (*(v5 + 8))(*(v1 + 112), v4);
      }
    }

    v10 = 1;
LABEL_11:
    v84 = v10;
    sub_21867F0B8(*(v1 + 120), &qword_27CC07290, &unk_2186B9770);
    sub_2186B771C();
    sub_2186B774C();
    v12 = v11;
    sub_2186B772C();
    sub_2186B76AC();
    v14 = v13;
    v83 = sub_2186B76BC();
    v15 = *(sub_2186B777C() + 16);
    if (v15)
    {
      v82 = v14;
      *(v1 + 24) = MEMORY[0x277D84F90];
      sub_2186B6BD8(0, v15, 0);
      v16 = *(v1 + 24);
      v17 = 32;
      do
      {
        v18 = *(v1 + 88);

        sub_2186B38F0(v19, v18);

        *(v1 + 24) = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2186B6BD8((v20 > 1), v21 + 1, 1);
          v16 = *(v1 + 24);
        }

        v23 = *(v1 + 80);
        v22 = *(v1 + 88);
        v24 = *(v1 + 72);
        *(v16 + 16) = v21 + 1;
        (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, v22, v24);
        v17 += 8;
        --v15;
      }

      while (v15);

      v14 = v82;
    }

    else
    {
    }

    v25 = *(v1 + 96);
    sub_2186B773C();
    v26 = sub_2186B78FC();
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v25, 1, v26);
    v29 = *(v1 + 96);
    v30 = *(v1 + 104);
    if (v28 == 1)
    {
      sub_21867F0B8(*(v1 + 96), &qword_27CC07198, &qword_2186B94D8);
      v31 = sub_2186B6FAC();
      (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
      v32 = 0;
    }

    else
    {
      sub_2186AF21C(*(v1 + 104));
      (*(v27 + 8))(v29, v26);
      v33 = sub_2186B6FAC();
      v34 = *(v33 - 8);
      v32 = 0;
      if ((*(v34 + 48))(v30, 1, v33) != 1)
      {
        v35 = *(v1 + 104);
        v32 = sub_2186B6F8C();
        (*(v34 + 8))(v35, v33);
      }
    }

    v36 = v2;
    v37 = sub_2186B79FC();

    if (v12)
    {
      v38 = sub_2186B79FC();
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_2186B79FC();

    if (v14)
    {
      v40 = sub_2186B79FC();
    }

    else
    {
      v40 = 0;
    }

    v41 = objc_allocWithZone(GKChallengeDefinition);
    v42 = sub_2186B7A9C();

    [v41 initWithIdentifier:v37 groupIdentifier:v38 title:v39 details:v40 isRepeatable:v83 & 1 durationOptions:v42 leaderboard:v36 imageUrl:v32 releaseState:v84];

    MEMORY[0x21CEB10A0]();
    if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2186B7ACC();
    }

    v43 = *(v1 + 400);
    v45 = *(v1 + 192);
    v44 = *(v1 + 200);
    v46 = *(v1 + 184);
    v47 = *(v1 + 416) + 1;
    sub_2186B7AEC();

    result = (*(v45 + 8))(v44, v46);
    v49 = *(v1 + 16);
    if (v47 == v43)
    {
      break;
    }

    v50 = *(v1 + 416) + 1;
    *(v1 + 416) = v50;
    *(v1 + 424) = v49;
    v51 = *(v1 + 392);
    if (v50 >= *(v51 + 16))
    {
      __break(1u);
      return result;
    }

    v52 = *(v1 + 468);
    v53 = *(v1 + 176);
    v55 = *(v1 + 160);
    v54 = *(v1 + 168);
    v56 = *(v1 + 152);
    (*(*(v1 + 192) + 16))(*(v1 + 200), v51 + ((*(v1 + 464) + 32) & ~*(v1 + 464)) + *(*(v1 + 192) + 72) * v50, *(v1 + 184));
    sub_2186B775C();
    (*(v55 + 16))(v54, v53, v56);
    if ((*(v55 + 88))(v54, v56) == v52)
    {
      v60 = *(v1 + 168);
      v61 = *(v1 + 144);
      v62 = *(v1 + 128);
      v63 = *(v1 + 136);
      (*(*(v1 + 160) + 96))(v60, *(v1 + 152));
      (*(v63 + 32))(v61, v60, v62);
      v64 = sub_2186B783C();
      *(v1 + 432) = v65;
      if (!v81)
      {
        v74 = *(v1 + 176);
        v75 = *(v1 + 152);
        v76 = *(v1 + 160);
        v77 = (*(v1 + 40) + *(v1 + 408));
        v78 = v64;
        v79 = v65;
        (*(*(v1 + 136) + 8))(*(v1 + 144), *(v1 + 128));
        (*(v76 + 8))(v74, v75);
        v85 = (*v77 + **v77);
        v80 = swift_task_alloc();
        *(v1 + 440) = v80;
        *v80 = v1;
        v80[1] = sub_2186B2418;

        return v85(v78, v79);
      }

      v66 = *(v1 + 176);
      v67 = *(v1 + 152);
      v68 = *(v1 + 160);
      v69 = *(v1 + 136);
      v70 = *(v1 + 144);
      v71 = *(v1 + 128);

      (*(v69 + 8))(v70, v71);
      (*(v68 + 8))(v66, v67);
      v81 = 0;
    }

    else
    {
      v57 = *(v1 + 168);
      v58 = *(v1 + 152);
      v59 = *(*(v1 + 160) + 8);
      v59(*(v1 + 176), v58);
      v59(v57, v58);
    }

    v2 = 0;
  }

  v72 = *(v1 + 32);
  (*(*(v1 + 280) + 8))(*(v1 + 304), *(v1 + 272));
  *v72 = v49;

  v73 = *(v1 + 8);

  return v73();
}

uint64_t sub_2186B2ED0()
{
  v1 = v0[42];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = sub_2186AF0B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[42];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to refresh challenge definitions: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v15 = v0[38];
  v16 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[34];
  v20 = v0[35];
  v21 = v0[30];
  v22 = v0[5];
  v23 = sub_2186B789C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  (*(v20 + 16))(v17, v15, v19);
  v24 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  (*(v20 + 32))(v25 + v24, v17, v19);
  *(v25 + ((v18 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  sub_2186B6B18(&qword_27CC072B0, MEMORY[0x277D0D520]);
  sub_2186B6B18(&qword_27CC072B8, MEMORY[0x277D0D500]);
  sub_2186B762C();
  v27 = swift_task_alloc();
  v0[43] = v27;
  *v27 = v0;
  v27[1] = sub_2186B13C4;
  v28 = v0[31];

  return MEMORY[0x282164EA8](v28);
}

uint64_t sub_2186B3228()
{
  (*(v0[35] + 8))(v0[38], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2186B3384()
{
  (*(v0[35] + 8))(v0[38], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2186B34E0()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2186B365C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_2186B090C(a1, v4);
}

uint64_t sub_2186B36FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2186B3724, 0, 0);
}

uint64_t sub_2186B3724()
{
  v1 = v0[6];
  v2 = (v0[4] + OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2186B37FC;
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x2821648C0](v7, v6, v1, v8, v3, v4);
}

uint64_t sub_2186B37FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2186B38F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072C8, &qword_2186B97B0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v79 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v66[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v75 = &v66[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v66[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v69 = &v66[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v66[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v66[-v16];
  v18 = sub_2186B76FC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v66[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v66[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v82 = &v66[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v81 = &v66[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v66[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v66[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072D0, &qword_2186B97B8);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v66[-v36];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072D8, &qword_2186B97C0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v66[-v39];
  v41 = sub_2186B705C();
  v42 = *(*(v41 - 8) + 56);
  v76 = v40;
  v42(v40, 1, 1, v41);
  v43 = sub_2186B706C();
  v44 = *(*(v43 - 8) + 56);
  v78 = v37;
  v44(v37, 1, 1, v43);
  v45 = *(v19 + 104);
  v45(v34, *MEMORY[0x277D0D148], v18);
  v92 = v34;
  v88 = a1;
  sub_2186B64DC(sub_2186B6BF8, a1, v17);
  v46 = sub_2186B770C();
  v47 = *(v46 - 8);
  v89 = *(v47 + 48);
  v90 = v47 + 48;
  v73 = v89(v17, 1, v46);
  v86 = v47;
  if (v73 == 1)
  {
    sub_21867F0B8(v17, &qword_27CC072C8, &qword_2186B97B0);
    v74 = 0;
  }

  else
  {
    v74 = sub_2186B76EC();
    (*(v47 + 8))(v17, v46);
  }

  v48 = *(v19 + 8);
  v87 = v19 + 8;
  v91 = v48;
  v48(v34, v18);
  v49 = v45;
  v50 = (v45)(v32, *MEMORY[0x277D0D150], v18);
  MEMORY[0x28223BE20](v50);
  v51 = v68;
  v52 = v88;
  sub_2186B64DC(sub_2186B6E58, v88, v68);
  v70 = v89(v51, 1, v46);
  if (v70 == 1)
  {
    sub_21867F0B8(v51, &qword_27CC072C8, &qword_2186B97B0);
    v71 = 0;
  }

  else
  {
    v71 = sub_2186B76EC();
    (*(v86 + 8))(v51, v46);
  }

  v53 = v69;
  v91(v32, v18);
  v54 = v49(v81, *MEMORY[0x277D0D130], v18);
  MEMORY[0x28223BE20](v54);
  sub_2186B64DC(sub_2186B6E58, v52, v53);
  LODWORD(v68) = v89(v53, 1, v46);
  if (v68 == 1)
  {
    sub_21867F0B8(v53, &qword_27CC072C8, &qword_2186B97B0);
    v69 = 0;
    v55 = v86;
  }

  else
  {
    v69 = sub_2186B76EC();
    v55 = v86;
    (*(v86 + 8))(v53, v46);
  }

  v91(v81, v18);
  v56 = v49(v82, *MEMORY[0x277D0D138], v18);
  MEMORY[0x28223BE20](v56);
  v57 = v72;
  sub_2186B64DC(sub_2186B6E58, v52, v72);
  v67 = v89(v57, 1, v46);
  if (v67 == 1)
  {
    sub_21867F0B8(v57, &qword_27CC072C8, &qword_2186B97B0);
    v81 = 0;
  }

  else
  {
    v81 = sub_2186B76EC();
    (*(v55 + 8))(v57, v46);
  }

  v91(v82, v18);
  v58 = v49(v83, *MEMORY[0x277D0D158], v18);
  MEMORY[0x28223BE20](v58);
  v59 = v75;
  sub_2186B64DC(sub_2186B6E58, v52, v75);
  if (v89(v59, 1, v46) == 1)
  {
    sub_21867F0B8(v59, &qword_27CC072C8, &qword_2186B97B0);
    v82 = 0;
    v60 = v86;
  }

  else
  {
    v82 = sub_2186B76EC();
    v60 = v86;
    (*(v86 + 8))(v59, v46);
  }

  v91(v83, v18);
  v61 = v49(v84, *MEMORY[0x277D0D160], v18);
  MEMORY[0x28223BE20](v61);
  v62 = v77;
  sub_2186B64DC(sub_2186B6E58, v88, v77);
  if (v89(v62, 1, v46) == 1)
  {
    sub_21867F0B8(v62, &qword_27CC072C8, &qword_2186B97B0);
  }

  else
  {
    sub_2186B76EC();
    (*(v60 + 8))(v62, v46);
  }

  v63 = v79;
  v91(v84, v18);
  v64 = v49(v85, *MEMORY[0x277D0D140], v18);
  MEMORY[0x28223BE20](v64);
  sub_2186B64DC(sub_2186B6E58, v88, v63);
  if (v89(v63, 1, v46) == 1)
  {
    sub_21867F0B8(v63, &qword_27CC072C8, &qword_2186B97B0);
  }

  else
  {
    sub_2186B76EC();
    (*(v86 + 8))(v63, v46);
  }

  v91(v85, v18);
  return sub_2186B6EDC();
}

uint64_t sub_2186B46BC(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2186B4734, 0, 0);
}

uint64_t sub_2186B4734()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07270, &qword_2186B9660);
  *v3 = v0;
  v3[1] = sub_2186B4814;

  return sub_218682BE4((v0 + 2), &unk_2186B9738);
}

uint64_t sub_2186B4814()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2186B49D8;
  }

  else
  {

    v2 = sub_2186B4930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B4930()
{
  type metadata accessor for GKChallengeDefinition(v1);
  v2 = sub_2186B7A9C();

  v3 = *(v0 + 32);
  (v3)[2](v3, v2, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2186B49D8()
{
  v1 = *(v0 + 56);

  v2 = sub_2186B6F6C();

  v3 = *(v0 + 32);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t GKChallengeDefinitionSupport.hasActiveChallenges(definitionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2186B4AA8, 0, 0);
}

uint64_t sub_2186B4AA8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_2186B4B80;

  return sub_218682BE4(v0 + 64, &unk_2186B9678);
}

uint64_t sub_2186B4B80()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2186B4CB8;
  }

  else
  {

    v2 = sub_2186B4C9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B4CB8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2186B4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2186B794C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07278, &unk_2186B9748);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186B4FBC, 0, 0);
}

uint64_t sub_2186B4FBC()
{
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v1 = sub_2186B77AC();
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[18];
  v21 = v0[5];
  (*(v21 + OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider))(v1);
  sub_2186B786C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07288, &qword_2186B9768);
  v5 = sub_2186B75BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v0[22] = v17;
  *(v17 + 16) = xmmword_2186B9630;
  v9 = v17 + v8;
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x277D0CF88], v5);
  (*(v2 + 16))(v9 + v7, v3, v4);
  v10(v9 + v7, *MEMORY[0x277D0CF80], v5);
  (*(v18 + 16))(v9 + 2 * v7, v20, v19);
  v10(v9 + 2 * v7, *MEMORY[0x277D0CF68], v5);
  v11 = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v0[23] = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v12 = *(v21 + v11 + 24);
  v13 = *(v21 + v11 + 32);
  __swift_project_boxed_opaque_existential_0((v21 + v11), v12);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_2186B5308;
  v15 = v0[15];

  return MEMORY[0x2821648B8](v15, v17, v12, v13);
}

uint64_t sub_2186B5308()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2186B5808;
  }

  else
  {
    v2 = sub_2186B541C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B541C()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = (v0[5] + v0[23]);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = sub_2186B789C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_2186B553C;
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  return MEMORY[0x2821648B0](v9, v8, v1, v10, v4, v5);
}

uint64_t sub_2186B553C()
{
  v2 = *(*v1 + 72);
  *(*v1 + 216) = v0;

  sub_21867F0B8(v2, &qword_27CC06E88, &qword_2186B9740);

  if (v0)
  {
    v3 = sub_2186B5A5C;
  }

  else
  {
    v3 = sub_2186B56A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186B56A0()
{
  v1 = v0[20];
  v16 = v0[19];
  v17 = v0[21];
  v2 = v0[17];
  v13 = v0[16];
  v14 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v15 = v0[2];
  v9 = sub_2186B788C();
  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v17, v16);
  v10 = *(v9 + 16);

  *v15 = v10 != 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186B5808()
{
  v1 = v0[25];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_2186AF0B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to refresh challenges: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v15 = v0[22];
  v16 = v0[9];
  v17 = (v0[5] + v0[23]);
  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_0(v17, v18);
  v20 = sub_2186B789C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = swift_task_alloc();
  v0[26] = v21;
  *v21 = v0;
  v21[1] = sub_2186B553C;
  v22 = v0[15];
  v23 = v0[12];
  v24 = v0[9];

  return MEMORY[0x2821648B0](v23, v22, v15, v24, v18, v19);
}

uint64_t sub_2186B5A5C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2186B5B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2186818F8;

  return sub_2186B4D20(a1, v4, v5, v6);
}

uint64_t sub_2186B5D90(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_2186B7A0C();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](sub_2186B5E1C, 0, 0);
}

uint64_t sub_2186B5E1C()
{
  v5 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2186B5F04;

  return sub_218682BE4(v0 + 72, &unk_2186B9710);
}

uint64_t sub_2186B5F04()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2186B60A8;
  }

  else
  {

    v2 = sub_2186B6028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186B6028()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 72), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2186B60A8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = sub_2186B6F6C();

  (*(v2 + 16))(v2, 0, v4);
  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

id GKChallengeDefinitionSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKChallengeDefinitionSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186B62DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_218681150;

  return sub_2186B5D90(v2, v3, v4);
}

uint64_t sub_2186B6390()
{
  v0 = sub_2186B76FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186B76DC();
  sub_2186B6C28();
  sub_2186B7A7C();
  sub_2186B7A7C();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2186B7E5C();
  }

  (*(v1 + 8))(v3, v0);

  return v4 & 1;
}

uint64_t sub_2186B64DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_2186B770C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_2186B66B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_218681150;

  return sub_2186B4D20(a1, v4, v5, v6);
}

uint64_t sub_2186B6764()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_2186B46BC(v2, v3);
}

void *sub_2186B6810(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072C0, &qword_2186B97A8);
  v10 = *(sub_2186B778C() - 8);
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
  v15 = *(sub_2186B778C() - 8);
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

uint64_t sub_2186B69E8(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2186818F8;

  return sub_2186B36FC(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_2186B6B18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CC07280, &unk_2186B9758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2186B6B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07298, &qword_2186B9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2186B6BD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2186B6C80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2186B6C28()
{
  result = qword_27CC072E0;
  if (!qword_27CC072E0)
  {
    sub_2186B76FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC072E0);
  }

  return result;
}

void *sub_2186B6C80(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072E8, &qword_2186B97C8);
  v10 = *(sub_2186B6EEC() - 8);
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
  v15 = *(sub_2186B6EEC() - 8);
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

id GKAchievementDescription.rarityPercent.getter()
{
  result = [v0 rarityPercent];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}