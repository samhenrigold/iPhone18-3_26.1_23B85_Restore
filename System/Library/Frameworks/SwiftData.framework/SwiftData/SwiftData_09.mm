uint64_t sub_1974A86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a4 + 16))
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v16 = a3;
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
LABEL_12:

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v30 = *(a5 + 72);
      v31 = *(a5 + 80);

      MEMORY[0x19A8DFF80](v30, v31);

      MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
LABEL_14:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    v15 = Strong;
    a3 = v16;
  }

  v32 = a3;
  v18 = *(v15 + 16);

  v19 = *(v18 + 72);

  swift_beginAccess();
  if (!*(v19 + 16))
  {
    goto LABEL_12;
  }

  v21 = *(a5 + 72);
  v20 = *(a5 + 80);

  v22 = sub_1973F4028(v21, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_12;
  }

  v25 = *(*(v19 + 56) + 8 * v22);

  v26 = *(v25 + 144);
  if (!v26)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_14;
  }

  v27 = *(v25 + 152);
  v28 = *(sub_1973FE074(a6, a8) + 112);

  if (v28 == 1)
  {
    sub_1974258A4(a6, a8);
  }

  sub_1974A89B4(v26, a2, a1, v32, a4, a6, a7, v26, a8, a9, v27);
}

uint64_t sub_1974A89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a9;
  v15[4] = a10;
  v15[5] = a11;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a9;
  v16[4] = a10;
  v16[5] = a11;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a5;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a9;
  v18 = a6;
  v23 = a6;
  v17[4] = a10;
  v17[5] = a11;
  v17[6] = a2;
  v17[7] = a3;
  v19 = a3;
  v17[8] = a5;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a2;
  v20[7] = v19;
  v20[8] = a5;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE198(v19, a4, sub_1974ADF6C, v15, sub_1974ADF84, v16, sub_1974ADF9C, v17, sub_1974ADFF4, v20, v23, a7, a8);
}

uint64_t sub_1974A8BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v14 = *(v10 + *v11 + 8);
  v15 = (*(v13 + 72))(a1, v14, a8, v12, v13);
  sub_1974B7028(v15, v14, a8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1974A8CB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v18);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = *(*(v10 + *v11 + 8) + 16);
  v15 = (*(v13 + 80))(a1, v14, a8, v12, v13);
  if (!v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1974B7028(v16, v14, a8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1974A8DD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v19);
  v12 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v13 = *(v11 + 88);
  v14 = *(v9 + *v10 + 8);
  v15 = *(v14 + 16);
  WitnessTable = swift_getWitnessTable();
  v13(&v18, a1, v14, v15, WitnessTable, v12, v11);
  swift_getWitnessTable();
  sub_19752195C();

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1974A8F74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  sub_197434244(a5, *(*a1 + *MEMORY[0x1E69E77B0]), a6, a7, v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v13 = *(v12 + 88);
  v14 = *(v9 + *v10 + 8);
  v15 = *(*(v14 + 16) + 16);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v13(&v21, a1, v14, v15, WitnessTable, v11, v12);
  v17 = v21;
  if (!v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v18 = __swift_destroy_boxed_opaque_existential_1(v22);
  v22[0] = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_19752195C();
}

uint64_t sub_1974A9160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = (*(v6 + 8))(v8, a1);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v9;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    return (*(v10 + 32))(boxed_opaque_existential_1Tm, v8, v9);
  }

  return result;
}

void *sub_1974A92C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1974A33B8(a2, a5, a6);
  v7 = 0;
  v8 = v6 + 64;
  v38 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = MEMORY[0x1E69E7CC8];
  v35 = v6 + 64;
  while (v11)
  {
    v15 = v7;
LABEL_11:
    v16 = __clz(__rbit64(v11)) | (v15 << 6);
    v17 = *(*(v38 + 48) + 8 * v16);
    v18 = (*(v38 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);

    MEMORY[0x19A8DFF80](v19, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v13;
    v22 = sub_1973F7814(v17);
    v24 = v13[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_22;
    }

    v28 = v23;
    if (v13[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v22;
        sub_197479770();
        v22 = v33;
      }
    }

    else
    {
      sub_197477E60(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1973F7814(v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }
    }

    v11 &= v11 - 1;
    v13 = v39;
    if (v28)
    {
      v14 = (v39[7] + 16 * v22);
      *v14 = a3;
      v14[1] = a4;
    }

    else
    {
      v39[(v22 >> 6) + 8] |= 1 << v22;
      *(v39[6] + 8 * v22) = v17;
      v30 = (v39[7] + 16 * v22);
      *v30 = a3;
      v30[1] = a4;
      v31 = v39[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_23;
      }

      v39[2] = v32;
    }

    v7 = v15;
    v8 = v35;
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v13;
    }

    v11 = *(v8 + 8 * v15);
    ++v7;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_19752202C();
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974A953C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 environment];
  v7 = sub_1975215FC();

  if (*(v7 + 16))
  {
    v8 = sub_1973F4028(a1, a2);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      goto LABEL_22;
    }
  }

  v11 = [v3 arguments];
  v12 = sub_1975219CC();

  v13 = *(v12 + 16);

  v34 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14 = [v3 arguments];
  v15 = sub_1975219CC();

  if (!*(v15 + 16))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = 0;
  v17 = 1;
  while (1)
  {
    v19 = *(v15 + v16 + 32);
    v18 = *(v15 + v16 + 40);

    MEMORY[0x19A8DFF80](a1, a2);
    if (v19 == 45 && v18 == 0xE100000000000000)
    {
    }

    else
    {
      v21 = sub_19752282C();

      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = [v3 arguments];
    v23 = sub_1975219CC();

    v24 = *(v23 + 16);

    if (v17 < v24)
    {
      break;
    }

LABEL_15:
    if (v34 == v17)
    {
      return;
    }

    v25 = [v3 arguments];
    v15 = sub_1975219CC();

    v16 += 16;
    if (v17++ >= *(v15 + 16))
    {
      goto LABEL_18;
    }
  }

  v27 = [v3 arguments];
  v28 = sub_1975219CC();

  if (v17 >= *(v28 + 16))
  {
LABEL_26:
    __break(1u);
    return;
  }

  v10 = (v28 + v16 + 48);
LABEL_22:
  v30 = *v10;
  v29 = v10[1];

  v31 = sub_1974F923C(&unk_1F0BA51C8);
  swift_arrayDestroy();
  v32 = sub_1974F923C(&unk_1F0BA5278);
  swift_arrayDestroy();
  v33 = sub_1974248B8(v30, v29, v31);

  if ((v33 & 1) == 0)
  {
    sub_1974248B8(v30, v29, v32);
  }
}

uint64_t sub_1974A98BC()
{
  sub_1975217EC();
  v0 = xpc_copy_entitlement_for_self();

  if (v0)
  {
    if (xpc_array_get_count(v0) >= 1 && xpc_array_get_string(v0, 0))
    {
      v1 = sub_19752186C();
      swift_unknownObjectRelease();
      return v1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1974A9950(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);

  v5 = sub_197473184(a2, v4);

  if (v5)
  {
    return;
  }

  v6 = *(a1 + 32);
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA5E0(&qword_1EAF2B670, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    sub_197521C1C();
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_19752212C() || (swift_dynamicCast(), (v15 = v20) == 0))
    {
LABEL_19:
      sub_1974171EC(v6);
      return;
    }

LABEL_10:
    sub_1974A9950(v15, a2);
    v17 = v16;

    if (v17)
    {
      goto LABEL_19;
    }
  }

  v18 = v9;
  v19 = v10;
  if (v10)
  {
LABEL_9:
    v10 = (v19 - 1) & v19;
    v15 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v19 = *(v7 + 8 * v9);
    ++v18;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_1974A9BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a1;
    if (a1 == a3)
    {
      break;
    }

    v6 = sub_1975214CC();
    if (!v6)
    {
      break;
    }

    a1 = v6;
  }

  while (swift_conformsToProtocol2());
  return v5 == a3;
}

unint64_t sub_1974A9C38(void *a1)
{
  v1 = a1;
  v2 = &off_1E74AD000;
  v3 = [a1 subentities];
  sub_1974ADEC0(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v4 = sub_1975219CC();

  if (v4 >> 62)
  {
    goto LABEL_52;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v1 v2[475]];
  v7 = sub_1975219CC();

  v8 = [v1 v2[475]];
  v9 = sub_1975219CC();

  if (v9 >> 62)
  {
    v10 = sub_1975220EC();
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_6:
      v11 = 0;
      v43 = v10;
      v44 = v9 & 0xC000000000000001;
      v40 = v9 + 32;
      v41 = v9 & 0xFFFFFFFFFFFFFF8;
      v39 = v9;
      do
      {
        if (v44)
        {
          v14 = MEMORY[0x19A8E0960](v11, v9);
        }

        else
        {
          if (v11 >= *(v41 + 16))
          {
            goto LABEL_50;
          }

          v14 = *(v40 + 8 * v11);
        }

        v15 = v14;
        v16 = __OFADD__(v11++, 1);
        if (v16)
        {
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
LABEL_52:
          v5 = sub_1975220EC();
          goto LABEL_3;
        }

        v17 = sub_1974A9C38(v14);
        v18 = v17;
        v2 = (v17 >> 62);
        if (v17 >> 62)
        {
          v19 = sub_1975220EC();
        }

        else
        {
          v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = v7 >> 62;
        if (v7 >> 62)
        {
          v37 = sub_1975220EC();
          v22 = v37 + v19;
          if (__OFADD__(v37, v19))
          {
LABEL_44:
            __break(1u);
            return MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v22 = v21 + v19;
          if (__OFADD__(v21, v19))
          {
            goto LABEL_44;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (v20)
          {
            goto LABEL_25;
          }

          v23 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v22 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = v9;
            v25 = v19;
            goto LABEL_27;
          }
        }

        else if (v20)
        {
LABEL_25:
          v24 = v9;
          sub_1975220EC();
          goto LABEL_26;
        }

        v24 = v9;
LABEL_26:
        v25 = v19;
        v7 = sub_19752224C();
        v23 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
        v1 = *(v23 + 16);
        v26 = *(v23 + 24);
        if (v2)
        {
          v28 = v23;
          v29 = sub_1975220EC();
          v23 = v28;
          v27 = v29;
          if (!v29)
          {
LABEL_7:

            v12 = v25 <= 0;
            v9 = v24;
            v13 = v43;
            if (!v12)
            {
              goto LABEL_47;
            }

            continue;
          }
        }

        else
        {
          v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v27)
          {
            goto LABEL_7;
          }
        }

        if (((v26 >> 1) - v1) < v25)
        {
          goto LABEL_48;
        }

        v30 = v25;
        v1 = v23 + 8 * v1 + 32;
        v45 = v23;
        if (v2)
        {
          if (v27 < 1)
          {
            goto LABEL_51;
          }

          v42 = v25;
          v2 = sub_1974ADF08();
          for (i = 0; i != v27; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
            v32 = sub_197480544(v46, i, v18);
            v34 = *v33;
            (v32)(v46, 0);
            *(v1 + 8 * i) = v34;
          }

          v9 = v39;
          v13 = v43;
          v30 = v42;
        }

        else
        {
          swift_arrayInitWithCopy();

          v9 = v24;
          v13 = v43;
        }

        if (v30 > 0)
        {
          v35 = *(v45 + 16);
          v16 = __OFADD__(v35, v30);
          v36 = v35 + v30;
          if (v16)
          {
            goto LABEL_49;
          }

          *(v45 + 16) = v36;
        }
      }

      while (v11 != v13);
    }
  }

  return v7;
}

uint64_t sub_1974AA070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = sub_19752152C();

  return sub_1974AA0CC(v7, a2, a3, a4, v7);
}

uint64_t sub_1974AA0CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (sub_19752153C())
  {
    v6 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v8 = sub_19752147C(), v8 < 0x800) ? (v9 = v8 == v6) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), (v6 - 515) < 2 || (v10))
    {
      sub_1975227EC();
    }

    else
    {
      sub_19752232C();
    }
  }

  else
  {
    sub_197522B2C();
  }

  return sub_197522B1C();
}

