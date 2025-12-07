unint64_t sub_19A51B91C()
{
  result = qword_1ED823FD0;
  if (!qword_1ED823FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2C30, &qword_19A58F210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED823FD0);
  }

  return result;
}

uint64_t sub_19A51B9CC(uint64_t result, float a2, float a3)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = (a3 - a2) / v3;
    v10 = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v4, 0);
    v7 = 0;
    result = v10;
    v8 = *(v10 + 16);
    do
    {
      v11 = result;
      v9 = *(result + 24);
      if (v8 >= v9 >> 1)
      {
        sub_19A4E44CC((v9 > 1), v8 + 1, 1);
        result = v11;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8++ + 32) = (v6 * v7++) + a2;
    }

    while (v4 != v7);
  }

  return result;
}

void sub_19A51BAC4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = sub_19A4E52CC(v1);
    }

    v4 = 0;
    v5 = v2 + 7;
    do
    {
      if (v4 != v5 - 8)
      {
        v7 = *(v1 + 2);
        if (v4 >= v7)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v5 - 8 >= v7)
        {
          goto LABEL_15;
        }

        v8 = &v1[4 * v4];
        v9 = *(v8 + 8);
        *(v8 + 8) = *&v1[4 * v5];
        *&v1[4 * v5] = v9;
      }

      ++v4;
      v6 = v5 - 9;
      --v5;
    }

    while (v4 < v6);
    *v0 = v1;
  }
}

uint64_t PNDMScheduler.step(output:timeStep:sample:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, size_t inited@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v120 = a1;
  v8 = LODWORD(a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v112 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v112 - v28;
  if ((v8 & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (a4 <= -9.2234e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a4 >= 9.2234e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = v4[3];
  if (!v29)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v30 = v4[2];
  if (v30 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_55;
  }

  v114 = v11;
  v11 = v30 / v29;
  v31 = __OFSUB__(a4, v30 / v29);
  v32 = a4 - v30 / v29;
  if (v31)
  {
    goto LABEL_47;
  }

  v115 = v14;
  v116 = v27;
  v119 = v32;
  *&v126 = a4;
  v128 = v4;
  v8 = v16 + 16;
  v33 = *(v16 + 16);
  v33(v125, v120, v15);
  v129 = v33;
  v33(v127, inited, v15);
  v14 = v128;
  v34 = v128[12] == 1;
  v117 = a3;
  if (v34)
  {
    if (__OFADD__(v126, v11))
    {
      goto LABEL_56;
    }

    inited = v128[13];
    v119 = v126;
    v35 = v126 + v11;
    goto LABEL_18;
  }

  v36 = v128[13];
  v37 = *(v36 + 16);
  if (v37 >= 4)
  {
    sub_19A51D0BC(v36, v36 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v37 - 3, (2 * v37) | 1);
    v14[13] = v38;
  }

  v129(v23, v120, v15);
  inited = v14[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[13] = inited;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v41 = *(inited + 16);
    v40 = *(inited + 24);
    if (v41 >= v40 >> 1)
    {
      inited = sub_19A5147F8((v40 > 1), v41 + 1, 1, inited);
    }

    *(inited + 16) = v41 + 1;
    (*(v16 + 32))(inited + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v41, v23, v15);
    v14[13] = inited;
    v35 = v126;
LABEL_18:
    v121 = v8;
    v42 = *(inited + 16);
    v124 = v16;
    *&v126 = v35;
    if (v42 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
      v64 = *(v16 + 72);
      v65 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_19A5792A0;
      v66 = v129;
      v129(v23 + v65, (inited + v65 + 2 * v64), v15);
      v66(v23 + v65 + v64, inited + v65 + v64, v15);
      v16 = v124;
      v66(v23 + v65 + 2 * v64, inited + v65, v15);
      sub_19A51B91C();
      v67 = sub_19A5726CC();
      v68 = sub_19A57263C();
      MEMORY[0x1EEE9AC00](v68);
      *(&v112 - 4) = v23;
      *(&v112 - 3) = &unk_1F0DB5838;
      *(&v112 - 2) = v67;
      goto LABEL_29;
    }

    if (v42 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
      v16 = v124;
      v59 = *(v124 + 72);
      v60 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_19A576E20;
      v61 = v129;
      v129(v23 + v60, (inited + v60 + v59), v15);
      v61(v23 + v60 + v59, inited + v60, v15);
      sub_19A51B91C();
      v62 = sub_19A5726CC();
      v63 = sub_19A57263C();
      MEMORY[0x1EEE9AC00](v63);
      *(&v112 - 4) = v23;
      *(&v112 - 3) = &unk_1F0DB5808;
      *(&v112 - 2) = v62;
LABEL_29:
      v57 = v116;
      v69 = v118;
      sub_19A5725FC();
      v48 = v69;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
LABEL_30:
      v11 = *(v16 + 8);
      v44 = v125;
      (v11)(v125, v15);
      (*(v16 + 32))(v44, v57, v15);
      v14 = v128;
      goto LABEL_31;
    }

    if (v42 != 1)
    {
      goto LABEL_24;
    }

    v43 = v128[12];
    if (v43 != 1)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
    v16 = v124;
    v99 = *(v124 + 72);
    v100 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_19A576E20;
    v102 = v129;
    v129(v101 + v100, v120, v15);
    v102(v101 + v100 + v99, inited + v100, v15);
    sub_19A51B91C();
    v103 = sub_19A5726CC();
    v104 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v104);
    *(&v112 - 4) = v101;
    *(&v112 - 3) = &unk_1F0DB57D8;
    *(&v112 - 2) = v103;
    v105 = v116;
    v106 = v118;
    sub_19A5725FC();
    v118 = v106;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v44 = v125;
    v120 = *(v16 + 8);
    v120(v125, v15);
    v23 = v16 + 32;
    v116 = *(v16 + 32);
    v116(v44, v105, v15);
    v107 = OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample;
    v14 = v128;
    swift_beginAccess();
    v113 = v107;
    v108 = v114;
    sub_19A51D67C(v14 + v107, v114);
    result = (*(v16 + 48))(v108, 1, v15);
    if (result == 1)
    {
      goto LABEL_60;
    }

    v109 = v127;
    v120(v127, v15);
    v116(v109, v108, v15);
    v110 = v115;
    (*(v16 + 56))(v115, 1, 1, v15);
    v111 = v113;
    swift_beginAccess();
    sub_19A51D57C(v110, v14 + v111);
    swift_endAccess();
    v48 = v118;
    v11 = v120;
LABEL_31:
    v8 = sub_19A51B91C();
    v4 = v44;
    v70 = sub_19A5726CC();
    if ((v126 & 0x8000000000000000) != 0)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v71 = v14[8];
    if (v126 >= *(v71 + 16))
    {
      goto LABEL_49;
    }

    v72 = v14[9];
    if (v126 < *(v72 + 16))
    {
      v73 = v70;
      v118 = v8;
      v120 = v11;
      v11 = v126;
      v74 = *(v71 + 4 * v126 + 32);
      v75 = *(v72 + 4 * v126 + 32);
      v76 = sub_19A57263C();
      MEMORY[0x1EEE9AC00](v76);
      *(&v112 - 4) = v73;
      *(&v112 - 3) = v44;
      *(&v112 - 2) = v127;
      *(&v112 - 2) = v75;
      *(&v112 - 1) = v74;
      v77 = v122;
      sub_19A5725FC();
      v23 = v48;
      v78 = v77;
      v8 = v121;
      v129(v123, v78, v15);
      swift_beginAccess();
      v4 = v14[11];
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v14[11] = v4;
      if (v79)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v4 = sub_19A5147F8(0, v4[2] + 1, 1, v4);
    v14[11] = v4;
LABEL_35:
    inited = v4[2];
    v80 = v4[3];
    v116 = v23;
    if (inited >= v80 >> 1)
    {
      v4 = sub_19A5147F8((v80 > 1), inited + 1, 1, v4);
    }

    v4[2] = inited + 1;
    v81 = v16 + 32;
    v82 = *(v16 + 32);
    v16 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = *(v81 + 40);
    v82(v4 + v16 + v23 * inited, v123, v15);
    v14[11] = v4;
    v83 = v14[6];
    v84 = *(v83 + 16);
    if (v11 >= v84)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v119 >= v84)
    {
      goto LABEL_53;
    }

    v85 = v83 + 32;
    v86 = *(v85 + 4 * v11);
    v87 = *(v85 + 4 * (v119 & ~(v119 >> 63)));
    v88 = sqrtf(v87 / v86);
    v89 = -(v87 - v86) / ((v86 * sqrtf(1.0 - v87)) + sqrtf(v87 * (v86 * (1.0 - v86))));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068, &unk_19A580FB0);
    inited = swift_initStackObject();
    v126 = xmmword_19A576E20;
    *(inited + 16) = xmmword_19A576E20;
    *(inited + 32) = v88;
    *(inited + 40) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
    v90 = swift_allocObject();
    *(v90 + 16) = v126;
    v91 = v90 + v16;
    v92 = v90 + v16;
    v16 = v127;
    v93 = v129;
    v129(v92, v127, v15);
    v94 = v91 + v23;
    v23 = v125;
    v93(v94, v125, v15);
    v14 = v128;
    v95 = sub_19A5726CC();
    v96 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v96);
    *(&v112 - 4) = v90;
    *(&v112 - 3) = inited;
    *(&v112 - 2) = v95;
    sub_19A5725FC();
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    swift_setDeallocating();
    v8 = v120;
    v120(v122, v15);
    (v8)(v16, v15);
    result = (v8)(v23, v15);
    v97 = v14[12];
    v31 = __OFADD__(v97, 1);
    v98 = v97 + 1;
    if (!v31)
    {
      v14[12] = v98;
      return result;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    inited = sub_19A5147F8(0, *(inited + 16) + 1, 1, inited);
    v14[13] = inited;
  }

  if (!v43)
  {
    v16 = v124;
    v44 = v125;
    v11 = *(v124 + 8);
    (v11)(v125, v15);
    v45 = v129;
    v129(v44, v120, v15);
    v46 = v115;
    v45(v115, v127, v15);
    (*(v16 + 56))(v46, 0, 1, v15);
    v47 = OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample;
    v14 = v128;
    swift_beginAccess();
    sub_19A51D57C(v46, v14 + v47);
    swift_endAccess();
    v48 = v118;
    goto LABEL_31;
  }

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v49 = *(v124 + 72);
  v50 = (*(v124 + 80) + 32) & ~*(v124 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_19A57A9D0;
  if (v42)
  {
    v23 = result;
    v52 = result + v50;
    v53 = inited + v50;
    v54 = v129;
    result = (v129)(result + v50, v53 + v49 * (v42 - 1), v15);
    if (v42 == 1)
    {
      goto LABEL_59;
    }

    v54(v52 + v49, v53 + v49 * (v42 - 2), v15);
    v54(v52 + 2 * v49, v53 + v49 * (v42 - 3), v15);
    v54(v52 + 3 * v49, v53 + v49 * (v42 - 4), v15);
    sub_19A51B91C();
    v55 = sub_19A5726CC();
    v56 = sub_19A57263C();
    MEMORY[0x1EEE9AC00](v56);
    *(&v112 - 4) = v23;
    *(&v112 - 3) = &unk_1F0DB5870;
    *(&v112 - 2) = v55;
    v57 = v116;
    v58 = v118;
    sub_19A5725FC();
    v48 = v58;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v16 = v124;
    goto LABEL_30;
  }

  __break(1u);
LABEL_59:
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void *Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19[-v11];
  result = sub_19A57341C();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_19A5733FC();
    v14 = *(v7 + 8);
    v14(v9, AssociatedTypeWitness);
    v15 = sub_19A57345C();
    v17 = v16;
    v18 = swift_getAssociatedTypeWitness();
    (*(*(v18 - 8) + 16))(a4, v17, v18);
    v15(v19, 0);
    return (v14)(v12, AssociatedTypeWitness);
  }

  return result;
}

void *PNDMScheduler.deinit()
{

  sub_19A519560(v0 + OBJC_IVAR____TtC13DiffusionBase13PNDMScheduler_currentSample);
  return v0;
}

uint64_t PNDMScheduler.__deallocating_deinit()
{
  PNDMScheduler.deinit();

  return swift_deallocClassInstance();
}

void sub_19A51CFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_19A51D0BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210) - 8);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
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

uint64_t sub_19A51D274(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_19A5730DC();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_19A51D374(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x19A902E30);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

void sub_19A51D3C0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  vvsqrtf(*a2, (a1 + 32), &v3);
}

void sub_19A51D498(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  sub_19A51D3C0(*a3, a1);
  *a2 = *(v4 + 16);
}

void sub_19A51D4E0(uint64_t a1, void *a2)
{
  v4 = **(v2 + 16);
  sub_19A51D3C0(v4, a1);
  *a2 = *(v4 + 16);
}

uint64_t sub_19A51D57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A51D67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A51D6F0()
{
  result = qword_1EAFA3378;
  if (!qword_1EAFA3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3378);
  }

  return result;
}

uint64_t type metadata accessor for PNDMScheduler(uint64_t a1)
{
  result = qword_1EAFA3380;
  if (!qword_1EAFA3380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A51D7A8(uint64_t a1)
{
  sub_19A51D868(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A51D868(uint64_t a1)
{
  if (!qword_1EAF9E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2C30, &qword_19A58F210);
    v1 = sub_19A57378C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF9E938);
    }
  }
}

uint64_t sub_19A51DB50(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
    v6 = *(v1 + 48);
    v7 = *(v1 + 52);
    do
    {
      *(*v4 + 4 * v3) = (*(result + 4 * v3) - (v6 * *(v5 + 4 * v3))) / v7;
      ++v3;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_19A51DC18(uint64_t a1, float a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110, &unk_19A5906B0);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  if (a2 == 1.0)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33B8, &unk_19A591228);
    v9 = sub_19A2F12E4(&qword_1EAF9E8F0, &qword_1EAFA33B8, &unk_19A591228, MEMORY[0x1E695FD48]);
    v7 = vdupq_n_s64(1uLL);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    sub_19A57272C();
    sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110, &unk_19A5906B0, MEMORY[0x1E695FD40]);
    sub_19A5726BC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
    return;
  }

  v5 = sub_19A57263C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v5 + 16))
    {
LABEL_5:
      *(v5 + 32) = 1;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v7 - 2) = a1;
      *(&v7 - 2) = a2;

      sub_19A5725FC();

      return;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = sub_19A4E527C(v5);
    v5 = isUniquelyReferenced_nonNull_native;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_19A51DE8C(uint64_t a1, float a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110, &unk_19A5906B0);
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  if (a2 == 1.0)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33B8, &unk_19A591228);
    v9 = sub_19A2F12E4(&qword_1EAF9E8F0, &qword_1EAFA33B8, &unk_19A591228, MEMORY[0x1E695FD48]);
    v7 = vdupq_n_s64(1uLL);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    sub_19A57272C();
    sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110, &unk_19A5906B0, MEMORY[0x1E695FD40]);
    sub_19A5726BC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
    return;
  }

  v5 = sub_19A57263C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v5 + 16))
    {
LABEL_5:
      *(v5 + 32) = 1;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v7 - 2) = a1;
      *(&v7 - 2) = a2;

      sub_19A5725FC();

      return;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = sub_19A4E527C(v5);
    v5 = isUniquelyReferenced_nonNull_native;
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

__n128 DiffusionBaseXLPipeline.init(textEncoder:textEncoder2:unet:unetRefiner:decoder:encoder:reduceMemory:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12, char a13)
{
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  sub_19A51E1B8(a1, a9);
  sub_19A51E1B8(a2, a9 + 40);
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  result = a10;
  *(a9 + 128) = a10;
  *(a9 + 144) = a11;
  *(a9 + 152) = a12;
  *(a9 + 160) = a13;
  return result;
}

uint64_t sub_19A51E1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3390, &qword_19A5910D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiffusionBaseXLPipeline.loadResources()()
{
  if (*(v0 + 160) == 1)
  {
    DiffusionBaseXLPipeline.prewarmResources()();
    return;
  }

  sub_19A33546C(v0 + 40, &v61, &qword_1EAFA3390, &qword_19A5910D0);
  v1 = v63;
  if (v63)
  {
    v2 = v64;
    __swift_project_boxed_opaque_existential_1(&v61, v63);
    (*(*(v2 + 8) + 8))(v1);
    __swift_destroy_boxed_opaque_existential_0Tm(&v61);
    if (v59)
    {
      return;
    }
  }

  else
  {
    sub_19A2F3FA0(&v61, &qword_1EAFA3390, &qword_19A5910D0);
  }

  v3 = *(v0 + 80);
  if (v3 >> 62)
  {
    goto LABEL_24;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v0)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v53 = v4;
    v55 = v3;
    v52 = v3 & 0xFFFFFFFFFFFFFF8;
    while (v6)
    {
      v8 = MEMORY[0x19A901520](v5, v3);
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      v57 = v9;
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v10 = sub_19A5723FC();
      __swift_project_value_buffer(v10, qword_1ED82BD48);

      v11 = sub_19A5723DC();
      v12 = sub_19A57354C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v61 = v14;
        *v13 = 136446210;
        v15 = sub_19A57397C();
        v17 = v6;
        v18 = sub_19A31F114(v15, v16, &v61);
        v3 = v55;

        *(v13 + 4) = v18;
        v6 = v17;
        _os_log_impl(&dword_19A2DE000, v11, v12, "Loading resources for %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        v19 = v14;
        v7 = v52;
        MEMORY[0x19A902C50](v19, -1, -1);
        v20 = v13;
        v4 = v53;
        MEMORY[0x19A902C50](v20, -1, -1);
      }

      v0 = *(v8 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
      sub_19A5735DC();

      if (v59)
      {
        return;
      }

      ++v5;
      if (v57 == v4)
      {
        goto LABEL_25;
      }
    }

    if (v5 >= *(v7 + 16))
    {
      goto LABEL_23;
    }

    v8 = *(v3 + 8 * v5 + 32);

    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v4 = sub_19A573B4C();
  }

LABEL_25:
  v21 = i[13];
  ManagedMLModel.loadResources()();
  v60 = v22;
  if (!v22)
  {
    sub_19A4E3544();
    if (v21)
    {
      ManagedMLModel.loadResources()();
      v60 = v23;
      if (v23)
      {

        v60 = 0;
      }

      sub_19A4E3544();
    }

    sub_19A33546C(i, &v61, &qword_1EAFA3390, &qword_19A5910D0);
    v24 = v63;
    if (v63)
    {
      v25 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      (*(*(v25 + 8) + 8))(v24);
      __swift_destroy_boxed_opaque_existential_0Tm(&v61);
      if (v60)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_19A576E10;
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD000000000000029, 0x800000019A59D2C0);
        v65 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
        sub_19A573ACC();
        v27 = v61;
        v28 = v62;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 32) = v27;
        *(v26 + 40) = v28;
        sub_19A5740AC();

        v60 = 0;
      }
    }

    else
    {
      sub_19A2F3FA0(&v61, &qword_1EAFA3390, &qword_19A5910D0);
    }

    v56 = i[11];
    if (!v56)
    {
      goto LABEL_53;
    }

    v29 = v56 & 0xFFFFFFFFFFFFFF8;
    if (v56 >> 62)
    {
      goto LABEL_58;
    }

    v54 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v54)
    {
LABEL_53:
      if (i[16])
      {
        ManagedMLModel.loadResources()();
        if (v46)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_19A576E10;
          v61 = 0;
          v62 = 0xE000000000000000;
          sub_19A57395C();
          MEMORY[0x19A900A50](0xD000000000000029, 0x800000019A59D260);
          v65 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
          sub_19A573ACC();
          v48 = v61;
          v49 = v62;
          *(v47 + 56) = MEMORY[0x1E69E6158];
          *(v47 + 32) = v48;
          *(v47 + 40) = v49;
          sub_19A5740AC();
        }
      }

      return;
    }

