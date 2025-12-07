BOOL sub_1D1611B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  MedicationSearchCluster.primaryName.getter();
  v6 = sub_1D166FB84();

  MedicationSearchCluster.primaryName.getter();
  v7 = sub_1D166FB84();

  v8 = MedicationSearchCluster.primaryName.getter();
  v9 = a5(v8);

  v10 = MedicationSearchCluster.primaryName.getter();
  v11 = a5(v10);

  if ((v6 ^ v7))
  {
    return v6;
  }

  else
  {
    return v9 < v11;
  }
}

void sub_1D1611CE8(uint64_t a1)
{
  if (!qword_1EC63DC18)
  {
    type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(255);
    sub_1D15F43AC(255);
    sub_1D1610510(&qword_1EC63D990, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher, &protocol conformance descriptor for HKHealthStore.HKMedicationClusterPublisher);
    v1 = sub_1D166F594();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DC18);
    }
  }
}

uint64_t sub_1D1611D94(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor(0);
  (*(*(Descriptor - 8) + 16))(a2, a1, Descriptor);
  return a2;
}

uint64_t sub_1D1611DF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_1D166F174() - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1D1610CC4(a1, v7, v8, a2);
}

uint64_t sub_1D1611ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D1611F3C(unint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_29:
    v2 = sub_1D1670224();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D388D4D0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v9 = [v6 routedDoseFormProducts];
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v10 = sub_1D166FC54();

        if (v10 >> 62)
        {
          v11 = sub_1D1670224();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v11)
        {
          v12 = v7;
          v11 = v7;
        }

        v14 = sub_1D1606390(v11);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_27;
        }

        v18 = v13;
        if (v4[3] < v17)
        {
          sub_1D16071C4(v17, 1);
          v4 = v26;
          v19 = sub_1D1606390(v11);
          if ((v18 & 1) != (v20 & 1))
          {
            sub_1D1614278(0, &qword_1EC63DB48, &type metadata for MedicationGroupingKey, MEMORY[0x1E69E6720]);
            result = sub_1D1670634();
            __break(1u);
            return result;
          }

          v14 = v19;
        }

        if (v18)
        {

          v5 = (v4[7] + 8 * v14);
          MEMORY[0x1D388CE10]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D166FC84();
          }

          sub_1D166FCC4();
        }

        else
        {
          sub_1D1614278(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D16721C0;
          *(v21 + 32) = v7;
          v4[(v14 >> 6) + 8] |= 1 << v14;
          *(v4[6] + 8 * v14) = v11;
          *(v4[7] + 8 * v14) = v21;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_28;
          }

          v4[2] = v24;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1D161224C(char *__src, char *a2, char *a3, char *__dst, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  v38 = __dst;
  if (v12 < v14 >> 3)
  {
    if (__dst != __src || &__src[8 * v12] <= __dst)
    {
      v16 = __dst;
      memmove(__dst, __src, 8 * v12);
      v8 = a2;
      __dst = v16;
    }

    v46 = &__dst[8 * v12];
    if (v10 < 8 || v8 >= v7)
    {
      v27 = v9;
      v18 = v38;
      goto LABEL_45;
    }

    v18 = v38;
    v45 = v7;
    while (1)
    {
      __dsta = v8;

      MedicationSearchCluster.primaryName.getter();
      v19 = sub_1D166FB84();

      MedicationSearchCluster.primaryName.getter();
      v40 = sub_1D166FB84();

      v20 = MedicationSearchCluster.primaryName.getter();
      v21 = a7(v20);

      v22 = MedicationSearchCluster.primaryName.getter();
      v23 = a7(v22);

      v24 = ((v19 ^ v40) & 1) != 0 ? v19 : v21 < v23;
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = __dsta;
      v8 = __dsta + 8;
      if (v9 != __dsta)
      {
        goto LABEL_19;
      }

LABEL_20:
      v9 += 8;
      if (v18 >= v46 || v8 >= v45)
      {
        v27 = v9;
        goto LABEL_45;
      }
    }

    v25 = v18;
    v26 = v9 == v18;
    v18 += 8;
    v8 = __dsta;
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_19:
    *v9 = *v25;
    goto LABEL_20;
  }

  v18 = __dst;
  if (__dst != a2 || &a2[8 * v15] <= __dst)
  {
    memmove(__dst, a2, 8 * v15);
    v8 = a2;
  }

  v46 = &v18[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    v27 = v8;
    goto LABEL_45;
  }

  do
  {
    __dstb = v8;
    v7 -= 8;
    v29 = v46;
    v37 = v8 - 8;
    while (1)
    {
      v29 -= 8;
      v30 = v7 + 8;

      MedicationSearchCluster.primaryName.getter();
      v41 = sub_1D166FB84();

      MedicationSearchCluster.primaryName.getter();
      v39 = sub_1D166FB84();

      v31 = MedicationSearchCluster.primaryName.getter();
      v32 = a7(v31);

      v33 = MedicationSearchCluster.primaryName.getter();
      v34 = a7(v33);

      v35 = ((v41 ^ v39) & 1) != 0 ? v41 : v32 < v34;
      if (v35)
      {
        break;
      }

      if (v30 != v46)
      {
        *v7 = *v29;
      }

      v7 -= 8;
      v46 = v29;
      v18 = v38;
      if (v29 <= v38)
      {
        v46 = v29;
        v27 = __dstb;
        goto LABEL_45;
      }
    }

    v27 = v37;
    if (v30 != __dstb)
    {
      *v7 = *v37;
    }

    v18 = v38;
    if (v46 <= v38)
    {
      break;
    }

    v8 = v37;
  }

  while (v37 > v9);
LABEL_45:
  if (v27 != v18 || v27 >= &v18[(v46 - v18 + (v46 - v18 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v27, v18, 8 * ((v46 - v18) / 8));
  }

  return 1;
}

uint64_t sub_1D16126C8(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = a1;
  v9 = *a1;

  v26 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_1D1626448(v26);
  }

  v21 = v8;
  *v8 = v26;
  v10 = v26 + 16;
  v11 = *(v26 + 2);
  if (v11 < 2)
  {
LABEL_9:

    *v21 = v26;

    return 1;
  }

  else
  {
    while (1)
    {
      v12 = *a3;
      if (!*a3)
      {
        break;
      }

      v13 = &v26[16 * v11];
      v8 = *v13;
      v14 = v10;
      v15 = &v10[16 * v11];
      v16 = *(v15 + 1);
      v27 = (v12 + 8 * *v15);
      v28 = (v12 + 8 * *v13);
      v17 = (v12 + 8 * v16);

      sub_1D161224C(v28, v27, v17, a2, a4, a5, a6);
      if (v29)
      {

        *v21 = v26;

        swift_bridgeObjectRelease_n();
        return 1;
      }

      if (v16 < v8)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v11 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v13 = v8;
      *(v13 + 1) = v16;
      v19 = v18 - v11;
      if (v18 < v11)
      {
        goto LABEL_14;
      }

      v10 = v14;
      v11 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v11;
      if (v11 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v26;

    __break(1u);
  }

  return result;
}

uint64_t sub_1D16128B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), char *a8)
{
  v168 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  if (v10 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
LABEL_188:
    v133 = *a1;
    if (!*a1)
    {
      goto LABEL_224;
    }

    sub_1D16126C8(&v168, v133, a3, a5, a6, a7, a8);

    goto LABEL_190;
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v12 = 0;
  v143 = MEMORY[0x1E69E7CC0];
  v151 = a6;
  v157 = a8;
  v135 = a4;
  while (1)
  {
    v137 = v12;
    if (v12 + 1 >= v10)
    {
      v10 = v12 + 1;
      v42 = v143;
      goto LABEL_69;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * (v12 + 1));
    v158 = *(*a3 + 8 * v12);
    v159 = v14;

    v148 = sub_1D1611B70(&v159, &v158, a5, a6, a7);
    if (v147)
    {

LABEL_190:

      swift_bridgeObjectRelease_n();
    }

    v15 = v12 + 2;
    v140 = 8 * v12;
    v16 = (v13 + 8 * v12 + 16);
    v145 = v10;
    while (v10 != v15)
    {
      v22 = *(v16 - 1);
      v23 = *v16;
      v24 = *v16 >> 62;
      if (v24)
      {
        if (!sub_1D1670224())
        {
LABEL_23:
          v28 = qword_1EDECB050;

          if (v28 != -1)
          {
            swift_once();
          }

          sub_1D166F004();
          goto LABEL_26;
        }
      }

      else if (!*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1D388D4D0](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_200;
        }

        v25 = *(v23 + 32);

        v26 = v25;
      }

      v27 = v26;
      sub_1D160096C(&v160);

      sub_1D160161C(&v160);
LABEL_26:
      v29 = sub_1D166FB84();

      if (v22 >> 62)
      {
        if (!sub_1D1670224())
        {
LABEL_33:
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          sub_1D166F004();
          goto LABEL_36;
        }
      }

      else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1D388D4D0](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_201;
        }

        v30 = *(v22 + 32);
      }

      v31 = v30;
      sub_1D160096C(&v161);

      sub_1D160161C(&v161);
LABEL_36:
      v32 = sub_1D166FB84();

      if (v24)
      {
        v152 = v29;
        if (!sub_1D1670224())
        {
LABEL_43:
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          v35 = v32;
          v36 = sub_1D166F004();
          v37 = v38;
          goto LABEL_46;
        }
      }

      else
      {
        v152 = v29;
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1D388D4D0](0, v23);
      }

      else
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_202;
        }

        v33 = *(v23 + 32);
      }

      v34 = v33;
      v35 = v32;
      sub_1D160096C(v162);

      v36 = v162[0];
      v37 = v162[1];

      sub_1D160161C(v162);
LABEL_46:
      v39 = (a7)(v36, v37);

      if (v22 >> 62)
      {
        a6 = v151;
        if (sub_1D1670224())
        {
LABEL_50:
          if ((v22 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x1D388D4D0](0, v22);
          }

          else
          {
            if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_203;
            }

            v40 = *(v22 + 32);
          }

          v41 = v40;
          sub_1D160096C(v163);

          v17 = v163[0];
          v19 = v163[1];

          sub_1D160161C(v163);
          goto LABEL_11;
        }
      }

      else
      {
        a6 = v151;
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }
      }

      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v17 = sub_1D166F004();
      v19 = v18;
LABEL_11:
      v20 = (a7)(v17, v19);

      if ((v152 ^ v35))
      {
        v21 = v152;
      }

      else
      {
        v21 = v39 < v20;
      }

      ++v15;
      ++v16;
      v10 = v145;
      if (v148 != v21)
      {
        v10 = v15 - 1;
        break;
      }
    }

    v43 = v140;
    v42 = v143;
    a4 = v135;
    v12 = v137;
    if (!v148)
    {
      goto LABEL_69;
    }

    if (v10 < v137)
    {
      goto LABEL_219;
    }

    if (v137 < v10)
    {
      v44 = 8 * v10 - 8;
      v45 = v10;
      v46 = v137;
      do
      {
        if (v46 != --v45)
        {
          v48 = *a3;
          if (!*a3)
          {
            goto LABEL_222;
          }

          v47 = *(v48 + v43);
          *(v48 + v43) = *(v48 + v44);
          *(v48 + v44) = v47;
        }

        ++v46;
        v44 -= 8;
        v43 += 8;
      }

      while (v46 < v45);
    }

LABEL_69:
    v49 = a3[1];
    if (v10 >= v49)
    {
LABEL_78:
      v51 = v10;
      if (v10 < v12)
      {
        goto LABEL_215;
      }

      goto LABEL_79;
    }

    if (__OFSUB__(v10, v12))
    {
      goto LABEL_216;
    }

    if (v10 - v12 >= a4)
    {
      goto LABEL_78;
    }

    if (__OFADD__(v12, a4))
    {
      goto LABEL_217;
    }

    if (v12 + a4 >= v49)
    {
      v50 = a3[1];
    }

    else
    {
      v50 = v12 + a4;
    }

    if (v50 < v12)
    {
      goto LABEL_218;
    }

    if (v10 == v50)
    {
      goto LABEL_78;
    }

    v150 = *a3;
    v106 = (*a3 + 8 * v10 - 8);
    v107 = v12 - v10;
    v142 = v50;
LABEL_131:
    v146 = v10;
    v108 = *(v150 + 8 * v10);
    v138 = v107;
    v139 = v106;
LABEL_132:
    v109 = *v106;
    if (v108 >> 62)
    {
      break;
    }

    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_134;
    }

LABEL_139:
    v113 = qword_1EDECB050;

    if (v113 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
LABEL_142:
    v114 = sub_1D166FB84();

    if (v109 >> 62)
    {
      v154 = v114;
      if (!sub_1D1670224())
      {
        goto LABEL_149;
      }

LABEL_144:
      if ((v109 & 0xC000000000000001) != 0)
      {
        v115 = MEMORY[0x1D388D4D0](0, v109);
      }

      else
      {
        if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_193;
        }

        v115 = *(v109 + 32);
      }

      v116 = v115;
      sub_1D160096C(&v165);

      sub_1D160161C(&v165);
    }

    else
    {
      v154 = v114;
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_144;
      }

LABEL_149:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
    }

    v117 = sub_1D166FB84();

    if (v108 >> 62)
    {
      if (!sub_1D1670224())
      {
        goto LABEL_159;
      }

LABEL_154:
      if ((v108 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x1D388D4D0](0, v108);
      }

      else
      {
        if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_194;
        }

        v118 = *(v108 + 32);
      }

      v119 = v118;
      sub_1D160096C(v166);

      v120 = v166[0];
      v121 = v166[1];

      sub_1D160161C(v166);
    }

    else
    {
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_154;
      }