void sub_1974AA194(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 10) | (16 * v10)) + 8);
        v12 = swift_unknownObjectRetain();
        sub_1974580E0(v12, v11);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1974AA2BC(uint64_t a1, uint64_t a2)
{
  v229 = *MEMORY[0x1E69E9840];
  v199 = 0;
  v208 = sub_1975212CC();
  MEMORY[0x1EEE9AC00](v208, v6);
  v207 = v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v10 = a1 + 56;
  v9 = *(a1 + 56);
  v11 = -1 << *(a1 + 32);
  v202 = ~v11;
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v205 = v12 & v9;
  v203 = (63 - v11) >> 6;
  v219 = (a2 + 56);
  v206 = (v7 + 8);

  v14 = 0;
  v209 = a2;
  v201 = a1;
  v200 = a1 + 56;
  while (1)
  {
    v15 = v205;
    if (!v205)
    {
      v16 = v14;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_210;
        }

        if (v17 >= v203)
        {
          v93 = a1;
          goto LABEL_207;
        }

        v15 = *(v10 + 8 * v17);
        ++v16;
      }

      while (!v15);
      v14 = v17;
    }

    v18 = *(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v15))));
    v19 = *v18;
    v20 = *(v18 + 8);
    v224 = a1;
    v225 = v10;
    v226 = v202;
    v227 = v14;
    v204 = v14;
    v205 = (v15 - 1) & v15;
    v228 = v205;
    sub_197522A5C();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v216 = ObjectType;
    v217 = v20;
    v218 = v19;
    PersistentModel.persistentModelID.getter(ObjectType, v20, &v220);
    v22 = v220;
    if (v221)
    {
      if (v221 == 1)
      {
        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v22, 1);
        sub_197452CB8(&v222);
        sub_1974028C8(v22, 1);
        sub_1974028C8(v22, 1);
      }

      else
      {
        MEMORY[0x19A8E1190](2);
        sub_1974028EC(v22, 2);
        sub_19750A470();
        sub_19752180C();

        sub_19750A588();
        sub_19752180C();
        sub_1974028C8(v22, 2);
        sub_1974028C8(v22, 2);
      }
    }

    else
    {
      MEMORY[0x19A8E1190](0);
      sub_1974028EC(v22, 0);
      sub_197521F4C();
      sub_1974028C8(v22, 0);
      sub_1974028C8(v22, 0);
    }

    v23 = sub_197522A9C();
    v24 = -1 << *(a2 + 32);
    v2 = v23 & ~v24;
    v25 = v2 >> 6;
    v26 = 1 << v2;
    if (((1 << v2) & v219[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    swift_unknownObjectRelease();
    a1 = v201;
    v10 = v200;
    v14 = v204;
  }

  v212 = ~v24;
  while (1)
  {
    v210 = v26;
    v28 = *(*(a2 + 48) + 16 * v2 + 8);
    v29 = swift_getObjectType();
    swift_unknownObjectRetain();
    v214 = v29;
    v215 = v28;
    PersistentModel.persistentModelID.getter(v29, v28, &v222);
    v27 = v222;
    v30 = v223;
    PersistentModel.persistentModelID.getter(v216, v217, &v220);
    v3 = v220;
    v31 = v221;
    v211 = v25;
    if (!v30)
    {
      if (!v221)
      {
        sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
        v70 = sub_197521F3C();
        sub_1974028C8(v3, 0);
        v71 = v27;
        v72 = 0;
LABEL_62:
        sub_1974028C8(v71, v72);
        if ((v70 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_91;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v36 = swift_allocObject();
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      v37 = [v27 persistentStore];
      v38 = v27;
      if (v37 && (v39 = v37, v40 = [v37 identifier], v39, v40))
      {
        v41 = sub_1975217BC();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      *(v36 + 16) = v41;
      *(v36 + 24) = v43;
      v51 = v38;
      *(v36 + 33) = [v38 isTemporaryID];
      *(v36 + 32) = 1;
      v52 = [v38 URIRepresentation];
      v53 = v207;
      sub_19752127C();

      v54 = sub_19752123C();
      v56 = v55;
      (*v206)(v53, v208);
      *(v36 + 56) = v54;
      *(v36 + 64) = v56;
      v57 = [v51 entityName];
      v58 = sub_1975217BC();
      v60 = v59;

      *(v36 + 72) = v58;
      *(v36 + 80) = v60;
      v27 = v51;
      a2 = v209;
      goto LABEL_54;
    }

    if (v30 != 1)
    {
      if (v221 == 2)
      {
        v44 = v27;
        v45 = sub_19750A470();
        v47 = v46;
        if (v45 == sub_19750A470() && v47 == v48)
        {
        }

        else
        {
          v73 = sub_19752282C();

          if ((v73 & 1) == 0)
          {
            LOBYTE(v31) = 2;
            LOBYTE(v30) = 2;
            v27 = v44;
            goto LABEL_21;
          }
        }

        v74 = sub_19750A588();
        v76 = v75;
        if (v74 == sub_19750A588() && v76 == v77)
        {

          sub_1974028C8(v3, 2);
          sub_1974028C8(v44, 2);
        }

        else
        {
          v78 = sub_19752282C();

          sub_1974028C8(v3, 2);
          sub_1974028C8(v44, 2);
          if ((v78 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_91;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v36 = swift_allocObject();
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = sub_19750A470();
      *(v36 + 64) = v49;
      *(v36 + 72) = sub_19750A588();
      *(v36 + 80) = v50;
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = 256;
      goto LABEL_54;
    }

    if (v221 != 1)
    {
      sub_1974028EC(v27, 1);
      v36 = v27;
LABEL_54:
      v213 = v27;
      if (v31)
      {
        if (v31 == 1)
        {
          sub_1974028EC(v3, 1);
          v61 = v3;
        }

        else
        {
          type metadata accessor for PersistentIdentifierImplementation();
          v61 = swift_allocObject();
          *(v61 + 40) = 0;
          *(v61 + 48) = 0;
          *(v61 + 56) = sub_19750A470();
          *(v61 + 64) = v68;
          *(v61 + 72) = sub_19750A588();
          *(v61 + 80) = v69;
          *(v61 + 16) = 0;
          *(v61 + 24) = 0;
          *(v61 + 32) = 256;
        }
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v61 = swift_allocObject();
        *(v61 + 40) = 0;
        *(v61 + 48) = 0;
        v62 = [v3 persistentStore];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 identifier];

          if (v64)
          {
            v65 = sub_1975217BC();
            v67 = v66;
          }

          else
          {
            v65 = 0;
            v67 = 0;
          }
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        *(v61 + 16) = v65;
        *(v61 + 24) = v67;
        *(v61 + 33) = [v3 isTemporaryID];
        *(v61 + 32) = 1;
        v79 = [v3 URIRepresentation];
        v80 = v207;
        sub_19752127C();

        v81 = sub_19752123C();
        v83 = v82;
        (*v206)(v80, v208);
        *(v61 + 56) = v81;
        *(v61 + 64) = v83;
        v84 = [v3 entityName];
        v85 = sub_1975217BC();
        v87 = v86;

        *(v61 + 72) = v85;
        *(v61 + 80) = v87;
        a2 = v209;
      }

      if ((*(v36 + 56) != *(v61 + 56) || *(v36 + 64) != *(v61 + 64)) && (sub_19752282C() & 1) == 0 || (*(v36 + 72) != *(v61 + 72) || *(v36 + 80) != *(v61 + 80)) && (sub_19752282C() & 1) == 0)
      {
LABEL_20:

        v27 = v213;
LABEL_21:
        sub_1974028C8(v3, v31);
        sub_1974028C8(v27, v30);
LABEL_22:
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v88 = *(v36 + 24);
      v89 = *(v61 + 24);
      if (v88)
      {
        if (!v89)
        {
          goto LABEL_20;
        }

        if (*(v36 + 16) == *(v61 + 16) && v88 == v89)
        {

          sub_1974028C8(v3, v31);
          sub_1974028C8(v213, v30);
        }

        else
        {
          v90 = sub_19752282C();

          sub_1974028C8(v3, v31);
          sub_1974028C8(v213, v30);
          if ((v90 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {

        sub_1974028C8(v3, v31);
        sub_1974028C8(v213, v30);
        if (v89)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_91;
    }

    v32 = v27[7] == v220[7] && v27[8] == v220[8];
    if (!v32 && (sub_19752282C() & 1) == 0 || (v27[9] == *(v3 + 72) ? (v33 = v27[10] == *(v3 + 80)) : (v33 = 0), !v33 && (sub_19752282C() & 1) == 0))
    {
LABEL_64:
      LOBYTE(v31) = 1;
      LOBYTE(v30) = 1;
      goto LABEL_21;
    }

    v34 = v27[3];
    v35 = *(v3 + 24);
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_64;
      }

      if (v27[2] == *(v3 + 16) && v34 == v35)
      {
        sub_1974028C8(v3, 1);
        sub_1974028C8(v27, 1);
        goto LABEL_91;
      }

      v70 = sub_19752282C();
      sub_1974028C8(v3, 1);
      v71 = v27;
      v72 = 1;
      goto LABEL_62;
    }

    sub_1974028C8(v3, 1);
    sub_1974028C8(v27, 1);
    if (v35)
    {
      goto LABEL_22;
    }

LABEL_91:
    v91 = PersistentModel.modelContext.getter(v214, v215);
    v92 = PersistentModel.modelContext.getter(v216, v217);
    swift_unknownObjectRelease();
    if (!v91)
    {
      break;
    }

    if (!v92)
    {
      goto LABEL_96;
    }

    if (v91 == v92)
    {
      goto LABEL_100;
    }

LABEL_23:
    v2 = (v2 + 1) & v212;
    v25 = v2 >> 6;
    v26 = 1 << v2;
    if ((v219[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v92)
  {
LABEL_96:

    goto LABEL_23;
  }

LABEL_100:
  v94 = swift_unknownObjectRelease();
  v96 = *(a2 + 32);
  v3 = 1;
  v196[0] = ((1 << v96) + 63) >> 6;
  v13 = 8 * v196[0];
  if ((v96 & 0x3Fu) > 0xD)
  {
    goto LABEL_211;
  }

  while (2)
  {
    v196[1] = v196;
    MEMORY[0x1EEE9AC00](v94, v95);
    v98 = v196 - ((v97 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v98, v219, v97);
    v99 = *&v98[8 * v211] & ~v210;
    v100 = *(a2 + 16);
    v198 = v98;
    *&v98[8 * v211] = v99;
    v197 = v100 - 1;
    while (2)
    {
      v101 = v201;
      v102 = v200;
      v103 = v203;
      v104 = v204;
      v105 = v205;
LABEL_104:
      if (v105)
      {
LABEL_110:
        v108 = (*(v101 + 48) + ((v104 << 10) | (16 * __clz(__rbit64(v105)))));
        v110 = *v108;
        v109 = v108[1];
        v224 = v101;
        v225 = v102;
        v226 = v202;
        v227 = v104;
        v204 = v104;
        v205 = (v105 - 1) & v105;
        v228 = v205;
        sub_197522A5C();
        v111 = swift_getObjectType();
        swift_unknownObjectRetain();
        v216 = v111;
        v217 = v109;
        PersistentModel.persistentModelID.getter(v111, v109, &v220);
        v112 = v220;
        if (v221)
        {
          if (v221 == 1)
          {
            MEMORY[0x19A8E1190](1);
            sub_1974028EC(v112, 1);
            sub_197452CB8(&v222);
            sub_1974028C8(v112, 1);
            sub_1974028C8(v112, 1);
          }

          else
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v112, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
            sub_19752180C();
            sub_1974028C8(v112, 2);
            sub_1974028C8(v112, 2);
          }
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v112, 0);
          sub_197521F4C();
          sub_1974028C8(v112, 0);
          sub_1974028C8(v112, 0);
        }

        v113 = sub_197522A9C();
        v114 = -1 << *(a2 + 32);
        v115 = v113 & ~v114;
        v116 = v115 >> 6;
        v117 = v3 << v115;
        if (((v3 << v115) & v219[v115 >> 6]) == 0)
        {
LABEL_102:
          swift_unknownObjectRelease();
          continue;
        }

        v213 = ~v114;
        v210 = v110;
        while (1)
        {
          v211 = v117;
          v120 = (*(a2 + 48) + 16 * v115);
          v2 = *v120;
          v121 = v120[1];
          v122 = swift_getObjectType();
          swift_unknownObjectRetain();
          v215 = v122;
          PersistentModel.persistentModelID.getter(v122, v121, &v222);
          v218 = v222;
          v119 = v223;
          PersistentModel.persistentModelID.getter(v216, v217, &v220);
          v123 = v220;
          v118 = v221;
          v212 = v116;
          if (v119)
          {
            if (v119 == 1)
            {
              v124 = v218;
              if (v221 == 1)
              {
                v125 = v218[7] == v220[7] && v218[8] == v220[8];
                if (!v125 && (sub_19752282C() & 1) == 0 || (v124[9] == v123[9] ? (v126 = v124[10] == v123[10]) : (v126 = 0), !v126 && (sub_19752282C() & 1) == 0))
                {
LABEL_117:
                  LOBYTE(v118) = 1;
                  LOBYTE(v119) = 1;
                  goto LABEL_118;
                }

                v127 = v124[3];
                v128 = v123[3];
                if (v127)
                {
                  a2 = v209;
                  if (!v128)
                  {
                    goto LABEL_117;
                  }

                  if (v124[2] == v123[2] && v127 == v128)
                  {
                    v214 = v121;
                    sub_1974028C8(v123, 1);
                    sub_1974028C8(v124, 1);
LABEL_184:
                    v121 = v214;
                    goto LABEL_185;
                  }

                  v184 = sub_19752282C();
                  sub_1974028C8(v123, 1);
                  sub_1974028C8(v124, 1);
                  if ((v184 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  sub_1974028C8(v123, 1);
                  sub_1974028C8(v124, 1);
                  a2 = v209;
                  if (v128)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_185;
              }

              sub_1974028EC(v218, 1);
              v129 = v124;
            }

            else
            {
              if (v221 == 2)
              {
                v136 = sub_19750A470();
                v138 = v137;
                if (v136 == sub_19750A470() && v138 == v139)
                {

                  v140 = v209;
                }

                else
                {
                  v164 = sub_19752282C();

                  v140 = v209;
                  if ((v164 & 1) == 0)
                  {
                    LOBYTE(v118) = 2;
                    LOBYTE(v119) = 2;
LABEL_182:
                    v124 = v218;
LABEL_118:
                    sub_1974028C8(v123, v118);
                    sub_1974028C8(v124, v119);
                    a2 = v209;
LABEL_119:
                    swift_unknownObjectRelease();
                    goto LABEL_120;
                  }
                }

                v165 = sub_19750A588();
                v167 = v166;
                if (v165 == sub_19750A588() && v167 == v168)
                {

                  sub_1974028C8(v123, 2);
                  sub_1974028C8(v218, 2);
                  a2 = v140;
                }

                else
                {
                  v169 = sub_19752282C();

                  sub_1974028C8(v123, 2);
                  sub_1974028C8(v218, 2);
                  a2 = v140;
                  if ((v169 & 1) == 0)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_185;
              }

              type metadata accessor for PersistentIdentifierImplementation();
              v129 = swift_allocObject();
              *(v129 + 40) = 0;
              *(v129 + 48) = 0;
              *(v129 + 56) = sub_19750A470();
              *(v129 + 64) = v141;
              *(v129 + 72) = sub_19750A588();
              *(v129 + 80) = v142;
              *(v129 + 16) = 0;
              *(v129 + 24) = 0;
              *(v129 + 32) = 256;
            }
          }

          else
          {
            if (!v221)
            {
              sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
              v162 = v218;
              v163 = sub_197521F3C();
              sub_1974028C8(v123, 0);
              sub_1974028C8(v162, 0);
              a2 = v209;
              if ((v163 & 1) == 0)
              {
                goto LABEL_119;
              }

              goto LABEL_185;
            }

            type metadata accessor for PersistentIdentifierImplementation();
            v129 = swift_allocObject();
            *(v129 + 40) = 0;
            *(v129 + 48) = 0;
            v130 = [v218 persistentStore];
            v214 = v121;
            if (v130 && (v131 = v130, v132 = [v130 identifier], v131, v132))
            {
              v133 = sub_1975217BC();
              v135 = v134;
            }

            else
            {
              v133 = 0;
              v135 = 0;
            }

            *(v129 + 16) = v133;
            *(v129 + 24) = v135;
            v143 = v218;
            *(v129 + 33) = [v218 isTemporaryID];
            *(v129 + 32) = v3;
            v144 = [v143 URIRepresentation];
            v145 = v207;
            sub_19752127C();

            v146 = sub_19752123C();
            v148 = v147;
            (*v206)(v145, v208);
            *(v129 + 56) = v146;
            *(v129 + 64) = v148;
            v149 = [v143 entityName];
            v150 = sub_1975217BC();
            v152 = v151;

            *(v129 + 72) = v150;
            *(v129 + 80) = v152;
            v3 = 1;
            v121 = v214;
          }

          v214 = v121;
          if (v118)
          {
            if (v118 == 1)
            {
              sub_1974028EC(v123, 1);
              v153 = v123;
            }

            else
            {
              type metadata accessor for PersistentIdentifierImplementation();
              v153 = swift_allocObject();
              *(v153 + 40) = 0;
              *(v153 + 48) = 0;
              *(v153 + 56) = sub_19750A470();
              *(v153 + 64) = v160;
              *(v153 + 72) = sub_19750A588();
              *(v153 + 80) = v161;
              *(v153 + 16) = 0;
              *(v153 + 24) = 0;
              *(v153 + 32) = 256;
            }
          }

          else
          {
            type metadata accessor for PersistentIdentifierImplementation();
            v153 = swift_allocObject();
            *(v153 + 40) = 0;
            *(v153 + 48) = 0;
            v154 = [v123 persistentStore];
            if (v154)
            {
              v155 = v154;
              v156 = [v154 identifier];

              if (v156)
              {
                v157 = sub_1975217BC();
                v159 = v158;
              }

              else
              {
                v157 = 0;
                v159 = 0;
              }

              LOBYTE(v3) = 1;
            }

            else
            {
              v157 = 0;
              v159 = 0;
            }

            *(v153 + 16) = v157;
            *(v153 + 24) = v159;
            *(v153 + 33) = [v123 isTemporaryID];
            *(v153 + 32) = v3;
            v170 = [v123 URIRepresentation];
            v171 = v207;
            sub_19752127C();

            v172 = sub_19752123C();
            v174 = v173;
            (*v206)(v171, v208);
            *(v153 + 56) = v172;
            *(v153 + 64) = v174;
            v175 = [v123 entityName];
            v176 = sub_1975217BC();
            v178 = v177;

            *(v153 + 72) = v176;
            *(v153 + 80) = v178;
            v3 = 1;
          }

          if ((*(v129 + 56) != *(v153 + 56) || *(v129 + 64) != *(v153 + 64)) && (sub_19752282C() & 1) == 0 || (*(v129 + 72) != *(v153 + 72) || *(v129 + 80) != *(v153 + 80)) && (sub_19752282C() & 1) == 0)
          {
LABEL_181:

            goto LABEL_182;
          }

          v179 = *(v129 + 24);
          v180 = *(v153 + 24);
          if (!v179)
          {

            sub_1974028C8(v123, v118);
            sub_1974028C8(v218, v119);
            a2 = v209;
            if (v180)
            {
              goto LABEL_119;
            }

            goto LABEL_184;
          }

          if (!v180)
          {
            goto LABEL_181;
          }

          if (*(v129 + 16) == *(v153 + 16) && v179 == v180)
          {

            sub_1974028C8(v123, v118);
            sub_1974028C8(v218, v119);
            a2 = v209;
            goto LABEL_184;
          }

          v183 = sub_19752282C();

          sub_1974028C8(v123, v118);
          sub_1974028C8(v218, v119);
          a2 = v209;
          v121 = v214;
          if ((v183 & 1) == 0)
          {
            goto LABEL_119;
          }

LABEL_185:
          v181 = PersistentModel.modelContext.getter(v215, v121);
          v182 = PersistentModel.modelContext.getter(v216, v217);
          swift_unknownObjectRelease();
          if (!v181)
          {
            if (!v182)
            {
LABEL_198:
              swift_unknownObjectRelease();
              v185 = v198[v212];
              v186 = v211;
              v198[v212] = v185 & ~v211;
              v32 = (v185 & v186) == 0;
              v101 = v201;
              v102 = v200;
              v103 = v203;
              v104 = v204;
              v105 = v205;
              if (!v32)
              {
                v187 = v197 - 1;
                if (__OFSUB__(v197, 1))
                {
                  __break(1u);
                }

                --v197;
                if (!v187)
                {

                  a2 = MEMORY[0x1E69E7CD0];
                  goto LABEL_206;
                }
              }

              goto LABEL_104;
            }

LABEL_190:

            goto LABEL_120;
          }

          if (!v182)
          {
            goto LABEL_190;
          }

          if (v181 == v182)
          {
            goto LABEL_198;
          }

LABEL_120:
          v115 = (v115 + 1) & v213;
          v116 = v115 >> 6;
          v117 = v3 << v115;
          if ((v219[v115 >> 6] & (v3 << v115)) == 0)
          {
            goto LABEL_102;
          }
        }
      }

      break;
    }

    v106 = v104;
    while (1)
    {
      v107 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v107 >= v103)
      {
        if (v103 <= v104 + 1)
        {
          v188 = v104 + 1;
        }

        else
        {
          v188 = v103;
        }

        v224 = v101;
        v225 = v102;
        v226 = v202;
        v227 = v188 - 1;
        v228 = 0;
        a2 = sub_1974AC8D4(v198, v196[0], v197, a2);
        goto LABEL_206;
      }

      v105 = *(v102 + 8 * v107);
      ++v106;
      if (v105)
      {
        v104 = v107;
        goto LABEL_110;
      }
    }

LABEL_210:
    __break(1u);
LABEL_211:
    v190 = v13;

    v191 = v190;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v192 = swift_slowAlloc();
  memcpy(v192, v219, v191);
  v193 = a2;
  v194 = v199;
  v195 = sub_1974ABC04(v192, v196[0], v193, v2, &v224);

  if (v194)
  {

    result = MEMORY[0x19A8E1B50](v192, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x19A8E1B50](v192, -1, -1);
    a2 = v195;
LABEL_206:
    v93 = v224;
LABEL_207:
    sub_1974171EC(v93);
    return a2;
  }

  return result;
}

uint64_t sub_1974ABC04(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v108 = a2;
  v114 = sub_1975212CC();
  result = MEMORY[0x1EEE9AC00](v114, v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v13 = *(a3 + 16);
  v14 = *(a1 + v12) & ((-1 << a4) - 1);
  v110 = a1;
  *(a1 + v12) = v14;
  v15 = v13 - 1;
  v107 = 0x8000000197523720;
  v16 = a3 + 56;
  v112 = (v17 + 8);
  v115 = a3;
  v111 = a5;
  v116 = a3 + 56;
LABEL_2:
  v109 = v15;
LABEL_4:
  while (2)
  {
    v18 = a5[3];
    v19 = a5[4];
    if (v19)
    {
      v20 = a5[3];
LABEL_10:
      v23 = (*(*a5 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
      v25 = *v23;
      v24 = v23[1];
      a5[3] = v20;
      a5[4] = (v19 - 1) & v19;
      sub_197522A5C();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v122 = ObjectType;
      v123 = v24;
      v125 = v25;
      PersistentModel.persistentModelID.getter(ObjectType, v24, &v126);
      v27 = v126;
      if (v127)
      {
        if (v127 != 1)
        {
          MEMORY[0x19A8E1190](2);
          sub_1974028EC(v27, 2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
          sub_19752180C();
          sub_1974028C8(v27, 2);
          sub_1974028C8(v27, 2);

LABEL_19:
          v30 = sub_197522A9C();
          v31 = -1 << *(a3 + 32);
          v32 = v30 & ~v31;
          v33 = v32 >> 6;
          v34 = 1 << v32;
          if (((1 << v32) & *(v16 + 8 * (v32 >> 6))) == 0)
          {
LABEL_3:
            result = swift_unknownObjectRelease();
            a5 = v111;
            continue;
          }

          v119 = ~v31;
          while (1)
          {
            v117 = v34;
            v118 = v33;
            v37 = (*(a3 + 48) + 16 * v32);
            v38 = *v37;
            v39 = v37[1];
            v40 = swift_getObjectType();
            swift_unknownObjectRetain();
            v121 = v40;
            PersistentModel.persistentModelID.getter(v40, v39, &v128);
            v130 = v128;
            v36 = v129;
            PersistentModel.persistentModelID.getter(v122, v123, &v126);
            v41 = v126;
            v35 = v127;
            if (!v36)
            {
              if (!v127)
              {
                sub_1974ADEC0(0, &qword_1ED7C8630, 0x1E69E58C0);
                v80 = v130;
                v81 = sub_197521F3C();
                sub_1974028C8(v41, 0);
                v82 = v80;
                v83 = 0;
LABEL_63:
                sub_1974028C8(v82, v83);
                if ((v81 & 1) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_91;
              }

              v124 = v38;
              type metadata accessor for PersistentIdentifierImplementation();
              v47 = swift_allocObject();
              v47[5] = 0;
              v47[6] = 0;
              v48 = [v130 persistentStore];
              v120 = v39;
              if (v48 && (v49 = v48, v50 = [v48 identifier], v49, v50))
              {
                v51 = sub_1975217BC();
                v53 = v52;
              }

              else
              {
                v51 = 0;
                v53 = 0;
              }

              v47[2] = v51;
              v47[3] = v53;
              v68 = v130;
              *(v47 + 33) = [v130 isTemporaryID];
              *(v47 + 32) = 1;
              v69 = [v68 URIRepresentation];
              v70 = v113;
              sub_19752127C();

              v71 = sub_19752123C();
              v73 = v72;
              (*v112)(v70, v114);
              v47[7] = v71;
              v47[8] = v73;
              v74 = [v68 entityName];
              v75 = sub_1975217BC();
              v77 = v76;

              v47[9] = v75;
              v47[10] = v77;
              a3 = v115;
              v16 = v116;
              goto LABEL_59;
            }

            if (v36 != 1)
            {
              break;
            }

            if (v127 != 1)
            {
              v124 = v38;
              v47 = v130;
              sub_1974028EC(v130, 1);
              v120 = v39;
              if (!v35)
              {
                goto LABEL_54;
              }

LABEL_59:
              if (v35 == 1)
              {
                sub_1974028EC(v41, 1);
                v61 = v41;
              }

              else
              {
                type metadata accessor for PersistentIdentifierImplementation();
                v61 = swift_allocObject();
                *(v61 + 40) = 0;
                *(v61 + 48) = 0;
                *(v61 + 56) = sub_19750A470();
                *(v61 + 64) = v78;
                *(v61 + 72) = sub_19750A588();
                *(v61 + 80) = v79;
                *(v61 + 16) = 0;
                *(v61 + 24) = 0;
                *(v61 + 32) = 256;
              }

              goto LABEL_67;
            }

            v42 = v130;
            v43 = *(v130 + 7) == v126[7] && *(v130 + 8) == v126[8];
            if (!v43 && (sub_19752282C() & 1) == 0 || (v42[9] == v41[9] ? (v44 = v42[10] == v41[10]) : (v44 = 0), !v44 && (sub_19752282C() & 1) == 0))
            {
LABEL_21:
              LOBYTE(v35) = 1;
              LOBYTE(v36) = 1;
LABEL_22:
              sub_1974028C8(v41, v35);
              sub_1974028C8(v130, v36);
LABEL_23:
              swift_unknownObjectRelease();
              goto LABEL_24;
            }

            v45 = v42[3];
            v46 = v41[3];
            if (v45)
            {
              if (!v46)
              {
                goto LABEL_21;
              }

              if (v42[2] == v41[2] && v45 == v46)
              {
                v120 = v39;
                sub_1974028C8(v41, 1);
                sub_1974028C8(v42, 1);
LABEL_80:
                v39 = v120;
                goto LABEL_91;
              }

              v81 = sub_19752282C();
              sub_1974028C8(v41, 1);
              v82 = v42;
              v83 = 1;
              goto LABEL_63;
            }

            sub_1974028C8(v41, 1);
            sub_1974028C8(v42, 1);
            if (v46)
            {
              goto LABEL_23;
            }

LABEL_91:
            v102 = PersistentModel.modelContext.getter(v121, v39);
            v103 = PersistentModel.modelContext.getter(v122, v123);
            swift_unknownObjectRelease();
            if (!v102)
            {
              if (!v103)
              {
LABEL_98:
                result = swift_unknownObjectRelease();
                v104 = v117;
                v105 = v110[v118];
                v110[v118] = v105 & ~v117;
                a5 = v111;
                if ((v105 & v104) != 0)
                {
                  v15 = v109 - 1;
                  if (__OFSUB__(v109, 1))
                  {
LABEL_107:
                    __break(1u);
                    return result;
                  }

                  if (v109 == 1)
                  {
                    return MEMORY[0x1E69E7CD0];
                  }

                  goto LABEL_2;
                }

                goto LABEL_4;
              }

LABEL_96:

              goto LABEL_24;
            }

            if (!v103)
            {
              goto LABEL_96;
            }

            if (v102 == v103)
            {
              goto LABEL_98;
            }

LABEL_24:
            v32 = (v32 + 1) & v119;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if ((*(v16 + 8 * (v32 >> 6)) & (1 << v32)) == 0)
            {
              goto LABEL_3;
            }
          }

          v124 = v38;
          if (v127 == 2)
          {
            v54 = v130;
            v55 = sub_19750A470();
            v57 = v56;
            if (v55 == sub_19750A470() && v57 == v58)
            {
            }

            else
            {
              v95 = sub_19752282C();

              if ((v95 & 1) == 0)
              {
                LOBYTE(v35) = 2;
                LOBYTE(v36) = 2;
                goto LABEL_22;
              }
            }

            v96 = sub_19750A588();
            v98 = v97;
            if (v96 == sub_19750A588() && v98 == v99)
            {

              sub_1974028C8(v41, 2);
              sub_1974028C8(v54, 2);
            }

            else
            {
              v100 = sub_19752282C();

              sub_1974028C8(v41, 2);
              sub_1974028C8(v54, 2);
              if ((v100 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            goto LABEL_91;
          }

          type metadata accessor for PersistentIdentifierImplementation();
          v47 = swift_allocObject();
          v47[5] = 0;
          v47[6] = 0;
          v47[7] = sub_19750A470();
          v47[8] = v59;
          v47[9] = sub_19750A588();
          v47[10] = v60;
          v47[2] = 0;
          v47[3] = 0;
          *(v47 + 16) = 256;
          v120 = v39;
          if (v35)
          {
            goto LABEL_59;
          }

LABEL_54:
          type metadata accessor for PersistentIdentifierImplementation();
          v61 = swift_allocObject();
          *(v61 + 40) = 0;
          *(v61 + 48) = 0;
          v62 = [v41 persistentStore];
          if (v62 && (v63 = v62, v64 = [v62 identifier], v63, v64))
          {
            v65 = sub_1975217BC();
            v67 = v66;
          }

          else
          {
            v65 = 0;
            v67 = 0;
          }

          *(v61 + 16) = v65;
          *(v61 + 24) = v67;
          *(v61 + 33) = [v41 isTemporaryID];
          *(v61 + 32) = 1;
          v84 = [v41 URIRepresentation];
          v85 = v113;
          sub_19752127C();

          v86 = sub_19752123C();
          v88 = v87;
          (*v112)(v85, v114);
          *(v61 + 56) = v86;
          *(v61 + 64) = v88;
          v89 = [v41 entityName];
          v90 = sub_1975217BC();
          v92 = v91;

          *(v61 + 72) = v90;
          *(v61 + 80) = v92;
          a3 = v115;
          v16 = v116;
LABEL_67:
          if ((v47[7] != *(v61 + 56) || v47[8] != *(v61 + 64)) && (sub_19752282C() & 1) == 0 || (v47[9] != *(v61 + 72) || v47[10] != *(v61 + 80)) && (sub_19752282C() & 1) == 0)
          {
LABEL_78:

            goto LABEL_22;
          }

          v93 = v47[3];
          v94 = *(v61 + 24);
          if (!v93)
          {

            sub_1974028C8(v41, v35);
            sub_1974028C8(v130, v36);
            if (v94)
            {
              goto LABEL_23;
            }

            goto LABEL_80;
          }

          if (!v94)
          {
            goto LABEL_78;
          }

          if (v47[2] == *(v61 + 16) && v93 == v94)
          {

            sub_1974028C8(v41, v35);
            sub_1974028C8(v130, v36);
            goto LABEL_80;
          }

          v101 = sub_19752282C();

          sub_1974028C8(v41, v35);
          sub_1974028C8(v130, v36);
          v39 = v120;
          if ((v101 & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_91;
        }

        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v27, 1);
        sub_19752180C();
        sub_19752180C();
        if (v27[3])
        {
          sub_197522A7C();
          v16 = v116;
          sub_19752180C();
        }

        else
        {
          sub_197522A7C();
        }

        sub_197522A7C();
        sub_19752180C();

        sub_1974028C8(v27, 1);
        v28 = v27;
        v29 = 1;
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_1974028EC(v27, 0);
        sub_197521F4C();
        sub_1974028C8(v27, 0);
        v28 = v27;
        v29 = 0;
      }

      sub_1974028C8(v28, v29);
      goto LABEL_19;
    }

    break;
  }

  v21 = (a5[2] + 64) >> 6;
  v22 = a5[3];
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v20 >= v21)
    {
      break;
    }

    v19 = *(a5[1] + 8 * v20);
    ++v22;
    if (v19)
    {
      goto LABEL_10;
    }
  }

  if (v21 <= v18 + 1)
  {
    v106 = v18 + 1;
  }

  else
  {
    v106 = (a5[2] + 64) >> 6;
  }

  a5[3] = v106 - 1;
  a5[4] = 0;

  return sub_1974AC8D4(v110, v108, v109, a3);
}

uint64_t sub_1974AC8D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221CC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = *(*(a4 + 48) + 16 * (v12 | (v11 << 6)) + 8);
    v16 = swift_unknownObjectRetain();
    result = sub_19747ECF8(v16, v15, v6);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

double sub_1974ACA08@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return result;
}

uint64_t sub_1974ACA50(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1975227CC() & 1;
  }
}

uint64_t sub_1974ACAC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v43 = a5;
  v44 = v7;
  v42 = v11;
  while (v10)
  {
    v49 = a4;
    v17 = v12;
LABEL_14:
    v19 = __clz(__rbit64(v10)) | (v17 << 6);
    v20 = *(*(a1 + 48) + 8 * v19);
    v21 = (*(a1 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v48[0] = v20;
    v48[1] = v22;
    v48[2] = v23;

    (a2)(v47, v48);

    v24 = v47[0];
    v25 = v47[1];
    v26 = v47[2];
    v27 = *a5;
    v29 = sub_1973F7814(v47[0]);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v49 & 1) == 0)
      {
        sub_197479770();
      }
    }

    else
    {
      sub_197477E60(v32, v49 & 1);
      v34 = sub_1973F7814(v24);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v29 = v34;
    }

    v10 &= v10 - 1;
    v36 = *a5;
    if (v33)
    {
      v13 = (v36[7] + 16 * v29);
      v15 = *v13;
      v14 = v13[1];

      v16 = (v36[7] + 16 * v29);
      *v16 = v15;
      v16[1] = v14;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      *(v36[6] + 8 * v29) = v24;
      v37 = (v36[7] + 16 * v29);
      *v37 = v25;
      v37[1] = v26;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v12 = v17;
    a5 = v43;
    v7 = v44;
    v11 = v42;
  }

  v18 = v12;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      sub_1974171EC(a1);
    }

    v10 = *(v7 + 8 * v17);
    ++v18;
    if (v10)
    {
      v49 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_19752202C();
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t sub_1974ACD70(void *a1, uint64_t a2)
{
  v3 = v2;
  result = PersistentModel.modelContext.getter(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = *(sub_1973FE074(a1, a2) + 24);

    v9 = sub_1973FE074(a1, a2);
    *(v9 + 24) |= 0x800u;

    v10 = *(sub_1973FE074(a1, a2) + 112);

    if (v10 == 1)
    {
      sub_1974258A4(a1, a2);
    }

    if (*(v7 + 16))
    {
      v11 = *(v7 + 16);
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_39;
      }

      v11 = Strong;
    }

    v13 = *(v11 + 16);

    v14 = *(v13 + 72);

    v15 = sub_1973F7AAC(a1);
    if (!*(v14 + 16))
    {
      goto LABEL_35;
    }

    v17 = sub_1973F4028(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
LABEL_36:

      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
      v47 = v3;
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197525F90);
      v38 = *(v7 + 16);
      if (v38)
      {
        goto LABEL_43;
      }

      v39 = swift_weakLoadStrong();
      if (v39)
      {
        v40 = v39;
        goto LABEL_45;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1975221EC();
      v38 = &v45;
      MEMORY[0x19A8DFF80](0xD00000000000002ALL, 0x8000000197525FC0);
      type metadata accessor for Schema.Relationship();
      sub_19752235C();
      goto LABEL_42;
    }

    v41 = v8;
    v43 = a1;
    v20 = *(*(v14 + 56) + 8 * v17);

    swift_beginAccess();
    v21 = *(v20 + 88);
    v44 = v7;
    v42 = v3;
    if ((v21 & 0xC000000000000001) != 0)
    {

      sub_1975220AC();
      type metadata accessor for Schema.Relationship();
      sub_1973FA5E0(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
      sub_197521C1C();
      v21 = v48;
      v22 = v49;
      v23 = v50;
      v24 = v51;
      v25 = v52;
    }

    else
    {
      v26 = -1 << *(v21 + 32);
      v22 = v21 + 56;
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v21 + 56);

      v24 = 0;
    }

    v29 = (v23 + 64) >> 6;
    if (v21 < 0)
    {
      goto LABEL_23;
    }

LABEL_17:
    v30 = v24;
    v31 = v25;
    v3 = v24;
    if (!v25)
    {
      while (1)
      {
        v3 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v3 >= v29)
        {
          goto LABEL_32;
        }

        v31 = *(v22 + 8 * v3);
        ++v30;
        if (v31)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_35:

      goto LABEL_36;
    }

LABEL_21:
    v7 = (v31 - 1) & v31;
    v32 = *(*(v21 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v31)))));

    if (v32)
    {
      while (1)
      {
        swift_beginAccess();
        v33 = *(v32 + 48);
        if (!v33)
        {
          goto LABEL_40;
        }

        v34 = sub_197521FFC();
        v35 = swift_conformsToProtocol2();
        if (!v35 || v34 == 0)
        {
          break;
        }

        sub_1974A47C8(v34, v42, v33, v32, v44, v43, v34, a2, v35);

        v24 = v3;
        v25 = v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_23:
        if (sub_19752212C())
        {
          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v32 = v45;
          v3 = v24;
          v7 = v25;
          if (v45)
          {
            continue;
          }
        }

        goto LABEL_32;
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1975221EC();
      v38 = &v45;
      MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197525FF0);
      sub_19752202C();
      sub_19752235C();
      while (1)
      {
LABEL_42:
        sub_1975223EC();
        __break(1u);
LABEL_43:
        v40 = v38;
LABEL_45:
        v47 = v40;
        type metadata accessor for ModelContainer();

        sub_19752235C();

        v38 = &v48;
        MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      }
    }

LABEL_32:
    sub_1974171EC(v21);
    v37 = sub_1973FE074(v43, a2);
    *(v37 + 24) = *(v37 + 24) & 0xFFFFF7FF | v41 & 0x800;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1974AD580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 + 16);
  v13 = *a4;
  v12 = a4[1];
  v14 = *(v11 + 16);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = sub_1973F4028(v13, v12);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);
      swift_beginAccess();
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v19 = *(v11 + 32);
        if (v18 < *(v19 + 16))
        {
          sub_1973FE1B4(v19 + 32 * v18 + 32, v82, &qword_1EAF2AF20, &unk_19752F320);
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_76;
    }
  }

  memset(v82, 0, 32);
LABEL_7:

  sub_1973FE1B4(v82, &v69, &qword_1EAF2AF20, &unk_19752F320);
  v20 = MEMORY[0x1E69E7CC0];
  v68 = v12;
  v64 = v13;
  if (*(&v70 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
    if (swift_dynamicCast())
    {
      if (v77)
      {
        v69 = v77;
        v70 = v78;
        v71 = v79;
        v72 = v80;
        v73 = v81;

        sub_1974416CC(v72, *(&v72 + 1), v73, *(&v73 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B680, &unk_197534B40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        if (swift_dynamicCast())
        {
          v21 = v77;
        }

        else
        {
          v21 = 0;
        }

        v23 = a1;
        v22 = a2;
        if (!a3)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
    }
  }

  else
  {
    sub_1973F7DA4(&v69, &qword_1EAF2AF20, &unk_19752F320);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
  }

  sub_1973F7DA4(&v77, &qword_1EAF2B5F8, &qword_19752EA50);
  sub_1973FE1B4(v82, &v77, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v78 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    if (swift_dynamicCast())
    {
      v63 = a3;
      v24 = v69;
      if (PersistentModel.modelContext.getter(a7, a8))
      {
        v25 = *(v24 + 16);
        if (v25)
        {
          *&v69 = v20;
          sub_197444B2C(0, v25, 0);
          v21 = v69;
          v26 = (v24 + 40);
          do
          {
            v27 = *(v26 - 1);
            v28 = *v26;
            *&v77 = v27;
            BYTE8(v77) = v28;
            sub_1974028EC(v27, v28);
            v29 = sub_1974309B4(&v77);
            v31 = v30;
            sub_1974028C8(v27, v28);
            *&v69 = v21;
            v33 = *(v21 + 16);
            v32 = *(v21 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_197444B2C((v32 > 1), v33 + 1, 1);
              v21 = v69;
            }

            v26 += 16;
            *(v21 + 16) = v33 + 1;
            v34 = v21 + 16 * v33;
            *(v34 + 32) = v29;
            *(v34 + 40) = v31;
            --v25;
          }

          while (v25);
        }

        else
        {

          v21 = MEMORY[0x1E69E7CC0];
        }

        v23 = a1;
        v22 = a2;
        a3 = v63;
        if (!v63)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }

LABEL_76:
      result = sub_1975223EC();
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1973F7DA4(&v77, &qword_1EAF2AF20, &unk_19752F320);
  }

  v23 = a1;
  sub_1973FE1B4(v82, &v77, &qword_1EAF2AF20, &unk_19752F320);
  v22 = a2;
  if (*(&v78 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    if (swift_dynamicCast())
    {
      v21 = v69;
    }

    else
    {
      v21 = 0;
    }

    if (!a3)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_1973F7DA4(&v77, &qword_1EAF2AF20, &unk_19752F320);
    v21 = 0;
    if (!a3)
    {
LABEL_34:
      v35 = 0;
      v36 = 0;
      *(&v77 + 1) = 0;
      *&v78 = 0;
      goto LABEL_38;
    }
  }

LABEL_37:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
  v35 = a3;
LABEL_38:
  *&v77 = v35;
  *(&v78 + 1) = v36;
  v37 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    v39 = v21;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    *(&v69 + 1) = 0;
    *&v70 = 0;
  }

  *&v69 = v39;
  *(&v70 + 1) = v38;

  sub_1973F7DA4(&v69, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973F7DA4(&v77, &qword_1EAF2AF20, &unk_19752F320);
  v40 = MEMORY[0x1E69E7CD0];
  *&v69 = MEMORY[0x1E69E7CD0];
  if (v21)
  {

    sub_1974A2780(v41);

    v42 = v69;
    if (v23)
    {
      goto LABEL_43;
    }

LABEL_48:

    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (*(v22 + 16))
    {
      sub_1974A6950(v22);
    }

    else
    {
    }

    goto LABEL_52;
  }

  v42 = MEMORY[0x1E69E7CD0];
  if (!v23)
  {
    goto LABEL_48;
  }

LABEL_43:
  v43 = *(v23 + 16);

  if (v43)
  {
    sub_1974AA194(v23);
  }

  if (v22)
  {
    goto LABEL_49;
  }

LABEL_52:
  v44 = v69;
  if (*(v42 + 16) <= *(v69 + 16) >> 3)
  {
    *&v77 = v69;

    sub_1974AA194(v42);
    v45 = v77;
  }

  else
  {

    v45 = sub_1974AA2BC(v42, v44);
  }

  if (*(v44 + 16) > *(v42 + 16) >> 3)
  {
    v46 = sub_1974AA2BC(v44, v42);
    v76 = v40;
    if (!v21)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  *&v77 = v42;
  sub_1974AA194(v44);
  v46 = v77;
  v76 = v40;
  if (v21)
  {
LABEL_59:
    sub_1974A2780(v39);

    v40 = v76;
  }

LABEL_60:
  if (*(v46 + 16) <= *(v40 + 16) >> 3)
  {
    *&v77 = v40;

    sub_1974AA194(v46);

    v47 = v77;
  }

  else
  {

    v47 = sub_1974AA2BC(v46, v40);
  }

  v48 = sub_19743E380(v45, v47);

  v75 = v37;
  sub_1974A2604(v48, &v75);
  if (*(a5 + 48) == 1)
  {
    v49 = v75;
    v50 = *(v75 + 16);
    v51 = v68;
    if (v50)
    {
      v74 = v37;

      sub_197411CB8(0, v50, 0);
      v52 = v74;
      v53 = (v49 + 40);
      do
      {
        v54 = *v53;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        PersistentModel.persistentModelID.getter(ObjectType, v54, &v77);
        swift_unknownObjectRelease();
        v56 = v77;
        v57 = BYTE8(v77);
        v74 = v52;
        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_197411CB8((v58 > 1), v59 + 1, 1);
          v52 = v74;
        }

        *(v52 + 16) = v59 + 1;
        v60 = v52 + 16 * v59;
        *(v60 + 32) = v56;
        *(v60 + 40) = v57;
        v53 += 2;
        --v50;
      }

      while (v50);
      v51 = v68;
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    *(&v78 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    *&v77 = v52;
    sub_197511DB4(&v77, v64, v51);

    sub_1973F7DA4(v82, &qword_1EAF2AF20, &unk_19752F320);
  }

  else
  {
    v61 = v75;
    *(&v78 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
    *&v77 = v61;

    sub_197511DB4(&v77, v64, v68);

    sub_1973F7DA4(v82, &qword_1EAF2AF20, &unk_19752F320);
  }
}

id sub_1974ADEAC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1974028EC(result, a2);
  }

  return result;
}

uint64_t sub_1974ADEC0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1974ADF08()
{
  result = qword_1EAF2B6C0;
  if (!qword_1EAF2B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B6B8, &qword_19752F3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B6C0);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_53Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

void sub_1974AE1A8(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    v11 = swift_unknownObjectRetain();
    sub_1974580E0(v11, v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1974AE2B4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    swift_unknownObjectRetain_n();
    sub_1974327FC(&v14, v11, v12);
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    sub_1974ACD70(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1974AE3E0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    swift_unknownObjectRetain_n();
    sub_1974327FC(&v13, v12, v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1974AE500(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_19744377C(ObjectType, v12))
    {
      swift_unknownObjectRetain();
      sub_1974327FC(&v14, v11, v12);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v7 = v8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_1974AE6D4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v9 = sub_1975220EC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1974F6610(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = MEMORY[0x19A8E0960](v12, a1);
        v24 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1974F6610((v14 > 1), v15 + 1, 1);
          v10 = v24;
        }

        ++v12;
        v22 = a2(0);
        v23 = sub_197404E28(a3, a4, a5);
        *&v21 = v13;
        *(v10 + 16) = v15 + 1;
        sub_197402778(&v21, v10 + 40 * v15 + 32);
      }

      while (v9 != v12);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16;
        v24 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_1974F6610((v18 > 1), v19 + 1, 1);
          v10 = v24;
        }

        v22 = a2(0);
        v23 = sub_197404E28(a3, a4, a5);
        *&v21 = v17;
        *(v10 + 16) = v19 + 1;
        sub_197402778(&v21, v10 + 40 * v19 + 32);
        ++v16;
        --v9;
      }

      while (v9);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974AE8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1974F6690(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_1974028EC(v5, *v4);
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1974F6690((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v4 += 16;
      v11 = &type metadata for PersistentIdentifier;
      v12 = &off_1F0BAA0F8;
      *&v10 = v5;
      BYTE8(v10) = v6;
      *(v2 + 16) = v8 + 1;
      sub_197402778(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1974AE9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1974F66D0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1974F66D0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1974028B8(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1974AEAC4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_197411CB8(0, v2, 0);
    v4 = v33;
    v5 = v1 + 56;
    result = sub_19752206C();
    v6 = result;
    v7 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v7;
      v30 = *(v1 + 36);
      v10 = *(*(v1 + 48) + 16 * v6 + 8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      PersistentModel.persistentModelID.getter(ObjectType, v10, &v31);
      result = swift_unknownObjectRelease();
      v12 = v31;
      v13 = v32;
      v14 = v4;
      v33 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_197411CB8((v16 > 1), v17 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      v8 = 1 << *(v15 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_197444BD8(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_197444BD8(v6, v30, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v8;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1974AED34()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AEDA8(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t SwiftDataError._explanation.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1974AEE5C()
{
  byte_1EAF2B6C8 = 0;
  qword_1EAF2B6D0 = 0;
  unk_1EAF2B6D8 = 0;
}

double static SwiftDataError.includePendingChangesWithBatchSize.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B6D0;
  v2 = unk_1EAF2B6D8;
  *a1 = byte_1EAF2B6C8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AEEEC()
{
  byte_1EAF2B6E0 = 1;
  qword_1EAF2B6E8 = 0;
  unk_1EAF2B6F0 = 0;
}

double static SwiftDataError.unsupportedPredicate.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B6E8;
  v2 = unk_1EAF2B6F0;
  *a1 = byte_1EAF2B6E0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AEF80()
{
  byte_1EAF2B6F8 = 2;
  qword_1EAF2B700 = 0;
  unk_1EAF2B708 = 0;
}

double static SwiftDataError.unsupportedKeyPath.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B700;
  v2 = unk_1EAF2B708;
  *a1 = byte_1EAF2B6F8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF014()
{
  byte_1EAF2B710 = 3;
  qword_1EAF2B718 = 0;
  unk_1EAF2B720 = 0;
}

double static SwiftDataError.sortingPendingChangesWithIdentifiers.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B718;
  v2 = unk_1EAF2B720;
  *a1 = byte_1EAF2B710;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF0A8()
{
  byte_1EAF2B728 = 4;
  qword_1EAF2B730 = 0;
  unk_1EAF2B738 = 0;
}

double static SwiftDataError.unsupportedSortDescriptor.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B730;
  v2 = unk_1EAF2B738;
  *a1 = byte_1EAF2B728;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF13C()
{
  byte_1EAF2B740 = 5;
  qword_1EAF2B748 = 0;
  unk_1EAF2B750 = 0;
}

double static SwiftDataError.duplicateConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD40 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B748;
  v2 = unk_1EAF2B750;
  *a1 = byte_1EAF2B740;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF1D0()
{
  byte_1EAF2B758 = 6;
  qword_1EAF2B760 = 0;
  unk_1EAF2B768 = 0;
}

double static SwiftDataError.configurationFileNameTooLong.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B760;
  v2 = unk_1EAF2B768;
  *a1 = byte_1EAF2B758;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF264()
{
  byte_1EAF2B770 = 7;
  qword_1EAF2B778 = 0;
  unk_1EAF2B780 = 0;
}

double static SwiftDataError.configurationFileNameContainsInvalidCharacters.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B778;
  v2 = unk_1EAF2B780;
  *a1 = byte_1EAF2B770;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF2F8()
{
  byte_1EAF2B788 = 8;
  qword_1EAF2B790 = 0;
  unk_1EAF2B798 = 0;
}

double static SwiftDataError.configurationSchemaNotFoundInContainerSchema.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD58 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B790;
  v2 = unk_1EAF2B798;
  *a1 = byte_1EAF2B788;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF38C()
{
  byte_1EAF2B7A0 = 10;
  qword_1EAF2B7A8 = 0;
  unk_1EAF2B7B0 = 0;
}

double static SwiftDataError.loadIssueModelContainer.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7A8;
  v2 = unk_1EAF2B7B0;
  *a1 = byte_1EAF2B7A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF420()
{
  byte_1EAF2B7B8 = 11;
  qword_1EAF2B7C0 = 0;
  unk_1EAF2B7C8 = 0;
}

double static SwiftDataError.modelValidationFailure.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7C0;
  v2 = unk_1EAF2B7C8;
  *a1 = byte_1EAF2B7B8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF4B4()
{
  byte_1EAF2B7D0 = 12;
  qword_1EAF2B7D8 = 0;
  unk_1EAF2B7E0 = 0;
}

double static SwiftDataError.missingModelContext.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7D8;
  v2 = unk_1EAF2B7E0;
  *a1 = byte_1EAF2B7D0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF548()
{
  byte_1EAF2B7E8 = 13;
  qword_1EAF2B7F0 = 0;
  unk_1EAF2B7F8 = 0;
}

double static SwiftDataError.backwardMigration.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B7F0;
  v2 = unk_1EAF2B7F8;
  *a1 = byte_1EAF2B7E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF5DC()
{
  byte_1EAF2B800 = 14;
  qword_1EAF2B808 = 0;
  unk_1EAF2B810 = 0;
}

double static SwiftDataError.unknownSchema.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B808;
  v2 = unk_1EAF2B810;
  *a1 = byte_1EAF2B800;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF670()
{
  byte_1EAF2B818 = 15;
  qword_1EAF2B820 = 0;
  unk_1EAF2B828 = 0;
}

double static SwiftDataError.historyTokenExpired.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B820;
  v2 = unk_1EAF2B828;
  *a1 = byte_1EAF2B818;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

void sub_1974AF704()
{
  byte_1EAF2B830 = 16;
  qword_1EAF2B838 = 0;
  unk_1EAF2B840 = 0;
}

double static SwiftDataError.invalidTransactionFetchRequest.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EAF2AD90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = qword_1EAF2B838;
  v2 = unk_1EAF2B840;
  *a1 = byte_1EAF2B830;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

uint64_t SwiftDataError.hashValue.getter()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AF7F0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974AF864(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

uint64_t static SwiftDataError.~= infix(_:_:)(unsigned __int8 *a1, id a2)
{
  v2 = *a1;
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  result = swift_dynamicCast();
  if (result)
  {

    return v5 == v2;
  }

  return result;
}

double sub_1974AF938@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for EditingState(0) + 20));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_1974AF9A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v5 = (v4 + *(type metadata accessor for EditingState(0) + 20));
  *v5 = v3;
  v5[1] = v2;
}

uint64_t sub_1974AFA1C()
{
  v1 = v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for EditingState(0) + 20));

  return v2;
}

void (*sub_1974AFA84(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = type metadata accessor for EditingState(0);
  v4[7] = v7;
  v8 = (v6 + *(v7 + 20));
  v9 = v8[1];
  v4[3] = *v8;
  v4[4] = v9;

  return sub_1974AFB38;
}

void sub_1974AFB38(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48) + *(*(*a1 + 56) + 20));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

void *sub_1974AFBB0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1974AFBF4(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = MEMORY[0x1E696AA10];
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v3;
    v7 = [v5 defaultCenter];
    [v7 removeObserver:v1 name:*v4 object:v6];

    [v6 removeAllActionsWithTarget_];
    v3 = *(v1 + 40);
  }

  *(v1 + 40) = a1;
  v8 = a1;

  if (a1)
  {
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v1 selector:sel__undoManagerCheckpoint_ name:*v4 object:v8];
  }
}

void (*sub_1974AFD1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 40);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1974AFDB0;
}

void sub_1974AFDB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1974AFBF4(v3);
  }

  else
  {
    sub_1974AFBF4(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1974AFE50(char a1)
{
  result = swift_beginAccess();
  *(v1 + 63) = a1;
  return result;
}

uint64_t sub_1974AFEE0()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();

  v3 = sub_19743E380(v2, v1);
  v4 = sub_19743AD6C(v3);

  return v4;
}

uint64_t sub_1974AFF70()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  swift_beginAccess();

  v3 = sub_19743E380(v2, v1);
  v4 = sub_19743AD6C(v3);

  return v4;
}

uint64_t sub_1974B0000()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  swift_beginAccess();

  v3 = sub_19743E380(v2, v1);
  v4 = sub_19743AD6C(v3);

  return v4;
}

uint64_t sub_1974B0090(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404E70(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_1974C075C(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1974B0148@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  return sub_197404E70(v1 + v3, a1);
}

uint64_t sub_1974B01A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_1974C075C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1974B0260()
{
  v1 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1974B02A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974B0308;
}

void sub_1974B0308(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_19740E114();
  }
}

void sub_1974B033C()
{
  *(v0 + 32) = 0;

  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 defaultCenter];
    [v4 removeObserver:v0 name:*MEMORY[0x1E696AA10] object:v3];

    [v3 removeAllActionsWithTarget_];
    v5 = *(v0 + 40);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 40) = 0;

  v6 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v0 + v6) = 0;
  sub_19740E114();
  v7 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
  v8 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(v0 + v7);
    *(v0 + v7) = 0;
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver_];

  *(v0 + 62) = 0;
}

uint64_t sub_1974B049C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {
      v3 = *(result + 16);
    }

    else
    {
      if (!swift_weakLoadStrong())
      {
      }

      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v3 = result;
    }

    swift_beginAccess();
    v4 = *(v3 + 48);
    swift_retain_n();

    v5 = *(v4 + 16);

    if (v5)
    {
      sub_19743FB78(0);
    }
  }

  return result;
}

void sub_1974B05A8()
{
  if (*(v0 + 16))
  {
    swift_weakAssign();
    v1 = qword_1EAF2ACB8;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = dyld_program_sdk_at_least();

    if (v2)
    {
      *(v0 + 16) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1974B0664()
{
  v1 = MEMORY[0x19A8E1370]();
  sub_19740E3D0(1);
  sub_1974B033C();
  if (_SD_get_current_context_tsd())
  {
    v2 = swift_retain_n();

    v3 = sub_1974BEE44(v0);

    if (v3)
    {
    }
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1974B06F8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_197520BEC();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v36 = 0xD000000000000031;
  v37 = 0x80000001975275A0;
  sub_19752218C();
  if (!*(v4 + 16) || (v5 = sub_197445520(v38), (v6 & 1) == 0))
  {

    sub_197420CA4(v38);
LABEL_8:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_9;
  }

  sub_197404860(*(v4 + 56) + 32 * v5, &v39);
  sub_197420CA4(v38);

  if (!*(&v40 + 1))
  {
LABEL_9:
    sub_1974050A8(&v39, &qword_1EAF2AF20, &unk_19752F320);
    return;
  }

  sub_1974028B8(&v39, v38);
  sub_197404860(v38, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B948, &qword_19752FC60);
  if (swift_dynamicCast())
  {
    v7 = 0;
    v33 = sub_1975223AC() | 0x8000000000000000;

    v8 = 0;
    v9 = v33;
    while (1)
    {
      v10 = sub_1975223DC();
      if (!v10)
      {
        break;
      }

      v12 = v11;
      v36 = v10;
      sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
      swift_dynamicCast();
      v13 = v39;
      v36 = v12;
      v9 = v33;
      swift_dynamicCast();
      v14 = v39;
      v15 = v8;
      v34 = v7;
      if (!v13)
      {
        break;
      }

      v16 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (*(v17 + 16))
      {
        v18 = v13;
        v19 = v14;

        v20 = sub_197403C30(v13, 0);
        if (v21)
        {
          sub_19742FE50(*(v17 + 56) + 32 * v20, &v39);

          v22 = v39 != 0;
          v23 = *(&v39 + 1) != 1;
        }

        else
        {

          v23 = 0;
          v22 = 0;
          v39 = xmmword_19752EA60;
          *&v40 = 0;
          BYTE8(v40) = 0;
        }
      }

      else
      {
        v39 = xmmword_19752EA60;
        *&v40 = 0;
        BYTE8(v40) = 0;
        v24 = v13;
        v25 = v14;
        v23 = 0;
        v22 = 0;
      }

      if (v22 || v23)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v27 = *(&v39 + 1);
        sub_1974050A8(&v39, &qword_1EAF2B640, &unk_19752F160);
        if (Strong)
        {
          v28 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
          ObjectType = swift_getObjectType();
          *&v39 = v14;
          BYTE8(v39) = 0;
          sub_197459C60(&v39, ObjectType, v27);
          swift_beginAccess();
          v30 = v13;
          sub_197459F50(v13, 0, &v39);

          sub_1974050A8(&v39, &qword_1EAF2B640, &unk_19752F160);
          swift_endAccess();
          *(&v39 + 1) = 0;
          swift_unknownObjectWeakInit();
          *(&v39 + 1) = v27;
          swift_unknownObjectWeakAssign();
          swift_unknownObjectRetain();
          v31 = ObjectType;
          v9 = v33;
          PersistentModel.persistentModelID.getter(v31, v27, &v36);
          swift_unknownObjectRelease();
          *&v40 = v36;
          BYTE8(v40) = v37;
          swift_beginAccess();
          sub_197433E8C(&v39, &v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = *(v2 + v28);
          sub_197433C04(&v36, v14, 0, isUniquelyReferenced_nonNull_native);

          *(v2 + v28) = v35;
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {

        sub_1974050A8(&v39, &qword_1EAF2B640, &unk_19752F160);
      }

      v8 = v15;
      v7 = v34;
    }

    sub_197458C2C(v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }
}

uint64_t sub_1974B0D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  if (!*(a1 + 8))
  {
    sub_1974028EC(*a1, 0);
    v12 = [v6 entityName];
    v8 = sub_1975217BC();
    v7 = v13;

    v14 = v6;
    v15 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 8) != 1)
  {
    sub_1974028EC(*a1, 2);
    v8 = sub_19750A588();
    v7 = v16;
    v14 = v6;
    v15 = 2;
LABEL_8:
    sub_1974028C8(v14, v15);
    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = v9;
    goto LABEL_10;
  }

  v8 = v6[9];
  v7 = v6[10];

  v9 = *(a2 + 16);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_4:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = Strong;
LABEL_10:
  v17 = *(v11 + 80);

  if (!*(v17 + 16) || (v18 = sub_1973F4028(v8, v7), (v19 & 1) == 0))
  {

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197527B30);
    MEMORY[0x19A8DFF80](v8, v7);
    MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
    if (*(a2 + 16) || swift_weakLoadStrong())
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  v21 = *(v20 + 144);
  if (!v21)
  {
LABEL_18:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000054, 0x8000000197527B50);
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    while (1)
    {
      sub_1975223EC();
      __break(1u);
LABEL_20:
      type metadata accessor for ModelContainer();

      sub_19752235C();
    }
  }

  v22 = *(v20 + 152);

  v23 = sub_1974B10B8(v21, a1, v20, a2, v21, v22);

  *a3 = v23;
  a3[1] = v22;
  return result;
}

uint64_t sub_1974B10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for _KKMDBackingData(0, a5, a6, a4);
  swift_beginAccess();
  v66 = a2;
  v10 = *(a2 + 8);
  *&v81 = *a2;
  BYTE8(v81) = v10;
  sub_1974028EC(v81, v10);
  v63 = v9;
  v70 = sub_197512DF4(a1, &v81);
  swift_beginAccess();
  v65 = a3;
  v11 = *(a3 + 80);
  if ((v11 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_197404E28(&qword_1ED7CA320, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v11 = v76;
    v12 = v77;
    v13 = v78;
    v14 = v79;
    v15 = v80;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);

    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  v20 = &qword_1EAF2AF20;
  v68 = v11;
  v69 = v19;
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v21 = sub_19752212C();
  if (v21)
  {
    *&v71 = v21;
    type metadata accessor for Schema.Attribute();
    swift_dynamicCast();
    v22 = v81;
    v23 = v14;
    v24 = v15;
    if (v81)
    {
      while (1)
      {
        swift_beginAccess();
        sub_1974047F8(v22 + 64, &v71, v20, &unk_19752F320);
        if (v72)
        {
          v27 = v12;
          v28 = v20;
          sub_1974028B8(&v71, &v81);
          v29 = v70[2];
          swift_beginAccess();
          v14 = *(v22 + 16);
          v20 = *(v22 + 24);
          sub_197404860(&v81, &v71);
          v30 = *(v29 + 16);
          v31 = *(v30 + 16);

          if (!v31)
          {
            goto LABEL_64;
          }

          v32 = sub_1973F4028(v14, v20);
          if ((v33 & 1) == 0)
          {
            goto LABEL_64;
          }

          v11 = v32;

          v20 = *(*(v30 + 56) + 8 * v11);
          swift_beginAccess();
          v34 = *(v29 + 32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v29 + 32) = v34;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v20 < 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v34 = sub_19751C104(v34);
            *(v29 + 32) = v34;
            if (v20 < 0)
            {
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          if (v20 >= v34[2])
          {
            goto LABEL_62;
          }

          sub_1973F7958(&v71, &v34[4 * v20 + 4]);
          *(v29 + 32) = v34;
          swift_endAccess();

          v20 = v28;
          sub_1974050A8(&v71, v28, &unk_19752F320);
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);

          v14 = v23;
          v15 = v24;
          v12 = v27;
          v11 = v68;
          v19 = v69;
          if (v68 < 0)
          {
            goto LABEL_10;
          }
        }

        else
        {

          sub_1974050A8(&v71, v20, &unk_19752F320);
          v14 = v23;
          v15 = v24;
          if (v11 < 0)
          {
            goto LABEL_10;
          }
        }

LABEL_13:
        v25 = v14;
        v26 = v15;
        v23 = v14;
        if (!v15)
        {
          break;
        }

LABEL_17:
        v24 = (v26 - 1) & v26;
        v22 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v26)))));

        if (!v22)
        {
          goto LABEL_28;
        }
      }

      while (1)
      {
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        if (v23 >= v19)
        {
          break;
        }

        v26 = *(v12 + 8 * v23);
        ++v25;
        if (v26)
        {
          goto LABEL_17;
        }
      }
    }
  }

LABEL_28:
  sub_197458C2C(v11);
  swift_beginAccess();
  v14 = *(v65 + 88);
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_197404E28(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v36 = *(&v81 + 1);
    v14 = v81;
    v37 = v82;
    v38 = v83;
    v20 = v84;
  }

  else
  {
    v39 = -1 << *(v14 + 32);
    v36 = v14 + 56;
    v37 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v20 = v41 & *(v14 + 56);

    v38 = 0;
  }

  v42 = (v37 + 64) >> 6;
  while (v14 < 0)
  {
    if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v47 = v71, v45 = v38, v46 = v20, !v71))
    {
LABEL_59:
      sub_197458C2C(v14);
      v72 = v63;
      WitnessTable = swift_getWitnessTable();
      *&v71 = v70;
      return (*(a6 + 48))(&v71);
    }

LABEL_45:
    if ((*(v47 + 168) & 1) == 0)
    {
      swift_beginAccess();
      v48 = *(v47 + 64);
      if (!swift_conformsToProtocol2() || v48 == 0)
      {
        if (*(a4 + 16))
        {
          v50 = *(a4 + 16);
        }

        else
        {
          Strong = swift_weakLoadStrong();
          if (!Strong)
          {
            goto LABEL_63;
          }

          v50 = Strong;
        }

        v52 = *(v50 + 80);

        swift_beginAccess();
        if (!*(v52 + 16) || (v53 = *(v47 + 72), v54 = *(v47 + 80), , v55 = sub_1973F4028(v53, v54), v57 = v56, , (v57 & 1) == 0))
        {

          *&v71 = 0;
          *(&v71 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0x69746E6520656854, 0xEF20726F66207974);
          v62 = *(v47 + 72);
          v61 = *(v47 + 80);

          MEMORY[0x19A8DFF80](v62, v61);

          MEMORY[0x19A8DFF80](0xD00000000000002ELL, 0x8000000197526030);
          goto LABEL_67;
        }

        v58 = *(*(v52 + 56) + 8 * v55);

        v59 = *(v58 + 144);
        if (!v59)
        {
          *&v71 = 0;
          *(&v71 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197526060);
          type metadata accessor for Schema.Entity();
          sub_19752235C();
          goto LABEL_67;
        }

        sub_1974B1B44(v59, v47, v66, v70, *(v58 + 144), *(v58 + 152));
      }
    }

    v38 = v45;
    v20 = v46;
  }

  v43 = v38;
  v44 = v20;
  v45 = v38;
  if (v20)
  {
LABEL_41:
    v46 = (v44 - 1) & v44;
    v47 = *(*(v14 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));

    if (!v47)
    {
      goto LABEL_59;
    }

    goto LABEL_45;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      goto LABEL_59;
    }

    v44 = *(v36 + 8 * v45);
    ++v43;
    if (v44)
    {
      goto LABEL_41;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_1975221EC();

  v74 = 0xD000000000000029;
  v75 = 0x8000000197527BD0;
  MEMORY[0x19A8DFF80](v14, v20);
LABEL_67:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B19B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v3 = sub_1975214EC();
  v4 = sub_1975214EC();
  if (v3)
  {
    if (v4 && v3 == v4)
    {
      goto LABEL_4;
    }
  }

  else if (!v4)
  {
LABEL_4:
    sub_1975215CC();
    sub_197521AAC();
    return swift_dynamicCast();
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x8000000197527C80);
  sub_197522B2C();
  sub_1975227FC();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B1B44(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v8 = sub_1975212CC();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (a2[6] && (v12 = sub_197521AAC(), sub_197522B2C(), swift_dynamicCastClass()))
  {
    swift_beginAccess();
    v13 = a2[2];
    v14 = a2[3];
    v39 = v12;
    v36 = a6;

    swift_getWitnessTable();
    sub_1974B19B4();
    sub_197511DB4(&v37, v13, v14);
  }

  else
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1975221EC();
    v40 = v37;
    v41 = v38;
    MEMORY[0x19A8DFF80](0xD000000000000075, 0x8000000197527C00);
    swift_beginAccess();
    v16 = a2[2];
    v17 = a2[3];

    MEMORY[0x19A8DFF80](v16, v17);

    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    v18 = v34;
    swift_beginAccess();
    v19 = *v18;
    if (*(v18 + 8))
    {
      v20 = *v18;
      if (*(v18 + 8) == 1)
      {
        v30 = sub_1974028EC(v20, 1);
        v23 = sub_19750ACDC(v30, v31);
        v25 = v32;
        v26 = v19;
        v27 = 1;
      }

      else
      {
        v21 = sub_1974028EC(v20, 2);
        v23 = sub_19750A29C(v21, v22);
        v25 = v24;
        v26 = v19;
        v27 = 2;
      }

      sub_1974028C8(v26, v27);
    }

    else
    {
      sub_1974028EC(*v18, 0);
      v28 = [v19 URIRepresentation];
      sub_19752127C();

      v23 = sub_19752121C();
      v25 = v29;
      sub_1974028C8(v19, 0);
      (*(v35 + 8))(v11, v8);
    }

    MEMORY[0x19A8DFF80](v23, v25);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974B1EEC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v8 = v7;
  if (swift_getAssociatedTypeWitness() == a4)
  {
    v14 = type metadata accessor for _KKMDBackingData(0, a4, a6, v13);
    v19 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v18 + 24))(&v29, v19, v18);
    v34 = v29;
    v35 = v30;
    v17 = sub_197512DF4(a4, &v34);
    *(sub_197512E44() + 16) = v8;

    *(*(v17 + 40) + 80) = 0;
    sub_197430254(1);
  }

  else
  {
    v14 = type metadata accessor for _StitchedBackingData(0, a4, a6, v13);
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 24))(&v29, v15, v16);
    v34 = v29;
    v35 = v30;
    v17 = sub_197512F10(a4, &v34);
    *(*(v17 + 24) + 16) = v8;

    *(*(v17 + 24) + 80) = 0;
    sub_197512F08(1);
  }

  a7[3] = v14;
  a7[4] = swift_getWitnessTable();
  *a7 = v17;
  v29 = a4;
  v30 = a3;
  v31 = a6;
  v32 = a5;
  v20 = type metadata accessor for BackingDataEncoder(0, &v29);

  v21 = MEMORY[0x1E69E7CC0];
  v22 = sub_197441730(MEMORY[0x1E69E7CC0]);
  v23 = sub_19749A79C(a7, v8, a2, v21, v22);

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v20;
  WitnessTable = swift_getWitnessTable();
  v29 = v23;

  v24 = v36;
  sub_19752169C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a7);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
}

uint64_t sub_1974B21D0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_1974309B4(&v3);
}

void sub_1974B2204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v8);
  v6 = v8;
  v7 = v9;
  if (v9)
  {
    if (v9 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(a1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  sub_1974028C8(v6, v7);
}

uint64_t sub_1974B2310(uint64_t a1, uint64_t a2)
{
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v6);
  v4 = v6;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8(v8);
      sub_1974028C8(v4, 1);
      sub_1974028C8(v4, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v4, 2);
      sub_1974028C8(v4, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
    sub_1974028C8(v4, 0);
    sub_1974028C8(v4, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_1974B2484(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, v2, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v4, 1);
      sub_197452CB8(v9);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v4, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v4, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v4, v5);
  sub_1974028C8(v4, v5);
  return sub_197522A9C();
}

void sub_1974B25D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*(v1 + 24))
  {
    if (v4 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v3, 1);
      sub_197452CB8(a1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v3, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v3, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v3, v4);
}

uint64_t sub_1974B26DC()
{
  sub_197522A5C();
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v1, 1);
      sub_197452CB8(v3);
      sub_1974028C8(v1, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v1, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v1, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v1, 0);
    sub_197521F4C();
    sub_1974028C8(v1, 0);
  }

  return sub_197522A9C();
}

uint64_t sub_1974B2808(uint64_t a1)
{
  sub_197522A5C();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 24))
  {
    if (v3 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v2, 1);
      sub_197452CB8(v5);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v2, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v2, 0);
    sub_197521F4C();
  }

  sub_1974028C8(v2, v3);
  return sub_197522A9C();
}

uint64_t sub_1974B2918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  sub_1974028EC(v2, v4);
  sub_1974028EC(v3, v5);
  v6 = sub_19742291C(v2, v4, v3, v5);
  sub_1974028C8(v3, v5);
  sub_1974028C8(v2, v4);
  return v6 & 1;
}

uint64_t sub_1974B29A0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *a1;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 72))(a1, *(v10 + *MEMORY[0x1E69E77B0] + 8), a9, v11, v12);
  if (sub_19752173C())
  {
    return swift_unknownObjectRelease();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974B2AE0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = *(*(v12 + *MEMORY[0x1E69E77B0] + 8) + 16);
  if ((*(v14 + 80))(a1, v15, a9, v13, v14))
  {
    if (sub_19752173C())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003FLL, 0x80000001975274D0);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0x202E737620, 0xE500000000000000);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
    }
  }

  else
  {
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    return (*(v18 + 128))(a1, a3, v15, a9, v17, v18);
  }

  return result;
}

void sub_1974B2CDC(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = *(v12 + 88);
  v14 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(v14 + 16);
  WitnessTable = swift_getWitnessTable();
  v13(&v25, a1, v14, v15);
  PersistentModel.persistentModelID.getter(v15, a9, &v23);
  v16 = v23;
  v17 = v24;
  v23 = v25;

  swift_getWitnessTable();
  v18 = sub_19752196C();

  if (v18)
  {

    sub_1974028C8(v16, v17);
  }

  else
  {
    v23 = a3;
    swift_unknownObjectRetain();
    sub_197521A7C();
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v23 = v25;
    (*(v20 + 136))(a1, &v23, v14, v15, WitnessTable, v19, v20);
    sub_1974028C8(v16, v17);
  }
}

uint64_t sub_1974B2F38(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = swift_beginAccess();
  if (*(v3 + 63) == 1)
  {
    v8 = *(v6 + *MEMORY[0x1E69E6B90]);
    swift_beginAccess();
    v9 = *(v3 + 160);
    if (*(v9 + 16) && (v10 = sub_1973F7950(v8, a2), (v11 & 1) != 0))
    {
      v16 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    sub_19747D9D8(v15, a1);

    v12 = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 160);
    *(v3 + 160) = 0x8000000000000000;
    sub_19747CE90(v12, v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 160) = v14;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1974B3098(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = swift_beginAccess();
  if (*(v3 + 63) == 1)
  {
    v8 = *(v6 + *MEMORY[0x1E69E6B90]);
    swift_beginAccess();
    v9 = *(v3 + 168);
    if (*(v9 + 16) && (v10 = sub_1973F7950(v8, a2), (v11 & 1) != 0))
    {
      v16 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CD0];
    }

    sub_19747D9D8(v15, a1);

    v12 = v16;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 168);
    *(v3 + 168) = 0x8000000000000000;
    sub_19747CE90(v12, v8, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 168) = v14;
    return swift_endAccess();
  }

  return result;
}

void sub_1974B3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 160);
  if (!*(v12 + 16) || (v13 = sub_1973F7950(a5, a7), (v14 & 1) == 0))
  {
LABEL_24:
    v29 = sub_1975214CC();
    if (v29)
    {
      v30 = v29;
      v31 = swift_conformsToProtocol2();
      if (v31)
      {
        sub_1974B3210(v30, a2, a3, a4, v30, a6, v31);
      }
    }

    return;
  }

  v32 = a2;
  v33 = a6;
  v15 = *(*(v12 + 56) + 8 * v13);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_19752202C();
    sub_197521C1C();
    v15 = v36;
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v23 = (v17 + 64) >> 6;
  while (v15 < 0)
  {
    if (!sub_19752212C() || (sub_19752202C(), swift_dynamicCast(), v26 = v18, v27 = v19, !v35))
    {
LABEL_23:
      sub_197458C2C(v15);
      a2 = v32;
      a6 = v33;
      goto LABEL_24;
    }

LABEL_21:
    sub_19752228C();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      sub_197521C2C();

      sub_197521C0C();
      swift_endAccess();
    }

    else
    {
      sub_197521FFC();
      swift_beginAccess();
      sub_197521C2C();
      swift_retain_n();
      sub_197521C0C();
      swift_endAccess();
    }

    v18 = v26;
    v19 = v27;
  }

  v24 = v18;
  v25 = v19;
  v26 = v18;
  if (v19)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_23;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1974B35A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  sub_19752228C();
  *(v8 + 16) = sub_1975215DC();
  a4(a2, v4, v8, a2, a2, a3, a3);
  swift_beginAccess();
  v9 = *(v8 + 16);

  return v9;
}

void sub_1974B3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a2 + 168);
  if (!*(v12 + 16) || (v13 = sub_1973F7950(a5, a7), (v14 & 1) == 0))
  {
LABEL_24:
    v29 = sub_1975214CC();
    if (v29)
    {
      v30 = v29;
      v31 = swift_conformsToProtocol2();
      if (v31)
      {
        sub_1974B3668(v30, a2, a3, a4, v30, a6, v31);
      }
    }

    return;
  }

  v32 = a2;
  v33 = a6;
  v15 = *(*(v12 + 56) + 8 * v13);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_19752202C();
    sub_197521C1C();
    v15 = v36;
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v23 = (v17 + 64) >> 6;
  while (v15 < 0)
  {
    if (!sub_19752212C() || (sub_19752202C(), swift_dynamicCast(), v26 = v18, v27 = v19, !v35))
    {
LABEL_23:
      sub_197458C2C(v15);
      a2 = v32;
      a6 = v33;
      goto LABEL_24;
    }

LABEL_21:
    sub_19752228C();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      sub_197521C2C();

      sub_197521C0C();
      swift_endAccess();
    }

    else
    {
      sub_197521FFC();
      swift_beginAccess();
      sub_197521C2C();
      swift_retain_n();
      sub_197521C0C();
      swift_endAccess();
    }

    v18 = v26;
    v19 = v27;
  }

  v24 = v18;
  v25 = v19;
  v26 = v18;
  if (v19)
  {
LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_23;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1974B39E0()
{
  v1 = v0;
  v2 = *(v0 + 56);
  *(v0 + 56) = 0;
  sub_19743FB78(0);
  swift_beginAccess();
  *(v0 + 64) = 0;

  swift_beginAccess();
  if (*(*(v0 + 88) + 16) || (swift_beginAccess(), *(*(v0 + 72) + 16)) || (swift_beginAccess(), *(*(v0 + 104) + 16)))
  {
    v65 = v2;
    v64 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
    v3 = *(v0 + 88);
    swift_beginAccess();

    v5 = sub_19743E380(v4, v3);
    v6 = v5;
    v7 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
LABEL_13:
      v14 = *(*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))) + 8);
      ObjectType = swift_getObjectType();
      v16 = swift_unknownObjectRetain();
      if (sub_1974C0AD0(v16, ObjectType, v14))
      {
        swift_unknownObjectRelease();
      }

      v10 &= v10 - 1;
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    v17 = *(v1 + 72);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 56);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_23:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = *(*(v17 + 48) + ((v23 << 10) | (16 * v24)) + 8);
      v26 = swift_getObjectType();
      v27 = swift_unknownObjectRetain();
      sub_1974B7028(v27, v26, v25);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        v28 = *(v1 + 104);
        v29 = 1 << *(v28 + 32);
        v30 = -1;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        v31 = v30 & *(v28 + 56);
        v32 = (v29 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v33 = 0;
        while (v31)
        {
          v34 = v33;
LABEL_33:
          v35 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v36 = *(*(v28 + 48) + ((v34 << 10) | (16 * v35)) + 8);
          v37 = swift_getObjectType();
          v38 = swift_unknownObjectRetain();
          sub_197454EEC(v38, v37, v36);
          swift_unknownObjectRelease();
        }

        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_46;
          }

          if (v34 >= v32)
          {

            v39 = *(v1 + 88);
            if (*(v39 + 16))
            {
              v40 = sub_1975217BC();
              v42 = v41;
              swift_beginAccess();

              v44 = sub_19743E380(v43, v39);
              v45 = sub_19743AD6C(v44);

              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v68 = v45;
              sub_1974028B8(&v68, v66);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v67[0] = v64;
              sub_1973FF710(v66, v40, v42, isUniquelyReferenced_nonNull_native);

              v47 = v67[0];
              v2 = v65;
            }

            else
            {
              v2 = v65;
              v47 = v64;
            }

            v48 = *(v1 + 72);
            if (*(v48 + 16))
            {
              v49 = sub_1975217BC();
              v51 = v50;
              swift_beginAccess();

              v53 = sub_19743E380(v52, v48);
              v54 = sub_19743AD6C(v53);

              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v68 = v54;
              sub_1974028B8(&v68, v66);
              v55 = swift_isUniquelyReferenced_nonNull_native();
              v67[0] = v47;
              sub_1973FF710(v66, v49, v51, v55);

              v47 = v67[0];
            }

            v56 = *(v1 + 104);
            if (*(v56 + 16))
            {
              v57 = sub_1975217BC();
              v59 = v58;
              swift_beginAccess();

              v61 = sub_19743E380(v60, v56);
              v62 = sub_19743AD6C(v61);

              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
              *&v68 = v62;
              sub_1974028B8(&v68, v66);
              v63 = swift_isUniquelyReferenced_nonNull_native();
              sub_1973FF710(v66, v57, v59, v63);
            }

            sub_1974443D4(v47);

            sub_19743FB78(0);
            sub_19740EB4C();
            goto LABEL_43;
          }

          v31 = *(v28 + 56 + 8 * v34);
          ++v33;
          if (v31)
          {
            v33 = v34;
            goto LABEL_33;
          }
        }
      }

      v20 = *(v17 + 56 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_23;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_43:
    *(v1 + 56) = v2;
  }
}