LABEL_38:
    v30 = 0;
    v31 = &qword_1ED824000;
    v51 = v29;
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](v30, v56);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v30 >= *(v29 + 16))
        {
          goto LABEL_57;
        }

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          v54 = sub_19A573B4C();
          if (!v54)
          {
            goto LABEL_53;
          }

          goto LABEL_38;
        }
      }

      v58 = v32;
      if (v31[424] != -1)
      {
        swift_once();
      }

      v33 = sub_19A5723FC();
      __swift_project_value_buffer(v33, qword_1ED82BD48);

      v34 = sub_19A5723DC();
      v35 = sub_19A57354C();

      v36 = v35;
      if (os_log_type_enabled(v34, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v61 = v38;
        *v37 = 136446210;
        v39 = sub_19A57397C();
        v41 = sub_19A31F114(v39, v40, &v61);
        v31 = &qword_1ED824000;

        *(v37 + 4) = v41;
        _os_log_impl(&dword_19A2DE000, v34, v36, "Loading resources for %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x19A902C50](v38, -1, -1);
        v42 = v37;
        v29 = v51;
        MEMORY[0x19A902C50](v42, -1, -1);
      }

      sub_19A5735DC();
      if (v60)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_19A576E10;
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD000000000000029, 0x800000019A59D290);
        v65 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
        sub_19A573ACC();
        v44 = v61;
        v45 = v62;
        *(v43 + 56) = MEMORY[0x1E69E6158];
        *(v43 + 32) = v44;
        *(v43 + 40) = v45;
        sub_19A5740AC();

        goto LABEL_53;
      }

      ManagedMLModel.unloadResources()();

      ++v30;
      if (v58 == v54)
      {
        goto LABEL_53;
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiffusionBaseXLPipeline.prewarmResources()()
{
  v1 = v0;
  sub_19A33546C((v0 + 5), &v52, &qword_1EAFA3390, &qword_19A5910D0);
  v2 = v54;
  if (v54)
  {
    v3 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    sub_19A5667D0(v2, *(v3 + 8));
    __swift_destroy_boxed_opaque_existential_0Tm(&v52);
    if (v51)
    {
      return;
    }
  }

  else
  {
    sub_19A2F3FA0(&v52, &qword_1EAFA3390, &qword_19A5910D0);
  }

  v4 = v1[10];
  if (v4 >> 62)
  {
    goto LABEL_59;
  }

  v47 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v42 = v1;
  if (v47)
  {
    v5 = 0;
    v44 = v4 & 0xFFFFFFFFFFFFFF8;
    v46 = v4 & 0xC000000000000001;
    v43 = v4;
    do
    {
      if (v46)
      {
        v1 = MEMORY[0x19A901520](v5, v4);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v5 >= *(v44 + 16))
        {
          goto LABEL_56;
        }

        v1 = *(v4 + 8 * v5 + 32);

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v47 = sub_19A573B4C();
          goto LABEL_7;
        }
      }

      v49 = v6;
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v7 = sub_19A5723FC();
      __swift_project_value_buffer(v7, qword_1ED82BD48);

      v8 = sub_19A5723DC();
      v9 = sub_19A57354C();

      v10 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v52 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = sub_19A31F114(v13, v14, &v52);
        v4 = v43;

        *(v11 + 4) = v15;
        _os_log_impl(&dword_19A2DE000, v8, v10, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        MEMORY[0x19A902C50](v11, -1, -1);
      }

      sub_19A5735DC();
      if (v51)
      {

        return;
      }

      ManagedMLModel.unloadResources()();

      ++v5;
    }

    while (v49 != v47);
  }

  v16 = v42[13];
  ManagedMLModel.loadResources()();
  v51 = v17;
  if (!v17)
  {
    sub_19A4E3544();
    if (v16)
    {
      ManagedMLModel.loadResources()();
      v51 = v18;
      if (v18)
      {

        v51 = 0;
      }

      sub_19A4E3544();
      ManagedMLModel.unloadResources()();
    }

    ManagedMLModel.unloadResources()();
    sub_19A33546C(v42, &v52, &qword_1EAFA3390, &qword_19A5910D0);
    v19 = v54;
    if (v54)
    {
      v20 = v55;
      __swift_project_boxed_opaque_existential_1(&v52, v54);
      sub_19A5667D0(v19, *(v20 + 8));
      __swift_destroy_boxed_opaque_existential_0Tm(&v52);
      if (v51)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_19A576E10;
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD00000000000002CLL, 0x800000019A59D350);
        v56 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
        sub_19A573ACC();
        v22 = v52;
        v23 = v53;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 32) = v22;
        *(v21 + 40) = v23;
        sub_19A5740AC();

        v51 = 0;
      }
    }

    else
    {
      sub_19A2F3FA0(&v52, &qword_1EAFA3390, &qword_19A5910D0);
    }

    v48 = v42[11];
    if (v48)
    {
      if (v48 >> 62)
      {
        v45 = sub_19A573B4C();
        if (v45)
        {
LABEL_35:
          v24 = 0;
          v4 = v48 & 0xC000000000000001;
          v1 = qword_1ED82BD48;
          while (1)
          {
            if (v4)
            {
              MEMORY[0x19A901520](v24, v48);
              v25 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_57;
              }
            }

            else
            {
              if (v24 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v25 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_57;
              }
            }

            v50 = v25;
            if (qword_1ED824D40 != -1)
            {
              swift_once();
            }

            v26 = sub_19A5723FC();
            __swift_project_value_buffer(v26, qword_1ED82BD48);

            v27 = sub_19A5723DC();
            v28 = sub_19A57354C();

            v29 = v28;
            if (os_log_type_enabled(v27, v28))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v52 = v31;
              *v30 = 136446210;
              v32 = sub_19A57397C();
              v34 = sub_19A31F114(v32, v33, &v52);
              v4 = v48 & 0xC000000000000001;

              *(v30 + 4) = v34;
              _os_log_impl(&dword_19A2DE000, v27, v29, "Loading resources for %{public}s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v31);
              MEMORY[0x19A902C50](v31, -1, -1);
              MEMORY[0x19A902C50](v30, -1, -1);
            }

            sub_19A5735DC();
            if (v51)
            {
              break;
            }

            ManagedMLModel.unloadResources()();

            ++v24;
            if (v50 == v45)
            {
              goto LABEL_50;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_19A576E10;
          v52 = 0;
          v53 = 0xE000000000000000;
          sub_19A57395C();
          MEMORY[0x19A900A50](0xD00000000000002CLL, 0x800000019A59D320);
          v56 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
          sub_19A573ACC();
          v36 = v52;
          v37 = v53;
          *(v35 + 56) = MEMORY[0x1E69E6158];
          *(v35 + 32) = v36;
          *(v35 + 40) = v37;
          sub_19A5740AC();
        }
      }

      else
      {
        v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_50:
    if (v42[16])
    {
      ManagedMLModel.loadResources()();
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_19A576E10;
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD00000000000002CLL, 0x800000019A59D2F0);
        v56 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
        sub_19A573ACC();
        v40 = v52;
        v41 = v53;
        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        sub_19A5740AC();
      }

      else
      {
        ManagedMLModel.unloadResources()();
      }
    }
  }
}

Swift::Void __swiftcall DiffusionBaseXLPipeline.unloadResources()()
{
  v1 = v0;
  sub_19A33546C(v0, v12, &qword_1EAFA3390, &qword_19A5910D0);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(*(v3 + 8) + 16))(v2);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_19A2F3FA0(v12, &qword_1EAFA3390, &qword_19A5910D0);
  }

  sub_19A33546C((v1 + 5), v12, &qword_1EAFA3390, &qword_19A5910D0);
  v4 = v13;
  if (v13)
  {
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(*(v5 + 8) + 16))(v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    sub_19A2F3FA0(v12, &qword_1EAFA3390, &qword_19A5910D0);
  }

  v6 = v1[10];
  if (v6 >> 62)
  {
    v7 = sub_19A573B4C();
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](i, v6);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_16:
  v6 = v1[11];
  if (!v6)
  {
    goto LABEL_27;
  }

  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_26:
  v9 = sub_19A573B4C();
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_19:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (j = 0; j != v9; ++j)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](j, v6);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_27:
  v11 = v1[13];
  ManagedMLModel.unloadResources()();
  if (v11)
  {
    ManagedMLModel.unloadResources()();
  }

  if (v1[16])
  {
    ManagedMLModel.unloadResources()();
  }
}

uint64_t DiffusionBaseXLPipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[47] = a6;
  v7[48] = v6;
  v7[45] = a1;
  v7[46] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  v7[49] = swift_task_alloc();
  v7[50] = type metadata accessor for PipelineProgress(0);
  v7[51] = swift_task_alloc();
  v8 = sub_19A57296C();
  v7[52] = v8;
  v7[53] = *(v8 - 8);
  v7[54] = swift_task_alloc();
  v9 = sub_19A57298C();
  v7[55] = v9;
  v7[56] = *(v9 - 8);
  v7[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2630, &qword_19A58F840);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v7[64] = v10;
  v7[65] = *(v10 - 8);
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3398, &qword_19A5910E8);
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A51FAA4, 0, 0);
}

void sub_19A51FAA4()
{
  v261 = v0;
  v1 = v0;
  v2 = *(v0[48] + 80);
  Unet.latentTimeIdShape.getter(v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v3 + 8 * v4 + 24);

    v6 = v5 == 5;
  }

  else
  {

    v6 = 0;
  }

  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[48];
  v10 = type metadata accessor for DiffusionBaseXLPipeline.ModelInputs(0);
  v224 = *(v10 - 8);
  v11 = *(v224 + 56);
  v11(v7, 1, 1, v10);
  v223 = v10;
  v11(v8, 1, 1, v10);
  sub_19A33546C(v9, (v1 + 64), &qword_1EAFA3390, &qword_19A5910D0);
  v12 = *(v1 + 11);
  sub_19A2F3FA0((v1 + 64), &qword_1EAFA3390, &qword_19A5910D0);
  if (v12)
  {
    sub_19A522344(*(v1 + 45), v6, *(v1 + 80));
    v13 = *(v1 + 82);
    v14 = *(v1 + 80);
    sub_19A2F3FA0(v13, &qword_1EAFA3398, &qword_19A5910E8);
    v11(v14, 0, 1, v223);
    sub_19A3351B8(v14, v13, &qword_1EAFA3398, &qword_19A5910E8);
  }

  v15 = *(v1 + 48);
  v221 = *(v15 + 88);
  if ((v221 != 0) | v6 & 1)
  {
    sub_19A522344(*(v1 + 45), 1u, *(v1 + 79));
    v16 = *(v1 + 81);
    v17 = *(v1 + 79);
    sub_19A2F3FA0(v16, &qword_1EAFA3398, &qword_19A5910E8);
    v245 = v11;
    v11(v17, 0, 1, v223);
    sub_19A3351B8(v17, v16, &qword_1EAFA3398, &qword_19A5910E8);
    v15 = *(v1 + 48);
  }

  else
  {
    v245 = v11;
  }

  v18 = *(v15 + 160);
  if (v18 == 1)
  {
    sub_19A33546C(v15, (v1 + 264), &qword_1EAFA3390, &qword_19A5910D0);
    v19 = *(v1 + 36);
    if (v19)
    {
      v20 = *(v1 + 37);
      __swift_project_boxed_opaque_existential_1(v1 + 33, *(v1 + 36));
      (*(*(v20 + 8) + 16))(v19);
      __swift_destroy_boxed_opaque_existential_0Tm(v1 + 33);
    }

    else
    {
      sub_19A2F3FA0((v1 + 264), &qword_1EAFA3390, &qword_19A5910D0);
    }

    sub_19A33546C(*(v1 + 48) + 40, (v1 + 304), &qword_1EAFA3390, &qword_19A5910D0);
    v21 = *(v1 + 41);
    if (v21)
    {
      v22 = *(v1 + 42);
      __swift_project_boxed_opaque_existential_1(v1 + 38, *(v1 + 41));
      (*(*(v22 + 8) + 16))(v21);
      __swift_destroy_boxed_opaque_existential_0Tm(v1 + 38);
    }

    else
    {
      sub_19A2F3FA0((v1 + 304), &qword_1EAFA3390, &qword_19A5910D0);
    }
  }

  v23 = *(v1 + 45);
  v24 = type metadata accessor for PipelineConfiguration(0);
  v25 = *(v23 + *(v24 + 76));
  if (v25 < 0)
  {
    goto LABEL_137;
  }

  v220 = v24;
  v26 = *(v1 + 48);
  v27 = swift_task_alloc();
  *(v27 + 16) = v23;
  *(v27 + 24) = v26;
  v28 = sub_19A4DAA34(sub_19A524C30, v27, 0, v25);

  if (!*(v28 + 16))
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v29 = *(v1 + 45);
  v30 = v28 + 32;
  sub_19A2F3EF0(v28 + 32, (v1 + 104));
  v31 = sub_19A522EF0(v29, v1 + 13);
  v32 = v28;
  v34 = v31;
  v232 = v32;
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 13);
  v35 = *(v34 + 16);
  v242 = v34;
  v233 = v2;
  v227 = v25;
  v216 = v30;
  v208 = v18;
  if (v35)
  {
    v36 = *(v1 + 65);
    v260[0] = MEMORY[0x1E69E7CC0];

    sub_19A4E436C(0, v35, 0);
    v37 = v260[0];
    v38 = *(v36 + 16);
    v36 += 16;
    v253 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v255 = v38;
    v39 = v34 + v253;
    v249 = (v36 - 8);
    v251 = *(v36 + 56);
    v248 = (v36 + 16);
    do
    {
      v40 = *(v1 + 75);
      v41 = *(v1 + 74);
      v42 = *(v1 + 64);
      v255(v40, v39, v42);
      v255(v41, v40, v42);
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
      sub_19A5726BC();
      (*v249)(v40, v42);
      v260[0] = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_19A4E436C((v43 > 1), v44 + 1, 1);
        v37 = v260[0];
      }

      v45 = *(v1 + 76);
      v46 = *(v1 + 64);
      *(v37 + 16) = v44 + 1;
      (*v248)(v37 + v253 + v44 * v251, v45, v46);
      v39 += v251;
      --v35;
    }

    while (v35);
    v247 = v37;

    v2 = v233;
    v18 = v208;
  }

  else
  {
    v247 = MEMORY[0x1E69E7CC0];
  }

  v47 = v220;
  if ((v18 & 1) != 0 && *(*(v1 + 48) + 128))
  {
    ManagedMLModel.unloadResources()();
    v47 = v220;
  }

  v48 = *(v1 + 45);
  if (*(v48 + v47[14]))
  {
    v49 = *(v48 + v47[16]);
    v50 = LODWORD(v49);
    if (v49 >= 1.0)
    {
      v50 = 0;
    }

    v258 = v50;
    v51 = v49 >= 1.0;
  }

  else
  {
    v258 = 0;
    v51 = 1;
  }

  v52 = *(v1 + 77);
  sub_19A33546C(*(v1 + 82), v52, &qword_1EAFA3398, &qword_19A5910E8);
  v53 = *(v224 + 48);
  if (v53(v52, 1, v223) == 1)
  {
    v54 = *(v1 + 77);
    sub_19A33546C(*(v1 + 81), *(v1 + 78), &qword_1EAFA3398, &qword_19A5910E8);
    LODWORD(v54) = v53(v54, 1, v223);

    if (v54 != 1)
    {
      sub_19A2F3FA0(*(v1 + 77), &qword_1EAFA3398, &qword_19A5910E8);
    }
  }

  else
  {
    v55 = *(v1 + 78);
    sub_19A524D6C(*(v1 + 77), v55);
    v245(v55, 0, 1, v223);
  }

  v56 = *(v1 + 78);
  v57 = 1;
  if (!v53(v56, 1, v223))
  {
    (*(*(v1 + 65) + 16))(*(v1 + 63), v56, *(v1 + 64));
    v57 = 0;
    v56 = *(v1 + 78);
  }

  v58 = *(*(v1 + 65) + 56);
  v59 = 1;
  v58(*(v1 + 63), v57, 1, *(v1 + 64));
  if (!v53(v56, 1, v223))
  {
    (*(*(v1 + 65) + 16))(*(v1 + 62), *(v1 + 78) + *(v223 + 20), *(v1 + 64));
    v59 = 0;
  }

  v60 = *(v1 + 78);
  v58(*(v1 + 62), v59, 1, *(v1 + 64));
  v210 = v58;
  if (v53(v60, 1, v223))
  {
    v219 = 0;
  }

  else
  {
    v219 = *(*(v1 + 78) + *(v223 + 24));
    v61 = v219;
  }

  v62 = *(v1 + 45);
  sub_19A2F3EF0(v216, (v1 + 144));
  v63 = *(v1 + 21);
  v64 = *(v1 + 22);
  __swift_project_boxed_opaque_existential_1(v1 + 18, v63);
  v65 = *(v64 + 32);
  LOBYTE(v260[0]) = v51;
  v66 = v65(v258 | (v51 << 32), v63, v64);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 18);
  v67 = *(v66 + 16);
  v68 = *(v62 + v220[18]) * v67;
  if (COERCE_INT(fabs(v68)) > 2139095039)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v69 = v242;
  if (v68 <= -9.2234e18)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    v177 = sub_19A573B4C();
    if (!v177)
    {
      goto LABEL_145;
    }

    goto LABEL_117;
  }

  if (v68 >= 9.2234e18)
  {
    goto LABEL_142;
  }

  v70 = v66;
  if (v67)
  {
    v71 = 0;
    aBlock = v1 + 16;
    v72 = *(v1 + 65);
    v213 = v66 + 32;
    v250 = (v72 + 8);
    v252 = (v72 + 16);
    v209 = v68;
    v246 = (v72 + 32);
    v203 = v2 & 0xFFFFFFFFFFFFFF8;
    v230 = v2 & 0xC000000000000001;
    v228 = (*(v1 + 56) + 8);
    v229 = (*(v1 + 53) + 8);
    v205 = *(v1 + 50);
    v206 = *(v1 + 51);
    v212 = (v72 + 48);
    v204 = *(v1 + 45);
    v226 = v72;
    v235 = (v72 + 40);
    v218 = v2;
    v259 = v1;
    v215 = v53;
    v211 = v66;
    v207 = *(v66 + 16);
    while (1)
    {
      if (v71 >= *(v70 + 16))
      {
        goto LABEL_139;
      }

      v73 = *(v213 + 4 * v71);
      v74 = *(v69 + 2);
      v243 = v69;
      v217 = v71;
      if (v74)
      {
        v260[0] = MEMORY[0x1E69E7CC0];
        v75 = v69;
        sub_19A4E436C(0, v74, 0);
        v76 = v260[0];
        v77 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        v78 = &v75[v77];
        v79 = *(v226 + 72);
        v238 = *(v226 + 16);
        v236 = v77;
        do
        {
          v80 = v1;
          v81 = v77;
          v82 = *(v80 + 75);
          v256 = v74;
          v83 = *(v80 + 64);
          v238(v82, v78, v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_19A576E20;
          v85 = v84 + v81;
          v238(v85, v82, v83);
          v238((v85 + v79), v82, v83);
          *(v80 + 43) = v84;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50, &qword_19A58FFF0);
          sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50, &qword_19A58FFF0, MEMORY[0x1E69E6328]);
          sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
          sub_19A5725EC();
          (*v250)(v82, v83);
          v260[0] = v76;
          v87 = *(v76 + 16);
          v86 = *(v76 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_19A4E436C((v86 > 1), v87 + 1, 1);
            v76 = v260[0];
          }

          v88 = *(v80 + 73);
          v89 = *(v80 + 64);
          *(v76 + 16) = v87 + 1;
          (*v246)(v76 + v236 + v87 * v79, v88, v89);
          v78 += v79;
          v74 = v256 - 1;
          v1 = v80;
          v77 = v236;
        }

        while (v256 != 1);
        v239 = v76;
        v2 = v233;
        v71 = v217;
        if (!v221)
        {
LABEL_75:
          v106 = v212;
          goto LABEL_85;
        }
      }

      else
      {
        v239 = MEMORY[0x1E69E7CC0];
        if (!v221)
        {
          goto LABEL_75;
        }
      }

      if (v71 != v209)
      {
        goto LABEL_75;
      }

      if (v2 >> 62)
      {
        v90 = sub_19A573B4C();
        if (v90)
        {
LABEL_65:
          if (v90 < 1)
          {
            goto LABEL_143;
          }

          v91 = 0;
          v240 = v90;
          do
          {
            if (v230)
            {
              v97 = MEMORY[0x19A901520](v91, v2);
            }

            else
            {
              v97 = *(v2 + 8 * v91 + 32);
            }

            if (qword_1ED824D40 != -1)
            {
              swift_once();
            }

            v98 = sub_19A5723FC();
            __swift_project_value_buffer(v98, qword_1ED82BD48);

            v99 = sub_19A5723DC();
            v100 = sub_19A57354C();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v260[0] = v102;
              *v101 = 136446210;
              v103 = sub_19A57397C();
              v105 = sub_19A31F114(v103, v104, v260);

              *(v101 + 4) = v105;
              _os_log_impl(&dword_19A2DE000, v99, v100, "Unloading resources for %{public}s", v101, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v102);
              MEMORY[0x19A902C50](v102, -1, -1);
              MEMORY[0x19A902C50](v101, -1, -1);
            }

            ++v91;
            v92 = *(v259 + 57);
            v257 = *(v259 + 55);
            v93 = *(v259 + 54);
            v94 = *(v259 + 52);
            *(v259 + 6) = sub_19A524C84;
            *(v259 + 7) = v97;
            *(v259 + 2) = MEMORY[0x1E69E9820];
            *(v259 + 3) = 1107296256;
            *(v259 + 4) = sub_19A56A960;
            *(v259 + 5) = &block_descriptor_12;
            v95 = _Block_copy(aBlock);

            sub_19A57297C();
            *(v259 + 44) = MEMORY[0x1E69E7CC0];
            sub_19A524CA4();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33A0, &unk_19A595160);
            sub_19A2F12E4(&qword_1EAF9E888, &qword_1EAFA33A0, &unk_19A595160, MEMORY[0x1E69E6328]);
            sub_19A57388C();
            MEMORY[0x19A901160](0, v92, v93, v95);
            _Block_release(v95);
            (*v229)(v93, v94);
            v96 = v92;
            v1 = v259;
            (*v228)(v96, v257);

            v2 = v233;
          }

          while (v240 != v91);
        }
      }

      else
      {
        v90 = *(v203 + 16);
        if (v90)
        {
          goto LABEL_65;
        }
      }

      v107 = *(v1 + 81);
      v108 = *(v1 + 78);
      v110 = *(v1 + 62);
      v109 = *(v1 + 63);

      sub_19A2F3FA0(v110, &qword_1EAFA2630, &qword_19A58F840);
      sub_19A2F3FA0(v109, &qword_1EAFA2630, &qword_19A58F840);
      sub_19A524CFC(v107, v108);
      v111 = 1;
      if (!v215(v108, 1, v223))
      {
        (*v252)(*(v1 + 61), *(v1 + 78), *(v1 + 64));
        v111 = 0;
      }

      v112 = *(v1 + 78);
      v113 = *(v1 + 63);
      v114 = *(v1 + 61);
      v115 = 1;
      v210(v114, v111, 1, *(v1 + 64));
      sub_19A3351B8(v114, v113, &qword_1EAFA2630, &qword_19A58F840);
      if (!v215(v112, 1, v223))
      {
        (*v252)(*(v1 + 60), *(v1 + 78) + *(v223 + 20), *(v1 + 64));
        v115 = 0;
      }

      v116 = *(v1 + 78);
      v117 = *(v1 + 62);
      v118 = *(v1 + 60);
      v210(v118, v115, 1, *(v1 + 64));
      sub_19A3351B8(v118, v117, &qword_1EAFA2630, &qword_19A58F840);
      if (v215(v116, 1, v223))
      {
        v219 = 0;
      }

      else
      {
        v219 = *(*(v1 + 78) + *(v223 + 24));
        v119 = v219;
      }

      v218 = v221;
      v106 = v212;