LABEL_159:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v120 = sub_1D166F004();
      v121 = v122;
    }

    v123 = (a7)(v120, v121);

    if (v109 >> 62)
    {
      if (!sub_1D1670224())
      {
        goto LABEL_169;
      }

LABEL_164:
      if ((v109 & 0xC000000000000001) != 0)
      {
        v124 = MEMORY[0x1D388D4D0](0, v109);
      }

      else
      {
        if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_195;
        }

        v124 = *(v109 + 32);
      }

      v125 = v124;
      sub_1D160096C(v167);

      v126 = v167[0];
      v127 = v167[1];

      sub_1D160161C(v167);
    }

    else
    {
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_164;
      }

LABEL_169:
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v126 = sub_1D166F004();
      v127 = v128;
    }

    v129 = (a7)(v126, v127);

    if ((v154 ^ v117))
    {
      v130 = v154;
    }

    else
    {
      v130 = v123 < v129;
    }

    if (v130)
    {
      a6 = v151;
      if (!v150)
      {
        goto LABEL_220;
      }

      v131 = *v106;
      v108 = v106[1];
      *v106 = v108;
      v106[1] = v131;
      --v106;
      if (__CFADD__(v107++, 1))
      {
        goto LABEL_130;
      }

      goto LABEL_132;
    }

    a6 = v151;
LABEL_130:
    v10 = v146 + 1;
    v106 = v139 + 1;
    v107 = v138 - 1;
    v51 = v142;
    if (v146 + 1 != v142)
    {
      goto LABEL_131;
    }

    v42 = v143;
    if (v142 < v137)
    {
      goto LABEL_215;
    }

LABEL_79:
    v141 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1D15ECC40(0, *(v42 + 2) + 1, 1, v42);
    }

    v53 = *(v42 + 2);
    v52 = *(v42 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v42 = sub_1D15ECC40((v52 > 1), v53 + 1, 1, v42);
    }

    *(v42 + 2) = v54;
    v55 = v42 + 32;
    v56 = &v42[16 * v53 + 32];
    *v56 = v137;
    *(v56 + 1) = v51;
    v168 = v42;
    v153 = *a1;
    if (!*a1)
    {
      goto LABEL_223;
    }

    v143 = v42;
    if (v53)
    {
      v149 = v42 + 32;
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v42 + 4);
          v59 = *(v42 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_99:
          if (v61)
          {
            goto LABEL_206;
          }

          v74 = &v42[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_209;
          }

          v80 = &v55[16 * v57];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_212;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_213;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_120;
          }

          goto LABEL_113;
        }

        v84 = &v42[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_113:
        if (v79)
        {
          goto LABEL_208;
        }

        v87 = &v55[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_211;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_120:
        if (v57 - 1 >= v54)
        {
          goto LABEL_196;
        }

        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_221;
        }

        v96 = &v55[16 * v57 - 16];
        v97 = *v96;
        v98 = v57;
        v99 = &v55[16 * v57];
        v100 = *(v99 + 1);
        v101 = (v95 + 8 * *v96);
        v102 = (v95 + 8 * *v99);
        v103 = (v95 + 8 * v100);

        sub_1D161224C(v101, v102, v103, v153, a5, v151, a7);
        if (v147)
        {

          v168 = v143;

          goto LABEL_190;
        }

        if (v100 < v97)
        {
          goto LABEL_197;
        }

        v42 = v143;
        v104 = *(v143 + 16);
        if (v98 > v104)
        {
          goto LABEL_198;
        }

        *v96 = v97;
        *(v96 + 1) = v100;
        if (v98 >= v104)
        {
          goto LABEL_199;
        }

        v54 = v104 - 1;
        memmove(v99, v99 + 16, 16 * (v104 - 1 - v98));
        *(v143 + 16) = v104 - 1;
        v105 = v104 > 2;
        v55 = v149;
        a6 = v151;
        if (!v105)
        {
LABEL_3:
          v168 = v42;
          goto LABEL_4;
        }
      }

      v62 = &v55[16 * v54];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_204;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_205;
      }

      v69 = &v42[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_207;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_210;
      }

      if (v73 >= v65)
      {
        v91 = &v55[16 * v57];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_214;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_120;
      }

      goto LABEL_99;
    }

LABEL_4:
    v10 = a3[1];
    v12 = v141;
    a8 = v157;
    a4 = v135;
    if (v141 >= v10)
    {
      goto LABEL_188;
    }
  }

  if (!sub_1D1670224())
  {
    goto LABEL_139;
  }

LABEL_134:
  if ((v108 & 0xC000000000000001) != 0)
  {

    v111 = MEMORY[0x1D388D4D0](0, v108);
    goto LABEL_137;
  }

  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v110 = *(v108 + 32);

    v111 = v110;
LABEL_137:
    v112 = v111;
    sub_1D160096C(&v164);

    sub_1D160161C(&v164);
    goto LABEL_142;
  }

  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
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
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_221:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_222:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_223:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_224:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1613950(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v44[10] = a5;
  if (a3 == a2)
  {
    return result;
  }

  v38 = *a4;
  v7 = (*a4 + 8 * a3 - 8);
  v8 = result - a3;
LABEL_5:
  v36 = v7;
  v37 = a3;
  v9 = *(v38 + 8 * a3);
  v35 = v8;
  while (1)
  {
    v10 = *v7;
    if (v9 >> 62)
    {
      break;
    }

    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:
    v14 = qword_1EDECB050;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
LABEL_16:
    v15 = sub_1D166FB84();

    if (v10 >> 62)
    {
      result = sub_1D1670224();
      v39 = v15;
      if (!result)
      {
LABEL_23:
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        sub_1D166F004();
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v15;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D388D4D0](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v16 = *(v10 + 32);
    }

    v17 = v16;
    sub_1D160096C(&v42);

    sub_1D160161C(&v42);
LABEL_26:
    v18 = sub_1D166FB84();

    if (v9 >> 62)
    {
      result = sub_1D1670224();
      if (!result)
      {
LABEL_33:
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        v21 = sub_1D166F004();
        v22 = v23;
        goto LABEL_36;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_33;
      }
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1D388D4D0](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v19 = *(v9 + 32);
    }

    v20 = v19;
    sub_1D160096C(v43);

    v21 = v43[0];
    v22 = v43[1];

    sub_1D160161C(v43);
LABEL_36:
    v24 = a7(v21, v22);

    if (v10 >> 62)
    {
      result = sub_1D1670224();
      if (result)
      {
LABEL_38:
        if ((v10 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1D388D4D0](0, v10);
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v25 = *(v10 + 32);
        }

        v26 = v25;
        sub_1D160096C(v44);

        v27 = v44[0];
        v28 = v44[1];

        sub_1D160161C(v44);
        goto LABEL_46;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_38;
      }
    }

    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    v27 = sub_1D166F004();
    v28 = v29;
LABEL_46:
    v30 = a7(v27, v28);

    if ((v39 ^ v18))
    {
      v31 = v39;
    }

    else
    {
      v31 = v24 < v30;
    }

    if (v31)
    {
      if (!v38)
      {
        goto LABEL_62;
      }

      v32 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v32;
      --v7;
      if (!__CFADD__(v8++, 1))
      {
        continue;
      }
    }

    a3 = v37 + 1;
    v7 = v36 + 1;
    v8 = v35 - 1;
    if (v37 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x1D388D4D0](0, v9);
    goto LABEL_11;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    v12 = v11;
LABEL_11:
    v13 = v12;
    sub_1D160096C(&v41);

    sub_1D160161C(&v41);
    goto LABEL_16;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1D1613EEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), char *a5)
{
  v10 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_1D1670584();
  if (result >= v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10)
      {

        sub_1D1613950(0, v10, 1, a1, a2, a3, a4);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        return swift_bridgeObjectRelease_n();
      }
    }

LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v13 = v10 / 2;
  if (v10 <= 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = sub_1D166FCA4();
    *(v14 + 16) = v13;
  }

  v15[0] = (v14 + 32);
  v15[1] = v13;

  sub_1D16128B4(v15, v16, a1, v12, a2, a3, a4, a5);

  *(v14 + 16) = 0;

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D16140B4(char **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), char *a5)
{
  v10 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1D16272A0(v10);
  }

  v11 = *(v10 + 2);
  v13[0] = (v10 + 32);
  v13[1] = v11;

  sub_1D1613EEC(v13, a2, a3, a4, a5);

  *a1 = v10;

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1D16141A8()
{
  result = qword_1EC63DC28;
  if (!qword_1EC63DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DC28);
  }

  return result;
}

unint64_t sub_1D16141FC()
{
  result = qword_1EC63DC30;
  if (!qword_1EC63DC30)
  {
    sub_1D1614278(255, &qword_1EC63DC20, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E6EF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DC30);
  }

  return result;
}

void sub_1D1614278(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D16142C8()
{
  result = sub_1D166FA04();
  qword_1EDECADB8 = result;
  unk_1EDECADC0 = v1;
  return result;
}

id sub_1D1614320()
{
  result = sub_1D1614340();
  qword_1EDECAD90 = result;
  return result;
}

id sub_1D1614340()
{
  if (qword_1EDECADB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDECADB8;
  v1 = unk_1EDECADC0;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1D166F9C4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    return v4;
  }

  sub_1D16702D4();

  MEMORY[0x1D388CCF0](v0, v1);
  result = sub_1D1670424();
  __break(1u);
  return result;
}

id static NSUserDefaults.medications.getter()
{
  if (qword_1EDECAD88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDECAD90;

  return v1;
}

uint64_t sub_1D16144C8()
{
  result = sub_1D166FA04();
  qword_1EDECAD58 = result;
  unk_1EDECAD60 = v1;
  return result;
}

uint64_t sub_1D1614520()
{
  result = sub_1D166FA04();
  qword_1EDECAD40 = result;
  *algn_1EDECAD48 = v1;
  return result;
}

uint64_t sub_1D1614578()
{
  result = sub_1D166FA04();
  qword_1EDECAD28 = result;
  unk_1EDECAD30 = v1;
  return result;
}

uint64_t sub_1D16145D0()
{
  result = sub_1D166FA04();
  qword_1EDECADA0 = result;
  *algn_1EDECADA8 = v1;
  return result;
}

uint64_t sub_1D1614628()
{
  result = sub_1D166FA04();
  qword_1EDECAD08 = result;
  *algn_1EDECAD10 = v1;
  return result;
}

uint64_t sub_1D1614680()
{
  result = sub_1D166FA04();
  qword_1EDEC9F90 = result;
  *algn_1EDEC9F98 = v1;
  return result;
}

uint64_t sub_1D16146D8()
{
  result = sub_1D166FA04();
  qword_1EDEC9F38 = result;
  unk_1EDEC9F40 = v1;
  return result;
}

uint64_t sub_1D1614730()
{
  result = sub_1D166FA04();
  qword_1EDEC9F00 = result;
  *algn_1EDEC9F08 = v1;
  return result;
}

uint64_t sub_1D1614788()
{
  result = sub_1D166FA04();
  qword_1EC63DC38 = result;
  unk_1EC63DC40 = v1;
  return result;
}

uint64_t sub_1D16147E0()
{
  result = sub_1D166FA04();
  qword_1EC63DC48 = result;
  unk_1EC63DC50 = v1;
  return result;
}

uint64_t sub_1D1614838()
{
  result = sub_1D166FA04();
  qword_1EDEC9F58 = result;
  unk_1EDEC9F60 = v1;
  return result;
}

uint64_t sub_1D1614890()
{
  result = sub_1D166FA04();
  qword_1EDECAD70 = result;
  unk_1EDECAD78 = v1;
  return result;
}

uint64_t sub_1D16148E8()
{
  result = sub_1D166FA04();
  qword_1EDEC9F18 = result;
  unk_1EDEC9F20 = v1;
  return result;
}

uint64_t sub_1D1614940()
{
  result = sub_1D166FA04();
  qword_1EDEC9F70 = result;
  unk_1EDEC9F78 = v1;
  return result;
}

uint64_t sub_1D1614998(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_1D16149FC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  *a2 = v4;
  return result;
}

uint64_t sub_1D1614A7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1D166F744();
}

uint64_t sub_1D1614AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  return v1;
}

uint64_t sub_1D1614B68(void *a1)
{
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D1614C04(char *a1, uint64_t *a2)
{
  sub_1D1615CA0(0, &qword_1EC63DC58, sub_1D1614E64, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  v11(&v13 - v9, a1, v4);
  v11(v8, v10, v4);
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1D1614DCC()
{
  swift_beginAccess();
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

void sub_1D1614E64(uint64_t a1)
{
  if (!qword_1EDEC9DD8)
  {
    sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9DD8);
    }
  }
}

uint64_t MedicationDoseEvent.__allocating_init(_:medicationDetailProvider:medication:)(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  MedicationDoseEvent.init(_:medicationDetailProvider:medication:)(a1, a2, a3);
  return v6;
}

uint64_t MedicationDoseEvent.init(_:medicationDetailProvider:medication:)(void *a1, uint64_t a2, void *a3)
{
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  v22 = 0;
  sub_1D1614E64(0);
  sub_1D166F704();
  (*(v9 + 32))(v3 + v12, v11, v8);
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider) = 0;
  *(v3 + 16) = a1;
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent_medicationDetailProvider) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = a3;

  v13 = a1;

  v14 = a3;
  sub_1D166F744();
  if (a2)
  {

    v15 = [v13 medicationIdentifier];
    v16 = sub_1D166FA04();
    v18 = v17;

    sub_1D1615670(v19, v16, v18, a2, &unk_1F4D4BF10, sub_1D1615E58, &block_descriptor_25);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1D1615174(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + 16) medicationIdentifier];
  v8 = sub_1D166FA04();
  v10 = v9;

  if (v8 == a2 && v10 == a3)
  {

    goto LABEL_8;
  }

  v12 = sub_1D16705D4();

  if (v12)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();

    v14 = a1;
    return sub_1D166F744();
  }

  return result;
}