uint64_t sub_1974B4038(uint64_t a1)
{
  v3 = *(v1 + 184);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *(v1 + 184) = v5;
  v6 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v7 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList);
  if (v7 && (*(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID + 4) & 1) == 0)
  {
    v8 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID) != *(v1 + 176);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  v8 = 1;
  v9 = *(v6 + 16);
  if (!v9)
  {
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

LABEL_5:
  v43 = v1;
  v2 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);
  v10 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots);
  v36 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v37 = v9 - 1;
  v41 = v6 + 32;
  if (!v7)
  {
    v8 = 1;
  }

  v40 = v8;

  v11 = 0;
  v42 = v10;
  v12 = (v10 + 40);
  v35 = MEMORY[0x1E69E7CC0];
  v38 = v2;
  v39 = v7;
  while (1)
  {
    v44 = *(v41 + 16 * v11);
    if (v2)
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_49;
      }

      v13 = *(v2 + 8 * v11 + 32);

      if (v40)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      if (v40)
      {
        goto LABEL_11;
      }
    }

    if (v11 >= *(v7 + 16))
    {
      goto LABEL_50;
    }

    v14 = *(v7 + v11 + 32);
LABEL_15:
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    PersistentModel.persistentModelID.getter(ObjectType, *(&v44 + 1), &v46);
    v16 = v46;
    v2 = v47;
    v48 = v46;
    v49 = v47;
    sub_1974553C8(v44, &v48, ObjectType, *(&v44 + 1));
    sub_1974028C8(v16, v2);
    if (v13)
    {
      sub_1974A6264(v13, ObjectType, *(&v44 + 1));

      if (v42)
      {
        if (v11 >= *(v42 + 16))
        {
          goto LABEL_51;
        }

        if (*(v12 - 1))
        {
          v17 = *v12;
          v18 = swift_unknownObjectRetain();
          sub_197442F3C(v18, v17, ObjectType, *(&v44 + 1));
          swift_unknownObjectRelease();
        }
      }
    }

    if (sub_1974C2378(ObjectType, *(&v44 + 1)))
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v44;
      *(v19 + 32) = v43;
      swift_unknownObjectRetain();

      sub_197455A10(0, sub_1974C17E4, v19, ObjectType, *(&v44 + 1));

      sub_197457A40(0, ObjectType, *(&v44 + 1));
    }

    if (!v14)
    {
      goto LABEL_34;
    }

    PersistentModel.persistentModelID.getter(ObjectType, *(&v44 + 1), &v46);
    if (v47)
    {
      if (v47 != 1)
      {
        sub_1974028C8(v46, 2);
LABEL_34:
        swift_unknownObjectRelease_n();
        v2 = v38;
        v7 = v39;
        goto LABEL_35;
      }

      v20 = *(v46 + 33);
      sub_1974028C8(v46, 1);
      if (v20)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = v46;
      v22 = [v46 isTemporaryID];
      sub_1974028C8(v21, 0);
      if (v22)
      {
        goto LABEL_34;
      }
    }

    sub_1974A7F6C(0, ObjectType, *(&v44 + 1));
    sub_1974A7FC4(0, ObjectType, *(&v44 + 1));
    swift_beginAccess();
    sub_1974580E0(v44, *(&v44 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v44, *(&v44 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197458088(0, ObjectType, *(&v44 + 1));
    sub_1974556E8(0, ObjectType, *(&v44 + 1));
    swift_beginAccess();
    sub_1974580E0(v44, *(&v44 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v44, *(&v44 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432658(v44, ObjectType, *(&v44 + 1));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_197442AD4(0, *(v35 + 2) + 1, 1, v35);
    }

    v24 = *(v35 + 2);
    v23 = *(v35 + 3);
    v2 = v38;
    v7 = v39;
    if (v24 >= v23 >> 1)
    {
      v35 = sub_197442AD4((v23 > 1), v24 + 1, 1, v35);
    }

    swift_unknownObjectRelease();
    *(v35 + 2) = v24 + 1;
    *&v35[16 * v24 + 32] = v44;
LABEL_35:
    if (v37 == v11)
    {
      break;
    }

    ++v11;
    v12 += 2;
    if (v11 >= *(v36 + 16))
    {
      goto LABEL_48;
    }
  }

  v25 = *(v43 + 184);
  v4 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v4)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v43 + 184) = v26;
  if (*(v35 + 2))
  {
    swift_beginAccess();
    v27 = *(v43 + 40);
    if (v27)
    {
      v28 = type metadata accessor for ModelContext._UndoModifiedDeletedList();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56024_UndoModifiedDeletedList__deletedModifiedObjects] = v35;
      v45.receiver = v29;
      v45.super_class = v28;
      v30 = v27;

      v31 = objc_msgSendSuper2(&v45, sel_init);
      [v30 registerUndoWithTarget:v43 selector:sel__undoDeletionsMovedToUpdates_ object:v31];
    }

    v2 = sub_1974F9648(v35);

    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_43:
      v32 = MEMORY[0x1E69E7CD0];
      goto LABEL_44;
    }

LABEL_54:
    if (!sub_1975220EC())
    {
      goto LABEL_43;
    }

    sub_1974FA0B4(MEMORY[0x1E69E7CC0]);
    v32 = v34;
LABEL_44:
    sub_197443A28(v2, MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], v32, MEMORY[0x1E69E7CD0], 0);
  }
}