LABEL_85:
      v120 = *(v1 + 64);
      v121 = *(v1 + 59);
      sub_19A33546C(*(v1 + 63), v121, &qword_1EAFA2630, &qword_19A58F840);
      v122 = *v106;
      if ((*v106)(v121, 1, v120) == 1)
      {
        v179 = *(v1 + 59);
LABEL_125:

        sub_19A2F3FA0(v179, &qword_1EAFA2630, &qword_19A58F840);
        goto LABEL_127;
      }

      v123 = *(v1 + 64);
      v124 = *(v1 + 62);
      v125 = *(v1 + 58);
      v126 = *v246;
      (*v246)(*(v1 + 72), *(v1 + 59), v123);
      sub_19A33546C(v124, v125, &qword_1EAFA2630, &qword_19A58F840);
      if (v122(v125, 1, v123) == 1)
      {
        v179 = *(v1 + 58);
        (*v250)(*(v1 + 72), *(v1 + 64));
        goto LABEL_125;
      }

      v126(*(v1 + 71), *(v1 + 58), *(v1 + 64));
      v127 = *(v1 + 72);
      v128 = *(v1 + 71);
      if (!v219)
      {
        v180 = *(v1 + 64);

        v181 = *v250;
        (*v250)(v128, v180);
        v181(v127, v180);

        v219 = 0;
LABEL_127:
        v182 = *(v1 + 82);
        v183 = *(v1 + 81);
        v184 = *(v1 + 78);
        v185 = *(v1 + 62);
        v186 = *(v1 + 63);
        sub_19A4FD554();
        swift_allocError();
        *v187 = 0;
        swift_willThrow();

        sub_19A2F3FA0(v185, &qword_1EAFA2630, &qword_19A58F840);
        sub_19A2F3FA0(v186, &qword_1EAFA2630, &qword_19A58F840);
        sub_19A2F3FA0(v183, &qword_1EAFA3398, &qword_19A5910E8);
        sub_19A2F3FA0(v182, &qword_1EAFA3398, &qword_19A5910E8);
        sub_19A2F3FA0(v184, &qword_1EAFA3398, &qword_19A5910E8);

        v33 = *(v259 + 1);

        v33();
        return;
      }

      v222 = v126;
      v214 = v219;
      sub_19A509E70(v239, v127, v128, v214, v218, v73);
      v130 = v129;
      v131 = *(v1 + 48);
      v132 = *(v1 + 45);

      v133 = *(v132 + v220[22]);
      v134 = swift_task_alloc();
      *(v134 + 16) = v131;
      *(v134 + 24) = v133;
      v135 = sub_19A4DABB0(sub_19A524C50, v134, v130);

      if (v227)
      {
        v136 = v1;
        v2 = 0;
        v137 = v216;
        v1 = v243;
        v225 = v135;
        while (v2 < *(v232 + 16))
        {
          sub_19A2F3EF0(v137, (v136 + 184));
          v138 = *(v136 + 26);
          v139 = *(v136 + 27);
          __swift_project_boxed_opaque_existential_1(v136 + 23, v138);
          if (v2 >= *(v135 + 16))
          {
            goto LABEL_132;
          }

          v140 = (*(v226 + 80) + 32) & ~*(v226 + 80);
          v141 = v135 + v140;
          v234 = *(v226 + 72);
          v142 = v234 * v2;
          v143 = *(v226 + 16);
          v143(*(v136 + 69), v141 + v234 * v2, *(v136 + 64));
          if (v2 >= *(v1 + 2))
          {
            goto LABEL_133;
          }

          v237 = v2;
          v144 = v1;
          v145 = v136;
          v146 = *(v136 + 68);
          v241 = *(v136 + 69);
          v244 = v144;
          v143(v146, &v144[v140 + v142], *(v136 + 64));
          (*(v139 + 80))(v241, v146, v138, v139, v73);
          v147 = *(v136 + 69);
          v148 = *(v136 + 68);
          v149 = *(v136 + 64);
          v150 = *v250;
          (*v250)(v148, *(v145 + 64));
          v150(v147, v149);
          v151 = v244;
          v1 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_19A4E52B8(v244);
          }

          v2 = v237;
          if (v237 >= *(v151 + 2))
          {
            goto LABEL_134;
          }

          v254 = *v235;
          (*v235)(&v151[v140 + v142], *(v1 + 70), *(v1 + 64));
          __swift_destroy_boxed_opaque_existential_0Tm(v1 + 23);
          sub_19A2F3EF0(v137, (v1 + 224));
          v152 = *(v1 + 31);
          v153 = *(v1 + 32);
          __swift_project_boxed_opaque_existential_1(v1 + 28, v152);
          v154 = (*(v153 + 72))(v152, v153);
          v155 = *(v154 + 16);
          if (v155)
          {
            v156 = *(v1 + 67);
            v157 = *(v1 + 66);
            v158 = *(v1 + 64);
            v143(v157, v154 + v140 + (v155 - 1) * v234, v158);

            v222(v156, v157, v158);
          }

          else
          {

            if (v237 >= *(v151 + 2))
            {
              goto LABEL_136;
            }

            v143(*(v1 + 67), &v151[v140 + v142], *(v1 + 64));
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v1 + 28);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v159 = v247;
          }

          else
          {
            v159 = sub_19A4E52B8(v247);
          }

          if (v237 >= v159[2])
          {
            goto LABEL_135;
          }

          v160 = v1;
          v1 = v151;
          v2 = v237 + 1;
          v136 = v160;
          v247 = v159;
          v254(v159 + v140 + v142, *(v160 + 67), *(v160 + 64));
          v137 += 40;
          v135 = v225;
          if (v227 == v237 + 1)
          {
            v243 = v151;
            v2 = v233;
            v1 = v136;
            goto LABEL_107;
          }
        }

        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v2 = v233;
LABEL_107:
      v161 = *(v1 + 51);
      v162 = *(v1 + 46);
      v163 = *(v1 + 45);

      if (*(v163 + v220[25]))
      {
        v164 = v247;
      }

      else
      {
        v164 = v243;
      }

      v165 = *(v204 + 24);
      v166 = *(v204 + 32);
      v167 = __swift_project_boxed_opaque_existential_1(v163, v165);
      v168 = sub_19A3687E0(v167, v165, v166);
      v170 = v169;
      sub_19A4FCEC0(v163, v161 + *(v205 + 32));
      *v161 = v168;
      v206[1] = v170;
      v206[2] = v217;
      v206[3] = v207;
      v206[4] = v164;
      v171 = v162(v161);

      v172 = *(v1 + 72);
      v173 = *(v1 + 71);
      v174 = *(v1 + 64);
      if ((v171 & 1) == 0)
      {
        v188 = *(v1 + 51);

        sub_19A4FCF24(v188);
        v189 = *v250;
        (*v250)(v173, v174);
        v189(v172, v174);
        v190 = *(v1 + 82);
        v191 = *(v1 + 81);
        v192 = *(v1 + 78);
        v193 = *(v1 + 63);
        sub_19A2F3FA0(*(v1 + 62), &qword_1EAFA2630, &qword_19A58F840);
        sub_19A2F3FA0(v193, &qword_1EAFA2630, &qword_19A58F840);
        sub_19A2F3FA0(v191, &qword_1EAFA3398, &qword_19A5910E8);
        sub_19A2F3FA0(v190, &qword_1EAFA3398, &qword_19A5910E8);
        sub_19A2F3FA0(v192, &qword_1EAFA3398, &qword_19A5910E8);

        v194 = *(v1 + 1);
        v195 = MEMORY[0x1E69E7CC0];

        v194(v195);
        return;
      }

      sub_19A4FCF24(*(v1 + 51));
      v175 = *v250;
      (*v250)(v173, v174);
      v175(v172, v174);
      v69 = v243;
      v70 = v211;
      v71 = v217 + 1;
      if (v217 + 1 == v207)
      {
        v176 = v243;

        v18 = v208;
        goto LABEL_114;
      }
    }
  }

  v176 = v242;

LABEL_114:

  *(v1 + 85) = v247;
  *(v1 + 84) = v176;
  *(v1 + 83) = v219;

  if (!v18)
  {
    goto LABEL_145;
  }

  if (v2 >> 62)
  {
    goto LABEL_144;
  }

  v177 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v177)
  {
    goto LABEL_145;
  }

LABEL_117:
  if (v177 < 1)
  {
    goto LABEL_159;
  }

  for (i = 0; i != v177; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](i, v2);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_145:
  if (v221)
  {
    if (v221 >> 62)
    {
      v196 = sub_19A573B4C();
      if (v196)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v196 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v196)
      {
LABEL_148:
        if (v196 >= 1)
        {
          for (j = 0; j != v196; ++j)
          {
            if ((v221 & 0xC000000000000001) != 0)
            {
              MEMORY[0x19A901520](j, v221);
            }

            else
            {
            }

            ManagedMLModel.unloadResources()();
          }

          goto LABEL_155;
        }

        __break(1u);
LABEL_159:
        __break(1u);
        return;
      }
    }
  }

LABEL_155:
  v198 = *(v1 + 49);
  v199 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v199 - 8) + 56))(v198, 1, 1, v199);
  v200 = swift_task_alloc();
  *(v1 + 86) = v200;
  *v200 = v1;
  v200[1] = sub_19A521CD8;
  v201 = *(v1 + 49);
  v202 = *(v1 + 45);

  DiffusionBaseXLPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(v247, v202, v201);
}