unint64_t sub_1D16152E8()
{
  sub_1D16702D4();

  v1 = *(v0 + 16);
  v2 = [v1 description];
  v3 = sub_1D166FA04();
  v5 = v4;

  MEMORY[0x1D388CCF0](v3, v5);

  MEMORY[0x1D388CCF0](0x7461636964656D20, 0xED0000203A6E6F69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  sub_1D1614E64(0);
  v6 = sub_1D166FA74();
  MEMORY[0x1D388CCF0](v6);

  return 0xD000000000000015;
}

uint64_t MedicationDoseEvent.deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MedicationDoseEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationDoseEvent__medication;
  sub_1D1615CA0(0, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D16155F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MedicationDoseEvent(0);
  result = sub_1D166F604();
  *a2 = result;
  return result;
}

uint64_t sub_1D1615670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v23 = a2;
  v10 = sub_1D166F7E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D166F814();
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a4 + 72);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v20 = v23;
  v19 = v24;
  v18[2] = v17;
  v18[3] = v20;
  v18[4] = a3;
  v18[5] = a1;
  aBlock[4] = v19;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_1D166F804();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D1615D28();
  sub_1D1615CA0(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v16, v13, v21);
  _Block_release(v21);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v27);
}

uint64_t _s27HealthMedicationsExperience19MedicationDoseEventC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
  if (sub_1D16700A4())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    if (v4)
    {
      sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
      v2 = sub_1D16700A4();
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t type metadata accessor for MedicationDoseEvent(uint64_t a1)
{
  result = qword_1EDECA810;
  if (!qword_1EDECA810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1615B0C(uint64_t a1)
{
  sub_1D1615CA0(319, &qword_1EDECA038, sub_1D1614E64, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D1615CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1615D28()
{
  result = qword_1EDECA030;
  if (!qword_1EDECA030)
  {
    sub_1D166F7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA030);
  }

  return result;
}

unint64_t sub_1D1615D80()
{
  result = qword_1EDEC9FF0;
  if (!qword_1EDEC9FF0)
  {
    sub_1D1615CA0(255, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC9FF0);
  }

  return result;
}

uint64_t objectdestroy_16Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1D1615E5C()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D1615EA8(void *a1)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v7 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
  v8 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
  v9 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
  if (v7)
  {
    sub_1D1615FB0(v6, *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24]);
    sub_1D15F301C(v8, v9);
    sub_1D1615FFC(v6, v7, v8, v9);
    if (v9 != 1)
    {
      [v1 setNeedsDisplay];

      sub_1D15F3228(v8, v9);
      return;
    }
  }

  else
  {
    sub_1D1615FB0(v6, 0, *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16], *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24]);
    sub_1D1615FFC(v6, 0, v8, v9);
  }
}

void sub_1D1615FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_1D15F301C(a3, a4);
  }
}

void sub_1D1615FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    sub_1D15F3228(a3, a4);
  }
}

void (*sub_1D1616048(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D16160AC;
}

void sub_1D16160AC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = (*(a1 + 24) + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = *v4;
    if (v6)
    {
      sub_1D1615FB0(v9, v4[1], v4[2], v4[3]);
      sub_1D15F301C(v7, v8);
      sub_1D1615FFC(v5, v6, v7, v8);
      if (v8 != 1)
      {
        [*(a1 + 24) setNeedsDisplay];

        sub_1D15F3228(v7, v8);
      }
    }

    else
    {
      sub_1D1615FB0(v9, 0, v4[2], v4[3]);

      sub_1D1615FFC(v5, 0, v7, v8);
    }
  }
}

char *MedicationFragmentLayer.init(fragment:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for MedicationFragmentLayer();
  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 mainScreen];
  [v10 scale];
  v12 = v11;

  [v9 setContentsScale_];
  v13 = [v8 mainScreen];
  [v13 scale];
  v15 = v14;

  [v9 setRasterizationScale_];
  [v9 setNeedsDisplayOnBoundsChange_];

  v16 = (v9 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
  v17 = *(v9 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
  v18 = *(v9 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8);
  v19 = *(v9 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16);
  v20 = *(v9 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24);
  *v16 = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  sub_1D1615FFC(v17, v18, v19, v20);

  return v9;
}

id MedicationFragmentLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

char *MedicationFragmentLayer.init(layer:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = sub_1D16705C4();
  v26.receiver = v1;
  v26.super_class = type metadata accessor for MedicationFragmentLayer();
  v5 = objc_msgSendSuper2(&v26, sel_initWithLayer_, v4);
  swift_unknownObjectRelease();
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainScreen];
  [v8 scale];
  v10 = v9;

  [v7 setContentsScale_];
  v11 = [v6 mainScreen];
  [v11 scale];
  v13 = v12;

  [v7 setRasterizationScale_];
  [v7 setNeedsDisplayOnBoundsChange_];

  sub_1D15F928C(a1, v25);
  if (swift_dynamicCast())
  {
    v14 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
    v15 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
    v16 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16];
    v17 = *&v24[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24];
    sub_1D1615FB0(v14, v15, v16, v17);

    __swift_destroy_boxed_opaque_existential_0(a1);
    if (v15)
    {
      v18 = (v7 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
      v19 = *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
      v20 = *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8);
      v21 = *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 16);
      v22 = *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 24);
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v16;
      v18[3] = v17;
      sub_1D1615FFC(v19, v20, v21, v22);
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

void sub_1D16166C4(CGContext *a1)
{
  UIGraphicsPushContext(a1);
  v2 = &v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment];
  v3 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment + 8];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];

  sub_1D15F301C(v5, v6);
  if (qword_1EDECAC90 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDECAC98;
  v8 = sub_1D166F9C4();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  sub_1D1615FFC(v4, v3, v5, v6);
  if (v9)
  {
    [v1 bounds];
    [v9 drawInRect_];
    v10 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
    swift_beginAccess();
    v11 = *&v1[v10];
    if (v11)
    {
      v12 = v11;
      v13 = [v12 colorWithAlphaComponent_];
      [v13 setFill];

      [v1 bounds];
      UIRectFillUsingBlendMode(v15, kCGBlendModePlusDarker);
      [v1 bounds];
      [v9 drawInRect:22 blendMode:? alpha:?];
    }

    else
    {
    }
  }

  else
  {
LABEL_7:
  }

  UIGraphicsPopContext();
}

id MedicationFragmentLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicationFragmentLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationFragmentLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedicationDoseDaySummary.loggedDoses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MedicationDoseDaySummary.scheduledDoses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void sub_1D1616C20()
{
  qword_1EDECD808 = MEMORY[0x1E69E7CC0];
  unk_1EDECD810 = MEMORY[0x1E69E7CC0];
  word_1EDECD818 = 0;
}

double sub_1D1616C3C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  return result;
}

uint64_t sub_1D1616CCC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F744();
}

uint64_t sub_1D1616D6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();
}

uint64_t sub_1D1616DE4(void *a1)
{
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D1616E6C(char *a1, uint64_t *a2)
{
  sub_1D161E614(0, &unk_1EC63DCF0, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  v11(&v13 - v9, a1, v4);
  v11(v8, v10, v4);
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1D1617010()
{
  swift_beginAccess();
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

char *MedicationDoseDaySummaryProvider.__allocating_init(healthStore:date:medicationDetailProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D161DAD4(a1, a2, a3);

  return v8;
}

char *MedicationDoseDaySummaryProvider.init(healthStore:date:medicationDetailProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D161DAD4(a1, a2, a3);

  return v4;
}

id MedicationDoseDaySummaryProvider.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery])
  {
    [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore] stopQuery_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationDoseDaySummaryProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1617338(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D166F174();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1D161E244(&qword_1EC63DC78, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v10 = sub_1D166F9B4();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery))
    {
      [*(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore) stopQuery_];
    }

    v9(v7, a1, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_1D1617524();
  }
}

void sub_1D1617524()
{
  v35 = sub_1D166F2D4();
  v33 = *(v35 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D166F174();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v36 = v0;
  swift_beginAccess();
  v14 = *(v4 + 16);
  v14(v10, v0 + v13, v3);
  sub_1D166F2B4();
  v34 = v12;
  sub_1D166F204();
  (*(v33 + 8))(v2, v35);
  v15 = *(v4 + 8);
  v15(v10, v3);
  v35 = v15;
  v14(v7, v36 + v13, v3);
  Date.endOfDay()(v10);
  v15(v7, v3);
  v16 = objc_opt_self();
  v17 = sub_1D166F124();
  v18 = v10;
  v19 = sub_1D166F124();
  v20 = [v16 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];

  v21 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate;
  v22 = v36;
  v23 = *(v36 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate);
  *(v36 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate) = v20;

  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v24 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v25 = *(v22 + v21);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = objc_allocWithZone(MEMORY[0x1E696C2E8]);
  aBlock[4] = sub_1D161E7B4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D161D9A8;
  aBlock[3] = &block_descriptor_107;
  v28 = _Block_copy(aBlock);

  v29 = [v27 initWithSampleType:v24 predicate:v25 updateHandler:v28];

  _Block_release(v28);

  [*(v22 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore) executeQuery_];
  v30 = v35;
  v35(v18, v3);
  v30(v34, v3);
  v31 = *(v22 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery);
  *(v22 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery) = v29;
}

void sub_1D161795C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v27 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a4)
    {
      if (qword_1EDECB358 != -1)
      {
        swift_once();
      }

      v11 = sub_1D166F4E4();
      __swift_project_value_buffer(v11, qword_1EDECB360);
      v12 = v10;
      v13 = a4;
      v14 = sub_1D166F4D4();
      v15 = sub_1D166FF44();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27[1] = a4;
        v28 = v18;
        *v16 = 138412546;
        *(v16 + 4) = v12;
        *v17 = v10;
        *(v16 + 12) = 2080;
        v19 = v12;
        v20 = a4;
        sub_1D161E5A8(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
        v21 = sub_1D166FA74();
        v23 = sub_1D15F7A30(v21, v22, &v28);

        *(v16 + 14) = v23;
        _os_log_impl(&dword_1D15E6000, v14, v15, "[%@] Error fetching medication dose event samples HKObserverQuery returned error: %s", v16, 0x16u);
        sub_1D161E4D8(v17, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
        MEMORY[0x1D388E250](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1D388E250](v18, -1, -1);
        MEMORY[0x1D388E250](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v24 = sub_1D166FD84();
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v10;
      v26 = v10;
      sub_1D1617D5C(0, 0, v8, &unk_1D16733A8, v25);

      sub_1D161DF10(v8);
    }
  }
}

uint64_t sub_1D1617CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D1619838();
}

uint64_t sub_1D1617D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D161E668(a3, v25 - v10);
  v12 = sub_1D166FD84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D161DF10(v11);
  }

  else
  {
    sub_1D166FD74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D166FD14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D166FA94() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1D1618020()
{
  ObjectType = swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  v6[4] = sub_1D161E5A0;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D1618744;
  v6[3] = &block_descriptor_87;
  v5 = _Block_copy(v6);

  [v2 fetchAllSchedulesWithCompletion_];
  _Block_release(v5);
}

void sub_1D1618128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D166F7E4();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D166F814();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v14 = Strong;
    sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);

    v15 = sub_1D166FFC4();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    aBlock[4] = sub_1D161E60C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1618700;
    aBlock[3] = &block_descriptor_93;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    sub_1D166F804();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1615D80();
    sub_1D1670194();
    MEMORY[0x1D388D1B0](0, v12, v8, v17);
    _Block_release(v17);

    (*(v33 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v19 = sub_1D166F4E4();
    __swift_project_value_buffer(v19, qword_1EDECB360);
    v20 = a2;
    v21 = sub_1D166F4D4();
    v22 = sub_1D166FF44();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      v25 = sub_1D1670754();
      v27 = sub_1D15F7A30(v25, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v35 = a2;
      v28 = a2;
      sub_1D161E5A8(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
      v29 = sub_1D166FA74();
      v31 = sub_1D15F7A30(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1D15E6000, v21, v22, "[%s] Could not load schedules with error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v24, -1, -1);
      MEMORY[0x1D388E250](v23, -1, -1);
    }
  }
}

uint64_t sub_1D1618600(void *a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  if (a2 >> 62)
  {
    sub_1D1670224();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return sub_1D166F744();
}

uint64_t sub_1D1618700(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D1618744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EDECACF0, 0x1E69A3AD0);
    v4 = sub_1D166FC54();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D16187E8()
{
  v1[2] = v0;
  sub_1D161E330(0, &unk_1EDECAE30, &qword_1EDECACA0, 0x1E696C3A8, MEMORY[0x1E696B3D0]);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16188D4, 0, 0);
}

uint64_t sub_1D16188D4()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E696B3A0];
  sub_1D161E534(0, &qword_1EDECABA8, &qword_1EDECAE40, MEMORY[0x1E696B3A0]);
  sub_1D161E330(0, &qword_1EDECAE40, &qword_1EDECACA0, 0x1E696C3A8, v2);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v3 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  v4 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate);
  sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
  v5 = v4;
  sub_1D166F8F4();

  v6 = MEMORY[0x1E69682B8];
  sub_1D161E534(0, &unk_1EDECABB0, &qword_1EDECB308, MEMORY[0x1E69682B8]);
  sub_1D161E330(0, &qword_1EDECB308, &qword_1EDECACA0, 0x1E696C3A8, v6);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  sub_1D166F904();
  v8 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1D1618BDC;
  v10 = v0[3];

  return MEMORY[0x1EEDC7698](v8, v10);
}