uint64_t sub_1974B46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_getObjectType();

  return sub_197456F2C(a1, a2, a4, v11, ObjectType, a5, a3);
}

void sub_1974B477C(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v5 = v1;
  *(v1 + 184) = v4;
  v6 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_20;
  }

  v25 = v7 - 1;
  v8 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);

  v9 = 0;
  v24 = v6;
  v10 = (v6 + 40);
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    if (v8)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v13 = *(v8 + 8 * v9 + 32);
    }

    else
    {
      v13 = 0;
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    if (PersistentModel.modelContext.getter(ObjectType, v12))
    {

      v15 = v11;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      PersistentModel.persistentModelID.getter(ObjectType, v12, &v28);
      v17 = v28;
      v18 = v5;
      v19 = v29;
      v26 = v28;
      v27 = v29;
      v15 = sub_1974309B4(&v26);
      v12 = v20;
      swift_unknownObjectRelease();
      v21 = v19;
      v5 = v18;
      sub_1974028C8(v17, v21);
      if (v13)
      {
LABEL_10:
        v16 = swift_getObjectType();
        sub_197432658(v15, v16, v12);
        sub_1974A6264(v13, v16, v12);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_13:
    if (v25 == v9)
    {
      goto LABEL_16;
    }

    ++v9;
    v10 += 2;
  }

  while (v9 < *(v24 + 16));
  __break(1u);
LABEL_16:

  v22 = *(v5 + 184);
  v3 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v3)
  {
    goto LABEL_21;
  }

  *(v5 + 184) = v23;
}