uint64_t sub_19A521CD8(uint64_t a1)
{
  v4 = *v2;
  v4[87] = v1;

  v5 = v4[49];
  if (v1)
  {
    sub_19A2F3FA0(v5, &qword_1EAFA3300, &qword_19A577470);

    v6 = sub_19A5220D4;
  }

  else
  {
    v4[88] = a1;
    sub_19A2F3FA0(v5, &qword_1EAFA3300, &qword_19A577470);

    v6 = sub_19A521E64;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_19A521E64()
{
  v7 = *(v0 + 704);
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 624);
  v4 = *(v0 + 504);
  sub_19A2F3FA0(*(v0 + 496), &qword_1EAFA2630, &qword_19A58F840);
  sub_19A2F3FA0(v4, &qword_1EAFA2630, &qword_19A58F840);
  sub_19A2F3FA0(v2, &qword_1EAFA3398, &qword_19A5910E8);
  sub_19A2F3FA0(v1, &qword_1EAFA3398, &qword_19A5910E8);
  sub_19A2F3FA0(v3, &qword_1EAFA3398, &qword_19A5910E8);

  v5 = *(v0 + 8);

  return v5(v7);
}

uint64_t sub_19A5220D4()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 624);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);

  sub_19A2F3FA0(v5, &qword_1EAFA2630, &qword_19A58F840);
  sub_19A2F3FA0(v4, &qword_1EAFA2630, &qword_19A58F840);
  sub_19A2F3FA0(v2, &qword_1EAFA3398, &qword_19A5910E8);
  sub_19A2F3FA0(v1, &qword_1EAFA3398, &qword_19A5910E8);
  sub_19A2F3FA0(v3, &qword_1EAFA3398, &qword_19A5910E8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A522344@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v70 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v57 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v57 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v74 = v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v72 = v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v57 - v21;
  v75 = *(a1 + 24);
  v23 = v75;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v75);
  v78 = v75;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  v26 = *(*(v23 - 8) + 16);
  v27 = v23;
  v28 = v22;
  v29 = v79;
  v26(boxed_opaque_existential_1, v24, v27);
  *&v75 = v3;
  v30 = v76;
  sub_19A52393C(v28, v19, v77, v29);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v77);
  if (!v30)
  {
    v69 = v19;
    v65 = v9;
    v66 = v12;
    v76 = v28;
    v67 = v6;
    v32 = v71;
    v68 = *(a1 + 64);
    v33 = v68;
    v34 = __swift_project_boxed_opaque_existential_1((a1 + 40), v68);
    v78 = v68;
    v35 = __swift_allocate_boxed_opaque_existential_1(v77);
    (*(*(v33 - 8) + 16))(v35, v34, v33);
    v36 = v72;
    sub_19A52393C(v72, v74, v77, v29 & 1);
    *&v68 = 0;
    v59 = a1;
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
    v38 = v73;
    v39 = *(v73 + 72);
    v40 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v61 = *(v73 + 80);
    v63 = v37;
    v60 = v40 + 2 * v39;
    v41 = swift_allocObject();
    v58 = xmmword_19A576E20;
    *(v41 + 16) = xmmword_19A576E20;
    v62 = v40;
    v42 = v41 + v40;
    v43 = *(v38 + 16);
    v43(v42, v36, v32);
    v64 = v39;
    v43(v42 + v39, v76, v32);
    v77[0] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50, &qword_19A58FFF0);
    v44 = sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50, &qword_19A58FFF0, MEMORY[0x1E69E6328]);
    v45 = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
    v46 = v66;
    v57[1] = v44;
    v57[0] = v45;
    sub_19A5725EC();
    if (Unet.usePORParameters()())
    {
      v47 = v65;
      v43(v65, v46, v32);
    }

    else
    {
      v47 = v65;
      sub_19A4FB6FC();
    }

    v48 = swift_allocObject();
    *(v48 + 16) = v58;
    v49 = v48 + v62;
    v43(v48 + v62, v74, v32);
    v43(v49 + v64, v69, v32);
    v77[0] = v48;
    sub_19A5725EC();
    if (v79)
    {
      v50 = sub_19A5242AC(v59);
    }

    else
    {
      v50 = sub_19A524698(v75, v59);
    }

    v51 = v50;
    v52 = v73;
    v53 = *(v73 + 8);
    v53(v66, v32);
    v53(v74, v32);
    v53(v72, v32);
    v53(v69, v32);
    v53(v76, v32);
    v54 = *(v52 + 32);
    v55 = v70;
    v54(v70, v47, v32);
    v56 = type metadata accessor for DiffusionBaseXLPipeline.ModelInputs(0);
    result = (v54)(v55 + *(v56 + 20), v67, v32);
    *(v55 + *(v56 + 24)) = v51;
  }

  return result;
}

uint64_t sub_19A522998@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PipelineConfiguration(0);
  v5 = *(a1 + v4[26]);
  v6 = v5 >> 14;
  if (v5 >> 14 <= 1)
  {
    if (!v6)
    {
      v7 = *(a1 + v4[20]);
      v8 = type metadata accessor for DPMSolverMultistepScheduler();
      swift_allocObject();
      result = DPMSolverMultistepScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(v7, 1000, 1, v5 >> 8, v5, 0.00085, 0.012);
      v10 = &protocol witness table for DPMSolverMultistepScheduler;
      a2[3] = v8;
LABEL_12:
      a2[4] = v10;
      *a2 = result;
      return result;
    }

    v21 = *(a1 + v4[21]);
    if (*(a1 + v4[27]))
    {
      if (*(a1 + v4[27]) != 1)
      {
        v70 = &type metadata for NvRandomSource;
        v71 = &off_1F0DB8000;
        v68 = v21;
        v69 = 0;
        goto LABEL_34;
      }

      v22 = v4;
      sub_19A4EB8FC(*(a1 + v4[21]));
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v70 = &type metadata for TorchRandomSource;
      v71 = &off_1F0DB7820;
    }

    else
    {
      v22 = v4;
      sub_19A4EB8FC(*(a1 + v4[21]));
      v24 = v38;
      v26 = v39;
      v28 = v40;
      v30 = v41;
      v70 = &type metadata for NumPyRandomSource;
      v71 = &off_1F0DB7940;
    }

    v42 = swift_allocObject();
    v4 = v22;
    v68 = v42;
    *(v42 + 16) = v24;
    *(v42 + 24) = v26;
    *(v42 + 32) = v28;
    *(v42 + 40) = v30 & 1;
LABEL_34:
    v62 = *(a1 + v4[20]);
    sub_19A2F3EF0(&v68, v67);
    v63 = type metadata accessor for LCMScheduler();
    swift_allocObject();
    v64 = LCMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(v62, 0x3E8, 1, 0, v67, 0.00085, 0.012);
    a2[3] = v63;
    a2[4] = &protocol witness table for LCMScheduler;
    *a2 = v64;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  }

  if (v6 != 2)
  {
    v31 = *(a1 + v4[20]);
    v32 = type metadata accessor for PNDMScheduler(0);
    swift_allocObject();
    result = PNDMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(v31, 1000, 1, 0.00085, 0.012);
    v10 = &protocol witness table for PNDMScheduler;
    a2[3] = v32;
    goto LABEL_12;
  }

  v11 = *(a1 + v4[21]);
  if (!*(a1 + v4[27]))
  {
    v12 = v4;
    sub_19A4EB8FC(*(a1 + v4[21]));
    v14 = v33;
    v16 = v34;
    v18 = v35;
    v20 = v36;
    v70 = &type metadata for NumPyRandomSource;
    v71 = &off_1F0DB7940;
    goto LABEL_14;
  }

  if (*(a1 + v4[27]) == 1)
  {
    v12 = v4;
    sub_19A4EB8FC(*(a1 + v4[21]));
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v70 = &type metadata for TorchRandomSource;
    v71 = &off_1F0DB7820;
LABEL_14:
    v37 = swift_allocObject();
    v4 = v12;
    v68 = v37;
    *(v37 + 16) = v14;
    *(v37 + 24) = v16;
    *(v37 + 32) = v18;
    *(v37 + 40) = v20 & 1;
    goto LABEL_18;
  }

  v70 = &type metadata for NvRandomSource;
  v71 = &off_1F0DB8000;
  v68 = v11;
  v69 = 0;
LABEL_18:
  v43 = *(a1 + v4[20]);
  sub_19A2F3EF0(&v68, v67);
  result = v43 + 1;
  if (__OFADD__(v43, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = sub_19A51B9CC(result, 1.0, 0.0);
  result = sub_19A5253A8(1uLL, v44);
  v48 = v47 >> 1;
  v49 = (v47 >> 1) - v46;
  if (__OFSUB__(v47 >> 1, v46))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v51 = v45;
    v52 = v46;
    v65 = result;
    v66[0] = MEMORY[0x1E69E7CC0];
    result = sub_19A4E44CC(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v53 = v66[0];
    if (v52 <= v48)
    {
      v54 = v48;
    }

    else
    {
      v54 = v52;
    }

    v55 = v54 - v52;
    v56 = (v51 + 4 * v52);
    result = v65;
    while (v55)
    {
      v57 = *v56;
      v66[0] = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_19A4E44CC((v58 > 1), v59 + 1, 1);
        result = v65;
        v53 = v66[0];
      }

      *(v53 + 16) = v59 + 1;
      *(v53 + 4 * v59 + 32) = (v57 * 3.0) / ((v57 + v57) + 1.0);
      --v55;
      ++v56;
      if (!--v49)
      {
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v53 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_19A2F3EF0(v67, v66);
  v60 = type metadata accessor for RectifiedFlowLCMScheduler();
  v61 = swift_allocObject();
  *(v61 + 32) = v50;
  *(v61 + 48) = v50;
  *(v61 + 56) = 0;
  *(v61 + 120) = v50;
  *(v61 + 128) = 1092616192;
  *(v61 + 16) = 1000;
  *(v61 + 24) = *(v53 + 16);
  *(v61 + 112) = 0;
  sub_19A2F3EF0(v66, v61 + 72);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_destroy_boxed_opaque_existential_0Tm(v67);
  *(v61 + 40) = &unk_1F0DB6918;
  *(v61 + 64) = v53;
  a2[3] = v60;
  a2[4] = &protocol witness table for RectifiedFlowLCMScheduler;
  *a2 = v61;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
}

uint64_t sub_19A522EF0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300, &qword_19A577470);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28, &qword_19A58FEC0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v65 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v65 - v12;
  v69 = v2;
  Unet.latentSampleShape.getter(v2[10]);
  v14 = v13;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v14 + 16))
    {
      goto LABEL_3;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_19A4E527C(v14);
  v14 = result;
  if (!*(result + 16))
  {
    goto LABEL_25;
  }

LABEL_3:
  *(v14 + 32) = 1;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 64))(v16, v17);
  v19 = type metadata accessor for PipelineConfiguration(0);
  v20 = *(a1 + v19[27]);
  result = *(a1 + v19[21]);
  v72 = a1;
  if (!v20)
  {
    v21 = v19;
    sub_19A4EB8FC(result);
    v23 = v30;
    v25 = v31;
    v27 = v32;
    v29 = v33;
    v81 = &type metadata for NumPyRandomSource;
    v82 = &off_1F0DB7940;
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    v21 = v19;
    sub_19A4EB8FC(result);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v81 = &type metadata for TorchRandomSource;
    v82 = &off_1F0DB7820;
LABEL_7:
    result = swift_allocObject();
    v19 = v21;
    v79 = result;
    *(result + 16) = v23;
    *(result + 24) = v25;
    *(result + 32) = v27;
    v34 = v29 & 1;
    a1 = v72;
    *(result + 40) = v34;
    goto LABEL_9;
  }

  v81 = &type metadata for NvRandomSource;
  v82 = &off_1F0DB8000;
  v79 = result;
  v80 = 0;
LABEL_9:
  v35 = *(a1 + v19[19]);
  if (v35 < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v66 = v10;
  v67 = v7;
  v65 = a2;
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v68 = v19;
    v76 = v14;
    v83 = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, v35, 0);
    v36 = v83;
    v37 = v78;
    v73 = v77 + 32;
    v38 = v18;
    v39 = v70;
    do
    {
      v78 = v36;
      v41 = v81;
      v40 = v82;
      __swift_mutable_project_boxed_opaque_existential_1(&v79, v81);
      v42 = v40[2];

      v42(v43, v41, v40, 0.0, v38);

      v44 = MEMORY[0x1E695FCF0];
      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
      sub_19A2F12E4(&qword_1EAF9E950, &unk_1EAFA2F28, &qword_19A58FEC0, v44);
      sub_19A5726BC();
      v36 = v78;
      v83 = v78;
      v46 = *(v78 + 2);
      v45 = *(v78 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_19A4E436C((v45 > 1), v46 + 1, 1);
        v36 = v83;
      }

      *(v36 + 16) = v46 + 1;
      (*(v77 + 32))(v36 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v46, v37, v39);
      --v35;
    }

    while (v35);
    v14 = v76;
    v19 = v68;
  }

  v47 = *(v72 + v19[14]);
  if (v47)
  {
    v48 = *(v72 + v19[16]);
    if (v48 < 1.0)
    {
      v49 = v69[16];
      if (v49)
      {
        v50 = v36;
        v76 = v14;
        v51 = v69[18];
        v52 = v69[19];
        v36 = v69[17];
        v53 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
        v54 = v67;
        (*(*(v53 - 8) + 56))(v67, 1, 1, v53);
        v55 = v47;
        v56 = v54;
        v57 = v55;
        sub_19A4E92AC(v49, v36, v51, v52);
        v58 = v66;
        v59 = v71;
        Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(v57, &v79, v56, v49, v36, v51);
        v71 = v59;
        sub_19A2F3FA0(v56, &qword_1EAFA3300, &qword_19A577470);
        if (v59)
        {
        }

        else
        {
          v64 = v65[3];
          v63 = v65[4];
          __swift_project_boxed_opaque_existential_1(v65, v64);
          v36 = (*(v63 + 88))(v58, v50, v64, v63, v48);

          (*(v77 + 8))(v58, v70);
        }
      }

      else
      {
        v60 = v47;

        sub_19A4FD554();
        v61 = swift_allocError();
        *v62 = 1;
        v71 = v61;
        swift_willThrow();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v79);

  return v36;
}

uint64_t DiffusionBaseXLPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A5235D8, 0, 0);
}

uint64_t sub_19A5235D8()
{
  v1 = v0[5];
  v2 = v0[3];
  if (Unet.usePORParameters()())
  {
    v3 = 0.0;
  }

  else
  {
    v3 = -1.0;
  }

  v4 = v1[12];
  v0[6] = v4;
  v5 = v1[13];
  v0[7] = v5;
  v6 = v1[14];
  v7 = v1[15];
  v8 = *(v2 + *(type metadata accessor for PipelineConfiguration(0) + 116));
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_19A5236F0;
  v10 = v0[4];
  v11 = v0[2];

  return Decoder.decode(_:scaleFactor:outputRange:inferAlpha:inferenceDiagnostics:)(v11, 0, v10, v4, v5, v6, v7, v8, v3, 1.0);
}

uint64_t sub_19A5236F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_19A5238BC;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_19A523818;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A523818()
{
  v1 = v0[5];
  v2 = sub_19A4E2E58(v0[10]);

  if (*(v1 + 160) == 1)
  {
    v3 = v0[7];
    ManagedMLModel.unloadResources()();
    if (v3)
    {
      ManagedMLModel.unloadResources()();
    }
  }

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_19A5238BC()
{
  if (*(v0[5] + 160) == 1)
  {
    v1 = v0[7];
    ManagedMLModel.unloadResources()();
    if (v1)
    {
      ManagedMLModel.unloadResources()();
    }
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A52393C(char *a1, char *a2, uint64_t a3, int a4)
{
  v87 = a3;
  LODWORD(v89) = a4;
  v85 = a2;
  v84 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v76 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v76 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v76 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v76 - v34;
  v36 = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
  v100 = v35;
  sub_19A5726DC();
  v88 = v32;
  v76 = v36;
  sub_19A5726DC();
  if ((v89 & 1) == 0)
  {
    v45 = v90;
    sub_19A33546C(v90, &v94, &qword_1EAFA3390, &qword_19A5910D0);
    if (!v95)
    {
      sub_19A2F3FA0(&v94, &qword_1EAFA3390, &qword_19A5910D0);
      sub_19A4FD554();
      swift_allocError();
      *v52 = 2;
      swift_willThrow();
      v53 = *(v91 + 8);
      v53(v88, v4);
      return (v53)(v100, v4);
    }

    sub_19A2EA460(&v94, v97);
    v46 = v98;
    v47 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v48 = v86;
    (*(v47 + 16))(v19, v16, v87, v46, v47);
    v49 = v91;
    v50 = v100;
    if (v48)
    {
      v51 = *(v91 + 8);
      v51(v88, v4);
      v51(v50, v4);
      return __swift_destroy_boxed_opaque_existential_0Tm(v97);
    }

    v57 = *(v91 + 32);
    v58 = v83;
    v57(v83, v19, v4);
    v59 = v82;
    v57(v82, v16, v4);
    sub_19A33546C(v45 + 40, &v92, &qword_1EAFA3390, &qword_19A5910D0);
    if (!v93)
    {
      v64 = *(v49 + 8);
      v64(v88, v4);
      v64(v100, v4);
      sub_19A2F3FA0(&v92, &qword_1EAFA3390, &qword_19A5910D0);
      v57(v84, v58, v4);
      v57(v85, v59, v4);
      return __swift_destroy_boxed_opaque_existential_0Tm(v97);
    }

    v89 = v49 + 32;
    sub_19A2EA460(&v92, &v94);
    v60 = v95;
    v61 = v96;
    __swift_project_boxed_opaque_existential_1(&v94, v95);
    v62 = v80;
    v63 = v81;
    (*(v61 + 16))(v80, v81, v87, v60, v61);
    v86 = v57;
    v57(v78, v62, v4);
    v57(v79, v63, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
    v65 = v91;
    v66 = *(v91 + 72);
    v67 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_19A576E20;
    v69 = v68 + v67;
    v70 = *(v65 + 16);
    v70(v69, v83, v4);
    v71 = v69 + v66;
    v72 = v78;
    v70(v71, v78, v4);
    *&v92 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50, &qword_19A58FFF0);
    sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50, &qword_19A58FFF0, MEMORY[0x1E69E6328]);
    v73 = v77;
    sub_19A5725EC();
    v74 = *(v65 + 8);
    v74(v72, v4);
    v74(v82, v4);
    v74(v83, v4);
    v75 = v88;
    v74(v88, v4);
    v44 = v100;
    v74(v100, v4);
    v56 = v75;
    v55 = v86;
    v86(v44, v73, v4);
    v55(v56, v79, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(&v94);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    goto LABEL_10;
  }

  result = sub_19A33546C(v90 + 40, v97, &qword_1EAFA3390, &qword_19A5910D0);
  v38 = v98;
  if (v98)
  {
    v39 = v99;
    __swift_project_boxed_opaque_existential_1(v97, v98);
    v40 = v86;
    (*(v39 + 16))(v29, v26, v87, v38, v39);
    v41 = v91;
    v42 = *(v91 + 8);
    v43 = v88;
    v42(v88, v4);
    v44 = v100;
    v42(v100, v4);
    if (v40)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v97);
    }

    v54 = *(v41 + 32);
    v54(v44, v29, v4);
    v54(v43, v26, v4);
    v55 = v54;
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    v56 = v43;
LABEL_10:
    v55(v84, v44, v4);
    return (v55)(v85, v56, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A5242AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v28 = *(v2 - 8);
  v3 = v28;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v9 = swift_allocObject();
  v24 = xmmword_19A590AB0;
  *(v9 + 16) = xmmword_19A590AB0;
  v10 = type metadata accessor for PipelineConfiguration(0);
  v11 = *(a1 + v10[30]);
  *(v9 + 32) = v11;
  *(v9 + 36) = v11;
  v12 = *(a1 + v10[31]);
  *(v9 + 40) = v12;
  *(v9 + 44) = v12;
  *(v9 + 48) = *(a1 + v10[34]);
  v30 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  v27 = MEMORY[0x1E69E6328];
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  sub_19A57264C();
  v13 = swift_allocObject();
  *(v13 + 16) = v24;
  *(v13 + 32) = v11;
  *(v13 + 36) = v11;
  *(v13 + 40) = v12;
  *(v13 + 44) = v12;
  *(v13 + 48) = *(a1 + v10[33]);
  v30 = v13;
  v14 = v26;
  sub_19A57264C();
  sub_19A524F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v15 = *(v28 + 72);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_19A576E20;
  v18 = v17 + v16;
  v19 = *(v3 + 16);
  v20 = v25;
  v19(v18, v25, v2);
  v19(v18 + v15, v14, v2);
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50, &qword_19A58FFF0);
  sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50, &qword_19A58FFF0, v27);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
  sub_19A5725EC();
  v21 = sub_19A57351C();
  v22 = *(v3 + 8);
  v22(v14, v2);
  v22(v20, v2);
  return v21;
}

id sub_19A524698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0, &qword_19A58FEB0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(a1 + 80);
  Unet.latentTimeIdShape.getter(v6);
  v8 = sub_19A505568(v7, &unk_1F0DB6830);

  if (v8)
  {
    sub_19A524F94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3270, &qword_19A590B20);
    sub_19A2F12E4(&qword_1EAFA3278, &qword_1EAFA3270, &qword_19A590B20, MEMORY[0x1E69E6328]);
    sub_19A57264C();
    sub_19A2F12E4(&qword_1EAFA3280, &qword_1EAFA30F0, &qword_19A58FEB0, MEMORY[0x1E695FCF0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_19A58BFA0;
    v10 = type metadata accessor for PipelineConfiguration(0);
    v11 = *(a2 + v10[30]);
    *(v9 + 32) = v11;
    *(v9 + 36) = v11;
    v12 = *(a2 + v10[31]);
    *(v9 + 40) = v12;
    *(v9 + 44) = v12;
    v13 = *(a2 + v10[32]);
    *(v9 + 48) = v13;
    *(v9 + 52) = v13;
    Unet.latentTimeIdShape.getter(v6);

    sub_19A524F94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
    sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
    sub_19A57264C();
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
  }

  v14 = sub_19A57351C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250, &unk_19A578A70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19A58F190;
  *(v15 + 32) = v14;
  *(v15 + 40) = v14;
  v16 = v14;
  v17 = [v16 dataType];
  sub_19A524F94();
  v18 = sub_19A57307C();

  v19 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v18 alongAxis:0 dataType:v17];

  return v19;
}