uint64_t sub_1D1618BDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1D1618DC4;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1D1618D04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1618D04()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1D15FCECC(v0[8]);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D1618DC4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1618E44()
{
  v1[14] = v0;
  sub_1D161E5A8(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1D161E330(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v1[17] = v2;
  v1[18] = swift_task_alloc();
  sub_1D161E330(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v4 = sub_1D166F2D4();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_1D166F174();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16190C4, 0, 0);
}

uint64_t sub_1D16190C4()
{
  v1 = v0[28];
  v30 = v0[29];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v20 = v0[22];
  v21 = v0[27];
  v22 = v0[21];
  v23 = v0[20];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[16];
  v29 = v0[15];
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v7 = v0[14];
  swift_beginAccess();
  v8 = v2;
  v19 = *(v2 + 16);
  v9 = v7;
  v24 = v7;
  v19(v1, v7 + v6, v4);
  sub_1D166F2B4();
  sub_1D166F204();
  (*(v5 + 8))(v3, v20);
  v10 = *(v8 + 8);
  v0[30] = v10;
  v0[31] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  v19(v1, v9 + v6, v4);
  Date.endOfDay()(v21);
  v10(v1, v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v19(v28, v30, v4);
  v12 = *(v8 + 56);
  v12(v28, 0, 1, v4);
  v19(v29, v21, v4);
  v12(v29, 0, 1, v4);
  sub_1D15FB948(0);
  v13 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D16721D0;
  (*(v23 + 16))(v14 + v13, v22, v25);
  v12(v26, 1, 1, v4);
  v15 = v27[7];
  v12(v26 + v15, 1, 1, v4);
  v16 = v27[9];
  v17 = (v26 + v27[8]);
  sub_1D166F8D4();
  sub_1D15FB9CC(v28, v26);
  sub_1D15FB9CC(v29, v26 + v15);
  *v17 = 0;
  v17[1] = 0;
  *(v26 + v16) = v14;
  v0[32] = *(v24 + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);

  return MEMORY[0x1EEE6DFA0](sub_1D16193E8, 0, 0);
}

uint64_t sub_1D16193E8()
{
  v1 = v0[32];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_1D1619498;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1619498(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 264) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D16196FC;
  }

  else
  {
    *(v2 + 272) = *(v2 + 104);
    v4 = sub_1D16195BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D16195BC()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1(v3, v4);
  v1(v2, v4);
  sub_1D161E4D8(v5, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);

  v6 = v0[1];
  v7 = v0[34];

  return v6(v7);
}

uint64_t sub_1D16196FC()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1(v3, v4);
  v1(v2, v4);
  sub_1D161E4D8(v5, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1619838()
{
  *(v1 + 1656) = v0;
  *(v1 + 1704) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1D16198A8, 0, 0);
}

uint64_t sub_1D16198A8()
{
  v16 = v0;
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v1 = sub_1D166F4E4();
  v0[219] = __swift_project_value_buffer(v1, qword_1EDECB360);
  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15[0] = v5;
    *v4 = 136446210;
    v6 = sub_1D1670754();
    v8 = sub_1D15F7A30(v6, v7, v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%{public}s] Aquiring database assertion", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D388E250](v5, -1, -1);
    MEMORY[0x1D388E250](v4, -1, -1);
  }

  v9 = *(v0[207] + OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore);
  v15[0] = 0x6C7070612E6D6F63;
  v15[1] = 0xEA00000000002E65;
  v10 = sub_1D1670754();
  MEMORY[0x1D388CCF0](v10);

  v11 = sub_1D166F9C4();
  v0[225] = v11;

  v0[162] = v0;
  v0[167] = v0 + 183;
  v0[163] = sub_1D1619B4C;
  v12 = swift_continuation_init();
  sub_1D161E298(0);
  v0[182] = v13;
  v0[179] = v12;
  v0[175] = MEMORY[0x1E69E9820];
  v0[176] = 1107296256;
  v0[177] = sub_1D161AF1C;
  v0[178] = &block_descriptor_48;
  [v9 requestDatabaseAccessibilityAssertion:v11 timeout:v0 + 175 completion:10.0];

  return MEMORY[0x1EEE6DEC8](v0 + 162);
}

uint64_t sub_1D1619B4C()
{
  v1 = *(*v0 + 1328);
  *(*v0 + 1848) = v1;
  if (v1)
  {
    v2 = sub_1D161A400;
  }

  else
  {
    v2 = sub_1D1619C5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1619C5C()
{
  v17 = v0;
  v1 = v0[225];
  v0[237] = v0[183];

  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v6 = sub_1D1670754();
    v8 = sub_1D15F7A30(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%{public}s] Took assertion and beginning query for underlying data.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D388E250](v5, -1, -1);
    MEMORY[0x1D388E250](v4, -1, -1);
  }

  v9 = v0[207];
  v10 = swift_allocObject();
  v0[238] = v10;
  *(v10 + 16) = v9;
  v11 = v9;
  v12 = MEMORY[0x1E69E62F8];
  sub_1D161E330(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  v0[239] = v13;
  *(v13 + 16) = v11;
  v14 = v11;
  sub_1D161E330(0, &qword_1EDECADF0, &qword_1EDECACD0, 0x1E69A3AF0, v12);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 195, sub_1D1619EBC, v0 + 170);
}

uint64_t sub_1D1619EBC()
{
  v1[240] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 201, sub_1D161A628, v1 + 184);
  }

  else
  {
    v1[241] = v1[195];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 201, sub_1D1619F70, v1 + 196);
  }
}

uint64_t sub_1D1619F70()
{
  v1[242] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D161A900, 0, 0);
  }

  else
  {
    v2 = v1[201];
    v1[243] = v2;

    v3 = swift_task_alloc();
    v1[244] = v3;
    *v3 = v1;
    v3[1] = sub_1D161A06C;
    v4 = v1[241];

    return sub_1D161B110(v4, v2);
  }
}

uint64_t sub_1D161A06C()
{
  v2 = *v1;
  *(*v1 + 1960) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v2 + 656, v2 + 1608, sub_1D161AC44, v2 + 1712);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D161A1D4, 0, 0);
  }
}

uint64_t sub_1D161A1D4(uint64_t a1)
{
  v11 = v1;
  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    v6 = sub_1D1670754();
    v8 = sub_1D15F7A30(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D15E6000, v2, v3, "[%{public}s] Finished query and update handler for underlying data. Invalidating assertion.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1D388E250](v5, -1, -1);
    MEMORY[0x1D388E250](v4, -1, -1);
  }

  [*(v1 + 1896) invalidate];

  return MEMORY[0x1EEE6DEB0](v1 + 656, v1 + 1608, sub_1D161A330, v1 + 1808);
}

uint64_t sub_1D161A388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D161A400(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 1800);
  swift_willThrow();

  v3 = *(v1 + 1848);
  v4 = *(v1 + 1656);
  v5 = v3;
  v6 = sub_1D166F4D4();
  v7 = sub_1D166FF44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 1656);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    *(v1 + 1512) = v3;
    v12 = v8;
    v13 = v3;
    sub_1D15F9218();
    v14 = sub_1D166FA74();
    v16 = sub_1D15F7A30(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D15E6000, v6, v7, "[%@] Error fetching medication dose data error: %s", v9, 0x16u);
    sub_1D161E4D8(v10, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D388E250](v11, -1, -1);
    MEMORY[0x1D388E250](v9, -1, -1);
  }

  else
  {
  }

  sub_1D15E9178(0, 0);
  sub_1D15E9178(0, 0);
  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1D161A680()
{
  v22 = v0;

  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1656);
  v5 = v1;
  v6 = sub_1D166F4D4();
  v7 = sub_1D166FF44();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = v2;
    v8 = *(v0 + 1656);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    *(v0 + 1512) = v1;
    v12 = v8;
    v13 = v1;
    sub_1D15F9218();
    v14 = sub_1D166FA74();
    v16 = sub_1D15F7A30(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D15E6000, v6, v7, "[%@] Error fetching medication dose data error: %s", v9, 0x16u);
    sub_1D161E4D8(v10, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D388E250](v11, -1, -1);
    MEMORY[0x1D388E250](v9, -1, -1);

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v20;
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v2;
  }

  sub_1D15E9178(&unk_1D1673318, v17);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161A900()
{

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1608, sub_1D161A96C, v0 + 1616);
}

uint64_t sub_1D161A9C4()
{
  v22 = v0;

  v1 = *(v0 + 1936);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1656);
  v5 = v1;
  v6 = sub_1D166F4D4();
  v7 = sub_1D166FF44();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = v2;
    v8 = *(v0 + 1656);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    *(v0 + 1512) = v1;
    v12 = v8;
    v13 = v1;
    sub_1D15F9218();
    v14 = sub_1D166FA74();
    v16 = sub_1D15F7A30(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D15E6000, v6, v7, "[%@] Error fetching medication dose data error: %s", v9, 0x16u);
    sub_1D161E4D8(v10, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D388E250](v11, -1, -1);
    MEMORY[0x1D388E250](v9, -1, -1);

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v20;
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v2;
  }

  sub_1D15E9178(&unk_1D1673318, v17);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161AC9C()
{
  v22 = v0;

  v1 = *(v0 + 1960);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);
  v4 = *(v0 + 1656);
  v5 = v1;
  v6 = sub_1D166F4D4();
  v7 = sub_1D166FF44();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = v2;
    v8 = *(v0 + 1656);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    *(v0 + 1512) = v1;
    v12 = v8;
    v13 = v1;
    sub_1D15F9218();
    v14 = sub_1D166FA74();
    v16 = sub_1D15F7A30(v14, v15, &v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D15E6000, v6, v7, "[%@] Error fetching medication dose data error: %s", v9, 0x16u);
    sub_1D161E4D8(v10, &qword_1EC63DF40, &qword_1EDEC9D80, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    MEMORY[0x1D388E250](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D388E250](v11, -1, -1);
    MEMORY[0x1D388E250](v9, -1, -1);

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v20;
  }

  else
  {

    sub_1D15E9178(&unk_1D1673308, v3);
    v17 = v2;
  }

  sub_1D15E9178(&unk_1D1673318, v17);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D161AF1C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D161AFE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D15FE75C;

  return sub_1D16187E8();
}

uint64_t sub_1D161B07C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D15FE560;

  return sub_1D1618E44();
}

uint64_t sub_1D161B110(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = sub_1D166F174();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v5 = sub_1D166F7E4();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v6 = sub_1D166F814();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D161B298, 0, 0);
}

uint64_t sub_1D161B298()
{
  v3 = MEMORY[0x1E69E7CC0];
  v0[29] = MEMORY[0x1E69E7CC0];
  v4 = v0[34];
  v0[30] = v3;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v6 = sub_1D1670224();
    v4 = v0[34];
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[47] = v5;
  v0[48] = v6;
  v7 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider;
  v0[49] = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider;
  v0[50] = v3;
  v0[53] = v3;
  v0[54] = v3;
  v0[51] = v3;
  v0[52] = v3;
  if (v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
LABEL_38:
      v8 = MEMORY[0x1D388D4D0](0);
      v7 = v0[49];
      goto LABEL_7;
    }

    if (*(v5 + 16))
    {
      v8 = *(v4 + 32);
LABEL_7:
      v0[55] = v8;
      v0[56] = 1;
      v0[57] = *(v0[36] + v7);
      v9 = [v8 medicationIdentifier];
      v10 = sub_1D166FA04();
      v12 = v11;

      v0[58] = v12;
      v13 = swift_task_alloc();
      v0[59] = v13;
      *v13 = v0;
      v14 = sub_1D161B980;
LABEL_21:
      v13[1] = v14;

      return sub_1D1644B00(v10, v12);
    }

    __break(1u);
LABEL_40:
    v44 = sub_1D1670224();
    v0[62] = v44;
    if (!v44)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  v15 = v0[35];
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[62] = v16;
  if (!v16)
  {
LABEL_41:
    v18 = v0 + 53;
    goto LABEL_42;
  }

LABEL_10:
  v17 = v0[53];
  v18 = v0[51];
  v19 = v0[35];
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1D388D4D0](0);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;
  v0[63] = v20;
  v0[64] = 1;
  v1 = &property descriptor for MedicationView.config;
  v22 = [v20 identifier];
  v23 = sub_1D166FA04();
  v25 = v24;

  v0[65] = v23;
  v0[66] = v25;
  v2 = &property descriptor for MedicationView.config;
  v26 = [v21 doses];
  sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
  v7 = sub_1D166FC54();
  v0[67] = v7;

  if (v7 >> 62)
  {
LABEL_46:
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    result = sub_1D1670224();
    goto LABEL_16;
  }

  v27 = v7 & 0xFFFFFFFFFFFFFF8;
  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v0[69] = result;
  v0[68] = v27;
  v0[71] = v17;
  v0[70] = v18;
  if (result)
  {
LABEL_17:
    v29 = v0[67];
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1D388D4D0](0);
    }

    else
    {
      if (!*(v27 + 16))
      {
        __break(1u);
        return result;
      }

      v30 = *(v29 + 32);
    }

    v0[72] = v30;
    v0[73] = 1;
    v0[74] = *(v0[36] + v0[49]);
    v31 = [v30 medicationIdentifier];
    v10 = sub_1D166FA04();
    v12 = v32;

    v0[75] = v12;
    v13 = swift_task_alloc();
    v0[76] = v13;
    *v13 = v0;
    v14 = sub_1D161C918;
    goto LABEL_21;
  }

  v18 = v0 + 71;
  while (1)
  {
    v34 = v0[63];
    v33 = v0[64];
    v17 = v0[62];

    if (v33 == v17)
    {
      break;
    }

    v7 = v0[64];
    v35 = v0[35];
    v58 = *(v0 + 35);
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1D388D4D0](v7);
    }

    else
    {
      if (v7 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v36 = *(v35 + 8 * v7 + 32);
    }

    v0[63] = v36;
    v0[64] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    v37 = v36;
    v38 = [v36 v1[205]];
    v39 = sub_1D166FA04();
    v41 = v40;

    v0[65] = v39;
    v0[66] = v41;
    v42 = [v37 v2[204]];
    v43 = sub_1D166FC54();
    v0[67] = v43;

    v27 = v43 & 0xFFFFFFFFFFFFFF8;
    if (v43 >> 62)
    {
      result = sub_1D1670224();
    }

    else
    {
      result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[69] = result;
    v0[68] = v27;
    *(v0 + 35) = v58;
    if (result)
    {
      goto LABEL_17;
    }
  }

LABEL_42:
  v45 = *v18;
  v46 = v0[54];
  v47 = v0[46];
  v48 = v0[43];
  v56 = v0[45];
  v57 = v0[44];
  v54 = v0[41];
  v55 = v0[42];

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v53 = sub_1D166FFC4();
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v46;
  v50[4] = v45;
  v0[12] = sub_1D161E28C;
  v0[13] = v50;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D1618700;
  v0[11] = &block_descriptor_44;
  v51 = _Block_copy(v0 + 8);

  sub_1D166F804();
  v0[33] = v3;
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v47, v48, v51);
  _Block_release(v51);

  (*(v55 + 8))(v48, v54);
  (*(v56 + 8))(v47, v57);

  v52 = v0[1];

  return v52();
}