void sub_1974B4990(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v1 + 184) = v4;
  v5 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots);
  v26 = *(a1 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  v6 = *(v26 + 16);

  v25 = v6;
  if (v6)
  {
    v7 = 0;
    v23 = v5;
    v24 = v5 + 32;
    v8 = (v26 + 40);
    while (v7 < *(v26 + 16))
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain_n();
      if (PersistentModel.modelContext.getter(ObjectType, v11))
      {

        v13 = v10;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        PersistentModel.persistentModelID.getter(ObjectType, v11, &v29);
        v14 = v29;
        v15 = v30;
        v27 = v29;
        v28 = v30;
        v13 = sub_1974309B4(&v27);
        v11 = v16;
        swift_unknownObjectRelease();
        sub_1974028C8(v14, v15);
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_16;
      }

      v17 = *(v24 + 8 * v7);
      if (v17)
      {
        v18 = swift_getObjectType();

        sub_1974A6118(v18, v11);
        sub_197442F3C(v19, v20, v18, v11);
        v5 = v23;
        swift_unknownObjectRelease();
        sub_1974A6264(v17, v18, v11);
      }

      ++v7;
      v9 = swift_getObjectType();
      sub_1974B7028(v13, v9, v11);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v8 += 2;
      if (v25 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_13:

  v21 = *(v1 + 184);
  v3 = __OFSUB__(v21, 1);
  v22 = v21 - 1;
  if (!v3)
  {
    *(v1 + 184) = v22;
    return;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1974B4BD0(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56024_UndoModifiedDeletedList__deletedModifiedObjects);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = swift_unknownObjectRetain();
      sub_1974B7028(v7, ObjectType, v5);
      result = swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1974B4C84(uint64_t a1)
{
  sub_19743FB78(0);
  v3 = *(a1 + 16);
  if (!v3)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  sub_197404860(a1 + 32, v19);
  sub_1974C179C(0, &qword_1ED7C9B88, 0x1E696AD98);
  swift_dynamicCast();
  v4 = *(v1 + 176);
  if (v4 != [v18 intValue])
  {

    return;
  }

  if (v3 == 1)
  {
    goto LABEL_27;
  }

  sub_197404860(a1 + 64, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
  swift_dynamicCast();
  swift_beginAccess();
  v5 = *(v1 + 88);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v8)
  {
LABEL_13:
    v12 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = swift_unknownObjectRetain();
    if ((sub_197473494(v15, v14, v18) & 1) == 0)
    {
      ObjectType = swift_getObjectType();
      sub_197442A5C(0, ObjectType, v14);
      swift_beginAccess();
      sub_1974580E0(v13, v14);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    v8 &= v8 - 1;
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  *(v1 + 180) = 0;
  swift_beginAccess();
  if (*(*(v1 + 72) + 16) || (swift_beginAccess(), *(*(v1 + 80) + 16)) || (swift_beginAccess(), *(*(v1 + 104) + 16)) || (swift_beginAccess(), *(*(v1 + 112) + 16)) || *(*(v1 + 88) + 16))
  {
    v17 = 1;
    goto LABEL_22;
  }

LABEL_25:
  swift_beginAccess();
  v17 = *(*(v1 + 96) + 16) != 0;
LABEL_22:
  *(v1 + 48) = v17;
}

uint64_t sub_1974B5018(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = *(v1 + 184);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (!v3)
    {
      v5 = result;
      *(v1 + 184) = v4;
      *(v1 + 61) = 1;
      v6 = MEMORY[0x1E69E7CD0];
      v15 = MEMORY[0x1E69E7CD0];

      swift_beginAccess();
      v7 = 0;
      while (1)
      {
        *(v1 + 112) = v6;

        sub_1974AE2B4(v5);
        v8 = *(v5 + 16);

        if (v7 >= 50)
        {
          v9 = *(v1 + 112);
          v10 = v15;

          sub_1974B5168(v15, v9);
          v12 = v11;

          if (v12)
          {
            goto LABEL_11;
          }

          v7 = 0;
          if (v8 <= 0)
          {
LABEL_10:
            v10 = v15;
LABEL_11:
            swift_beginAccess();
            *(v1 + 112) = v10;

            *(v1 + 61) = 0;
            v13 = *(v1 + 184);
            v3 = __OFSUB__(v13, 1);
            v14 = v13 - 1;
            if (!v3)
            {
              *(v1 + 184) = v14;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }
        }

        else
        {
          ++v7;
          if (v8 <= 0)
          {
            goto LABEL_10;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

void sub_1974B5168(uint64_t a1, uint64_t a2)
{
  v99 = sub_1975212CC();
  MEMORY[0x1EEE9AC00](v99, v4);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v7 = a2 + 56;
    v8 = 1 << *(a2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a2 + 56);
    v11 = (v8 + 63) >> 6;
    v104 = a1 + 56;
    v97 = (v5 + 8);

    v12 = 0;
    v102 = a1;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_6:
    while (2)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (!v10)
      {
        continue;
      }

      break;
    }

    v12 = v13;
    if (!*(a1 + 16))
    {
LABEL_102:

      return;
    }

LABEL_12:
    v14 = (*(a2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v14;
    v15 = v14[1];
    sub_197522A5C();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v107 = ObjectType;
    v108 = v15;
    v101 = v16;
    PersistentModel.persistentModelID.getter(ObjectType, v15, &v109);
    v18 = v109;
    v96 = a2;
    v95 = v7;
    v94 = v11;
    v93 = v12;
    if (v110)
    {
      if (v110 == 1)
      {
        MEMORY[0x19A8E1190](1);
        sub_1974028EC(v18, 1);
        sub_197452CB8(&v111);
        sub_1974028C8(v18, 1);
        sub_1974028C8(v18, 1);
      }

      else
      {
        MEMORY[0x19A8E1190](2);
        sub_1974028EC(v18, 2);
        sub_19750A470();
        sub_19752180C();

        sub_19750A588();
        sub_19752180C();
        sub_1974028C8(v18, 2);
        sub_1974028C8(v18, 2);
      }
    }

    else
    {
      MEMORY[0x19A8E1190](0);
      sub_1974028EC(v18, 0);
      sub_197521F4C();
      sub_1974028C8(v18, 0);
      sub_1974028C8(v18, 0);
    }

    v19 = sub_197522A9C();
    v20 = -1 << *(a1 + 32);
    v21 = v19 & ~v20;
    if (((*(v104 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_101:
      swift_unknownObjectRelease();
      goto LABEL_102;
    }

    v92 = (v10 - 1) & v10;
    v103 = ~v20;
    while (1)
    {
      v22 = *(*(a1 + 48) + 16 * v21 + 8);
      v23 = swift_getObjectType();
      swift_unknownObjectRetain();
      v105 = v23;
      v106 = v22;
      PersistentModel.persistentModelID.getter(v23, v22, &v111);
      v24 = v111;
      v25 = v112;
      PersistentModel.persistentModelID.getter(v107, v108, &v109);
      v26 = v109;
      v27 = v110;
      if (!v25)
      {
        if (!v110)
        {
          sub_1974C179C(0, &qword_1ED7C8630, 0x1E69E58C0);
          v53 = v24;
          v54 = sub_197521F3C();
          sub_1974028C8(v26, 0);
          v55 = v53;
          v56 = 0;
LABEL_56:
          sub_1974028C8(v55, v56);
          if ((v54 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_92;
        }

        type metadata accessor for PersistentIdentifierImplementation();
        v32 = swift_allocObject();
        *(v32 + 40) = 0;
        *(v32 + 48) = 0;
        v33 = [v24 persistentStore];
        if (v33)
        {
          v100 = v24;
          v34 = v33;
          v35 = [v33 identifier];

          if (v35)
          {
            v36 = sub_1975217BC();
            v38 = v37;
          }

          else
          {
            v36 = 0;
            v38 = 0;
          }

          v24 = v100;
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        *(v32 + 16) = v36;
        *(v32 + 24) = v38;
        *(v32 + 33) = [v24 isTemporaryID];
        *(v32 + 32) = 1;
        v72 = v24;
        v73 = [v24 URIRepresentation];
        v74 = v98;
        sub_19752127C();

        v75 = sub_19752123C();
        v77 = v76;
        (*v97)(v74, v99);
        *(v32 + 56) = v75;
        *(v32 + 64) = v77;
        v78 = [v72 entityName];
        v79 = sub_1975217BC();
        v81 = v80;

        v24 = v72;
        *(v32 + 72) = v79;
        *(v32 + 80) = v81;
        goto LABEL_71;
      }

      if (v25 != 1)
      {
        break;
      }

      if (v110 != 1)
      {
        sub_1974028EC(v24, 1);
        v32 = v24;
        if (!v27)
        {
          goto LABEL_50;
        }

LABEL_71:
        if (v27 == 1)
        {
          sub_1974028EC(v26, 1);
          v44 = v26;
        }

        else
        {
          type metadata accessor for PersistentIdentifierImplementation();
          v44 = swift_allocObject();
          *(v44 + 40) = 0;
          *(v44 + 48) = 0;
          *(v44 + 56) = sub_19750A470();
          *(v44 + 64) = v82;
          *(v44 + 72) = sub_19750A588();
          *(v44 + 80) = v83;
          *(v44 + 16) = 0;
          *(v44 + 24) = 0;
          *(v44 + 32) = 256;
        }

        a1 = v102;
        goto LABEL_75;
      }

      v28 = v24[7] == v109[7] && v24[8] == v109[8];
      if (!v28 && (sub_19752282C() & 1) == 0 || (v24[9] == v26[9] ? (v29 = v24[10] == v26[10]) : (v29 = 0), !v29 && (sub_19752282C() & 1) == 0))
      {
LABEL_60:
        LOBYTE(v27) = 1;
        LOBYTE(v25) = 1;
        goto LABEL_20;
      }

      v30 = v24[3];
      v31 = v26[3];
      if (v30)
      {
        if (!v31)
        {
          goto LABEL_60;
        }

        if (v24[2] == v26[2] && v30 == v31)
        {
          sub_1974028C8(v26, 1);
          sub_1974028C8(v24, 1);
          goto LABEL_92;
        }

        v90 = v24;
        v54 = sub_19752282C();
        sub_1974028C8(v26, 1);
        v55 = v90;
        v56 = 1;
        goto LABEL_56;
      }

      sub_1974028C8(v26, 1);
      sub_1974028C8(v24, 1);
      if (v31)
      {
        goto LABEL_21;
      }

LABEL_92:
      v88 = PersistentModel.modelContext.getter(v105, v106);
      v89 = PersistentModel.modelContext.getter(v107, v108);
      swift_unknownObjectRelease();
      if (!v88)
      {
        if (!v89)
        {
LABEL_99:
          swift_unknownObjectRelease();
          a2 = v96;
          v7 = v95;
          v11 = v94;
          v10 = v92;
          v12 = v93;
          if (!v92)
          {
            goto LABEL_6;
          }

LABEL_11:
          if (!*(a1 + 16))
          {
            goto LABEL_102;
          }

          goto LABEL_12;
        }

LABEL_97:

        goto LABEL_22;
      }

      if (!v89)
      {
        goto LABEL_97;
      }

      if (v88 == v89)
      {
        goto LABEL_99;
      }

LABEL_22:
      v21 = (v21 + 1) & v103;
      if (((*(v104 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    if (v110 == 2)
    {
      v39 = v24;
      v40 = sub_19750A470();
      v42 = v41;
      if (v40 == sub_19750A470() && v42 == v43)
      {
      }

      else
      {
        v66 = sub_19752282C();

        if ((v66 & 1) == 0)
        {
          LOBYTE(v27) = 2;
          LOBYTE(v25) = 2;
          v24 = v39;
          a1 = v102;
          goto LABEL_20;
        }
      }

      v67 = sub_19750A588();
      v69 = v68;
      if (v67 == sub_19750A588() && v69 == v70)
      {

        sub_1974028C8(v26, 2);
        sub_1974028C8(v39, 2);
        a1 = v102;
      }

      else
      {
        v71 = sub_19752282C();

        sub_1974028C8(v26, 2);
        sub_1974028C8(v39, 2);
        a1 = v102;
        if ((v71 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_92;
    }

    type metadata accessor for PersistentIdentifierImplementation();
    v32 = swift_allocObject();
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = sub_19750A470();
    *(v32 + 64) = v51;
    *(v32 + 72) = sub_19750A588();
    *(v32 + 80) = v52;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 256;
    if (v27)
    {
      goto LABEL_71;
    }

LABEL_50:
    v100 = v24;
    type metadata accessor for PersistentIdentifierImplementation();
    v44 = swift_allocObject();
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    v45 = [v26 persistentStore];
    if (v45 && (v46 = v45, v47 = [v45 identifier], v46, v47))
    {
      v48 = sub_1975217BC();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    *(v44 + 16) = v48;
    *(v44 + 24) = v50;
    *(v44 + 33) = [v26 isTemporaryID];
    *(v44 + 32) = 1;
    v57 = [v26 URIRepresentation];
    v58 = v98;
    sub_19752127C();

    v59 = sub_19752123C();
    v61 = v60;
    (*v97)(v58, v99);
    *(v44 + 56) = v59;
    *(v44 + 64) = v61;
    v62 = [v26 entityName];
    v63 = sub_1975217BC();
    v65 = v64;

    *(v44 + 72) = v63;
    *(v44 + 80) = v65;
    a1 = v102;
    v24 = v100;
LABEL_75:
    if ((*(v32 + 56) != *(v44 + 56) || *(v32 + 64) != *(v44 + 64)) && (sub_19752282C() & 1) == 0 || (*(v32 + 72) != *(v44 + 72) || *(v32 + 80) != *(v44 + 80)) && (sub_19752282C() & 1) == 0)
    {
LABEL_19:

LABEL_20:
      sub_1974028C8(v26, v27);
      sub_1974028C8(v24, v25);
LABEL_21:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    v84 = *(v32 + 24);
    v85 = *(v44 + 24);
    if (v84)
    {
      if (!v85)
      {
        goto LABEL_19;
      }

      if (*(v32 + 16) == *(v44 + 16) && v84 == v85)
      {

        sub_1974028C8(v26, v27);
        sub_1974028C8(v24, v25);
      }

      else
      {
        v86 = v24;
        v87 = sub_19752282C();

        sub_1974028C8(v26, v27);
        sub_1974028C8(v86, v25);
        if ((v87 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {

      sub_1974028C8(v26, v27);
      sub_1974028C8(v24, v25);
      if (v85)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_92;
  }
}

uint64_t sub_1974B5D4C()
{
  sub_1974433A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1974B5D80(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *a1;
  v7 = *a1;
  ObjectType = swift_getObjectType();
  sub_1974A7FC4(0, ObjectType, *(&v19 + 1));
  swift_beginAccess();
  v9 = *(a2 + 80);

  v10 = sub_197473494(v7, *(&v19 + 1), v9);

  if (v10)
  {
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974556E8(0, ObjectType, *(&v19 + 1));
    result = sub_1974A7EA0(ObjectType, *(&v19 + 1));
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1974580E0(v7, *(&v19 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197432360(0, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (sub_197442A30(ObjectType, *(&v19 + 1)))
    {
      swift_beginAccess();
      v12 = sub_1974580E0(v7, *(&v19 + 1));
      swift_endAccess();
      if (!v12)
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000014, 0x80000001975279A0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](0xD000000000000087, 0x80000001975279C0);
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v13 = v4;
      swift_unknownObjectRelease();
      sub_197458088(0, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
    }

    else
    {
      v13 = v4;
      if (sub_19745805C(ObjectType, *(&v19 + 1)))
      {
        swift_beginAccess();
        sub_1974580E0(v7, *(&v19 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1974327FC(v20, v7, *(&v19 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_197442A5C(0, ObjectType, *(&v19 + 1));
      }

      sub_1974A7F6C(1, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    v14 = *a4;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = a4;
    *a4 = v14;
    v20[6] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_197442AD4(0, *(v14 + 2) + 1, 1, v14);
      *a4 = v14;
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = sub_197442AD4((v17 > 1), v18 + 1, 1, v14);
      *v16 = v14;
    }

    *(v14 + 2) = v18 + 1;
    *&v14[16 * v18 + 32] = v19;
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432360(0, ObjectType, *(&v19 + 1));
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v20, v7, *(&v19 + 1));
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1974B6340(uint64_t a1, char a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(a1 + 48) + ((v10 << 10) | (16 * v11)) + 8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_197457A40(1, ObjectType, v12);
      swift_unknownObjectRelease();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
LABEL_19:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v21 = *(*(a1 + 48) + ((v19 << 10) | (16 * v20)) + 8);
    v22 = swift_unknownObjectRetain();
    sub_1974B6940(v22, v21, a2 & 1, 1);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v4 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_19;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1974B651C(char a1)
{
  v19 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  if (*(v1[14] + 16))
  {

    sub_1974AE3E0(v3);
  }

  swift_beginAccess();
  if (*(v1[12] + 16))
  {

    sub_1974AE500(v4);
  }

  v5 = v1[15];
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1975220EC();

    if (v6 < 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v5 + 16) >= 1)
  {
LABEL_7:

    sub_1974C0170(v7, v1);
  }

LABEL_8:
  result = sub_1974B5018(v19);
  if (a1)
  {
    v9 = 0;
    v10 = v1[14];
    v13 = *(v10 + 56);
    v11 = v10 + 56;
    v12 = v13;
    v14 = 1 << *(v11 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
LABEL_12:
      v16 &= v16 - 1;
    }

    while (1)
    {
      v18 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        goto LABEL_18;
      }

      v16 = *(v11 + 8 * v18);
      ++v9;
      if (v16)
      {
        v9 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return 1;
  }

  return result;
}

void sub_1974B66EC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if ([a1 object])
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1974050A8(v12, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_12;
  }

  sub_1974C179C(0, &qword_1EAF2B910, 0x1E696AFC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *&v12[0] = 0;
    *(&v12[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197527420);
    v5 = [a1 description];
    v6 = sub_1975217BC();
    v8 = v7;

    MEMORY[0x19A8DFF80](v6, v8);

    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_8:
  if ((*(v1 + 60) & 1) == 0)
  {
    sub_19743FB78(0);
  }
}

uint64_t sub_1974B68DC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_1974B6940(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v39);
  v15 = v39;
  v16 = BYTE8(v39);
  if (a4)
  {
    v39 = xmmword_19752EA60;
    v40 = 0;
    v41 = 0;
    swift_beginAccess();
    sub_1974028EC(v15, v16);
    sub_197433D4C(&v39, v15, v16);
    swift_endAccess();
  }

  sub_197452A84(0, ObjectType, a2);
  v17 = sub_197432B8C(ObjectType, a2);
  sub_197433EE8(v17 | 0x80080, ObjectType, a2);
  swift_unknownObjectRetain();
  if (sub_19745805C(ObjectType, a2) & 1) != 0 || (sub_1974A8048(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (sub_197442A30(ObjectType, a2) & 1) != 0 || (sub_1974A801C(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (sub_19744377C(ObjectType, a2) & 1) != 0 || (sub_1974412B4(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  sub_1974A7F38(ObjectType, a2);
  sub_1974A4718(0, 0, ObjectType, a2);
  sub_197442F3C(0, 0, ObjectType, a2);
  if ((a3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v16)
  {
    if (![v15 isTemporaryID])
    {
      v25 = [v15 storeIdentifier];
      v19 = sub_1975217BC();
      v18 = v26;

      v20 = *(v5 + 16);
      if (!v20)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

LABEL_23:
    sub_1974028C8(v15, v16);
    swift_unknownObjectRelease();
    return;
  }

  if (v16 != 1)
  {
    swift_unknownObjectRelease();
    v23 = v15;
    v24 = 2;
    goto LABEL_25;
  }

  if (*(v15 + 33))
  {
    goto LABEL_23;
  }

  v18 = *(v15 + 24);
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = *(v15 + 16);

  v20 = *(v5 + 16);
  if (!v20)
  {
LABEL_18:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      goto LABEL_29;
    }

    __break(1u);
LABEL_41:
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000004FLL, 0x80000001975273D0);
    v44 = v15;
    v45 = 1;
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_28:
  v22 = v20;
LABEL_29:
  swift_beginAccess();
  v27 = *(v22 + 56);

  if (!*(v27 + 16))
  {
    swift_unknownObjectRelease();
    sub_1974028C8(v15, v16);

LABEL_36:

    return;
  }

  sub_1973F4028(v19, v18);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    swift_unknownObjectRelease();
    sub_1974028C8(v15, v16);
    goto LABEL_36;
  }

  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    v32 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v33 = sub_197404E70(v5 + v32, v13);
    v34 = *(v31 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
    v36 = MEMORY[0x1EEE9AC00](v33, v35);
    MEMORY[0x1EEE9AC00](v36, v37);

    os_unfair_lock_lock(v34 + 4);
    sub_1974C1DD8(&v42);
    os_unfair_lock_unlock(v34 + 4);
    v38 = v42;

    if (v38)
    {
      v42 = v15;
      v43 = v16;
      sub_19746C460(&v42);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_19740BE74(v13, type metadata accessor for EditingState);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v23 = v15;
  v24 = v16;
LABEL_25:
  sub_1974028C8(v23, v24);
}

uint64_t sub_1974B7028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_197407130();
  result = PersistentModel.modelContext.getter(a2, a3);
  if (result)
  {
    if (result == v3)
    {
      sub_197440AC4();
      sub_1974A7FC4(1, a2, a3);
      sub_197440D38(a1, a2, a3);
      *(v3 + 50) = 1;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(&v11, a1, a3);
      swift_endAccess();
      swift_unknownObjectRelease();
      if ((*(v3 + 58) & 1) == 0 && *(v3 + 59) != 1)
      {
        swift_beginAccess();
        v9 = *(v3 + 40);
        if (v9)
        {
          v10 = v9;
          if ([v10 groupsByEvent])
          {
            type metadata accessor for ModelContext(0);
            sub_197521DBC();
          }
        }

        *(v4 + 58) = 1;
      }

      *(v4 + 48) = 1;
      sub_1974A8074(a2, a3);
    }

    else
    {
    }
  }

  return result;
}

void sub_1974B71DC()
{
  if (*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay);
    v2 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME);
    v3 = v2 * 0.5;
    if (v1 == 0.0)
    {
      *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v3;
      sub_1974B72B4(v3);
    }

    else
    {
      v4 = v2 * 0.25;
      if (v1 == v3)
      {
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v4;
        sub_1974B72B4(v2 * 0.25);
      }

      else if (v1 == v4)
      {
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v2 * 0.125;
        sub_1974B72B4(v2 * 0.125);
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME);
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v2;
        sub_1974B72B4(v5);
      }
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
    sub_1974B72B4(0.0);
  }
}

void sub_1974B72B4(double a1)
{
  if (a1 != 0.0 && *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) > a1)
  {
    v5 = objc_opt_self();
    aBlock[4] = sub_1974C1730;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974B7418;
    aBlock[3] = &block_descriptor_3;
    v6 = _Block_copy(aBlock);

    v7 = [v5 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
    _Block_release(v6);
  }

  else
  {
    v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
    swift_beginAccess();
    if (*(v1 + v3) == 1 && *(v1 + 48) == 1)
    {
      *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      sub_19740FF68();
    }
  }
}

void sub_1974B7418(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1974B7514(void (*a1)(void))
{
  v4 = MEMORY[0x19A8E1370]();
  a1();
  if (!v2 && *(v1 + 48) == 1)
  {
    sub_19740FF68();
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1974B7594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 24);
  v7 = swift_checkMetadataState();
  v6(&v21, v7, AssociatedConformanceWitness);
  v8 = v21;
  v9 = v22;
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_197403C30(v8, v9);
    if (v13)
    {
      sub_19742FE50(*(v11 + 56) + 32 * v12, &v18);
      sub_1974028C8(v8, v9);

      v14 = *(&v18 + 1) != 1;
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  sub_1974028C8(v8, v9);
  v14 = 0;
  v18 = xmmword_19752EA60;
  v19 = 0;
  v20 = 0;
LABEL_7:
  if (!v14)
  {
    return sub_1974050A8(&v18, &qword_1EAF2B640, &unk_19752F160);
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = *(&v18 + 1);
  result = sub_1974050A8(&v18, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    sub_1974B6940(Strong, v17, 1, 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1974B7780(void *a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(*a1 + 88) + 24))(&v12, *(*a1 + 80));
  v4 = v12;
  v5 = v13;
  v6 = a1[2];
  if (*(v6 + 16))
  {
    v7 = sub_197403C30(v12, v13);
    if (v8)
    {
      v9 = *(v6 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      sub_1974028EC(*v9, v11);
      sub_1974028C8(v4, v5);
      v4 = v10;
      v5 = v11;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t sub_1974B786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

unint64_t ModelContext.NotificationKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6164696C61766E69;
  v3 = 0x6465747265736E69;
  v4 = 0x64657461647075;
  if (v1 != 3)
  {
    v4 = 0x646574656C6564;
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

uint64_t sub_1974B79D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v29 = a1;
  v30 = a4;
  v31 = a3;
  Descriptor = type metadata accessor for FetchDescriptor(0, a6, a7, a4);
  v10 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest(0, a6, a7, v18);
  v19 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request, v20);
  v22 = &v26 - v21;
  sub_197407130();
  v23 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_197404E70(v7 + v23, v17);
  v24 = v29;
  (*(v10 + 16))(v13, v29, Descriptor);
  sub_197407438(v17, v13, a6, a7, v22);
  v34 = a6;
  v35 = a7;
  v36 = v22;
  v37 = v7;
  v38 = v24;
  v39 = v30;
  v40 = v32;
  v41 = v31;
  sub_1974072C4(sub_1974C0B50, v33, a6, a7);
  return (*(v19 + 8))(v22, Request);
}

void sub_1974B7C2C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a5;
  v53 = a7;
  v54 = a8;
  v64 = a6;
  v67 = a4;
  v61 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v15 = *(v66 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v18 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v65 = &v51 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = a10;
  v69 = AssociatedTypeWitness;
  v70 = a12;
  v71 = AssociatedConformanceWitness;
  Result = type metadata accessor for DataStoreFetchResult(0, &v68);
  v57 = *(Result - 8);
  MEMORY[0x1EEE9AC00](Result, v22);
  v68 = a2;
  v69 = v61;
  v24 = &v51 - v23;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v25 = v72;
  v26 = *(a13 + 80);
  v27 = v67;
  v67 = a10;
  v28 = v62;
  v26(v27, a10, a12, a11, a13);
  if (v28)
  {
    swift_unknownObjectRelease();
    return;
  }

  v52 = v15;
  v60 = a11;
  v61 = a12;
  v56 = v25;
  v68 = sub_1975215CC();
  v29 = *(Result + 52);
  v62 = v24;
  v30 = *&v24[v29];

  if (sub_197521A5C())
  {
    v31 = 0;
    v32 = v66;
    v58 = a13;
    v59 = (v66 + 16);
    v33 = (v66 + 32);
    v34 = (v66 + 8);
    do
    {
      v35 = sub_197521A3C();
      sub_1975219EC();
      if (v35)
      {
        v36 = v65;
        (*(v32 + 16))(v65, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, AssociatedTypeWitness);
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v41 = sub_19752222C();
        if (v52 != 8)
        {
          __break(1u);
          objc_autoreleasePoolPop(v35);
          __break(1u);
          return;
        }

        v72 = v41;
        v42 = v65;
        (*v59)(v65, &v72, AssociatedTypeWitness);
        v36 = v42;
        swift_unknownObjectRelease();
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      v38 = (*v33)(v18, v36, AssociatedTypeWitness);
      v39 = MEMORY[0x19A8E1370](v38);
      sub_1974B818C(v63, v18, v64, v62, &v68, v67, v60, v61, v58);
      objc_autoreleasePoolPop(v39);
      (*v34)(v18, AssociatedTypeWitness);
      ++v31;
      v40 = v37 == sub_197521A5C();
      v32 = v66;
    }

    while (!v40);
  }

  v43 = v68;

  if (sub_197521A5C())
  {
    v44 = 0;
    v45 = v53;
    while (1)
    {
      v46 = sub_197521A3C();
      sub_1975219EC();
      if (v46)
      {
        v47 = v43[v44 + 4];
        swift_unknownObjectRetain();
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v47 = sub_19752222C();
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      v49 = MEMORY[0x19A8E1370]();
      v45(v47);
      objc_autoreleasePoolPop(v49);
      swift_unknownObjectRelease();
      ++v44;
      v40 = v48 == sub_197521A5C();
      v50 = v57;
      if (v40)
      {
        goto LABEL_25;
      }
    }
  }

  v50 = v57;
LABEL_25:
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  (*(v50 + 8))(v62, Result);
}

uint64_t sub_1974B818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a3 + *(type metadata accessor for FetchDescriptor(0, a6, a8, a4) + 48));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[0] = a6;
  v18[1] = AssociatedTypeWitness;
  v18[2] = a8;
  v18[3] = AssociatedConformanceWitness;
  v16 = type metadata accessor for DataStoreFetchResult(0, v18);
  v18[0] = sub_197401480(a2, a6, v13, *(a4 + *(v16 + 56)), AssociatedTypeWitness, a6, AssociatedConformanceWitness, a8);
  sub_197521AAC();
  return sub_197521A7C();
}

uint64_t sub_1974B82B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v23);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm_0, a2, AssociatedTypeWitness);
  v22[0] = a7;
  v22[1] = AssociatedTypeWitness;
  v22[2] = a9;
  v22[3] = AssociatedConformanceWitness;
  v17 = type metadata accessor for DataStoreFetchResult(0, v22);
  sub_1974006D8(a7, v23, *(a3 + *(v17 + 56)), AssociatedTypeWitness, a7, AssociatedConformanceWitness, a9, v24);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v23);
  if (v21)
  {
    *a11 = v21;
  }

  else
  {
    sub_1973FFC48(v24, v22);
    swift_beginAccess();
    sub_1974028EC(a5, a6);
    v24[7] = a7;
    swift_getExtendedExistentialTypeMetadata();
    sub_197405108();
    sub_19752166C();
    sub_19752168C();
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  return result;
}

uint64_t sub_1974B84A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v121 = a3;
  v103 = sub_19752139C();
  v9 = sub_197521F5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v101 = &v100 - v12;
  v110 = a3;
  v105 = a4;
  Descriptor = type metadata accessor for FetchDescriptor(0, a3, a4, v13);
  MEMORY[0x1EEE9AC00](Descriptor, v14);
  v111 = &v100 - v16;
  v120.n128_u64[0] = MEMORY[0x1E69E7CD0];
  v17 = *(a2 + 16);
  v114 = v5;
  v100 = v18;
  v104 = v9;
  v102 = v10;
  if (v17)
  {
    v19 = (a2 + 40);
    v20 = MEMORY[0x1E69E7CC8];
    *&v15 = 136315394;
    v108 = v15;
    *&v15 = 136315138;
    v109 = v15;
    while (1)
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      if (*v19)
      {
        if (v22 != 1 || (v23 = v21[3]) == 0)
        {
          sub_1974028EC(*(v19 - 1), *v19);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v25 = sub_19752157C();
          __swift_project_value_buffer(v25, qword_1EAF33E50);
          sub_1974028EC(v21, v22);
          v26 = sub_19752155C();
          v27 = sub_197521DDC();
          sub_1974028C8(v21, v22);
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v116 = v20;
            v29 = v28;
            v30 = swift_slowAlloc();
            v115 = v17;
            v31 = v30;
            v119 = v30;
            *v29 = v109;
            v117 = v21;
            v118 = v22;
            sub_1974028EC(v21, v22);
            v32 = sub_1975217CC();
            v34 = sub_197462310(v32, v33, &v119);

            *(v29 + 4) = v34;
            v5 = v114;
            _os_log_impl(&dword_1973F2000, v26, v27, "cannot fulfill model without a store identifier:%s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v31);
            v35 = v31;
            v17 = v115;
            MEMORY[0x19A8E1B50](v35, -1, -1);
            v36 = v29;
            v20 = v116;
            MEMORY[0x19A8E1B50](v36, -1, -1);
            sub_1974028C8(v21, v22);
          }

          else
          {

            sub_1974028C8(v21, v22);
          }

          goto LABEL_4;
        }

        v115 = v17;
        v24 = v21[2];
        sub_1974028EC(v21, 1);
      }

      else
      {
        v115 = v17;
        sub_1974028EC(v21, 0);
        v37 = [v21 storeIdentifier];
        v24 = sub_1975217BC();
        v23 = v38;
      }

      v39 = *(v5 + 16);
      v116 = v20;
      if (v39)
      {
        Strong = v39;
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_57;
        }
      }

      v41 = Strong;
      swift_beginAccess();
      v42 = *(v41 + 56);

      if (!*(v42 + 16))
      {
        break;
      }

      v43 = sub_1973F4028(v24, v23);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_24;
      }

      v113 = *(*(v42 + 56) + 16 * v43);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v47 = (*(*(&v113 + 1) + 40))(ObjectType);
      v49 = v48;
      swift_unknownObjectRetain();
      v50 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v50;
      v112 = v47;
      v53 = sub_1973F4028(v47, v49);
      v54 = v50[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_55;
      }

      v57 = v52;
      if (v50[3] >= v56)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v56, isUniquelyReferenced_nonNull_native);
        v58 = sub_1973F4028(v112, v49);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_59;
        }

        v53 = v58;
      }

      v5 = v114;
      if (v57)
      {

        v20 = v117;
        *(v117[7] + 16 * v53) = v113;
        swift_unknownObjectRelease();
      }

      else
      {
        v67 = v117;
        v117[(v53 >> 6) + 8] |= 1 << v53;
        v68 = (v67[6] + 16 * v53);
        *v68 = v112;
        v68[1] = v49;
        *(v67[7] + 16 * v53) = v113;
        v69 = v67[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_56;
        }

        v20 = v67;
        v67[2] = v71;
      }

      sub_1974028EC(v21, v22);
      sub_19742AE44(&v117, v21, v22);
      swift_unknownObjectRelease();
      sub_1974028C8(v21, v22);
      sub_1974028C8(v117, v118);
LABEL_40:
      v17 = v115;
LABEL_4:
      v19 += 16;
      if (!--v17)
      {
        goto LABEL_42;
      }
    }

LABEL_24:

    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v60 = sub_19752157C();
    __swift_project_value_buffer(v60, qword_1EAF33E50);
    sub_1974028EC(v21, v22);

    v61 = sub_19752155C();
    v62 = sub_197521DDC();
    sub_1974028C8(v21, v22);

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *&v113 = swift_slowAlloc();
      v119 = v113;
      *v63 = v108;
      v117 = v21;
      v118 = v22;
      sub_1974028EC(v21, v22);
      v64 = sub_1975217CC();
      v66 = sub_197462310(v64, v65, &v119);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2080;
      if (!*(v5 + 16) && !swift_weakLoadStrong())
      {
        goto LABEL_58;
      }

      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
      v72 = sub_19752160C();
      v74 = v73;

      v75 = sub_197462310(v72, v74, &v119);

      *(v63 + 14) = v75;
      _os_log_impl(&dword_1973F2000, v61, v62, "data store not found for:%s in: %s", v63, 0x16u);
      v76 = v113;
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v76, -1, -1);
      MEMORY[0x19A8E1B50](v63, -1, -1);
      sub_1974028C8(v21, v22);

      v5 = v114;
    }

    else
    {

      sub_1974028C8(v21, v22);
    }

    v20 = v116;
    goto LABEL_40;
  }

  v20 = MEMORY[0x1E69E7CC8];
LABEL_42:
  v77 = v103;
  v78 = *(*(v103 - 8) + 56);
  v79 = v101;
  v78(v101, 1, 1, v103);
  v80 = v110;
  sub_197520C4C();
  v81 = sub_197521A1C();
  v82 = v111;
  v83 = v105;
  v84 = FetchDescriptor.init(predicate:sortBy:)(v79, v81, v80, v105, v111);
  v116 = &v100;
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v100 - 4) = v80;
  *(&v100 - 3) = v83;
  *(&v100 - 2) = &v120;
  sub_1975213AC();
  v78(v79, 0, 1, v77);
  (*(v102 + 40))(v82, v79, v104);
  v86 = Descriptor;
  *(v82 + *(Descriptor + 48)) = 0;
  *(v82 + *(v86 + 60)) = 0;
  v87 = v20 + 8;
  v88 = 1 << *(v20 + 32);
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & v20[8];
  v91 = (v88 + 63) >> 6;
  v92 = v20;

  v93 = 0;
  v94 = v106;
  if (v90)
  {
    while (1)
    {
      v95 = v93;
LABEL_49:
      v96 = *(v92[7] + ((v95 << 10) | (16 * __clz(__rbit64(v90)))) + 8);
      v97 = swift_getObjectType();
      v98 = swift_unknownObjectRetain();
      sub_1974B8FB8(v98, v111, v114, &v120, v110, v97, v83, v96);
      if (v94)
      {
        break;
      }

      v90 &= v90 - 1;
      swift_unknownObjectRelease();
      v93 = v95;
      if (!v90)
      {
        goto LABEL_46;
      }
    }

    swift_unknownObjectRelease();
LABEL_53:

    (*(v100 + 8))(v111, Descriptor);
  }

  else
  {
LABEL_46:
    while (1)
    {
      v95 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v95 >= v91)
      {
        goto LABEL_53;
      }

      v90 = v87[v95];
      ++v93;
      if (v90)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    result = sub_1975229CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974B8FB8(__n128 *a1, uint64_t a2, uint64_t a3, __n128 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a4;
  v121 = a1;
  v122 = a3;
  v118 = a2;
  v131[6] = a5;
  v13 = sub_19752139C();
  v106 = sub_197521F5C();
  v97 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106, v14);
  v105 = (&v91 - v15);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = sub_197521F5C();
  v94 = *(v100 - 8);
  v18 = MEMORY[0x1EEE9AC00](v100, v17);
  v102 = &v91 - v19;
  v93 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v99 = (&v91 - v21);
  v117 = a6;
  v22 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v131[0] = a5;
  v131[1] = AssociatedTypeWitness;
  v103 = AssociatedTypeWitness;
  v131[2] = a7;
  v131[3] = AssociatedConformanceWitness;
  v98 = AssociatedConformanceWitness;
  v101 = type metadata accessor for DataStoreFetchResult(0, v131);
  v92 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v24);
  v123 = &v91 - v25;
  v26 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v115 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest(0, a5, a7, v29);
  v30 = *(Request - 8);
  MEMORY[0x1EEE9AC00](Request, v31);
  v124 = &v91 - v32;
  v119 = a5;
  v120 = a7;
  Descriptor = type metadata accessor for FetchDescriptor(0, a5, a7, v33);
  v35 = *(Descriptor - 8);
  v37 = MEMORY[0x1EEE9AC00](Descriptor, v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v91 - v41;
  v43 = v118;
  swift_beginAccess();
  v96 = v35;
  v44 = *(v35 + 16);
  v116 = Descriptor;
  v114 = v35 + 16;
  v113 = v44;
  v44(v42, v43, Descriptor);
  v118 = a8;
  v111 = *(a8 + 80);
  v112 = (a8 + 80);
  v110 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v107 = (v30 + 8);
  v45 = (v97 + 16);
  v104 = (v13 - 8);
  v46 = (v97 + 8);
  v109 = v42;
  while (1)
  {
    v47 = v115;
    sub_197404E70(v110 + v122, v115);
    v113(v39, v42, v116);
    v48 = v124;
    v49 = v47;
    v50 = v119;
    v51 = v120;
    sub_197407438(v49, v39, v119, v120, v124);
    v52 = v22;
    (v111)(v48, v50, v51, v117, v118);
    if (!v22)
    {
      v60 = *&v123[*(v101 + 52)];

      v61 = v103;
      v62 = sub_197521A5C();
      v114 = sub_197405108();
      v46 = &v91;
      v130 = MEMORY[0x19A8DFD40](v62, &type metadata for PersistentIdentifier, v61);
      v128 = v60;
      MEMORY[0x1EEE9AC00](v130, v63);
      v55 = (&v91 - 4);
      v64 = v118;
      v65 = v117;
      *(&v91 - 6) = v119;
      *(&v91 - 5) = v65;
      *(&v91 - 4) = v120;
      *(&v91 - 3) = v64;
      v89 = &v130;
      sub_197521AAC();
      swift_getWitnessTable();
      sub_19752195C();

      v66 = v95;
      swift_beginAccess();
      v67 = v66->n128_u64[0];
      v68 = v66->n128_u64[0] + 56;
      v69 = 1 << *(v66->n128_u64[0] + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v66->n128_u64[0] + 56);
      v72 = (v69 + 63) >> 6;
      v112 = (v93 + 48);
      v111 = (v93 + 32);
      v110 = (v93 + 8);
      v106 = (v94 + 8);
      v93 = v64 + 40;
      v115 = v67;

      v73 = 0;
      *&v74 = 136315394;
      v91 = v74;
      v113 = v72;
      while (v71)
      {
        v57 = v73;
LABEL_20:
        v75 = *(v115 + 48) + ((v57 << 10) | (16 * __clz(__rbit64(v71))));
        v77 = *(v75 + 8);
        v71 &= v71 - 1;
        v126 = *v75;
        v76 = v126;
        v127 = v77;
        sub_1974028EC(v126, v77);
        sub_1974028EC(v76, v77);
        v78 = v102;
        v46 = v103;
        sub_19752167C();
        sub_1974028C8(v126, v127);
        if ((*v112)(v78, 1, v46) == 1)
        {
          (*v106)(v78, v100);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v79 = sub_19752157C();
          __swift_project_value_buffer(v79, qword_1EAF33E50);
          sub_1974028EC(v76, v77);
          v46 = v121;
          swift_unknownObjectRetain();
          v55 = sub_19752155C();
          v80 = sub_197521DDC();
          swift_unknownObjectRelease();
          sub_1974028C8(v76, v77);
          if (os_log_type_enabled(v55, v80))
          {
            v46 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v125 = v105;
            *v46 = v91;
            v81 = *(v118 + 40);
            v104 = v55;
            LODWORD(v97) = v80;
            v82 = v81(v117);
            v94 = sub_197462310(v82, v83, &v125);

            *(v46 + 4) = v94;
            *(v46 + 6) = 2080;
            v126 = v76;
            v127 = v77;
            sub_1974028EC(v76, v77);
            v84 = sub_1975217CC();
            v94 = sub_197462310(v84, v85, &v125);

            v95 = v46;
            *(v46 + 14) = v94;
            v86 = v104;
            _os_log_impl(&dword_1973F2000, v104, v97, "data store (%s) did not return a snapshot for: %s", v46, 0x16u);
            v55 = v105;
            swift_arrayDestroy();
            MEMORY[0x19A8E1B50](v55, -1, -1);
            MEMORY[0x19A8E1B50](v95, -1, -1);
            sub_1974028C8(v76, v77);
          }

          else
          {

            sub_1974028C8(v76, v77);
          }
        }

        else
        {
          v55 = v99;
          (*v111)(v99, v78, v46);
          sub_197401480(v55, v119, 0, *&v123[*(v101 + 56)], v46, v119, v98, v120);
          swift_unknownObjectRelease();
          sub_1974028C8(v76, v77);
          (*v110)(v55, v46);
        }

        v73 = v57;
        v48 = v124;
        v72 = v113;
      }

      while (1)
      {
        v57 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v57 >= v72)
        {
          (*v107)(v48, Request);

          (*(v92 + 8))(v123, v101);

          return (*(v96 + 8))(v109, v116);
        }

        v71 = *(v68 + 8 * v57);
        ++v73;
        if (v71)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_29:
      (*v46)(v55, v57);
      v128 = 0;
      v129 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v88 = (*(v118 + 40))(v117);
      MEMORY[0x19A8DFF80](v88);

      v90 = 0;
      v89 = 2773;
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    (*v107)(v48, Request);
    v126 = v22;
    v53 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast() || v130 != 1)
    {
      break;
    }

    v55 = v105;
    v42 = v109;
    v56 = v13;
    v57 = v106;
    (*v45)(v105, v109, v106);
    v58 = *(v56 - 8);
    if ((*(v58 + 48))(v55, 1, v56) == 1)
    {
      goto LABEL_29;
    }

    v59 = *v46;
    (*v46)(v55, v57);
    v59(v42, v57);
    (*(v58 + 56))(v42, 1, 1, v56);

    v22 = 0;
    v13 = v56;
  }

  return (*(v96 + 8))(v109, v116);
}

uint64_t sub_1974B9E14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {

    v17 = sub_197403C30(a2, a3);
    if (v18)
    {
      sub_19742FE50(*(v15 + 56) + 32 * v17, &v29);

      LOBYTE(v16) = *(&v29 + 1) != 1;
      if (v29)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v16) = 0;
  }

  v29 = xmmword_19752EA60;
  v30 = 0;
  LOBYTE(v31) = 0;
LABEL_7:
  if ((v16 & 1) == 0)
  {
    sub_1974050A8(&v29, &qword_1EAF2B640, &unk_19752F160);
    Strong = 0;
    goto LABEL_13;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = *(&v29 + 1);
  sub_1974050A8(&v29, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    *&v29 = Strong;
    *(&v29 + 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      Strong = v33;
    }

    else
    {
      Strong = 0;
    }
  }

LABEL_13:
  v23 = *(a4 + *(type metadata accessor for FetchDescriptor(0, a6, a8, v19) + 48)) != 1 || Strong == 0;
  if (v23 || (swift_unknownObjectRetain(), v24 = PersistentModel.hasChanges.getter(a6, a8), swift_unknownObjectRelease(), !v24))
  {
    v26 = type metadata accessor for _FullFutureBackingData(0, a6, a8, v22);
    *&v29 = a2;
    BYTE8(v29) = a3;

    sub_1974028EC(a2, a3);
    v27 = sub_197449BBC(a6, &v29, a1);
    if (Strong)
    {
      v31 = v26;
      WitnessTable = swift_getWitnessTable();
      *&v29 = v27;

      sub_1974C2050(&v29, a6, a8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v29);
    }

    else
    {
      _SD_set_faulting_backingdata_tsd(1);
      v31 = v26;
      WitnessTable = swift_getWitnessTable();
      *&v29 = v27;
      v28 = *(a8 + 48);

      Strong = v28(&v29, a6, a8);
      sub_19743371C(Strong, a6, a8);
    }

    v33 = Strong;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = Strong;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}