uint64_t sub_19A524A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_19A34F28C;

  return DiffusionBaseXLPipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(a1, v11, v12, v13, a5, a6);
}

uint64_t sub_19A524B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A34B5BC;

  return DiffusionBaseXLPipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(a1, a2, a3);
}

uint64_t type metadata accessor for DiffusionBaseXLPipeline.ModelInputs(uint64_t a1)
{
  result = qword_1EAFA33A8;
  if (!qword_1EAFA33A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_19A524CA4()
{
  result = qword_1EAF9E928;
  if (!qword_1EAF9E928)
  {
    sub_19A57296C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E928);
  }

  return result;
}

uint64_t sub_19A524CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3398, &qword_19A5910E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A524D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffusionBaseXLPipeline.ModelInputs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase18TextEncoderXLModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_19A524E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A524E6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19A524F10(uint64_t a1)
{
  sub_19A4E9178();
  if (v1 <= 0x3F)
  {
    sub_19A524F94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_19A524F94()
{
  result = qword_1ED823EE0;
  if (!qword_1ED823EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED823EE0);
  }

  return result;
}

uint64_t RectifiedFlowLCMScheduler.__allocating_init(stepCount:trainStepCount:predictionType:alpha:generator:)(uint64_t a1, uint64_t a2, char a3, void *a4, float a5)
{
  v5 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v5)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = sub_19A51B9CC(result, 1.0, 0.0);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v12 - 1;
  if (v12 > 1)
  {
    v22 = a3;
    v23 = v11;
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v12 - 1, 0);
    result = v23;
    v15 = v24[0];
    v16 = 32;
    while (v14)
    {
      v17 = *(result + v16);
      v24[0] = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_19A4E44CC((v18 > 1), v19 + 1, 1);
        result = v23;
        v15 = v24[0];
      }

      *(v15 + 16) = v19 + 1;
      *(v15 + 4 * v19 + 32) = (v17 * a5) / (((a5 + -1.0) * v17) + 1.0);
      v16 += 4;
      if (!--v14)
      {
        swift_unknownObjectRelease();
        a3 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  v15 = MEMORY[0x1E69E7CC0];
LABEL_10:
  sub_19A2F3EF0(a4, v24);
  v20 = swift_allocObject();
  *(v20 + 32) = v13;
  *(v20 + 48) = v13;
  *(v20 + 56) = 0;
  *(v20 + 120) = v13;
  *(v20 + 128) = 1092616192;
  *(v20 + 16) = a2;
  *(v20 + 24) = *(v15 + 16);
  *(v20 + 112) = a3;
  sub_19A2F3EF0(v24, v20 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_19A576E10;
  *(v21 + 32) = a5;
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  *(v20 + 40) = v21;
  *(v20 + 64) = v15;
  return v20;
}

uint64_t RectifiedFlowLCMScheduler.__allocating_init(timeSteps:trainStepCount:predictionType:alpha:generator:)(uint64_t a1, uint64_t a2, char a3, void *a4, float a5)
{
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = v11;
  *(v10 + 56) = 0;
  *(v10 + 120) = v11;
  *(v10 + 128) = 1092616192;
  v12 = *(a1 + 16);
  *(v10 + 16) = a2;
  *(v10 + 24) = v12;
  *(v10 + 112) = a3;
  sub_19A2F3EF0(a4, v10 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_19A576E10;
  *(v13 + 32) = a5;
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  *(v10 + 40) = v13;
  *(v10 + 64) = a1;
  return v10;
}

unint64_t sub_19A5253A8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t RectifiedFlowLCMScheduler.init(timeSteps:trainStepCount:predictionType:alpha:generator:)(uint64_t a1, uint64_t a2, char a3, void *a4, float a5)
{
  v9 = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = MEMORY[0x1E69E7CC0];
  *(v5 + 48) = v9;
  *(v5 + 56) = 0;
  *(v5 + 120) = v9;
  *(v5 + 128) = 1092616192;
  *(v5 + 16) = a2;
  *(v5 + 24) = *(a1 + 16);
  *(v5 + 112) = a3;
  sub_19A2F3EF0(a4, v5 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0, &unk_19A58C1A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19A576E10;
  *(v10 + 32) = a5;
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  *(v5 + 40) = v10;
  *(v5 + 64) = a1;
  return v5;
}

void RectifiedFlowLCMScheduler.step(output:timeStep:sample:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v5 = v4;
  v49 = a3;
  v50 = a2;
  v51 = *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28, &qword_19A58FEC0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  v22 = *(v5 + 64);
  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_5:
    type metadata accessor for DiffusionBaseCapabilitiesError(0);
    sub_19A525E8C();
    swift_allocError();
    *v26 = a4;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v24 = 0;
  v25 = v22 + 32;
  while (*(v25 + 4 * v24) != a4)
  {
    if (v23 == ++v24)
    {
      goto LABEL_5;
    }
  }

  v27 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v28 = a4;
  if (v27 >= v23)
  {
    goto LABEL_11;
  }

  if (v27 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = *(v25 + 4 * v27);
LABEL_11:
  v47 = v8;
  v29 = *(v5 + 112);
  if (v29 != 2)
  {
    type metadata accessor for DiffusionBaseCapabilitiesError(0);
    sub_19A525E8C();
    swift_allocError();
    *v36 = v29;
    goto LABEL_6;
  }

  v45 = v19;
  v46 = v18;
  v30 = __sincosf_stret(a4 * 1.5708);
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  MEMORY[0x1EEE9AC00](v31);
  *(&v44 - 4) = sub_19A525EE4;
  *(&v44 - 3) = v32;
  v44 = v32;
  *(&v44 - 2) = v30;
  sub_19A51ACBC(v50, a1, sub_19A525EF4, (&v44 - 6), v51, MEMORY[0x1E69E6448], &protocol witness table for RectifiedFlowLCMScheduler, MEMORY[0x1E695FD58]);
  v33 = *(v5 + 24);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (v35 == v24)
  {

    (*(v45 + 32))(v49, v21, v46);
  }

  else
  {
    v50 = sub_19A57263C();
    swift_beginAccess();
    v38 = *(v5 + 96);
    v37 = *(v5 + 104);
    __swift_mutable_project_boxed_opaque_existential_1(v5 + 72, v38);
    (*(v37 + 16))(v50, v38, v37, 0.0, 1.0);
    swift_endAccess();

    v39 = v47;
    v40 = v48;
    (*(v48 + 16))(v10, v13, v47);
    sub_19A525F54(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210);
    sub_19A525F54(&qword_1EAF9E950, &unk_1EAFA2F28, &qword_19A58FEC0);
    v41 = v46;
    v42 = sub_19A5726BC();
    MEMORY[0x1EEE9AC00](v42);
    *(&v44 - 4) = v28;
    sub_19A51ACBC(v21, v16, sub_19A525FA8, (&v44 - 4), v51, MEMORY[0x1E69E6448], &protocol witness table for RectifiedFlowLCMScheduler, MEMORY[0x1E695FD58]);

    v43 = *(v45 + 8);
    v43(v16, v41);
    (*(v40 + 8))(v13, v39);
    v43(v21, v41);
  }
}

uint64_t RectifiedFlowLCMScheduler.addNoise(originalSample:noise:strength:)(uint64_t result, float a2)
{
  v3 = *(v2 + 24);
  v4 = v3 * a2;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= 0)
  {
    if (v3 <= 0)
    {
LABEL_11:
      v6 = MEMORY[0x1EEE9AC00](result);
      v9[2] = v2;
      v10 = LODWORD(v6);
      v11 = v7;
      return sub_19A4DABB0(sub_19A525FD0, v9, v8);
    }

    v5 = 0;
  }

  else if (v5 >= v3)
  {
    goto LABEL_11;
  }

  if (v5 < *(*(v2 + 64) + 16))
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_19A525B34(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1068, &unk_19A580FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = (1.0 - a2);
  *(inited + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060, &unk_19A580FA0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19A576E20;
  v11 = v10 + v9;
  v12 = *(v7 + 16);
  v12(v11, a4, v6);
  v12(v11 + v8, a1, v6);
  sub_19A525F54(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210);
  sub_19A5726CC();
  sub_19A57263C();
  sub_19A5725FC();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return swift_setDeallocating();
}

void *RectifiedFlowLCMScheduler.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  return v0;
}

uint64_t RectifiedFlowLCMScheduler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_19A525E8C()
{
  result = qword_1EAFA33C0;
  if (!qword_1EAFA33C0)
  {
    type metadata accessor for DiffusionBaseCapabilitiesError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA33C0);
  }

  return result;
}

float sub_19A525EF4@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 36);
  v7 = *a1;
  result = (v6 * v7) + (v5 * (*(v3 + 16))(*a1, *a2));
  *a3 = result;
  return result;
}

uint64_t sub_19A525F54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

float sub_19A525FA8@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = ((1.0 - *(v3 + 16)) * *a1) + (*(v3 + 16) * *a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A52601C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v3)
    {
      v6 = "sampleInputShapeNotCorrect";
    }

    else
    {
      v6 = "pooled_embedding";
    }
  }

  else if (a1 == 2)
  {
    v6 = "unsupportedInputFormat";
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "imageEncoderInputDescriptionNotFound";
    }

    else
    {
      v4 = "imageEncoderInputConstraintsNotFound";
    }

    v6 = v4 - 32;
    v5 = 0xD000000000000024;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v7 = "sampleInputShapeNotCorrect";
    }

    else
    {
      v7 = "pooled_embedding";
    }
  }

  else if (a2 == 2)
  {
    v7 = "unsupportedInputFormat";
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = "missingImageEncoderDescription";
    if (a2 != 3)
    {
      v7 = "tDescriptionNotFound";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A526178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073657461;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x745364656C6F6F70;
    }

    else
    {
      v6 = 0x74536E6564646968;
    }

    v7 = 0xEC00000073657461;
  }

  else
  {
    v4 = 0x800000019A59C970;
    v5 = 0xD000000000000017;
    if (a1 != 3)
    {
      v5 = 0xD00000000000001CLL;
      v4 = 0x800000019A59C990;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0x800000019A59C950;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x745364656C6F6F70;
    }

    else
    {
      v11 = 0x74536E6564646968;
    }

    if (v6 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v8 = 0xD000000000000017;
    v9 = 0x800000019A59C990;
    if (a2 == 3)
    {
      v9 = 0x800000019A59C970;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = v8;
    }

    if (a2 == 2)
    {
      v2 = 0x800000019A59C950;
    }

    else
    {
      v2 = v9;
    }

    if (v6 != v10)
    {
      goto LABEL_32;
    }
  }

  if (v7 != v2)
  {
LABEL_32:
    v12 = sub_19A573F1C();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_19A5262E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "noise_predictorN";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "videdWithoutEncoder";
      v4 = 0xD000000000000022;
    }

    else
    {
      v5 = "WithoutTextEncoder";
      v4 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000023;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3)
    {
      v5 = "missingUnetInputs";
    }

    else
    {
      v5 = "noise_predictorN";
    }
  }

  if (a2 > 1u)
  {
    v2 = "videdWithoutEncoder";
    v6 = "WithoutTextEncoder";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000022;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  else
  {
    v6 = "missingUnetInputs";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19A573F1C();
  }

  return v10 & 1;
}

uint64_t sub_19A526408(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000029;
  v3 = "tConstraintsNotFound";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "rInputDescriptionNotFound";
    v12 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000029;
    }

    else
    {
      v11 = "rInputConstraintsNotFound";
    }

    v13 = "unsupportedInputShape";
    v14 = 0xD000000000000023;
    if (a1 != 4)
    {
      v14 = 0xD000000000000029;
      v13 = "ditionerDescription";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = "sampleInputShapeNotCorrect";
    v6 = 0xD000000000000016;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
      v5 = "ConditioningVector";
    }

    v7 = "missingScribbleEdgeBuffer";
    v8 = 0xD000000000000032;
    if (!a1)
    {
      v8 = 0xD000000000000019;
      v7 = "tConstraintsNotFound";
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "rInputDescriptionNotFound";
      }

      else
      {
        v3 = "rInputConstraintsNotFound";
        v2 = 0xD00000000000001ELL;
      }
    }

    else if (a2 == 4)
    {
      v3 = "unsupportedInputShape";
      v2 = 0xD000000000000023;
    }

    else
    {
      v3 = "ditionerDescription";
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "sampleInputShapeNotCorrect";
      v2 = 0xD000000000000016;
    }

    else
    {
      v3 = "ConditioningVector";
      v2 = 0xD000000000000015;
    }
  }

  else if (a2)
  {
    v3 = "missingScribbleEdgeBuffer";
    v2 = 0xD000000000000032;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_19A573F1C();
  }

  return v15 & 1;
}