uint64_t sub_1D161B980(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {

    v5 = sub_1D161D2A0;
  }

  else
  {
    *(v4 + 488) = a1;
    v5 = sub_1D161BAE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D161BAE8()
{
  v1 = *(v0 + 488);
  if (!v1)
  {
    v25 = *(v0 + 448);
    v26 = *(v0 + 384);

    if (v25 == v26)
    {
      goto LABEL_22;
    }

    v27 = *(v0 + 448);
LABEL_26:
    v62 = *(v0 + 272);
    if ((v62 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x1D388D4D0](v27);
    }

    else
    {
      if (v27 >= *(*(v0 + 376) + 16))
      {
        goto LABEL_65;
      }

      v63 = *(v62 + 8 * v27 + 32);
    }

    *(v0 + 440) = v63;
    *(v0 + 448) = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      *(v0 + 456) = *(*(v0 + 288) + *(v0 + 392));
      v64 = [v63 medicationIdentifier];
      v65 = sub_1D166FA04();
      v67 = v66;

      *(v0 + 464) = v67;
      v68 = swift_task_alloc();
      *(v0 + 472) = v68;
      *v68 = v0;
      v69 = sub_1D161B980;
LABEL_40:
      v68[1] = v69;

      return sub_1D1644B00(v65, v67);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v2 = &property descriptor for MedicationView.config;
  *&v138 = *(v0 + 488);
  if ([*(v0 + 440) logStatus] == 4 || objc_msgSend(*(v0 + 440), sel_logStatus) == 5)
  {
    v3 = *(v0 + 456);
    v4 = *(v0 + 440);
    v5 = *(v0 + 368);
    v6 = *(v0 + 344);
    v132 = *(v0 + 360);
    v135 = *(v0 + 352);
    v127 = *(v0 + 328);
    v129 = *(v0 + 336);
    type metadata accessor for MedicationDose(0);
    v7 = swift_allocObject();
    v8 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider;
    *(v7 + 16) = v4;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + v8) = v3;
    swift_beginAccess();
    *(v0 + 248) = v1;
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    v9 = v4;
    v10 = v1;
    v11 = v9;
    swift_retain_n();
    v125 = v10;
    v12 = v11;
    sub_1D166F704();
    swift_endAccess();

    v13 = [v12 medicationIdentifier];
    v14 = sub_1D166FA04();
    v16 = v15;

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v14;
    v18[4] = v16;
    v18[5] = v7;
    v124 = v16;
    *(v0 + 48) = sub_1D1615D04;
    *(v0 + 56) = v18;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D1618700;
    *(v0 + 40) = &block_descriptor_3;
    v19 = _Block_copy((v0 + 16));
    swift_retain_n();

    sub_1D166F804();
    *(v0 + 256) = MEMORY[0x1E69E7CC0];
    sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1615D80();
    sub_1D1670194();
    MEMORY[0x1D388D1B0](0, v5, v6, v19);
    _Block_release(v19);
    (*(v129 + 8))(v6, v127);
    (*(v132 + 8))(v5, v135);

    MEMORY[0x1D388CE10](v20);
    if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_5:
      sub_1D166FCC4();
      v21 = *(v0 + 240);
      v22 = *(v0 + 424);
      v23 = *(v0 + 408);
      v24 = v21;
      v2 = &property descriptor for MedicationView.config;
      goto LABEL_14;
    }

LABEL_67:
    sub_1D166FC84();
    goto LABEL_5;
  }

  v28 = [*(v0 + 440) scheduleItemIdentifier];
  if (v28)
  {
    v29 = *(v0 + 440);
    v30 = v28;
    v31 = sub_1D166FA04();
    v33 = v32;

    v34 = [v29 scheduledDate];
    if (v34)
    {
      v35 = v34;
      sub_1D166F144();

      v36 = sub_1D1670004();
      if ((v37 & 1) == 0)
      {
        v133 = v36;
        v137 = *(v0 + 456);
        v99 = *(v0 + 440);
        v100 = *(v0 + 312);
        v102 = *(v0 + 296);
        v101 = *(v0 + 304);
        (*(v101 + 16))(v100, *(v0 + 320), v102);
        v103 = [v99 medicationIdentifier];
        v104 = sub_1D166FA04();
        v130 = v105;

        v106 = [v99 isLastScheduledDose];
        type metadata accessor for ScheduleItem(0);
        v107 = swift_allocObject();
        *(v107 + 16) = v31;
        *(v107 + 24) = v33;
        (*(v101 + 32))(v107 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v100, v102);
        v108 = (v107 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
        *v108 = v104;
        v108[1] = v130;
        *(v107 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v133;
        *(v107 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v106;
        *(v0 + 136) = v107;
        *(v0 + 144) = v99;
        *(v0 + 152) = 1;
        type metadata accessor for MedicationDose(0);
        swift_allocObject();
        v109 = v138;
        v110 = v99;

        MedicationDose.init(_:medicationDetailProvider:medication:)((v0 + 136), v137, v109);
        MEMORY[0x1D388CE10]();
        if (*((*(v0 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_71;
        }

        goto LABEL_56;
      }

      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    }
  }

  v22 = *(v0 + 424);
  v24 = *(v0 + 432);
  v23 = *(v0 + 408);
  v21 = *(v0 + 416);
  while (1)
  {
LABEL_14:
    v38 = [*(v0 + 440) v2[192]];
    v39 = *(v0 + 440);
    if (v38)
    {
      v136 = v24;
      v40 = v38;
      v41 = sub_1D166FA04();
      v43 = v42;

      *(v0 + 184) = v41;
      *(v0 + 192) = v43;
      MEMORY[0x1D388CCF0](95, 0xE100000000000000);
      v44 = [v39 medicationIdentifier];
      v45 = sub_1D166FA04();
      v47 = v46;

      MEMORY[0x1D388CCF0](v45, v47);

      v48 = *(v0 + 184);
      v49 = *(v0 + 192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v0 + 400);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1D15ECAB4(0, *(v51 + 2) + 1, 1, *(v0 + 400));
      }

      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      if (v53 >= v52 >> 1)
      {
        v51 = sub_1D15ECAB4((v52 > 1), v53 + 1, 1, v51);
      }

      v54 = *(v0 + 440);

      *(v51 + 2) = v53 + 1;
      v55 = &v51[16 * v53];
      *(v55 + 4) = v48;
      *(v55 + 5) = v49;
      v27 = *(v0 + 448);
      *(v0 + 400) = v51;
      v24 = v136;
    }

    else
    {

      v27 = *(v0 + 448);
    }

    *(v0 + 424) = v22;
    *(v0 + 432) = v24;
    *(v0 + 408) = v23;
    *(v0 + 416) = v21;
    if (v27 != *(v0 + 384))
    {
      goto LABEL_26;
    }

LABEL_22:
    v56 = *(v0 + 280);
    if (v56 >> 62)
    {
LABEL_58:
      v114 = sub_1D1670224();
      *(v0 + 496) = v114;
      if (!v114)
      {
LABEL_59:
        v84 = (v0 + 424);
        goto LABEL_60;
      }
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 496) = v57;
      if (!v57)
      {
        goto LABEL_59;
      }
    }

    v58 = *(v0 + 424);
    v59 = *(v0 + 408);
    v60 = *(v0 + 280);
    if ((v60 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1D388D4D0](0);
    }

    else
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v61 = *(v60 + 32);
    }

    v70 = v61;
    *(v0 + 504) = v61;
    *(v0 + 512) = 1;
    v71 = [v61 identifier];
    v72 = sub_1D166FA04();
    v74 = v73;

    *(v0 + 520) = v72;
    *(v0 + 528) = v74;
    v75 = [v70 doses];
    sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
    v76 = sub_1D166FC54();
    *(v0 + 536) = v76;

    v77 = v76 & 0xFFFFFFFFFFFFFF8;
    v78 = v76 >> 62 ? sub_1D1670224() : *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 552) = v78;
    *(v0 + 544) = v77;
    *(v0 + 568) = v58;
    *(v0 + 560) = v59;
    if (!v78)
    {
      break;
    }

LABEL_36:
    v79 = *(v0 + 536);
    if ((v79 & 0xC000000000000001) != 0)
    {
      v80 = MEMORY[0x1D388D4D0](0);
      goto LABEL_39;
    }

    if (*(v77 + 16))
    {
      v80 = *(v79 + 32);
LABEL_39:
      *(v0 + 576) = v80;
      *(v0 + 584) = 1;
      *(v0 + 592) = *(*(v0 + 288) + *(v0 + 392));
      v81 = [v80 medicationIdentifier];
      v65 = sub_1D166FA04();
      v67 = v82;

      *(v0 + 600) = v67;
      v68 = swift_task_alloc();
      *(v0 + 608) = v68;
      *v68 = v0;
      v69 = sub_1D161C918;
      goto LABEL_40;
    }

    __break(1u);
LABEL_71:
    sub_1D166FC84();
LABEL_56:
    v111 = *(v0 + 320);
    v112 = *(v0 + 296);
    v113 = *(v0 + 304);
    sub_1D166FCC4();

    (*(v113 + 8))(v111, v112);
    v23 = *(v0 + 232);
    v24 = *(v0 + 432);
    v21 = *(v0 + 416);
    v22 = v23;
    v2 = &property descriptor for MedicationView.config;
  }

  v84 = (v0 + 568);
  while (1)
  {
    v86 = *(v0 + 504);
    v85 = *(v0 + 512);
    v87 = *(v0 + 496);

    if (v85 == v87)
    {
      break;
    }

    v88 = *(v0 + 512);
    v89 = *(v0 + 280);
    v138 = *(v0 + 560);
    if ((v89 & 0xC000000000000001) != 0)
    {
      v90 = MEMORY[0x1D388D4D0](v88);
    }

    else
    {
      if (v88 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_66;
      }

      v90 = *(v89 + 8 * v88 + 32);
    }

    *(v0 + 504) = v90;
    *(v0 + 512) = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    v91 = v90;
    v92 = [v90 identifier];
    v93 = sub_1D166FA04();
    v95 = v94;

    *(v0 + 520) = v93;
    *(v0 + 528) = v95;
    v96 = [v91 doses];
    v97 = sub_1D166FC54();
    *(v0 + 536) = v97;

    v77 = v97 & 0xFFFFFFFFFFFFFF8;
    if (v97 >> 62)
    {
      v98 = sub_1D1670224();
    }

    else
    {
      v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 552) = v98;
    *(v0 + 544) = v77;
    *(v0 + 560) = v138;
    if (v98)
    {
      goto LABEL_36;
    }
  }

LABEL_60:
  v115 = *v84;
  v116 = *(v0 + 432);
  v117 = *(v0 + 368);
  v118 = *(v0 + 344);
  v131 = *(v0 + 360);
  v134 = *(v0 + 352);
  v119 = *(v0 + 328);
  v128 = *(v0 + 336);

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v126 = sub_1D166FFC4();
  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v121 = swift_allocObject();
  v121[2] = v120;
  v121[3] = v116;
  v121[4] = v115;
  *(v0 + 96) = sub_1D161E28C;
  *(v0 + 104) = v121;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1D1618700;
  *(v0 + 88) = &block_descriptor_44;
  v122 = _Block_copy((v0 + 64));

  sub_1D166F804();
  *(v0 + 264) = MEMORY[0x1E69E7CC0];
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v117, v118, v122);
  _Block_release(v122);

  (*(v128 + 8))(v118, v119);
  (*(v131 + 8))(v117, v134);

  v123 = *(v0 + 8);

  return v123();
}

uint64_t sub_1D161C918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {

    v4 = sub_1D161D340;
  }

  else
  {
    v4 = sub_1D161CAA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D161CAA0()
{
  v1 = v0[72];
  v2 = v0[66];
  v3 = v0[50];
  v0[25] = v0[65];
  v0[26] = v2;

  MEMORY[0x1D388CCF0](95, 0xE100000000000000);
  v4 = &property descriptor for MedicationView.config;
  v5 = [v1 medicationIdentifier];
  v6 = sub_1D166FA04();
  v8 = v7;

  MEMORY[0x1D388CCF0](v6, v8);

  v9 = v0[26];
  v0[27] = v0[25];
  v0[28] = v9;
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 27;
  LOBYTE(v3) = sub_1D15FE8CC(sub_1D15ED988, v10, v3);

  v11 = v0[77];
  if (v3)
  {
  }

  else
  {
    if (v11)
    {
      v70 = v0[74];
      v12 = v0[72];
      v13 = v0[66];
      v14 = v0[63];
      v15 = v0[38];
      v16 = v0[39];
      v66 = v0[65];
      v68 = v0[37];

      v17 = [v14 scheduledDateTime];
      sub_1D166F144();

      v18 = [v12 medicationIdentifier];
      v19 = sub_1D166FA04();
      v21 = v20;

      v22 = [v12 dose];
      sub_1D166FDE4();
      v24 = v23;

      LOBYTE(v22) = [v12 isLastScheduledDose];
      type metadata accessor for ScheduleItem(0);
      v25 = swift_allocObject();
      *(v25 + 16) = v66;
      *(v25 + 24) = v13;
      (*(v15 + 32))(v25 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v16, v68);
      v26 = (v25 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
      *v26 = v19;
      v26[1] = v21;
      *(v25 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v24;
      *(v25 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v22;
      v0[20] = v25;
      v0[21] = 0;
      *(v0 + 176) = 1;
      type metadata accessor for MedicationDose(0);
      swift_allocObject();

      v27 = v11;
      MedicationDose.init(_:medicationDetailProvider:medication:)(v0 + 20, v70, v27);
      MEMORY[0x1D388CE10]();
      if (*((v0[29] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[29] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D166FC84();
      }

      v28 = v0[72];
      sub_1D166FCC4();

      v29 = (v0 + 29);
      v30 = v0[73];
      v31 = v0[69];
      v32 = vld1q_dup_f64(v29);
      v4 = &property descriptor for MedicationView.config;
      goto LABEL_18;
    }

    v11 = v0[72];
  }

  v33 = v0[73];
  v34 = v0[69];

  if (v33 != v34)
  {
    v30 = v0[73];
LABEL_22:
    v48 = v0[67];
    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1D388D4D0](v30);
    }

    else
    {
      if (v30 >= *(v0[68] + 16))
      {
        goto LABEL_36;
      }

      v49 = *(v48 + 8 * v30 + 32);
    }

    v0[72] = v49;
    v0[73] = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      v0[74] = *(v0[36] + v0[49]);
      v50 = [v49 v4[193]];
      v51 = sub_1D166FA04();
      v53 = v52;

      v0[75] = v53;
      v54 = swift_task_alloc();
      v0[76] = v54;
      *v54 = v0;
      v54[1] = sub_1D161C918;

      sub_1D1644B00(v51, v53);
      return;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  while (1)
  {
    v45 = v0[63];
    v44 = v0[64];
    v46 = v0[62];

    if (v44 == v46)
    {
      break;
    }

    v42 = v0[64];
    v47 = v0[35];
    v71 = *(v0 + 35);
    if ((v47 & 0xC000000000000001) == 0)
    {
      if (v42 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v47 + 8 * v42 + 32);
        goto LABEL_14;
      }

      __break(1u);
    }

    v35 = MEMORY[0x1D388D4D0](v42);
LABEL_14:
    v0[63] = v35;
    v0[64] = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
    }

    else
    {
      v36 = v35;
      v37 = [v35 identifier];
      v38 = sub_1D166FA04();
      v40 = v39;

      v0[65] = v38;
      v0[66] = v40;
      v41 = [v36 doses];
      sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
      v42 = sub_1D166FC54();
      v0[67] = v42;

      if (!(v42 >> 62))
      {
        v43 = v42 & 0xFFFFFFFFFFFFFF8;
        v31 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_17;
      }
    }

    v43 = v42 & 0xFFFFFFFFFFFFFF8;
    v31 = sub_1D1670224();
LABEL_17:
    v30 = 0;
    v0[69] = v31;
    v0[68] = v43;
    v32 = v71;
LABEL_18:
    *(v0 + 35) = v32;
    if (v30 != v31)
    {
      goto LABEL_22;
    }
  }

  v55 = v0[71];
  v56 = v0[54];
  v57 = v0[46];
  v58 = v0[43];
  v67 = v0[45];
  v69 = v0[44];
  v59 = v0[41];
  v65 = v0[42];

  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v64 = sub_1D166FFC4();
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v61[2] = v60;
  v61[3] = v56;
  v61[4] = v55;
  v0[12] = sub_1D161E28C;
  v0[13] = v61;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D1618700;
  v0[11] = &block_descriptor_44;
  v62 = _Block_copy(v0 + 8);

  sub_1D166F804();
  v0[33] = MEMORY[0x1E69E7CC0];
  sub_1D161E244(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D161E5A8(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1615D80();
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v57, v58, v62);
  _Block_release(v62);

  (*(v65 + 8))(v58, v59);
  (*(v67 + 8))(v57, v69);

  v63 = v0[1];

  v63();
}

uint64_t sub_1D161D2A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D161D340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D161D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D166F734();

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1D166F744();
  }

  return result;
}

id MedicationDoseDaySummaryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D161D660@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MedicationDoseDaySummaryProvider(0);
  result = sub_1D166F604();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall MedicationDoseDaySummaryProvider.scheduleControlDidRescheduleItems()()
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1D166FD84();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_1D1617D5C(0, 0, v3, &unk_1D16731C0, v5);

  sub_1D161DF10(v3);
}

uint64_t sub_1D161D7D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1600968;

  return sub_1D1619838();
}

void sub_1D161D9A8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_1D161E7BC, v8, a4);
}

uint64_t sub_1D161DA7C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D16705D4() & 1;
  }
}

char *sub_1D161DAD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D161E614(0, &qword_1EDECA048, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider__daySummary;
  if (qword_1EDECA3D0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDECD808;
  v32 = unk_1EDECD810;
  v33 = word_1EDECD818;

  sub_1D166F704();
  (*(v9 + 32))(&v3[v12], v11, v8);
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_observerQuery] = 0;
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_doseEventPredicate] = 0;
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_healthStore] = a1;
  if (a3)
  {
    v13 = a1;
    v14 = a3;
  }

  else
  {
    v15 = qword_1EDECA558;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }
  }

  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_medicationDetailProvider] = v14;
  v17 = objc_allocWithZone(MEMORY[0x1E69A3AE0]);

  v18 = [v17 initWithHealthStore_];
  *&v3[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl] = v18;
  v19 = OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_date;
  v20 = sub_1D166F174();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v3[v19], a2, v20);
  v22 = type metadata accessor for MedicationDoseDaySummaryProvider(0);
  v30.receiver = v3;
  v30.super_class = v22;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  v24 = *&v23[OBJC_IVAR____TtC27HealthMedicationsExperience32MedicationDoseDaySummaryProvider_scheduleControl];
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v25 = v23;
  v26 = v24;
  v27 = sub_1D166FFC4();
  [v26 registerObserver:v25 queue:v27];

  sub_1D1617524();
  sub_1D1618020();

  (*(v21 + 8))(a2, v20);
  return v25;
}

uint64_t type metadata accessor for MedicationDoseDaySummaryProvider(uint64_t a1)
{
  result = qword_1EDECA240;
  if (!qword_1EDECA240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D161DE5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1600968;

  return sub_1D161D7D0();
}

uint64_t sub_1D161DF10(uint64_t a1)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D161DFB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D161DFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D161E050(uint64_t a1)
{
  sub_1D161E614(319, &qword_1EDECA048, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1D166F174();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D161E244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D161E298(uint64_t a1)
{
  if (!qword_1EDEC9FB0)
  {
    sub_1D15EE5A8(255, &unk_1EDEC9DB8, 0x1E696C0A0);
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9FB0);
    }
  }
}

void sub_1D161E330(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D161E398(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D15FFFCC;

  return sub_1D161AFE8(a1);
}

uint64_t sub_1D161E438(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1600968;

  return sub_1D161B07C(a1);
}

uint64_t sub_1D161E4D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D161E330(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D161E534(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D161E330(255, a3, &qword_1EDECACA0, 0x1E696C3A8, a4);
    v5 = sub_1D16705A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D161E5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D161E614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicationDoseDaySummary);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D161E668(uint64_t a1, uint64_t a2)
{
  sub_1D161E5A8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D161E6FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1600968;

  return sub_1D163662C(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D161E80C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D15FFFCC;

  return sub_1D1617CCC();
}

id sub_1D161E910(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = [v2 longLongValue];

  return v4;
}

uint64_t sub_1D161E974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D166F1C4();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  v6 = 0;
  v7 = result + 40;
  v48 = *(result + 16);
  v43 = v5 - 1;
  v8 = MEMORY[0x1E69E7CC0];
  v44 = result + 40;
  do
  {
    v47 = v8;
    v9 = v7 + 16 * v6;
    v10 = v6;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = objc_allocWithZone(MEMORY[0x1E695DF58]);

      v12 = sub_1D166F9C4();
      v13 = [v11 initWithLocaleIdentifier_];

      v14 = [v13 languageCode];
      v15 = sub_1D166FA04();
      v17 = v16;

      v18 = [v13 regionCode];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D166FA04();
        v22 = v21;
      }

      else
      {
        v22 = 0xE200000000000000;
        v20 = 21333;
      }

      sub_1D161FE54(0, &qword_1EDECABA0, MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D16721B0;
      *(v23 + 32) = v15;
      *(v23 + 40) = v17;
      *(v23 + 48) = v20;
      *(v23 + 56) = v22;
      sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v24 = sub_1D166F9A4();
      v26 = v25;

      v27 = v49;
      swift_getAtKeyPath();

      if (*(v50 + 16))
      {
        break;
      }

LABEL_5:

      ++v10;

      v9 += 16;
      if (v48 == v10)
      {
        v8 = v47;
        goto LABEL_20;
      }
    }

    v28 = sub_1D16061DC(v24, v26);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_5;
    }

    v31 = (*(v50 + 56) + 16 * v28);
    v33 = *v31;
    v32 = v31[1];

    v34 = v47;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D15ECAB4(0, *(v47 + 16) + 1, 1, v47);
      v34 = result;
    }

    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    v37 = v34;
    if (v36 >= v35 >> 1)
    {
      result = sub_1D15ECAB4((v35 > 1), v36 + 1, 1, v34);
      v37 = result;
    }

    v6 = v10 + 1;
    *(v37 + 16) = v36 + 1;
    v38 = v37 + 16 * v36;
    v8 = v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v32;
    v7 = v44;
  }

  while (v43 != v10);
LABEL_20:

  if (*(v8 + 16))
  {
    v39 = *(v8 + 32);
    goto LABEL_22;
  }

  v40 = v49;
  swift_getAtKeyPath();

  if (*(v50 + 16) && (v41 = sub_1D16061DC(a2, a3), (v42 & 1) != 0))
  {
    v39 = *(*(v50 + 56) + 16 * v41);
LABEL_22:
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

uint64_t sub_1D161ED34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D166F1C4();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v35 = a2;
    v36 = a3;
    v8 = 0;
    v9 = v5 + 40;
    v37 = v7 - 1;
    while (1)
    {
      v10 = objc_allocWithZone(MEMORY[0x1E695DF58]);

      v11 = sub_1D166F9C4();
      v12 = [v10 initWithLocaleIdentifier_];

      v13 = [v12 languageCode];
      v14 = sub_1D166FA04();
      v16 = v15;

      v17 = [v12 regionCode];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D166FA04();
        v21 = v20;
      }

      else
      {
        v21 = 0xE200000000000000;
        v19 = 21333;
      }

      sub_1D161FE54(0, &qword_1EDECABA0, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D16721B0;
      *(v22 + 32) = v14;
      *(v22 + 40) = v16;
      *(v22 + 48) = v19;
      *(v22 + 56) = v21;
      sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v23 = sub_1D166F9A4();
      v25 = v24;

      v26 = v38;
      swift_getAtKeyPath();

      if (*(v39 + 16))
      {
        v27 = sub_1D16061DC(v23, v25);
        v29 = v28;

        if (v29)
        {
          v33 = *(*(v39 + 56) + 8 * v27);

          goto LABEL_21;
        }
      }

      else
      {
      }

      if (v37 == v8)
      {
        goto LABEL_13;
      }

      ++v8;
      v9 += 16;
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_13:

        a2 = v35;
        a3 = v36;
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v30 = v38;
  swift_getAtKeyPath();

  if (*(v39 + 16) && (v31 = sub_1D16061DC(a2, a3), (v32 & 1) != 0))
  {
    v33 = *(*(v39 + 56) + 8 * v31);
  }

  else
  {
    v33 = 0;
  }

LABEL_21:

  return v33;
}

uint64_t sub_1D161F11C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1D161E974(KeyPath, a2, 0xE500000000000000);

  return v4;
}

void sub_1D161F170(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1D166F944();

  *a3 = v5;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:)(Swift::Double a1)
{
  v3 = HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:)(a1, 0);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:)(Swift::Double a1, Swift::Bool standalone)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1D161E974(KeyPath, 0x53552D6E65, 0xE500000000000000);
  v8 = v7;

  v9 = swift_getKeyPath();
  v10 = sub_1D161E974(v9, 0x53552D6E65, 0xE500000000000000);
  v12 = v11;

  v13 = [v2 freeTextMedicationLoggingUnitCode];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 longLongValue];
  }

  else
  {
    v15 = 0;
  }

  if (a1 == 1.0 && v8)
  {
    goto LABEL_16;
  }

  if (!v12)
  {
    if (v14)
    {
      sub_1D16392F8(standalone, v15);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    if (standalone)
    {
      if (qword_1EDECB050 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (qword_1EDECB050 == -1)
    {
LABEL_14:
      sub_1D166F004();
LABEL_15:

      sub_1D15F30B0(0);
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E63B0];
      *(v17 + 16) = xmmword_1D16721D0;
      v19 = MEMORY[0x1E69E6438];
      *(v17 + 56) = v18;
      *(v17 + 64) = v19;
      *(v17 + 32) = a1;
      v6 = sub_1D166F9D4();
      v8 = v20;

LABEL_16:

      goto LABEL_17;
    }

    swift_once();
    goto LABEL_14;
  }

  v6 = v10;
  v8 = v12;
LABEL_17:
  sub_1D1601D38();
  v21 = sub_1D1670134();
  if (standalone && v21)
  {
    v6 = sub_1D1670124();
    v23 = v22;

    v8 = v23;
  }

  v24 = v6;
  v25 = v8;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t static HKMedicationUserDomainConcept.localizedResolvedLoggingUnit(for:standalone:singularUnit:pluralUnit:freeTextMedicationLoggingUnit:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  if (a8 != 1.0 || a3 == 0)
  {
    if (a5)
    {
      a2 = a4;

      return a2;
    }

    if ((a7 & 1) == 0)
    {
      v10 = a1;
      v11 = a8;
      sub_1D16392F8(a1 & 1, a6);
      a8 = v11;
      a1 = v10;
      if (v12)
      {
LABEL_15:
        sub_1D15F30B0(0);
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E63B0];
        *(v13 + 16) = xmmword_1D16721D0;
        v15 = MEMORY[0x1E69E6438];
        *(v13 + 56) = v14;
        *(v13 + 64) = v15;
        *(v13 + 32) = v11;
        a2 = sub_1D166F9D4();

        return a2;
      }
    }

    v11 = a8;
    if (a1)
    {
      if (qword_1EDECB050 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (qword_1EDECB050 == -1)
    {
LABEL_14:
      sub_1D166F004();
      goto LABEL_15;
    }

    swift_once();
    goto LABEL_14;
  }

  return a2;
}

Swift::String __swiftcall HKMedicationUserDomainConcept.localizedLoggingQuantityAffix()()
{
  v1 = [v0 freeTextMedicationLoggingUnitCode];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1D161FCEC(v3, v2 == 0);
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t HKMedicationUserDomainConcept.localizedResolvedForm.getter()
{
  KeyPath = swift_getKeyPath();
  sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v3 = v2;

  if (v3)
  {
    sub_1D1601D38();
    v4 = sub_1D1670124();
  }

  else
  {
    v5 = [v0 freeTextMedicationFormCode];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 longLongValue];

      HKMedicationFreeTextFormTypeCode.localizationKey.getter(v7);
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v4 = sub_1D166F004();
    }

    else
    {
      v8 = swift_getKeyPath();
      v4 = sub_1D161E974(v8, 0x53555F6E65, 0xE500000000000000);
    }
  }

  return v4;
}

uint64_t HKMedicationUserDomainConcept.resolvedQuantifiedStrengthDisplayString.getter()
{
  v1 = [v0 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
  if (v1)
  {

    v2 = [v0 unlocalizedQuantifiedUnitStrengthPreferredDisplayString];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D166FA04();
LABEL_10:
      v9 = v4;

      return v9;
    }

    return 0;
  }

  v5 = [v0 freeTextMedicationIngredientNamedStrengthQuantities];
  sub_1D15EE5A8(0, &qword_1EC63DD00, 0x1E696C540);
  v6 = sub_1D166FC54();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return 0;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1D388D4D0](0, v6);
    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_9:
    v3 = v8;

    v4 = HKUserDomainConceptNamedQuantity.formattedDisplayString.getter();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t HKUserDomainConceptNamedQuantity.formattedDisplayString.getter()
{
  v1 = [v0 quantity];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() medicationDoseEventType];
  v4 = [v2 _unit];
  sub_1D15EE5A8(0, &qword_1EC63DD08, 0x1E696C510);
  v5 = [objc_opt_self() percentUnit];
  v6 = sub_1D16700A4();

  v7 = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
  v8 = v7;
  if (v6)
  {
    [v7 setHasSpaceBetweenValueAndUnit_];
  }

  v9 = [v2 localizedStringForType:v3 parameters:v8];
  v10 = sub_1D166FA04();

  return v10;
}

uint64_t HKMedicationUserDomainConcept.componentNames.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_1D161ED34(KeyPath, 0x53552D6E65, 0xE500000000000000);

  return v1;
}