uint64_t sub_19A52660C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x7372657020646C6FLL;
  v5 = 0xEA00000000006E6FLL;
  if (a1 != 5)
  {
    v4 = 0x79656C696D73;
    v5 = 0xE600000000000000;
  }

  v6 = 0x616D6F7720646C6FLL;
  v7 = 0xE90000000000006ELL;
  if (a1 != 3)
  {
    v6 = 0x6E616D20646C6FLL;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 7233901;
  if (a1 != 1)
  {
    v9 = 0x6E6F73726570;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E616D6F77;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 7233901)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6E6F73726570)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6E616D6F77)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x7372657020646C6FLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x79656C696D73)
      {
LABEL_39:
        v13 = sub_19A573F1C();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE90000000000006ELL;
    if (v10 != 0x616D6F7720646C6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E616D20646C6FLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_19A526828(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 << 16 == a2 << 16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_19A573F1C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_19A526898(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646E756F7267;
  v3 = 0x6B6361625F67736DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656C626269726373;
    }

    else
    {
      v5 = 0x636E657265666572;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEF6567616D695F65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x746C7561666564;
    }

    else
    {
      v5 = 0x6B6361625F67736DLL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE00646E756F7267;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626269726373;
  if (a2 != 2)
  {
    v8 = 0x636E657265666572;
    v7 = 0xEF6567616D695F65;
  }

  if (a2)
  {
    v3 = 0x746C7561666564;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A5269FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  v5 = 0xEB000000005F5F74;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0x6C75616665645F5FLL;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (a1 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000019A595400;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x696A6F6D65;
  if (a1 != 1)
  {
    v10 = 0x61727473756C6C69;
    v9 = 0xEC0000006E6F6974;
  }

  if (!a1)
  {
    v10 = 0x6F6974616D696E61;
    v9 = 0xE90000000000006ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x696A6F6D65)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x61727473756C6C69)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEB000000005F5F74;
        if (v11 != 0x6C75616665645F5FLL)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x686374656B73)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000013;
    v2 = 0x800000019A595400;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_19A573F1C();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.init(outputDirectoryURL:fileNamePrefix:overwriteFiles:includeModelFrameData:includeSegmentFrameData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v14 = v13[6];
  v15 = (a7 + v13[5]);
  v17 = v13[7];
  v16 = v13[8];
  v18 = sub_19A570EAC();
  result = (*(*(v18 - 8) + 32))(a7, a1, v18);
  *v15 = a2;
  v15[1] = a3;
  *(a7 + v14) = a4;
  *(a7 + v17) = a5;
  *(a7 + v16) = a6;
  return result;
}

uint64_t PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.accessor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_19A570EAC();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v1, v5);
  result = sub_19A5027D0(v7, a1);
  if (!v2)
  {
    v10 = type metadata accessor for InferenceDiagnosticsAccessor(0);
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  return result;
}

uint64_t PipelineConfiguration.InputConditioning.imageEmbeddingData.getter()
{
  v1 = *(v0 + *(type metadata accessor for PipelineConfiguration.InputConditioning(0) + 24));
  if (!v1[2])
  {
    return 0;
  }

  v2 = v1[4];
  sub_19A356EC8(v2, v1[5]);

  return v2;
}

id PipelineConfiguration.InputConditioning.Float16Data.multiArray.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_19A4E3094(a3);
  v7 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  result = sub_19A52A8D8(v6, 65552);
  if (!v3)
  {
    v9 = result;
    sub_19A52A9C4(a1, a2, result);
    return v9;
  }

  return result;
}

uint64_t PipelineConfiguration.ScribbleWorkflow.rawValue.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t PipelineMode.hashValue.getter(char a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1 & 1);
  return sub_19A57410C();
}

uint64_t PipelineConfiguration.InputConditioning.hiddenStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PipelineConfiguration.InputConditioning.pooledStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PipelineConfiguration.InputConditioning(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PipelineConfiguration.InputConditioning.imageEmbeddingDataArray.getter()
{
  type metadata accessor for PipelineConfiguration.InputConditioning(0);
}

uint64_t PipelineConfiguration.InputConditioning.init(hiddenStates:pooledStates:imageEmbeddingDataArray:imageProvidedPersonalization:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  result = (v11)(a5 + v12[5], a2, v10);
  *(a5 + v12[6]) = a3;
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t sub_19A52724C()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A52733C(uint64_t a1)
{
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A527418(uint64_t a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A527504@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A52B020(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19A527534(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x74536E6564646968;
  v4 = 0xD000000000000012;
  v5 = 0x800000019A59C950;
  v6 = 0x800000019A59C970;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001CLL;
    v6 = 0x800000019A59C990;
  }

  if (v2 != 2)
  {
    v4 = v7;
    v5 = v6;
  }

  if (*v1)
  {
    v3 = 0x745364656C6F6F70;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC00000073657461;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

unint64_t sub_19A5275E0()
{
  v1 = *v0;
  v2 = 0x74536E6564646968;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x745364656C6F6F70;
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

unint64_t sub_19A527688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A52B020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A5276B0(uint64_t a1)
{
  v2 = sub_19A52ABD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A5276EC(uint64_t a1)
{
  v2 = sub_19A52ABD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PipelineConfiguration.InputConditioning.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33C8, &qword_19A5912E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A52ABD8();
  sub_19A5741AC();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  sub_19A52AC80(&qword_1EAF9F1A8, MEMORY[0x1E69E6458], MEMORY[0x1E695FCF8]);
  sub_19A573E7C();
  if (!v2)
  {
    v9 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
    v14 = 1;
    sub_19A573E7C();
    v11[1] = *(v3 + *(v9 + 24));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33D0, &qword_19A5912F0);
    sub_19A52ACEC(&qword_1EAF9F138, sub_19A52AC2C, MEMORY[0x1E69E6300]);
    sub_19A573E7C();
    v12 = 4;
    sub_19A573E3C();
  }

  return (*(v6 + 8))(v8, v5);
}

void PipelineConfiguration.InputConditioning.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v33 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33D8, &qword_19A5912F8);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A52ABD8();
  v13 = v37;
  sub_19A57417C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    *&v30 = v4;
    v37 = v10;
    v31 = v12;
    LOBYTE(v38) = 0;
    sub_19A52AC80(&unk_1EAF9E940, MEMORY[0x1E69E6478], MEMORY[0x1E695FD00]);
    v14 = v34;
    sub_19A573D4C();
    v15 = v9;
    v16 = v31;
    v17 = v14;
    v18 = v36;
    v34 = *(v33 + 32);
    (v34)(v31, v17, v36);
    LOBYTE(v38) = 1;
    v19 = v30;
    sub_19A573D4C();
    (v34)(v16 + *(v37 + 20), v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33D0, &qword_19A5912F0);
    v40 = 3;
    sub_19A52ACEC(&qword_1EAF9E8D8, sub_19A52AD64, MEMORY[0x1E69E6330]);
    v34 = 0;
    sub_19A573CDC();
    v20 = a1;
    v21 = v16;
    if (v38)
    {
      v22 = v38;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v40 = 2;
    sub_19A52AD64();
    sub_19A573CDC();
    v23 = v15;
    v24 = v39;
    if (v39)
    {
      v30 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_19A31D490(0, *(v22 + 2) + 1, 1, v22);
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_19A31D490((v25 > 1), v26 + 1, 1, v22);
      }

      *(v22 + 2) = v26 + 1;
      v27 = &v22[24 * v26];
      *(v27 + 2) = v30;
      *(v27 + 6) = v24;
      v21 = v31;
    }

    v28 = v37;
    *(v21 + *(v37 + 24)) = v22;
    LOBYTE(v38) = 4;
    v29 = sub_19A573D0C();
    (*(v35 + 8))(v23, v7);
    *(v21 + *(v28 + 28)) = v29 & 1;
    sub_19A52B310(v21, v32, type metadata accessor for PipelineConfiguration.InputConditioning);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    sub_19A52B378(v21, type metadata accessor for PipelineConfiguration.InputConditioning);
  }
}

uint64_t sub_19A528008()
{
  if (*v0)
  {
    return 0x7061685361746164;
  }

  else
  {
    return 0x61746144776172;
  }
}

void sub_19A528048(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144776172 && a2 == 0xE700000000000000;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7061685361746164 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

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

uint64_t sub_19A52812C(uint64_t a1)
{
  v2 = sub_19A52ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A528168(uint64_t a1)
{
  v2 = sub_19A52ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PipelineConfiguration.InputConditioning.Float16Data.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33E0, &unk_19A591300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A52ADB8();
  sub_19A5741AC();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_19A356EC8(a2, a3);
  sub_19A343668();
  sub_19A573E7C();
  sub_19A33EFC4(v15, v16);
  if (!v4)
  {
    v15 = v14;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DD8, &qword_19A5930A0);
    sub_19A52AE0C(&qword_1EAFA33F0, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_19A573E7C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t PipelineConfiguration.InputConditioning.Float16Data.init(from:)(void *a1)
{
  result = sub_19A52B06C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_19A5283B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_19A52B06C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_19A528438()
{
  v1 = *v0;
  v2 = 0x656D614E656C6966;
  v3 = 0x746972777265766FLL;
  v4 = 0xD000000000000017;
  if (v1 == 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_19A5284FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A52BFE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A528524(uint64_t a1)
{
  v2 = sub_19A52B2BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A528560(uint64_t a1)
{
  v2 = sub_19A52B2BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA33F8, &qword_19A591310);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A52B2BC();
  sub_19A5741AC();
  v8[15] = 0;
  sub_19A570EAC();
  sub_19A5039AC(&qword_1EAFA31F8, MEMORY[0x1E6968FB8]);
  sub_19A573E7C();
  if (!v1)
  {
    type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
    v8[14] = 1;
    sub_19A573E2C();
    v8[13] = 2;
    sub_19A573E3C();
    v8[12] = 3;
    sub_19A573E3C();
    v8[11] = 4;
    sub_19A573E3C();
  }

  return (*(v4 + 8))(v6, v3);
}

void PipelineConfiguration.InferenceFrameDiagnosticsConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_19A570EAC();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3408, &unk_19A591318);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v20 - v6;
  v8 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A52B2BC();
  v24 = v7;
  sub_19A57417C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = v21;
    v30 = 0;
    sub_19A5039AC(&qword_1EAFA3208, MEMORY[0x1E6968FD0]);
    v12 = v22;
    sub_19A573D4C();
    (*(v11 + 32))(v10, v12, v4);
    v29 = 1;
    v13 = sub_19A573CFC();
    v14 = &v10[v8[5]];
    *v14 = v13;
    v14[1] = v15;
    v28 = 2;
    v16 = sub_19A573D0C();
    v17 = v23;
    v10[v8[6]] = v16 & 1;
    v27 = 3;
    v10[v8[7]] = sub_19A573D0C() & 1;
    v26 = 4;
    v18 = sub_19A573D0C();
    v19 = v8[8];
    (*(v17 + 8))(v24, v25);
    v10[v19] = v18 & 1;
    sub_19A52B310(v10, v20, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_19A52B378(v10, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  }
}

uint64_t PipelineConfiguration.prompt.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm(v1);

  return sub_19A2EA460(a1, v1);
}

uint64_t PipelineConfiguration.negativePrompt.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));

  return sub_19A2EA460(a1, v1 + 40);
}

uint64_t PipelineConfiguration.imageConditioningScale.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PipelineConfiguration.ipaScaleRange.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PipelineConfiguration(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PipelineConfiguration.lastUnmergedPersonalizationStep.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PipelineConfiguration(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PipelineConfiguration.lcmScale.setter(uint64_t a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t PipelineConfiguration.lcmLora.setter(uint64_t a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

void *PipelineConfiguration.startingImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PipelineConfiguration(0) + 56));
  v2 = v1;
  return v1;
}

void PipelineConfiguration.startingImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PipelineConfiguration(0) + 56);

  *(v1 + v3) = a1;
}

DiffusionBase::PipelineConfiguration::ScribbleWorkflow_optional __swiftcall PipelineConfiguration.ScribbleWorkflow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v1.value = DiffusionBase_PipelineConfiguration_ScribbleWorkflow_doi;
  }

  else
  {
    v1.value = DiffusionBase_PipelineConfiguration_ScribbleWorkflow_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A529310()
{
  v1 = *v0;
  sub_19A5740BC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x19A901C40](v2);
  return sub_19A57410C();
}

uint64_t sub_19A529360()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x19A901C40](v1);
}

uint64_t sub_19A529398(uint64_t a1)
{
  v2 = *v1;
  sub_19A5740BC();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x19A901C40](v3);
  return sub_19A57410C();
}

void *sub_19A5293E4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_19A529404(uint64_t *a1@<X8>)
{
  v2 = 2;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t PipelineConfiguration.LocalConditioningInput.LayoutConfiguration.scale.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

void *PipelineConfiguration.localConditioningInput.getter()
{
  v1 = v0 + *(type metadata accessor for PipelineConfiguration(0) + 60);
  v2 = *v1;
  sub_19A52B3D8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void PipelineConfiguration.localConditioningInput.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for PipelineConfiguration(0) + 60);
  sub_19A4B0C38(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24));
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

uint64_t PipelineConfiguration.strength.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t PipelineConfiguration.timeSteps.getter()
{
  type metadata accessor for PipelineConfiguration(0);
}

void PipelineConfiguration.timeSteps.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PipelineConfiguration(0) + 68);

  *(v1 + v3) = a1;
}

uint64_t PipelineConfiguration.refinerStart.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t PipelineConfiguration.imageCount.setter(uint64_t a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t PipelineConfiguration.stepCount.setter(uint64_t a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t PipelineConfiguration.seed.setter(int a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t PipelineConfiguration.guidanceScale.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t PipelineConfiguration.controlNetInputs.getter()
{
  type metadata accessor for PipelineConfiguration(0);
}

void PipelineConfiguration.controlNetInputs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PipelineConfiguration(0) + 92);

  *(v1 + v3) = a1;
}

uint64_t PipelineConfiguration.disableSafety.setter(char a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t PipelineConfiguration.useDenoisedIntermediates.setter(char a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t PipelineConfiguration.schedulerType.setter(__int16 a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t PipelineConfiguration.rngType.setter(char a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t PipelineConfiguration.encoderScaleFactor.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t PipelineConfiguration.decoderScaleFactor.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t PipelineConfiguration.originalSize.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t PipelineConfiguration.cropsCoordsTopLeft.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t PipelineConfiguration.targetSize.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t PipelineConfiguration.aestheticScore.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t PipelineConfiguration.negativeAestheticScore.setter(float a1)
{
  result = type metadata accessor for PipelineConfiguration(0);
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t PipelineConfiguration.init(prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E69E61C8];
  *(a3 + 24) = MEMORY[0x1E69E6158];
  *(a3 + 32) = v7;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 64) = v6;
  *(a3 + 72) = v7;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0xE000000000000000;
  *(a3 + 80) = 0;
  v8 = type metadata accessor for PipelineConfiguration(0);
  v9 = v8[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  v11 = v8[8];
  v12 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  (*(*(v12 - 8) + 56))(a3 + v11, 1, 1, v12);
  *(a3 + v8[9]) = 1060320051;
  v13 = a3 + v8[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a3 + v8[11];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a3 + v8[12];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a3 + v8[13];
  *v16 = 0;
  *(v16 + 4) = 0;
  *(a3 + v8[14]) = 0;
  v17 = a3 + v8[15];
  *v17 = xmmword_19A5912D0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 2;
  *(a3 + v8[16]) = 1065353216;
  v18 = MEMORY[0x1E69E7CC0];
  *(a3 + v8[17]) = MEMORY[0x1E69E7CC0];
  *(a3 + v8[18]) = 1061997773;
  *(a3 + v8[19]) = 1;
  *(a3 + v8[20]) = 50;
  *(a3 + v8[21]) = 0;
  *(a3 + v8[22]) = 1089470464;
  *(a3 + v8[23]) = v18;
  *(a3 + v8[24]) = 0;
  *(a3 + v8[25]) = 0;
  *(a3 + v8[26]) = -16384;
  *(a3 + v8[27]) = 0;
  *(a3 + v8[28]) = 1044022664;
  *(a3 + v8[29]) = 1044022664;
  *(a3 + v8[30]) = 1149239296;
  *(a3 + v8[31]) = 0;
  *(a3 + v8[32]) = 1149239296;
  *(a3 + v8[33]) = 1086324736;
  *(a3 + v8[34]) = 1075838976;
  v19 = v8[35];
  v20 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v20 - 8) + 56))(a3 + v19, 1, 1, v20);
  v23 = v6;
  v24 = v7;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return sub_19A2EA460(&v22, a3);
}

uint64_t PipelineConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E6158];
  v3 = MEMORY[0x1E69E61C8];
  *(a1 + 24) = MEMORY[0x1E69E6158];
  *(a1 + 32) = v3;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 64) = v2;
  *(a1 + 72) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 80) = 0;
  v4 = type metadata accessor for PipelineConfiguration(0);
  v5 = v4[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v4[8];
  v8 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  *(a1 + v4[9]) = 1060320051;
  v9 = a1 + v4[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v4[11];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v4[12];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v4[13];
  *v12 = 0;
  *(v12 + 4) = 0;
  *(a1 + v4[14]) = 0;
  v13 = a1 + v4[15];
  *v13 = xmmword_19A5912D0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 2;
  *(a1 + v4[16]) = 1065353216;
  v14 = MEMORY[0x1E69E7CC0];
  *(a1 + v4[17]) = MEMORY[0x1E69E7CC0];
  *(a1 + v4[18]) = 1061997773;
  *(a1 + v4[19]) = 1;
  *(a1 + v4[20]) = 50;
  *(a1 + v4[21]) = 0;
  *(a1 + v4[22]) = 1089470464;
  *(a1 + v4[23]) = v14;
  *(a1 + v4[24]) = 0;
  *(a1 + v4[25]) = 0;
  *(a1 + v4[26]) = -16384;
  *(a1 + v4[27]) = 0;
  *(a1 + v4[28]) = 1044022664;
  *(a1 + v4[29]) = 1044022664;
  *(a1 + v4[30]) = 1149239296;
  *(a1 + v4[31]) = 0;
  *(a1 + v4[32]) = 1149239296;
  *(a1 + v4[33]) = 1086324736;
  *(a1 + v4[34]) = 1075838976;
  v15 = v4[35];
  v16 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a1 + v15, 1, 1, v16);
}

id sub_19A52A8D8(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_19A4B0D60();
  v4 = sub_19A57307C();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v5;
}

void sub_19A52A9C4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v8 = a3;
    sub_19A52AE78(v6, v7, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, v8);

    return;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    goto LABEL_7;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](a1);
  sub_19A5734DC();
}

unint64_t sub_19A52ABD8()
{
  result = qword_1ED824DF0;
  if (!qword_1ED824DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824DF0);
  }

  return result;
}

unint64_t sub_19A52AC2C()
{
  result = qword_1EAF9F8A8;
  if (!qword_1EAF9F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F8A8);
  }

  return result;
}

uint64_t sub_19A52AC80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2C30, &qword_19A58F210);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A52ACEC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA33D0, &qword_19A5912F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A52AD64()
{
  result = qword_1EAF9EE60;
  if (!qword_1EAF9EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EE60);
  }

  return result;
}

unint64_t sub_19A52ADB8()
{
  result = qword_1EAFA33E8;
  if (!qword_1EAFA33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA33E8);
  }

  return result;
}

uint64_t sub_19A52AE0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2DD8, &qword_19A5930A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_19A52AE78(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  if (!sub_19A57096C() || !__OFSUB__(a1, sub_19A57099C()))
  {
    if (!__OFSUB__(a2, a1))
    {
      v8 = sub_19A57098C();
      MEMORY[0x1EEE9AC00](v8);
      sub_19A5734DC();

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t _s13DiffusionBase21PipelineConfigurationV025InferenceFrameDiagnosticsD0V23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_19A570E1C() & 1) != 0 && ((v4 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_19A573F1C()) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7])))
  {
    v10 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_19A52B020(uint64_t a1, uint64_t a2)
{
  v2 = sub_19A573C2C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A52B06C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3460, &qword_19A591B40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_19A52ADB8();
  sub_19A57417C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
    sub_19A343940();
    sub_19A573D4C();
    v7 = v12;
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DD8, &qword_19A5930A0);
    v11 = 1;
    sub_19A52AE0C(&qword_1ED823F28, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_19A573D4C();
    (*(v4 + 8))(v6, v3);
    sub_19A356EC8(v7, v9);

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_19A33EFC4(v7, v9);
  }

  return v7;
}

unint64_t sub_19A52B2BC()
{
  result = qword_1EAFA3400;
  if (!qword_1EAFA3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3400);
  }

  return result;
}

uint64_t sub_19A52B310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A52B378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_19A52B3D8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 < 0xFFFFFFFE00000000 || (a4 & 0xFE) != 2)
  {
    return sub_19A4E92F8(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_19A52B400()
{
  result = qword_1EAFA3410;
  if (!qword_1EAFA3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3410);
  }

  return result;
}

unint64_t sub_19A52B458()
{
  result = qword_1EAFA3418;
  if (!qword_1EAFA3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3418);
  }

  return result;
}