void sub_1D161FC28(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedOntologyComponentNames];
  sub_1D161FE54(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  v4 = sub_1D166F944();

  *a2 = v4;
}

uint64_t sub_1D161FCEC(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_1D163913C(a1), !v2))
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
  }

  v3 = sub_1D166F9D4();

  return v3;
}

void sub_1D161FE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HKMedicationSearchResult.groupingKey.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 routedDoseFormProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v4 = sub_1D166FC54();

  if (v4 >> 62)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    result = v1;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

HealthMedicationsExperience::MedicationSearchCluster_optional __swiftcall MedicationSearchCluster.init(results:)(Swift::OpaquePointer results)
{
  rawValue = results._rawValue;
  v3 = v1;
  if (results._rawValue >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((results._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v31 = rawValue & 0xC000000000000001;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388D4D0](0, rawValue);
      }

      else
      {
        if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_52;
        }

        v5 = *(rawValue + 32);
      }

      v6 = v5;
      v7 = [v5 routedDoseFormProducts];
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      v8 = sub_1D166FC54();

      if (v8 >> 62)
      {
        v3 = sub_1D1670224();
      }

      else
      {
        v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v3)
      {

        v6 = 0;
      }

      v9 = 0;
      v29 = rawValue & 0xFFFFFFFFFFFFFF8;
      v30 = rawValue;
      while (1)
      {
        if (v31)
        {
          v10 = MEMORY[0x1D388D4D0](v9, rawValue);
          v11 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            break;
          }

          goto LABEL_20;
        }

        if (v9 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v10 = *(rawValue + 8 * v9 + 32);
        v11 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          break;
        }

LABEL_20:
        v12 = v10;
        v13 = [v12 routedDoseFormProducts];
        v14 = sub_1D166FC54();

        if (v14 >> 62)
        {
          v15 = sub_1D1670224();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          if (v12)
          {
            if (!v6)
            {

              goto LABEL_36;
            }

            v16 = v4;
            v3 = v6;
            v17 = v12;
            v18 = [v17 ingredientProducts];
            v19 = sub_1D166FC54();

            v20 = [v3 ingredientProducts];
            v21 = sub_1D166FC54();

            LOBYTE(v20) = sub_1D16205B0(v19, v21, &qword_1EC63DA98, 0x1E696C010);

            if ((v20 & 1) == 0)
            {
              v22 = v3;
LABEL_39:

              v27 = v17;
              v24 = v17;
LABEL_40:

LABEL_41:

LABEL_42:
              rawValue = 0;
              v3 = v28;
              goto LABEL_48;
            }

            v22 = [v17 tradeNameProduct];
            v23 = [v3 tradeNameProduct];
            v24 = v23;
            if (v22)
            {
              if (!v23)
              {

                goto LABEL_39;
              }

              v25 = sub_1D16700A4();

              v4 = v16;
              rawValue = v30;
              if ((v25 & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            else
            {

              if (v24)
              {
                v27 = v3;
                goto LABEL_40;
              }

              v4 = v16;
              rawValue = v30;
            }

            goto LABEL_13;
          }
        }

        else
        {
        }

        v3 = v6;

        if (v6)
        {

          v12 = 0;
LABEL_36:

          goto LABEL_42;
        }

LABEL_13:
        ++v9;
        if (v11 == v4)
        {

          v3 = v28;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      results._rawValue = sub_1D1670224();
      v4 = results._rawValue;
    }

    while (results._rawValue);
  }

  rawValue = 0;
LABEL_48:
  *v3 = rawValue;
LABEL_52:
  result.value.results = results;
  result.is_nil = v26;
  return result;
}

uint64_t MedicationSearchCluster.primaryName.getter()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    if (qword_1EDECB050 == -1)
    {
      return sub_1D166F004();
    }

LABEL_13:
    swift_once();
    return sub_1D166F004();
  }

  if (!sub_1D1670224())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1D388D4D0](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  sub_1D160096C(&v6);

  v4 = v6;

  sub_1D160161C(&v6);
  return v4;
}

void MedicationGroupingKey.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [v3 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  sub_1D1626A14(a1, v5);

  v6 = [v3 tradeNameProduct];
  if (v6)
  {
    v7 = v6;
    sub_1D16700B4();
  }
}

uint64_t sub_1D16205B0(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D15EE5A8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D388D4D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D388D4D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D16700A4();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D16700A4();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D1670224();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D1670224();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_1D1620818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    v3 = 0;
    while (v2)
    {
      v20 = v2;
      v4 = *(a1 + v3 + 40);
      v6 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v7 = *(a2 + v3 + 32);
      v8 = *(a2 + v3 + 40);
      v9 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v11 = *(a1 + v3 + 32);

      v12 = v5;
      v13 = v7;

      v14 = v10;
      if ((sub_1D16700A4() & 1) == 0 || (v4 != v8 || v6 != v9) && (sub_1D16705D4() & 1) == 0)
      {

        return;
      }

      v15 = v12;
      v16 = v14;
      v17 = sub_1D16700A4();

      if (v17)
      {
        v2 = v20 - 1;
        v3 += 32;
        if (v20 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t MedicationGroupingKey.hashValue.getter()
{
  sub_1D16706A4();
  sub_1D1609988();
  sub_1D166F984();
  return sub_1D16706E4();
}

uint64_t sub_1D1620A28(uint64_t a1, uint64_t a2)
{
  sub_1D16706A4();
  sub_1D166F984();
  return sub_1D16706E4();
}

void sub_1D1620A8C(uint64_t a1)
{
  v3 = *v1;
  v4 = [v3 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v5 = sub_1D166FC54();

  sub_1D1626A14(a1, v5);

  v6 = [v3 tradeNameProduct];
  if (v6)
  {
    v7 = v6;
    sub_1D16700B4();
  }
}

uint64_t MedicationRouteFormConcept.uniqueIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

HealthMedicationsExperience::MedicationRouteFormConcept __swiftcall MedicationRouteFormConcept.init(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;

  v27 = sub_1D1626B04(v3);
  sub_1D1623D04(&v27);

  v4 = v27;
  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *(v27 + 16);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1D162304C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);

      __break(1u);
      goto LABEL_17;
    }

    v26 = v2;
    v7 = 0;
    v6 = v27;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D388D4D0](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v29 = v11;
      v12 = sub_1D1670594();
      v14 = v13;

      v27 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D162304C((v15 > 1), v16 + 1, 1);
        v6 = v27;
      }

      ++v7;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v5 != v7);

    v2 = v26;
  }

  v27 = v6;
  sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v18 = sub_1D166F9A4();
  v20 = v19;

  v27 = 0xD00000000000001BLL;
  v28 = 0x80000001D1677540;
  MEMORY[0x1D388CCF0](v18, v20);

  v24 = v27;
  v25 = v28;
  *v2 = v4;
  v2[1] = v24;
  v2[2] = v25;
LABEL_17:
  result.uniqueIdentifier._object = v23;
  result.uniqueIdentifier._countAndFlagsBits = v22;
  result.routeConcepts._rawValue = v21;
  return result;
}

uint64_t MedicationRouteFormConcept.displayString.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1D1621024(KeyPath, v1);

  v5 = 0;
  v6 = v3[2];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = 16 * v5 + 40;
  while (1)
  {
    if (v6 == v5)
    {

      sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D160172C();
      v15 = sub_1D166F9A4();

      return v15;
    }

    if (v5 >= v3[2])
    {
      break;
    }

    ++v5;
    v9 = v8 + 16;
    v10 = *(v3 + v8);
    v8 += 16;
    if (v10)
    {
      v11 = *(v3 + v9 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D15ECAB4(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D15ECAB4((v12 > 1), v13 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1620FA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 meds_isRoutedDoseFormProduct] && (v4 = objc_msgSend(v3, sel_meds_preferredNameForFirstObjectOfRelationshipType_, 982)) != 0)
  {
    v5 = v4;
    v6 = sub_1D166FA04();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id sub_1D1621024(uint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = result;
  if (a2 >> 62)
  {
    result = sub_1D1670224();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E6158];
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D388D4D0](v6, a2);
    }

    else
    {
      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    ++v6;
    swift_getAtKeyPath();

    sub_1D1628014(0, &qword_1EDECAE20, v7, MEMORY[0x1E69E6720]);
    [v4 addObject_];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_10:
  v10 = [v4 array];
  v11 = sub_1D166FC54();

  v12 = sub_1D15FD034(v11);

  if (v12)
  {
    return v12;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

id sub_1D16211DC(uint64_t a1, unint64_t a2)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = result;
  if (a2 >> 62)
  {
    result = sub_1D1670224();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D388D4D0](v6, a2);
    }

    else
    {
      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    swift_getAtKeyPath();

    sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    [v4 addObject_];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_10:
  v9 = [v4 array];
  v10 = sub_1D166FC54();

  v11 = sub_1D15FD140(v10);

  if (v11)
  {
    return v11;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t MedicationRouteFormConcept.hash(into:)(uint64_t a1)
{
  sub_1D1626A14(a1, *v1);

  return sub_1D166FAE4();
}

uint64_t MedicationRouteFormConcept.hashValue.getter()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D1621484()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

uint64_t sub_1D16214E8(uint64_t a1)
{
  sub_1D1626A14(a1, *v1);

  return sub_1D166FAE4();
}

uint64_t sub_1D1621538(uint64_t a1)
{
  v2 = *v1;
  sub_1D16706A4();
  sub_1D1626A14(v4, v2);
  sub_1D166FAE4();
  return sub_1D16706E4();
}

BOOL MedicationSearchCluster.isTradeCluster.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1D388D4D0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 tradeNameProduct];

      v8 = v7 != 0;
      if (v7)
      {

        ++v3;
        if (v6 != i)
        {
          continue;
        }
      }

      return v8;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 1;
}

uint64_t MedicationSearchCluster.ingredientProductName.getter()
{
  v1 = *v0;
  KeyPath = swift_getKeyPath();
  v3 = sub_1D16211DC(KeyPath, v1);

  v4 = sub_1D1621A54(v3);

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v22 = v7;

    sub_1D1623D80(&v22, sub_1D162728C, MEMORY[0x1E69E6158], sub_1D1624414, sub_1D1624040);

    sub_1D1628014(0, &qword_1EDECAE18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D160172C();
    v19 = sub_1D166F9A4();

    return v19;
  }

  v5 = sub_1D1670224();
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D162304C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v22;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D388D4D0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 localizedPreferredName];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1D166FA04();
        v14 = v13;

        v9 = v11;
      }

      else
      {
        if (qword_1EDECB050 != -1)
        {
          swift_once();
        }

        v21 = 0xE000000000000000;
        v12 = sub_1D166F004();
        v14 = v15;
      }

      v22 = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D162304C((v16 > 1), v17 + 1, 1);
        v7 = v22;
      }

      ++v6;
      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v14;
    }

    while (v5 != v6);

    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1D16219E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 ingredientProducts];
  sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
  v4 = sub_1D166FC54();

  *a2 = v4;
}