void sub_19A52B4E4(uint64_t a1)
{
  sub_19A52B820();
  if (v1 <= 0x3F)
  {
    sub_19A40C714(319, &qword_1EAF9E938, &qword_1EAFA2C30, &qword_19A58F210);
    if (v2 <= 0x3F)
    {
      sub_19A52B884(319, qword_1ED825C80, type metadata accessor for PipelineConfiguration.InputConditioning, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_19A40C714(319, &qword_1EAF9E810, &qword_1EAFA3420, &qword_19A591588);
        if (v4 <= 0x3F)
        {
          sub_19A52B9C0(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            v6 = MEMORY[0x1E69E6448];
            sub_19A52B9C0(319, &qword_1ED8255A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
            if (v7 <= 0x3F)
            {
              sub_19A52B9C0(319, &qword_1EAF9EE50, &type metadata for PipelineConfiguration.LatentInitializer, MEMORY[0x1E69E6720]);
              if (v8 <= 0x3F)
              {
                sub_19A52B9C0(319, &qword_1EAF9EE48, &type metadata for PipelineConfiguration.LocalConditioningInput, MEMORY[0x1E69E6720]);
                if (v9 <= 0x3F)
                {
                  sub_19A52B9C0(319, &qword_1EAF9E870, v6, MEMORY[0x1E69E62F8]);
                  if (v10 <= 0x3F)
                  {
                    sub_19A52B884(319, &qword_1EAF9E858, type metadata accessor for CGImage, MEMORY[0x1E69E62F8]);
                    if (v11 <= 0x3F)
                    {
                      sub_19A52B884(319, &qword_1ED825480, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration, MEMORY[0x1E69E6720]);
                      if (v12 <= 0x3F)
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
      }
    }
  }
}

unint64_t sub_19A52B820()
{
  result = qword_1EAF9E750;
  if (!qword_1EAF9E750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAF9E750);
  }

  return result;
}

void sub_19A52B884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_19A52B910(uint64_t a1)
{
  sub_19A4E9178();
  if (v1 <= 0x3F)
  {
    sub_19A52B9C0(319, &qword_1ED825340, &type metadata for PipelineConfiguration.InputConditioning.Float16Data, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A52B9C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_19A52BA48(uint64_t a1)
{
  result = sub_19A570EAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A52BAFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 8) >> 33) & 0x7FFFFFFF | (*(a1 + 24) >> 1 << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_19A52BB58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = 0;
      *(result + 8) = -a2 << 33;
      *(result + 16) = 0;
      *(result + 24) = 2;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A52BBBC(uint64_t result, char a2)
{
  v2 = *(result + 24) & 1 | (a2 << 7);
  *(result + 8) &= 0x1FFFFFFFFuLL;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_19A52BBFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_19A52BC44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A52BCCC()
{
  result = qword_1EAFA3428;
  if (!qword_1EAFA3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3428);
  }

  return result;
}

unint64_t sub_19A52BD24()
{
  result = qword_1EAFA3430;
  if (!qword_1EAFA3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3430);
  }

  return result;
}

unint64_t sub_19A52BD7C()
{
  result = qword_1EAFA3438;
  if (!qword_1EAFA3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3438);
  }

  return result;
}

unint64_t sub_19A52BDD4()
{
  result = qword_1EAFA3440;
  if (!qword_1EAFA3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3440);
  }

  return result;
}

unint64_t sub_19A52BE2C()
{
  result = qword_1EAFA3448;
  if (!qword_1EAFA3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3448);
  }

  return result;
}

unint64_t sub_19A52BE84()
{
  result = qword_1EAFA3450;
  if (!qword_1EAFA3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3450);
  }

  return result;
}

unint64_t sub_19A52BEDC()
{
  result = qword_1EAFA3458;
  if (!qword_1EAFA3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3458);
  }

  return result;
}

unint64_t sub_19A52BF34()
{
  result = qword_1ED824DE0;
  if (!qword_1ED824DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824DE0);
  }

  return result;
}

unint64_t sub_19A52BF8C()
{
  result = qword_1ED824DE8;
  if (!qword_1ED824DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824DE8);
  }

  return result;
}

uint64_t sub_19A52BFE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000019A59D3F0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xEE00786966657250 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746972777265766FLL && a2 == 0xEE0073656C694665 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59D410 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000019A59D430 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_19A52C1AC(void *result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      return memmove(result, v2, *(v1 + 24) - v2);
    }
  }

  return result;
}

uint64_t sub_19A52C1EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A52C20C, 0, 0);
}

uint64_t sub_19A52C20C()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_19A52C328;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30B8, &qword_19A58FE58);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19A354FC8;
  v0[13] = &block_descriptor_13;
  v0[14] = v2;
  [v1 modelDescriptionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19A52C328()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_19A52C580;
  }

  else
  {
    v2 = sub_19A52C438;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A52C438()
{
  v1 = *(v0 + 176);
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_19A50D0DC();
  v3 = sub_19A572AFC();

  if (*(v3 + 16) && (v4 = sub_19A4F39EC(*MEMORY[0x1E695FDB0]), (v5 & 1) != 0))
  {
    sub_19A334618(*(v3 + 56) + 32 * v4, v0 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290, &qword_19A582DF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      **(v0 + 184) = 0;
    }
  }

  else
  {
    v6 = *(v0 + 184);

    *v6 = 0;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19A52C580(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void *sub_19A52C5EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_19A52C8D0(&v17);
  sub_19A52C910();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_19A549F60(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v8;
  v11 = sub_19A4EEDF0(&unk_19A591B50, v9);
  sub_19A52E514(v11, v15);

  memcpy(v14, v15, sizeof(v14));
  nullsub_2();
  memcpy(v16, v14, sizeof(v16));
  return memcpy(a2, v16, 0x178uLL);
}

double sub_19A52C8D0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *(a1 + 368) = 1;
  return result;
}

unint64_t sub_19A52C910()
{
  result = qword_1ED823EE8;
  if (!qword_1ED823EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED823EE8);
  }

  return result;
}

uint64_t sub_19A52C95C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A52C1EC(a1, v4);
}

uint64_t TextEncoderXL.init(tokenizer:modelAt:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19A570EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A2F3EF0(a1, a4);
  (*(v9 + 16))(v11, a2, v8);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v12 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v11, a3, MEMORY[0x1E69E7CC0], "TextEncoderXL", 13, 2);
  (*(v9 + 8))(a2, v8);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *(a4 + 40) = v12;
  return result;
}

Swift::Bool __swiftcall TextEncoderXL.usePORParameters()()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
  os_unfair_lock_lock(v1);
  sub_19A569948((v1 + 8), &v8);
  os_unfair_lock_unlock(v1);
  sub_19A506920(v8);
  v3 = v2;

  if (v3)
  {

    v4 = [v3 outputDescriptionsByName];

    sub_19A2F1600(0, &unk_1ED823EB0, 0x1E695FE50);
    v5 = sub_19A572AFC();

    if (*(v5 + 16))
    {
      sub_19A31F6BC(0xD000000000000010, 0x800000019A59C5A0);
      LOBYTE(v3) = v6;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

void TextEncoderXL.encode(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = sub_19A52CF44();
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = *(v9 + 8 * v10 + 24);

  v12 = v3[3];
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v12);
  v14 = (*(v13 + 8))(a3, v11, 0, v12, v13);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = *(v15 + 16);
  if (v11 < v17)
  {
    v18 = *(v14 + 16);
    if (__OFSUB__(v18, v11))
    {
      __break(1u);
    }

    else
    {
      sub_19A4E9C70(v18 - v11, v14);
      v20 = v19;
      if (!__OFSUB__(v17, v11))
      {
        v16 = sub_19A4E9ECC(v17 - v11, v16);
        v21 = v5[3];
        v22 = v5[4];
        __swift_project_boxed_opaque_existential_1(v5, v21);
        v23 = (*(v22 + 16))(v20, v21, v22);
        v26 = v24;
        v27 = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0, &unk_19A586C30);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_19A576E10;
        sub_19A57395C();
        MEMORY[0x19A900A50](0xD00000000000001ALL, 0x800000019A59CC30);
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        sub_19A573EFC();
        MEMORY[0x19A900A50](0x27206F742027, 0xE600000000000000);
        MEMORY[0x19A900A50](v27, v26);

        MEMORY[0x19A900A50](39, 0xE100000000000000);
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 32) = 0;
        *(v25 + 40) = 0xE000000000000000;
        sub_19A5740AC();
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:

    __break(1u);
    return;
  }

LABEL_7:

  sub_19A52D208(a1, a2, v16);
}

uint64_t sub_19A52CF44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31B0, &unk_19A5905A0);
  sub_19A5735DC();
  v0 = sub_19A50014C(7562345, 0xE300000000000000);
  if (!*(v18 + 16))
  {
LABEL_19:

    goto LABEL_20;
  }

  v2 = sub_19A31F6BC(v0, v1);
  v4 = v3;

  if ((v4 & 1) == 0)
  {
LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  v5 = *(*(v18 + 56) + 8 * v2);

  v6 = [v5 multiArrayConstraint];

  if (v6)
  {
    v7 = [v6 shape];

    sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
    v8 = sub_19A57308C();

    if (v8 >> 62)
    {
      v9 = sub_19A573B4C();
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_6:
        v19 = MEMORY[0x1E69E7CC0];
        sub_19A3225A0(0, v9 & ~(v9 >> 63), 0);
        if ((v9 & 0x8000000000000000) == 0)
        {
          v10 = 0;
          v11 = v19;
          do
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x19A901520](v10, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v10 + 32);
            }

            v13 = v12;
            v14 = [v12 integerValue];

            v16 = *(v19 + 16);
            v15 = *(v19 + 24);
            if (v16 >= v15 >> 1)
            {
              sub_19A3225A0((v15 > 1), v16 + 1, 1);
            }

            ++v10;
            *(v19 + 16) = v16 + 1;
            *(v19 + 8 * v16 + 32) = v14;
          }

          while (v9 != v10);

          return v11;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_19A52D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0, &qword_19A58FEB0);
  v120 = *(v9 - 8);
  v121 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v119 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v115 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30, &qword_19A58F210);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v124 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  v17 = *(v3 + 40);
  v131 = OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue;
  v132 = v17;
  v136 = 0;
  v137 = 0;
  v135 = v17;
  v138 = sub_19A50103C;
  v139 = 0;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31B0, &unk_19A5905A0);
  sub_19A5735DC();
  if (v4)
  {
    goto LABEL_61;
  }

  v117 = a2;
  v118 = a1;
  v18 = v140;
  v19 = sub_19A50014C(7562345, 0xE300000000000000);
  if (!*(v18 + 16))
  {
LABEL_52:

    goto LABEL_53;
  }

  v125 = 0;
  v21 = sub_19A31F6BC(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_53:

    __break(1u);
    goto LABEL_54;
  }

  v24 = *(*(v18 + 56) + 8 * v21);

  v25 = [v24 name];

  v26 = sub_19A572CFC();
  v127 = v27;

  v129 = sub_19A52CF44();
  v28 = *(a3 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v133 = v16;
  v126 = v5;
  v122 = v28;
  if (v28)
  {
    v30 = v26;
    v140 = MEMORY[0x1E69E7CC0];
    sub_19A4E44CC(0, v28, 0);
    v29 = v140;
    v31 = (a3 + 32);
    v32 = *(v140 + 16);
    v33 = v28;
    do
    {
      v35 = *v31++;
      v34 = v35;
      v140 = v29;
      v36 = *(v29 + 24);
      if (v32 >= v36 >> 1)
      {
        sub_19A4E44CC((v36 > 1), v32 + 1, 1);
        v29 = v140;
      }

      *(v29 + 16) = v32 + 1;
      *(v29 + 4 * v32++ + 32) = v34;
      --v33;
    }

    while (v33);
    v26 = v30;
  }

  v140 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0, &unk_19A5905B0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0, &unk_19A5905B0, MEMORY[0x1E69E6328]);
  v37 = sub_19A57264C();
  MEMORY[0x1EEE9AC00](v37);
  *(&v115 - 5) = 0;
  *(&v115 - 4) = 0;
  *(&v115 - 6) = v38;
  *(&v115 - 3) = sub_19A50103C;
  *(&v115 - 2) = 0;
  v39 = v125;
  sub_19A5735DC();
  if (v39)
  {
    goto LABEL_61;
  }

  v40 = v140;
  v41 = sub_19A50014C(0x6B73616D5F736469, 0xE800000000000000);
  if (!*(v40 + 16))
  {

    goto LABEL_28;
  }

  sub_19A31F6BC(v41, v42);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    *(inited + 32) = v26;
    *(inited + 40) = v127;
    v72 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
    (*(v128 + 16))(v124, v133, v130);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);

    v73 = sub_19A57351C();
    *(inited + 72) = v72;
    *(inited + 48) = v73;
    v74 = sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A4EACFC(inited + 32);
    v75 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v76 = sub_19A544CF4(v74);
    goto LABEL_36;
  }

  MEMORY[0x1EEE9AC00](v45);
  *(&v115 - 5) = 0;
  *(&v115 - 4) = 0;
  *(&v115 - 6) = v46;
  *(&v115 - 3) = sub_19A50103C;
  *(&v115 - 2) = 0;
  sub_19A5735DC();
  v125 = 0;
  v47 = v140;
  v48 = sub_19A50014C(0x6B73616D5F736469, 0xE800000000000000);
  v50 = v122;
  if (!*(v47 + 16))
  {
LABEL_54:

    goto LABEL_55;
  }

  v51 = sub_19A31F6BC(v48, v49);
  v53 = v52;

  v54 = v123;
  if ((v53 & 1) == 0)
  {
LABEL_55:

    __break(1u);
    goto LABEL_56;
  }

  v55 = *(*(v47 + 56) + 8 * v51);

  v56 = [v55 multiArrayConstraint];

  if (!v56)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v57 = [v56 shape];

  sub_19A2F1600(0, &qword_1ED823EA8, 0x1E696AD98);
  v58 = sub_19A57308C();

  if (v58 >> 62)
  {
    v59 = sub_19A573B4C();
    if (v59)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
LABEL_18:
      v60 = v58;
      v116 = v26;
      v140 = MEMORY[0x1E69E7CC0];
      sub_19A3225A0(0, v59 & ~(v59 >> 63), 0);
      if ((v59 & 0x8000000000000000) == 0)
      {
        v61 = 0;
        v62 = v140;
        v63 = v60;
        v134 = v60 & 0xC000000000000001;
        v64 = v60;
        v65 = v59;
        do
        {
          if (v134)
          {
            v66 = MEMORY[0x19A901520](v61, v63);
          }

          else
          {
            v66 = *(v63 + 8 * v61 + 32);
          }

          v67 = v66;
          v68 = [v66 integerValue];

          v140 = v62;
          v70 = *(v62 + 16);
          v69 = *(v62 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_19A3225A0((v69 > 1), v70 + 1, 1);
            v62 = v140;
          }

          ++v61;
          *(v62 + 16) = v70 + 1;
          *(v62 + 8 * v70 + 32) = v68;
          v63 = v64;
        }

        while (v65 != v61);

        v50 = v122;
        v54 = v123;
        v26 = v116;
        if (v122)
        {
          goto LABEL_30;
        }

        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  if (v50)
  {
LABEL_30:
    v77 = sub_19A5730DC();
    *(v77 + 16) = v50;
    memset_pattern16((v77 + 32), &unk_19A591B60, 4 * v50);
    goto LABEL_34;
  }

LABEL_33:
  v77 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v140 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3270, &qword_19A590B20);
  sub_19A2F12E4(&qword_1EAFA3278, &qword_1EAFA3270, &qword_19A590B20, MEMORY[0x1E69E6328]);
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70, &unk_19A57BC90);
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_19A576E20;
  *(v78 + 32) = v26;
  v134 = v78 + 32;
  *(v78 + 40) = v127;
  v79 = v54;
  v80 = sub_19A2F1600(0, &qword_1ED823EE0, 0x1E695FED0);
  (*(v128 + 16))(v124, v133, v130);
  v81 = MEMORY[0x1E695FCF0];
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);

  v82 = sub_19A57351C();
  *(v78 + 72) = v80;
  *(v78 + 48) = v82;
  *(v78 + 80) = sub_19A50014C(0x6B73616D5F736469, 0xE800000000000000);
  *(v78 + 88) = v83;
  v84 = v120;
  v85 = v121;
  (*(v120 + 16))(v119, v79, v121);
  sub_19A2F12E4(&qword_1EAFA3280, &qword_1EAFA30F0, &qword_19A58FEB0, v81);
  v86 = sub_19A57351C();
  *(v78 + 120) = v80;
  *(v78 + 96) = v86;
  v87 = sub_19A330370(v78);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00, &qword_19A578A30);
  swift_arrayDestroy();
  v88 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v89 = v125;
  v90 = sub_19A544CF4(v87);
  if (!v89)
  {
    v91 = v90;
    (*(v84 + 8))(v123, v85);
    v76 = v91;
LABEL_36:
    MEMORY[0x1EEE9AC00](v76);
    *(&v115 - 2) = v92;
    MEMORY[0x1EEE9AC00](v92);
    *(&v115 - 4) = sub_19A4EAD64;
    *(&v115 - 3) = v93;
    *(&v115 - 2) = v132;
    MEMORY[0x1EEE9AC00](v94);
    *(&v115 - 5) = 0;
    *(&v115 - 4) = 0;
    *(&v115 - 6) = v95;
    *(&v115 - 3) = sub_19A4EAD80;
    *(&v115 - 2) = v96;
    v98 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0, &unk_19A58F710);
    sub_19A5735DC();
    v99 = sub_19A56D50C(v140);

    v100 = sub_19A50014C(0x655F6E6564646968, 0xED0000736465626DLL);
    if (v99[2])
    {
      v102 = sub_19A31F6BC(v100, v101);
      v104 = v103;

      if (v104)
      {
        v105 = *(v99[7] + 8 * v102);
        v106 = v105;
        goto LABEL_41;
      }
    }

    else
    {
    }

    v105 = 0;
LABEL_41:
    v107 = sub_19A50014C(0x6F5F64656C6F6F70, 0xEE00737475707475);
    if (v99[2])
    {
      v109 = sub_19A31F6BC(v107, v108);
      v111 = v110;

      if (v111)
      {
        v112 = *(v99[7] + 8 * v109);
        v113 = v112;
        goto LABEL_46;
      }
    }

    else
    {
    }

    v112 = 0;
LABEL_46:
    if (v105)
    {
      if ([v105 multiArrayValue])
      {
        sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30, &qword_19A58F210, MEMORY[0x1E695FCF0]);
        sub_19A5726AC();
        if (v112)
        {
          if ([v112 multiArrayValue])
          {

            v114 = v130;
            sub_19A5726AC();

            (*(v128 + 8))(v133, v114);
            return;
          }

          goto LABEL_60;
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        swift_unexpectedError();
        __break(1u);
        goto LABEL_62;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_62:
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_19A52E1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A52E1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_19A52E2C8(uint64_t a1, unsigned __int8 a2)
{
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A52E3D8(uint64_t a1, unsigned __int8 a2)
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t AppleDiffusionModelMetadata.AspectRatio.rawValue.getter(char a1)
{
  if (a1)
  {
    return 3226162;
  }

  else
  {
    return 3226161;
  }
}

void sub_19A52E514(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_19A572D6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a1 + 16) && (v9 = sub_19A31F6BC(6775156, 0xE300000000000000), (v10 & 1) != 0))
    {
      v11 = (*(a1 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    sub_19A489428(v24);
    if (!*(a1 + 16) || (sub_19A31F6BC(0x6E695F6C65646F6DLL, 0xEB00000000736F66), (v14 & 1) == 0))
    {
      memcpy(v23, v24, sizeof(v23));
      goto LABEL_11;
    }

    v20 = v13;
    v25 = v12;

    sub_19A572D4C();
    v19 = sub_19A572D0C();
    v16 = v15;

    (*(v6 + 8))(v8, v5);
    if (v16 >> 60 == 15)
    {
      memcpy(v23, v24, sizeof(v23));
      v12 = v25;
      v13 = v20;
LABEL_11:
      memcpy(a2, v23, 0x168uLL);
      a2[45] = v13;
      a2[46] = v12;
      return;
    }

    sub_19A5707EC();
    swift_allocObject();
    sub_19A5707DC();
    sub_19A53D438();
    v17 = v19;
    sub_19A5707BC();
    v13 = v20;
    if (!v2)
    {
      sub_19A33EFB0(v17, v16);

      memcpy(v21, v22, sizeof(v21));
      nullsub_2();
      memcpy(v23, v21, sizeof(v23));
      v12 = v25;
      goto LABEL_11;
    }

    sub_19A33EFB0(v17, v16);
  }

  else
  {
    type metadata accessor for AppleDiffusionMetadataError(0);
    sub_19A53D3E0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_19A52E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19A5740BC();
  if (!a2)
  {
    sub_19A5740DC();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_19A5740DC();
    return sub_19A57410C();
  }

  sub_19A5740DC();
  sub_19A572E4C();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_19A5740DC();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A52E8B0()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x6974636964657270;
  }
}

void sub_19A52E8F0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974636964657270 && a2 == 0xEF657079745F6E6FLL;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

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

uint64_t sub_19A52E9D4(uint64_t a1)
{
  v2 = sub_19A53D0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A52EA10(uint64_t a1)
{
  v2 = sub_19A53D0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A52EA4C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_19A53770C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_19A52EA88(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_19A5740DC();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19A5740DC();
  }

  sub_19A5740DC();
  sub_19A572E4C();
  if (!v2)
  {
    return sub_19A5740DC();
  }

LABEL_3:
  sub_19A5740DC();

  return sub_19A572E4C();
}

uint64_t sub_19A52EB40(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  sub_19A5740BC();
  if (!v2)
  {
    sub_19A5740DC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_19A5740DC();
    return sub_19A57410C();
  }

  sub_19A5740DC();
  sub_19A572E4C();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_19A5740DC();
  sub_19A572E4C();
  return sub_19A57410C();
}

uint64_t sub_19A52EBE8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19A573F1C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_19A573F1C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19A52ECBC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A52ED18(uint64_t a1)
{
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A52ED58(uint64_t a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A52EDB0@<X0>(Swift::String *a1@<X0>, DiffusionBase::AppleDiffusionModelMetadata::ReferenceImageInfo::ConditioningModelVersion_optional *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoV012ConditioningD7VersionO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_19A52EE64(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
    case 4:
      result = 0xD000000000000021;
      break;
    case 9:
    case 10:
    case 19:
    case 20:
      result = 0xD000000000000028;
      break;
    case 11:
    case 12:
    case 13:
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 15:
    case 16:
      result = 0xD00000000000002ELL;
      break;
    case 17:
    case 18:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19A52EFE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A53793C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A52F01C(uint64_t a1)
{
  v2 = sub_19A53E064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A52F058(uint64_t a1)
{
  v2 = sub_19A53E064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.ReferenceImageInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*v2 == 5)
  {
    sub_19A5740DC();
  }

  else
  {
    sub_19A5740DC();
    sub_19A572E4C();
  }

  sub_19A5740EC();
  sub_19A534D0C(a1, *(v2 + 8));
  sub_19A5740EC();
  sub_19A534D0C(a1, *(v2 + 24));
  if (*(v2 + 36) == 1)
  {
    sub_19A5740DC();
    v4 = *(v2 + 40);
    if (v4)
    {
LABEL_6:
      sub_19A5740DC();
      sub_19A534D0C(a1, v4);
      goto LABEL_9;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v4 = *(v2 + 40);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_19A5740DC();
LABEL_9:
  if (*(v2 + 52) == 1)
  {
    sub_19A5740DC();
    v5 = *(v2 + 56);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_19A5740DC();
    v6 = *(v2 + 64);
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_19A5740DC();
  sub_19A5740EC();
  v5 = *(v2 + 56);
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_19A5740DC();
  sub_19A534D0C(a1, v5);
  v6 = *(v2 + 64);
  if (v6)
  {
LABEL_12:
    sub_19A5740DC();
    sub_19A534D0C(a1, v6);
    goto LABEL_16;
  }

LABEL_15:
  sub_19A5740DC();
LABEL_16:
  if (*(v2 + 76) == 1)
  {
    sub_19A5740DC();
    v7 = *(v2 + 80);
    if (v7)
    {
LABEL_18:
      sub_19A5740DC();
      sub_19A534D0C(a1, v7);
      goto LABEL_21;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v7 = *(v2 + 80);
    if (v7)
    {
      goto LABEL_18;
    }
  }

  sub_19A5740DC();
LABEL_21:
  if (*(v2 + 92) == 1)
  {
    sub_19A5740DC();
    v8 = *(v2 + 96);
    if (v8)
    {
LABEL_23:
      sub_19A5740DC();
      sub_19A534D0C(a1, v8);
      goto LABEL_26;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v8 = *(v2 + 96);
    if (v8)
    {
      goto LABEL_23;
    }
  }

  sub_19A5740DC();
LABEL_26:
  if (*(v2 + 108) == 1)
  {
    sub_19A5740DC();
    v9 = *(v2 + 112);
    if (v9)
    {
LABEL_28:
      sub_19A5740DC();
      sub_19A534D0C(a1, v9);
      goto LABEL_31;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v9 = *(v2 + 112);
    if (v9)
    {
      goto LABEL_28;
    }
  }

  sub_19A5740DC();
LABEL_31:
  if (*(v2 + 124) == 1)
  {
    sub_19A5740DC();
    v10 = *(v2 + 128);
    if (v10)
    {
LABEL_33:
      sub_19A5740DC();
      sub_19A534D0C(a1, v10);
      goto LABEL_36;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v10 = *(v2 + 128);
    if (v10)
    {
      goto LABEL_33;
    }
  }

  sub_19A5740DC();
LABEL_36:
  if (*(v2 + 140) == 1)
  {
    sub_19A5740DC();
    v11 = *(v2 + 144);
    if (v11)
    {
LABEL_38:
      sub_19A5740DC();
      sub_19A534D0C(a1, v11);
      goto LABEL_41;
    }
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
    v11 = *(v2 + 144);
    if (v11)
    {
      goto LABEL_38;
    }
  }

  sub_19A5740DC();
LABEL_41:
  if (*(v2 + 156) == 1)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t AppleDiffusionModelMetadata.ReferenceImageInfo.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.ReferenceImageInfo.hash(into:)(v1);
  return sub_19A57410C();
}

double AppleDiffusionModelMetadata.ReferenceImageInfo.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_19A537FA8(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    a1[6] = v9[6];
    a1[7] = v5;
    a1[8] = v10[0];
    *(a1 + 141) = *(v10 + 13);
    v6 = v9[3];
    a1[2] = v9[2];
    a1[3] = v6;
    v7 = v9[5];
    a1[4] = v9[4];
    a1[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    a1[1] = v8;
  }

  return result;
}

double sub_19A52F4D4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_19A537FA8(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    a1[6] = v9[6];
    a1[7] = v5;
    a1[8] = v10[0];
    *(a1 + 141) = *(v10 + 13);
    v6 = v9[3];
    a1[2] = v9[2];
    a1[3] = v6;
    v7 = v9[5];
    a1[4] = v9[4];
    a1[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_19A52F538()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.ReferenceImageInfo.hash(into:)(v1);
  return sub_19A57410C();
}

uint64_t sub_19A52F57C(uint64_t a1)
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.ReferenceImageInfo.hash(into:)(v2);
  return sub_19A57410C();
}

BOOL sub_19A52F5B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v12[0] = a1[8];
  *(v12 + 13) = *(a1 + 141);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 13) = *(a2 + 141);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return _s13DiffusionBase05AppleA13ModelMetadataV18ReferenceImageInfoV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13);
}

uint64_t AppleDiffusionModelMetadata.PromptInfo.ConditioningModelVersion.rawValue.getter(char a1)
{
  result = 3228749;
  if (a1)
  {
    if (a1 == 1)
    {
      return 3425357;
    }

    else
    {
      return 0x3031764D4441;
    }
  }

  return result;
}

uint64_t sub_19A52F698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 3425357;
  v5 = 0xE300000000000000;
  v6 = 0x3031764D4441;
  if (v2 == 1)
  {
    v6 = 3425357;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 3228749;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (*a2 != 1)
  {
    v4 = 0x3031764D4441;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 3228749;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A52F76C()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A52F7F8(uint64_t a1)
{
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A52F870(uint64_t a1)
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A52F8F8@<X0>(Swift::String *a1@<X0>, DiffusionBase::AppleDiffusionModelMetadata::PromptInfo::ConditioningModelVersion_optional *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV10PromptInfoV012ConditioningD7VersionO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_19A52F928(uint64_t *a1@<X8>)
{
  v2 = 3228749;
  v3 = 3425357;
  v4 = 0xE300000000000000;
  if (*v1 != 1)
  {
    v3 = 0x3031764D4441;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v2 = v3;
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

unint64_t sub_19A52FA14()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574616C706D6574;
  }
}

uint64_t sub_19A52FA7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A538C88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A52FAA4(uint64_t a1)
{
  v2 = sub_19A53DFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A52FAE0(uint64_t a1)
{
  v2 = sub_19A53DFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleDiffusionModelMetadata.PromptInfo.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a3)
  {
    sub_19A5740DC();
    sub_19A572E4C();
  }

  else
  {
    sub_19A5740DC();
  }

  if (a4 == 3)
  {
    sub_19A5740DC();
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_19A5740DC();
    return;
  }

  sub_19A5740DC();
  sub_19A572E4C();

  if (!a5)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_19A5740DC();
  v7 = *(a5 + 16);
  MEMORY[0x19A901C40](v7);
  if (v7)
  {
    v8 = a5 + 40;
    do
    {

      sub_19A572E4C();

      v8 += 16;
      --v7;
    }

    while (v7);
  }
}

uint64_t AppleDiffusionModelMetadata.PromptInfo.hashValue.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.PromptInfo.hash(into:)(v9, a1, a2, a3, a4);
  return sub_19A57410C();
}

uint64_t AppleDiffusionModelMetadata.PromptInfo.init(from:)(void *a1)
{
  result = sub_19A538DAC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_19A52FCE8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_19A538DAC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_19A52FD1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_19A5740BC();
  AppleDiffusionModelMetadata.PromptInfo.hash(into:)(v6, v1, v2, v4, v3);
  return sub_19A57410C();
}

uint64_t sub_19A52FD90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  sub_19A5740BC();
  AppleDiffusionModelMetadata.PromptInfo.hash(into:)(v7, v2, v3, v5, v4);
  return sub_19A57410C();
}

uint64_t AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x63735F656C797473;
    v6 = 0x737265705F6D636CLL;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61727473756C6C69;
    if (a1 != 5)
    {
      v7 = 0x686374656B73;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1936876912;
    v2 = 0x7472615F656E696CLL;
    v3 = 0x696A6F6D65;
    if (a1 != 3)
    {
      v3 = 7168876;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F6974616D696E61;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19A52FF58(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A52FFE0()
{
  v1 = *v0;
  sub_19A5740BC();
  AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

double sub_19A530044(uint64_t a1)
{
  AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(*v1);
  sub_19A572E4C();

  return result;
}

uint64_t sub_19A530098(uint64_t a1)
{
  v2 = *v1;
  sub_19A5740BC();
  AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(v2);
  sub_19A572E4C();

  return sub_19A57410C();
}

unint64_t sub_19A5300F8@<X0>(Swift::String *a1@<X0>, DiffusionBase::AppleDiffusionModelMetadata::LoraInfo::LoraType_optional *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV8LoraInfoV0F4TypeO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_19A530128@<X0>(uint64_t *a1@<X8>)
{
  result = AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19A530204()
{
  v1 = 1667592307;
  if (*v0 != 1)
  {
    v1 = 0x656C616373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_19A53024C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A53906C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A530274(uint64_t a1)
{
  v2 = sub_19A53DF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A5302B0(uint64_t a1)
{
  v2 = sub_19A53DF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.LoraInfo.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 10)
  {
    sub_19A5740DC();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19A5740DC();
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

    return sub_19A5740DC();
  }

  sub_19A5740DC();
  AppleDiffusionModelMetadata.LoraInfo.LoraType.rawValue.getter(a2);
  sub_19A572E4C();

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_19A5740DC();
  sub_19A572E4C();
  if ((a5 & 0x100000000) == 0)
  {
LABEL_4:
    sub_19A5740DC();
    return sub_19A5740EC();
  }

  return sub_19A5740DC();
}

uint64_t AppleDiffusionModelMetadata.LoraInfo.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.LoraInfo.hash(into:)(v9, a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32));
  return sub_19A57410C();
}

uint64_t AppleDiffusionModelMetadata.LoraInfo.init(from:)(void *a1)
{
  LODWORD(result) = sub_19A539180(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_19A53049C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_19A539180(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 28) = BYTE4(v7) & 1;
  }

  return result;
}

uint64_t sub_19A5304D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v5 = *v0;
  sub_19A5740BC();
  AppleDiffusionModelMetadata.LoraInfo.hash(into:)(v7, v5, v1, v2, v3 | (v4 << 32));
  return sub_19A57410C();
}

uint64_t sub_19A530578(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 28);
  v6 = *v1;
  sub_19A5740BC();
  AppleDiffusionModelMetadata.LoraInfo.hash(into:)(v8, v6, v2, v3, v4 | (v5 << 32));
  return sub_19A57410C();
}

uint64_t sub_19A530690()
{
  v1 = 0x65636E6164697567;
  v2 = 0x5F6D636C5F657375;
  if (*v0 != 2)
  {
    v2 = 0x7365766C6F766E69;
  }

  if (*v0)
  {
    v1 = 0x706574735F6D756ELL;
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

uint64_t sub_19A530730@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A5393A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A530758(uint64_t a1)
{
  v2 = sub_19A53DE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A530794(uint64_t a1)
{
  v2 = sub_19A53DE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleDiffusionModelMetadata.GlobalLCMParameters.hash(into:)()
{
  sub_19A5740EC();
  if (*(v0 + 16) == 1)
  {
    sub_19A5740DC();
  }

  else
  {
    v1 = *(v0 + 8);
    sub_19A5740DC();
    MEMORY[0x19A901C40](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_19A5740DC();
  }

  else
  {
    sub_19A5740DC();
    sub_19A5740EC();
  }

  if (*(v0 + 33) == 1)
  {
    return sub_19A5740DC();
  }

  v2 = *(v0 + 28) | (*(v0 + 32) << 32);
  sub_19A5740DC();
  if ((v2 & 0x100000000) != 0)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t AppleDiffusionModelMetadata.GlobalLCMParameters.hashValue.getter()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.GlobalLCMParameters.hash(into:)();
  return sub_19A57410C();
}

double AppleDiffusionModelMetadata.GlobalLCMParameters.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_19A539528(a2, v6);
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

double sub_19A530940@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_19A539528(a2, v6);
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

uint64_t sub_19A530988()
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.GlobalLCMParameters.hash(into:)();
  return sub_19A57410C();
}

uint64_t sub_19A5309CC(uint64_t a1)
{
  sub_19A5740BC();
  AppleDiffusionModelMetadata.GlobalLCMParameters.hash(into:)();
  return sub_19A57410C();
}

uint64_t sub_19A530A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13DiffusionBase05AppleA13ModelMetadataV19GlobalLCMParametersV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void sub_19A530A8C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5F6D636C5F657375 && a2 == 0xEC00000073726570)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19A530B18(uint64_t a1)
{
  v2 = sub_19A539778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A530B54(uint64_t a1)
{
  v2 = sub_19A539778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AppleDiffusionModelMetadata.CaseSpecificLCMParameters.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a2 & 0x100000000) == 0 && *&a1 == *&a2)
  {
    return 1;
  }

  return 0;
}

uint64_t AppleDiffusionModelMetadata.CaseSpecificLCMParameters.hash(into:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t AppleDiffusionModelMetadata.CaseSpecificLCMParameters.hashValue.getter(uint64_t a1)
{
  sub_19A5740BC();
  sub_19A5740DC();
  if ((a1 & 0x100000000) == 0)
  {
    sub_19A5740EC();
  }

  return sub_19A57410C();
}

unint64_t AppleDiffusionModelMetadata.CaseSpecificLCMParameters.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3468, &unk_19A591C00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A539778();
  sub_19A57417C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v7 = sub_19A573CBC();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7 | ((HIDWORD(v7) & 1) << 32);
}

uint64_t sub_19A530DF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3468, &unk_19A591C00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A539778();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = sub_19A573CBC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9;
  *(a2 + 4) = BYTE4(v9) & 1;
  return result;
}

uint64_t sub_19A530F94()
{
  if (*(v0 + 4) == 1)
  {
    return sub_19A5740DC();
  }

  sub_19A5740DC();
  return sub_19A5740EC();
}

uint64_t sub_19A530FE8(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_19A5740BC();
  sub_19A5740DC();
  if (v2 != 1)
  {
    sub_19A5740EC();
  }

  return sub_19A57410C();
}

uint64_t sub_19A531058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t AppleDiffusionModelMetadata.StyleSelection.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6F6974616D696E61;
  v2 = 0x6C75616665645F5FLL;
  if (a1 != 5)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  v3 = 0x686374656B73;
  if (a1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x696A6F6D65;
  if (a1 != 1)
  {
    v4 = 0x61727473756C6C69;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_19A53117C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13DiffusionBase05AppleA13ModelMetadataV14StyleSelectionO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19A5311AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F6974616D696E61;
  v5 = 0xEB000000005F5F74;
  v6 = 0x6C75616665645F5FLL;
  if (v2 != 5)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000019A595400;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x696A6F6D65;
  if (v2 != 1)
  {
    v10 = 0x61727473756C6C69;
    v9 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

double sub_19A531308(uint64_t a1)
{
  sub_19A572E4C();

  return result;
}