uint64_t sub_1D1621A54(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D1670224();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_1D1670224();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D1670224();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D1670304();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v14 = v10 + 8 * v11 + 32;
    v25 = v6;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_1D16008C0(v26, i, v4);
        v18 = *v17;
        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    if (v25 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v25);
      v21 = v19 + v25;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_1D1670224();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D1621D48(uint64_t a1)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v33 = result;
  v36 = v7;
  v37 = v3;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v12 >= v7)
        {

          return v10;
        }

        v6 = *(v3 + 8 * v12);
        ++v9;
        if (v6)
        {
          v9 = v12;
          goto LABEL_11;
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
      return result;
    }

LABEL_11:
    v42 = *(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));

    sub_1D1622C64(&v42, &v41);
    if (v1)
    {
      break;
    }

    v13 = v41 >> 62;
    v14 = v41;
    v38 = v6;
    if (v41 >> 62)
    {
      v15 = sub_1D1670224();
    }

    else
    {
      v15 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v10 >> 62;
    if (v10 >> 62)
    {
      result = sub_1D1670224();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_43;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v19 = v10 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_1D1670224();
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_22;
    }

LABEL_23:
    v10 = sub_1D1670304();
    v19 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    result = v14;
    if (v13)
    {
      v23 = v19;
      v24 = sub_1D1670224();
      v19 = v23;
      v22 = v24;
      result = v14;
      if (!v22)
      {
LABEL_4:

        v11 = v38;
        v7 = v36;
        v3 = v37;
        if (v39 > 0)
        {
          goto LABEL_44;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_4;
      }
    }

    if (((v21 >> 1) - v20) < v39)
    {
      goto LABEL_45;
    }

    v35 = v10;
    v25 = v19 + 8 * v20 + 32;
    v34 = v19;
    if (v13)
    {
      if (v22 < 1)
      {
        goto LABEL_47;
      }

      v26 = result;
      sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      sub_1D1628064(&qword_1EC63DD58, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010);
      for (i = 0; i != v22; ++i)
      {
        v28 = sub_1D16008C0(v40, i, v26);
        v30 = *v29;
        (v28)(v40, 0);
        *(v25 + 8 * i) = v30;
      }
    }

    else
    {
      sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
      swift_arrayInitWithCopy();
    }

    v11 = v38;
    v10 = v35;
    v2 = v33;
    v7 = v36;
    v3 = v37;
    if (v39 >= 1)
    {
      v31 = *(v34 + 16);
      v17 = __OFADD__(v31, v39);
      v32 = v31 + v39;
      if (v17)
      {
        goto LABEL_46;
      }

      *(v34 + 16) = v32;
    }

LABEL_5:
    v6 = (v11 - 1) & v11;
  }

  return v10;
}

uint64_t MedicationSearchCluster.secondaryTitle.getter()
{
  if (MedicationSearchCluster.isTradeCluster.getter())
  {
    return MedicationSearchCluster.ingredientProductName.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t MedicationSearchCluster.hashValue.getter()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  return sub_1D16706E4();
}

uint64_t sub_1D16221F0()
{
  v1 = *v0;
  sub_1D16706A4();
  sub_1D1626A14(v3, v1);
  return sub_1D16706E4();
}

uint64_t sub_1D1622254(uint64_t a1)
{
  v2 = *v1;
  sub_1D16706A4();
  sub_1D1626A14(v4, v2);
  return sub_1D16706E4();
}

HealthMedicationsExperience::MedicationSearchClusterFormsGrouper __swiftcall MedicationSearchClusterFormsGrouper.init(_:)(HealthMedicationsExperience::MedicationSearchCluster a1)
{
  v2 = v1;
  v3 = sub_1D162744C(*a1.results._rawValue);

  *v2 = v3;
  return result;
}

void *MedicationSearchClusterFormsGrouper.availableRoutes.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D1622F64(*(*v0 + 16), 0);
  v4 = sub_1D1626738(&v7, v3 + 4, v2, v1);
  v5 = v7;
  swift_bridgeObjectRetain_n();
  sub_1D160FD3C(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = v3;
  sub_1D1623D80(&v7, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  return v7;
}

uint64_t MedicationSearchClusterFormsGrouper.hasSingleProduct.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1D1622F64(*(v1 + 16), 0);
    v4 = sub_1D1626738(&v21, v3 + 4, v2, v1);
    v5 = v21;
    swift_bridgeObjectRetain_n();
    sub_1D160FD3C(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v21 = v3;
  sub_1D1623D80(&v21, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  if (!v21[2])
  {

    return 0;
  }

  v6 = v21[4];
  v7 = v21[5];
  v8 = v21[6];

  if (*(v1 + 16) != 1)
  {

    return 0;
  }

  v9 = sub_1D160643C(v6, v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v1 + 56) + 8 * v9);
  if (v12 >> 62)
  {
    v13 = sub_1D1670224();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v21 = MEMORY[0x1E69E7CC0];

    sub_1D16703A4();
    if (v13 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D388D4D0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = [v16 specificProduct];

      sub_1D1670374();
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
    }

    while (v13 != v15);

    v14 = v21;
  }

  if (v14 >> 62)
  {
    v20 = sub_1D1670224();
  }

  else
  {
    v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v20 == 1;
}

void *MedicationSearchClusterFormsGrouper.singleSpecificProduct.getter()
{
  v1 = *v0;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1D1622F64(*(v1 + 16), 0);
    v4 = sub_1D1626738(&v22, v3 + 4, v2, v1);
    v5 = v22;
    swift_bridgeObjectRetain_n();
    sub_1D160FD3C(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v22 = v3;
  sub_1D1623D80(&v22, sub_1D16272C8, &type metadata for MedicationRouteFormConcept, sub_1D162510C, sub_1D1624244);

  if (!v22[2])
  {

    return 0;
  }

  v6 = v22[4];
  v7 = v22[5];
  v8 = v22[6];

  if (*(v1 + 16) != 1)
  {

    goto LABEL_19;
  }

  v9 = sub_1D160643C(v6, v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v1 + 56) + 8 * v9);
  if (v12 >> 62)
  {
    v13 = sub_1D1670224();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v22 = MEMORY[0x1E69E7CC0];

    v14 = &v22;
    sub_1D16703A4();
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D388D4D0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      v18 = [v16 specificProduct];

      sub_1D1670374();
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
    }

    while (v13 != v15);

    v14 = v22;
  }

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (sub_1D1670224() != 1 || !sub_1D1670224())
  {
LABEL_19:

    return 0;
  }

LABEL_25:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_34:
    v20 = MEMORY[0x1D388D4D0](0, v14);
    goto LABEL_28;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v14 + 32);
LABEL_28:
    v21 = v20;

    return v21;
  }

  __break(1u);

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall MedicationSearchClusterFormsGrouper.getSpecificProducts(for:)(HealthMedicationsExperience::MedicationRouteFormConcept a1)
{
  v2 = *v1;
  if (*(v2 + 16))
  {
    v3 = sub_1D160643C(*a1.routeConcepts._rawValue, *(a1.routeConcepts._rawValue + 1), *(a1.routeConcepts._rawValue + 2));
    v4 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v3);
      v18 = MEMORY[0x1E69E7CC0];
      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_1D1670224();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      while (v7 != v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1D388D4D0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v13 = [v10 specificProduct];

        ++v8;
        if (v13)
        {
          MEMORY[0x1D388CE10]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D166FC84();
          }

          sub_1D166FCC4();
          v9 = v18;
          v8 = v12;
        }
      }

      v4 = v9;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v14 = sub_1D162775C(v4);

  v15 = sub_1D1621D48(v14);

  v17 = v15;
  result.value._rawValue = v17;
  result.is_nil = v16;
  return result;
}

uint64_t sub_1D1622C64@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v17 = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1670224())
  {

    if (!i)
    {
      break;
    }

    v14 = a2;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D388D4D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      a2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = HKConcept.strengthDisplay.getter();
      v10 = v9;

      v11 = sub_1D1648E60(&v15, v8, v10);

      if (v11)
      {
        sub_1D1670374();
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v5;
      if (a2 == i)
      {
        v12 = v16;
        a2 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_16:

  *a2 = v12;
  return result;
}

void *sub_1D1622E24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1628014(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D1622EC0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1628014(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
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

void *sub_1D1622F64(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1628014(0, &qword_1EC63DD60, &type metadata for MedicationRouteFormConcept, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D162300C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1623210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162302C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D162340C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D162304C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D16230EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162306C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D162367C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D162308C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D16237BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D16230AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1623A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D16230CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1623B9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D16230EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1628014(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D1623210(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D16280C8(0, &qword_1EC63D7B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1D166F1A4() - 8);
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
  v15 = *(sub_1D166F1A4() - 8);
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

void *sub_1D162340C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D16280C8(0, &qword_1EC63D7B8, sub_1D15EE514, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D15EE514(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623558(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1628014(0, &qword_1EC63D7A8, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D162367C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1627E44(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1628014(0, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D16237BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D1627F90(0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D1627F28(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623904(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1628014(0, &qword_1EC63DD60, &type metadata for MedicationRouteFormConcept, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D1623A3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D16280C8(0, &qword_1EC63DD48, sub_1D1627EC0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D1627EC0(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1623B9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1628014(0, &qword_1EC63D780, &type metadata for Weekdays.Day, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D1623D04(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D16272B4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1623E1C(v6);
  return sub_1D1670384();
}

uint64_t sub_1D1623D80(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D1623F30(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

void sub_1D1623E1C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1670584();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D15EE5A8(0, &qword_1EC63DA98, 0x1E696C010);
        v6 = sub_1D166FCA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D16249F0(v8, v9, a1, v4);
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
    sub_1D1624110(0, v2, 1, a1);
  }
}

uint64_t sub_1D1623F30(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D1670584();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1D166FCA4();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D1624040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D16705D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D1624110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v12 = [v9 identifier];
      v13 = [v12 rawIdentifier];

      if (v11 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D1624244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
LABEL_6:
    v17 = v4;
    v18 = a3;
    v16 = v5;
    while (1)
    {

      v6 = MedicationRouteFormConcept.displayString.getter();
      v8 = v7;
      if (v6 == MedicationRouteFormConcept.displayString.getter() && v8 == v9)
      {

LABEL_5:
        a3 = v18 + 1;
        v4 = v17 + 3;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v10 = sub_1D16705D4();

      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v12 = *v4;
      v11 = v4[1];
      v13 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v11;
      *(v4 - 1) = v13;
      *(v4 - 3) = v12;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1624414(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D1626448(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D16259D8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D16705D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D16705D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D15ECC40(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D15ECC40((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D16259D8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1626448(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D16263BC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D16705D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_1D16249F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_1D1626448(v5);
    }

    v96 = *(v5 + 2);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v96 - 1);
        v98 = *&v5[16 * v96];
        v99 = *&v5[16 * v96 + 24];
        sub_1D1625C00((v97 + 8 * v98), (v97 + 8 * *&v5[16 * v96 + 16]), (v97 + 8 * v99), v10);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D1626448(v5);
        }

        if (v96 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v5[16 * v96];
        *v100 = v98;
        *(v100 + 1) = v99;
        sub_1D16263BC(v96 - 1);
        v96 = *(v5 + 2);
        v7 = a3;
      }

      while (v96 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v106 = v6;
      v5 = v9;
      v102 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 identifier];
      v114 = [v18 rawIdentifier];

      v19 = [v17 identifier];
      v112 = [v19 rawIdentifier];

      v104 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 identifier];
        v5 = v10;
        v25 = [v24 rawIdentifier];

        v26 = [v23 identifier];
        v27 = [v26 rawIdentifier];

        v28 = v25 < v27;
        v10 = v5;
        v29 = !v28;
        ++v20;
        ++v14;
        if ((((v114 < v112) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v104;
      v6 = v106;
      v7 = a3;
      v30 = v102;
      if (v114 < v112)
      {
        if (v12 < v104)
        {
          goto LABEL_118;
        }

        if (v104 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v104;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D15ECC40(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_1D15ECC40((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v117 = v12;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_105;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_108;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_112;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_107;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v93 = *&v10[16 * v92 + 32];
        v94 = *&v10[16 * v54 + 40];
        sub_1D1625C00((*v7 + 8 * v93), (*v7 + 8 * *&v10[16 * v54 + 32]), (*v7 + 8 * v94), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v94 < v93)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D1626448(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v95 = &v10[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_1D16263BC(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_103;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_104;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_106;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_109;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v117;
    if (v117 >= v8)
    {
      goto LABEL_89;
    }
  }

  v103 = v10;
  v105 = v11;
  v107 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v111 = v37;
LABEL_31:
  v115 = v39;
  v116 = v12;
  v41 = *(v38 + 8 * v12);
  v113 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 identifier];
    v5 = [v45 rawIdentifier];

    v46 = [v44 identifier];
    v47 = [v46 rawIdentifier];

    if (v5 >= v47)
    {
LABEL_30:
      ++v12;
      v39 = v115 + 8;
      v40 = v113 - 1;
      if (v116 + 1 != v111)
      {
        goto LABEL_31;
      }

      v12 = v111;
      v11 = v105;
      v6 = v107;
      v7 = a3;
      v10 = v103;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
}