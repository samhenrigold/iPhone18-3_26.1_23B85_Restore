void sub_2380C60A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
  v10 = sub_23815551C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = *(v9 + 64);
    v36 = v2;
    v37 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    v38 = v6;
    v39 = v17;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v6 + 72);
      v42 = v21;
      v26 = v25 + v41 * v24;
      if (v4)
      {
        sub_2380C9188(v26, v8, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v40 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        sub_2380C90BC(v26, v8, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v40 = *(*(v9 + 56) + 8 * v24);
      }

      sub_23815568C();
      if (v8[1])
      {
        MEMORY[0x2383E9CD0](1);
        v6 = v38;
        sub_238154C5C();
      }

      else
      {
        MEMORY[0x2383E9CD0](0);
      }

      MEMORY[0x2383E9CD0](v8[2]);
      MEMORY[0x2383E9CD0](v8[3]);
      MEMORY[0x2383E9CD0](v8[4]);
      sub_238153A2C();
      sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
      sub_238154C4C();
      sub_2381537EC();
      sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
      sub_238154C4C();
      v27 = sub_2381556BC();
      v28 = -1 << *(v11 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_2380C9188(v8, *(v11 + 48) + v41 * v19, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v17 = v39;
      *(*(v11 + 56) + 8 * v19) = v40;
      ++*(v11 + 16);
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v37[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_37:
  *v3 = v11;
}

void sub_2380C6538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v35 = v4;
  v6 = sub_23815551C();
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
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = v21[1];
      v36 = *v21;
      v23 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_23815568C();
      MEMORY[0x2383E9CD0](v36);
      MEMORY[0x2383E9CD0](v22);
      MEMORY[0x2383E9CD0](v23);
      v25 = sub_2381556BC();
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
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v36;
      v16[1] = v22;
      v16[2] = v23;
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

void sub_2380C6804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
  v9 = sub_23815551C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 64);
    v43 = v2;
    v44 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v45 = v16;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v52 = (v15 - 1) & v15;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 48);
      v51 = *(v46 + 72);
      v26 = v25 + v51 * v24;
      v27 = 32 * v24;
      if (v4)
      {
        sub_2380C9188(v26, v7, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v49 = *(v28 + 8);
        v50 = v29;
        v48 = *(v28 + 16);
        v47 = *(v28 + 24);
      }

      else
      {
        sub_2380C90BC(v26, v7, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v30 = *(v8 + 56) + v27;
        v31 = *v30;
        v32 = *(v30 + 16);
        v33 = *(v30 + 24);
        v49 = *(v30 + 8);
        v50 = v31;
        v48 = v32;
        v47 = v33;
        sub_2380B3F10(v31, v49, v32, v33);
      }

      sub_23815568C();
      if (v7[1])
      {
        MEMORY[0x2383E9CD0](1);
        v16 = v45;
        sub_238154C5C();
      }

      else
      {
        MEMORY[0x2383E9CD0](0);
      }

      MEMORY[0x2383E9CD0](v7[2]);
      MEMORY[0x2383E9CD0](v7[3]);
      MEMORY[0x2383E9CD0](v7[4]);
      sub_238153A2C();
      sub_2380C8B98(&qword_27DEEC028, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAA8]);
      sub_238154C4C();
      sub_2381537EC();
      sub_2380C8B98(&qword_27DEEC030, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F0]);
      sub_238154C4C();
      v34 = sub_2381556BC();
      v35 = -1 << *(v10 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v17 + 8 * v37);
          if (v41 != -1)
          {
            v18 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_2380C9188(v7, *(v10 + 48) + v51 * v18, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v19 = *(v10 + 56) + 32 * v18;
      v20 = v49;
      *v19 = v50;
      *(v19 + 8) = v20;
      *(v19 + 16) = v48;
      *(v19 + 24) = v47;
      ++*(v10 + 16);
      v15 = v52;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v44[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_37;
    }

    v42 = 1 << *(v8 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v44, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v44 = -1 << v42;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
}

void sub_2380C6CE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v40 = v4;
  v6 = sub_23815551C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v41 = v23[2];
      v26 = v22 + 16 * v21;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v40 & 1) == 0)
      {
        sub_2380B3E18(v27, v28);
      }

      sub_23815568C();
      MEMORY[0x2383E9CD0](v24);
      MEMORY[0x2383E9CD0](v25);
      MEMORY[0x2383E9CD0](v41);
      v29 = sub_2381556BC();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v24;
      v16[1] = v25;
      v16[2] = v41;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v27;
      *(v17 + 8) = v28;
      ++*(v7 + 16);
      v5 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2380C6FCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2381536AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0C8, &qword_23815B600);
  v43 = v4;
  v10 = sub_23815551C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
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
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = v10 + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v6 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v45 = *v27;
        v48 = *(v27 + 8);
      }

      else
      {
        (*v40)(v47, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v45 = *v28;
        v48 = *(v28 + 8);
      }

      sub_2380C8B98(&qword_27DEEC0C0, MEMORY[0x277D54BD0], MEMORY[0x277D54BD8]);
      v29 = sub_238154C3C();
      v30 = -1 << *(v11 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v44)((*(v11 + 48) + v46 * v19), v47, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v45;
      *(v20 + 8) = v48;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_2380C73E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_2380E6CD8(a2, a3);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a4 & 1) == 0)
  {
    if (v19 < v17 || (a4 & 1) != 0)
    {
      sub_2380C4ECC(v17, a4 & 1);
      v12 = sub_2380E6CD8(a2, a3);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        v12 = sub_2381555FC();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8](v12, v24);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_2380E95BC();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v12);
    *(v23 + 8 * v12) = a1;

    goto _objc_release_x1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v25 = (v22[6] + 16 * v12);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v12) = a1;
  v26 = v22[2];
  v16 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_2380C755C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2380E6AE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2380E9A14();
      goto LABEL_7;
    }

    sub_2380C5C00(v17, a3 & 1, MEMORY[0x277CD9168], &unk_27DEEC090, &qword_23815B5D8);
    v28 = sub_2380E6AE8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2380C8768(v14, v11, a1, v20, MEMORY[0x277CD9168]);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_238152EBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_2380C7798(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DecorationIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2380E6DE4(a2);
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
      sub_2380E9728();
      goto LABEL_7;
    }

    sub_2380C5170(v16, a3 & 1);
    v23 = sub_2380E6DE4(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2380C90BC(a2, v10, type metadata accessor for DecorationIdentifier);
      return sub_2380C85C4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_2381555FC();
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
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for _DDNodeDecoration(0) - 8) + 72) * v13;

  return sub_2380C9124(a1, v21);
}

void sub_2380C7958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2380E6AE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_2380E9A3C();
    goto LABEL_7;
  }

  sub_2380C5840(v17, a3 & 1);
  v21 = sub_2380E6AE8(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_2381555FC();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_2380C86B0(v14, v11, v7, v20);
}

uint64_t sub_2380C7AF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2381527EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2380E6AE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2380E9CAC();
      goto LABEL_7;
    }

    sub_2380C5C00(v17, a3 & 1, MEMORY[0x277D54B88], &unk_27DEEC110, &unk_23815B6B0);
    v28 = sub_2380E6AE8(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2380C8768(v14, v11, a1, v20, MEMORY[0x277D54B88]);
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_23815364C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_2380C7D30(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2380E6968(a2);
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
      sub_2380EA02C();
      goto LABEL_7;
    }

    sub_2380C60A4(v16, a3 & 1);
    v20 = sub_2380E6968(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      v13 = v20;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2380C90BC(a2, v10, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      sub_2380C8864(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_2381555FC();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_2380C7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_2380E6BBC(a2, a3, a4);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 < v19 || (a5 & 1) != 0)
    {
      sub_2380C6538(v19, a5 & 1);
      v14 = sub_2380E6BBC(a2, a3, a4);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_16:
        sub_2381555FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      sub_2380EA26C();
      v14 = v22;
    }
  }

  v24 = *v7;
  if ((v20 & 1) == 0)
  {
    v24[(v14 >> 6) + 8] |= 1 << v14;
    v25 = (v24[6] + 24 * v14);
    *v25 = a2;
    v25[1] = a3;
    v25[2] = a4;
    *(v24[7] + 8 * v14) = a1;
    v26 = v24[2];
    v18 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v18)
    {
      v24[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  *(v24[7] + 8 * v14) = a1;
}

void sub_2380C8050(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, char a6)
{
  v7 = v6;
  v33 = a4;
  v32 = a1;
  v12 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_2380E6968(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_2380EA3E0();
      goto LABEL_9;
    }

    sub_2380C6804(v20, a6 & 1);
    v23 = sub_2380E6968(a5);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_2381555FC();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = v33;
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 32 * v17;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    v31 = *(v27 + 24);
    *v27 = v32;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    *(v27 + 24) = v25 & 1;

    sub_2380B3F78(v28, v29, v30, v31);
  }

  else
  {
    sub_2380C90BC(a5, v14, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
    sub_2380C8918(v17, v14, v32, a2, a3, v25 & 1, v26);
  }
}

void sub_2380C822C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, __n128 a7)
{
  v8 = v7;
  v15 = *v7;
  v16 = sub_2380E6BBC(a3, a4, a5);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 < v21 || (a6 & 1) != 0)
    {
      sub_2380C6CE4(v21, a6 & 1);
      v16 = sub_2380E6BBC(a3, a4, a5);
      if ((v22 & 1) != (v25 & 1))
      {
LABEL_16:
        sub_2381555FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v24 = v16;
      sub_2380EA66C();
      v16 = v24;
    }
  }

  v26 = *v8;
  if ((v22 & 1) == 0)
  {
    v26[(v16 >> 6) + 8] |= 1 << v16;
    v30 = (v26[6] + 24 * v16);
    *v30 = a3;
    v30[1] = a4;
    v30[2] = a5;
    v31 = v26[7] + 16 * v16;
    *v31 = a1;
    *(v31 + 8) = a2 & 1;
    v32 = v26[2];
    v20 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v20)
    {
      v26[2] = v33;
      return;
    }

    goto LABEL_15;
  }

  v27 = v26[7] + 16 * v16;
  v28 = *v27;
  v29 = *(v27 + 8);
  *v27 = a1;
  *(v27 + 8) = a2 & 1;

  sub_2380B3E3C(v28, v29);
}

uint64_t sub_2380C83D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v28 = a1;
  v29 = a2;
  v10 = sub_2381536AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_2380E7070(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_2380EAA74();
      goto LABEL_9;
    }

    sub_2380C6FCC(v19, a5 & 1);
    v22 = sub_2380E7070(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_2381555FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v6;
  if (v20)
  {
    v26 = (v25[7] + 24 * v16);
    *v26 = v28;
    v26[1] = v24;
    v26[2] = a3;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_2380C89F0(v16, v13, v28, v24, a3, v25);
  }
}

uint64_t sub_2380C85C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DecorationIdentifier(0);
  sub_2380C9188(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DecorationIdentifier);
  v10 = a4[7];
  v11 = type metadata accessor for _DDNodeDecoration(0);
  result = sub_2380C9188(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for _DDNodeDecoration);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2380C86B0(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2381527EC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_2380C8768(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_2381527EC();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v12 = a4[7];
  v13 = a5(0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a3, v13);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_2380C8864(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  result = sub_2380C9188(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_2380C8918(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  result = sub_2380C9188(a2, v14 + *(*(v15 - 8) + 72) * a1, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  v17 = a7[7] + 32 * a1;
  *v17 = a3;
  *(v17 + 8) = a4;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6 & 1;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_2380C89F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_2381536AC();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_2380C8AC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238088780;

  return sub_2380C1204(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2380C8B98(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380C8C34(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380C3FC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_53Tm()
{
  v1 = (type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  v6 = sub_238153A2C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_2381537EC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v9);
}

uint64_t sub_2380C8E68(uint64_t a1)
{
  v4 = *(type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238087150;

  return sub_2380C0220(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2380C8F60(uint64_t a1)
{
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2380C8FBC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_2381555CC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] != a2[3])
  {
    return 0;
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  if ((sub_238153A1C() & 1) == 0)
  {
    return 0;
  }

  return sub_2381537DC();
}

uint64_t sub_2380C90BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380C9124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_33Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7, v3);
}

uint64_t sub_2380C9244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380C1B70(a1, v4, v5, v6);
}

uint64_t sub_2380C92F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0E0, &qword_23815B628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380C9428()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7, v6);
}

uint64_t sub_2380C94F4(uint64_t a1)
{
  v4 = *(sub_2381527EC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_2380BEFBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2380C95FC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC120);
  __swift_project_value_buffer(v0, qword_27DEEC120);
  return sub_23815292C();
}

double sub_2380C967C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2380C9730()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

double sub_2380C97A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return result;
}

void sub_2380C981C(unint64_t a1)
{
  v125 = a1;
  v132 = *MEMORY[0x277D85DE8];
  v116 = sub_2381530DC();
  v115 = *(v116 - 8);
  v2 = MEMORY[0x28223BE20](v116);
  v118 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v117 = &v114 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x28223BE20](v5);
  v124 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1A0, &qword_23815B930);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v114 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v126 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v114 - v12;
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__animatingButtonTransition;
  LOBYTE(v130[0]) = 0;
  sub_238152A5C();
  v120 = v11;
  v123 = *(v11 + 32);
  v119 = v14;
  v123(v1 + v14, v13, v10);
  v122 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration;
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration) = 0;
  v15 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_nameFont;
  sub_2381541EC();
  v16 = *MEMORY[0x277CE0990];
  v17 = sub_2381541CC();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v9, v16, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  v19 = sub_23815422C();
  sub_238071284(v9, &qword_27DEEC1A0, &qword_23815B930);
  v121 = v15;
  *(v1 + v15) = v19;
  v20 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  *(v1 + v20) = sub_2381545FC();
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = 0;
  v21 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle;
  LOBYTE(v130[0]) = 1;
  v22 = v1;
  sub_238152A5C();
  v123(v1 + v21, v13, v126);
  v23 = v125;
  v24 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem;
  *&v130[0] = 0;
  v25 = v124;
  sub_238152A5C();
  (*(v127 + 32))(v22 + v24, v25, v128);
  v26 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__state;
  swift_beginAccess();
  v27 = *(v23 + 16);
  v130[0] = *v23;
  v130[1] = v27;
  v130[2] = *(v23 + 32);
  v131 = *(v23 + 48);
  sub_2380CB49C(v23, v129);
  sub_238152A5C();
  swift_endAccess();
  v28 = &unk_27DEF3000;
  if (*(v23 + 48) == 1)
  {
    v124 = v20;
    v29 = v23;
    v30 = *v23;
    v23 = *(v23 + 8);
    v31 = sub_2381528BC();
    v33 = v32;
    sub_238085D80(v30, v23);
    sub_238085D80(v30, v23);
    v34 = sub_2381528CC();
    v35.n128_f64[0] = sub_238085CA0(v31, v33);
    if (v34 >> 62)
    {
      if (sub_2381554FC())
      {
        goto LABEL_4;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x2383E9A70](0, v34, v35);
      }

      else
      {
        if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_47;
        }

        v36 = *(v34 + 32);
      }

      v37 = v36;
      sub_238085CA0(v30, v23);

      v23 = v29;
      v28 = &unk_27DEF3000;
      goto LABEL_9;
    }

    sub_238085E58();
    swift_allocError();
    *v106 = 0xD000000000000022;
    *(v106 + 8) = 0x8000000238161450;
    *(v106 + 16) = 3;
    swift_willThrow();
    sub_2380CB4F8(v29);
    sub_238085CA0(v30, v23);
    v62 = 0;
    v63 = 0;
    goto LABEL_39;
  }

  v38 = *(**sub_2381528AC() + 136);

  v37 = v38(v39);

  if (!v37)
  {
    sub_238085E58();
    swift_allocError();
    *v64 = xmmword_23815B6C0;
    *(v64 + 16) = 0;
    swift_willThrow();
    sub_2380CB4F8(v23);
    v62 = 0;
    v63 = 0;
    goto LABEL_39;
  }

LABEL_9:
  *(v22 + v28[67]) = v37;
  v40 = v37;
  v41 = sub_23815529C();
  v42 = v28;
  v44 = v43;

  v45 = (v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  *v45 = v41;
  v45[1] = v44;
  v46 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v46 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
    sub_238085E58();
    swift_allocError();
    *v61 = 0xD000000000000022;
    *(v61 + 8) = 0x8000000238162510;
    v62 = 1;
    *(v61 + 16) = 1;
    swift_willThrow();
    sub_2380CB4F8(v23);
    v63 = 0;
LABEL_39:
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC188, &unk_23815B880);
    (*(*(v107 - 8) + 8))(v22 + v26, v107);
    v108 = *(v120 + 8);
    v109 = v126;
    v108(v22 + v119, v126);
    if (v62)
    {
    }

    else
    {
    }

    v111 = v127;
    v110 = v128;
    if (v63)
    {
    }

    v108(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle, v109);
    (*(v111 + 8))(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem, v110);
    type metadata accessor for CNBoopSessionViewModel(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v47 = v42[67];
  v48 = *(v22 + v47);
  v49 = sub_2381552BC();

  *(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles) = v49;
  if (!*(v49 + 16))
  {
    sub_238085E58();
    swift_allocError();
    *v65 = xmmword_23815B6D0;
    *(v65 + 16) = 2;
    swift_willThrow();
    sub_2380CB4F8(v23);
    v62 = 1;
    v63 = 1;
    goto LABEL_39;
  }

  v50 = *(v22 + v47);
  v51 = sub_2381552CC();

  swift_beginAccess();
  (*(v127 + 8))(v22 + v24, v128);
  v129[0] = v51;
  sub_238152A5C();
  swift_endAccess();
  v52 = *(v22 + v47);
  v53 = sub_2381552AC();
  v55 = v54;

  v56 = (v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData);
  *v56 = v53;
  v56[1] = v55;
  if (v55 >> 60 == 15)
  {
    v24 = v115;
    if (qword_27DEEA090 == -1)
    {
LABEL_15:
      v57 = sub_23815293C();
      __swift_project_value_buffer(v57, qword_27DEEC120);
      v58 = sub_23815291C();
      v59 = sub_2381550BC();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_238060000, v58, v59, "CNBoopSessionView: no poster", v60, 2u);
        MEMORY[0x2383EA8A0](v60, -1, -1);
      }

LABEL_35:
      v104 = v116;
LABEL_36:
      sub_23815332C();
      swift_allocObject();
      *(v22 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_lockStateMonitor) = sub_23815331C();
      v105 = v117;
      sub_2381532FC();
      swift_beginAccess();
      (*(v24 + 16))(v118, v105, v104);
      sub_238152A5C();
      (*(v24 + 8))(v105, v104);
      swift_endAccess();
      sub_2380CB54C();

      sub_23815330C();

      sub_2380CB4F8(v23);
      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_15;
  }

  v66 = objc_opt_self();
  sub_238085D80(v53, v55);
  v67 = sub_23815274C();
  v68 = sub_238087244(v53, v55);
  *&v130[0] = 0;
  v69 = [v66 unarchiveConfigurationFromData:v67 error:{v130, v68}];

  v70 = *&v130[0];
  if (!v69)
  {
    v91 = *&v130[0];
    v92 = sub_23815266C();

    swift_willThrow();
    if (qword_27DEEA090 != -1)
    {
      swift_once();
    }

    v93 = sub_23815293C();
    __swift_project_value_buffer(v93, qword_27DEEC120);
    v94 = v92;
    v95 = sub_23815291C();
    v96 = sub_2381550DC();

    v97 = os_log_type_enabled(v95, v96);
    v24 = v115;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = v23;
      v100 = swift_slowAlloc();
      *v98 = 138412290;
      v101 = v92;
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 4) = v102;
      *v100 = v102;
      _os_log_impl(&dword_238060000, v95, v96, "Failed to create poster configuration: %@", v98, 0xCu);
      sub_238071284(v100, &unk_27DEECA10, &qword_2381588F0);
      v103 = v100;
      v23 = v99;
      MEMORY[0x2383EA8A0](v103, -1, -1);
      MEMORY[0x2383EA8A0](v98, -1, -1);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v71 = *(v22 + v122);
  v128 = v22;
  *(v22 + v122) = v69;
  v72 = v69;
  v73 = v70;

  v74 = objc_opt_self();
  *&v130[0] = 0;
  v75 = [v74 titleStyleAttributesForConfiguration:v72 error:v130];

  if (v75)
  {
    v76 = *&v130[0];
    v77 = [v75 titleFont];
    v78 = [v77 fontDescriptor];
    v79 = [v78 fontDescriptorWithSymbolicTraits_];

    if (v79)
    {
      v80 = [objc_opt_self() fontWithDescriptor:v79 size:60.0];

      v81 = v80;
      *(v128 + v121) = sub_2381542DC();

      if (qword_27DEEA090 != -1)
      {
        swift_once();
      }

      v82 = sub_23815293C();
      __swift_project_value_buffer(v82, qword_27DEEC120);
      v83 = v75;
      v84 = sub_23815291C();
      v85 = sub_2381550BC();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = v23;
        v88 = swift_slowAlloc();
        *v86 = 138412290;
        *(v86 + 4) = v83;
        *v88 = v75;
        v89 = v83;
        _os_log_impl(&dword_238060000, v84, v85, "CNBoopSessionView: poster configuration attributes: %@", v86, 0xCu);
        sub_238071284(v88, &unk_27DEECA10, &qword_2381588F0);
        v90 = v88;
        v23 = v87;
        MEMORY[0x2383EA8A0](v90, -1, -1);
        MEMORY[0x2383EA8A0](v86, -1, -1);
      }

      else
      {
      }

      v22 = v128;
      v104 = v116;
      v24 = v115;
      goto LABEL_36;
    }
  }

  else
  {
    v112 = *&v130[0];
    v113 = sub_23815266C();

    swift_willThrow();
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2380CA864(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!a1)
  {
    if (qword_27DEEA090 != -1)
    {
      swift_once();
    }

    v5 = sub_23815293C();
    __swift_project_value_buffer(v5, qword_27DEEC120);
    v6 = a2;
    v7 = sub_23815291C();
    v8 = sub_2381550DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_238060000, v7, v8, "Failed to create poster snapshot: %@", v9, 0xCu);
      sub_238071284(v10, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v10, -1, -1);
      MEMORY[0x2383EA8A0](v9, -1, -1);
    }

    a1 = 0;
  }

  return a3(a1, a2);
}

uint64_t sub_2380CA9EC()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC188, &unk_23815B880);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__animatingButtonTransition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);

  sub_238087244(*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData), *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8));

  v5(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__canChangeHandle, v4);
  v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__selectedItem;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel__lockState;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC198, &qword_23815B898);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t sub_2380CAC04()
{
  sub_2380CA9EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CNBoopSessionViewModel(uint64_t a1)
{
  result = qword_27DEEC168;
  if (!qword_27DEEC168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380CACB0(uint64_t a1)
{
  sub_2380CAE70(319, &qword_27DEEC178, &type metadata for BoopSessionState);
  if (v1 <= 0x3F)
  {
    sub_2380CAE70(319, &qword_27DEEB898, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_2380CAE70(319, &qword_27DEECF20, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_2380CAEBC(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2380CAE70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_238152AAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2380CAEBC(uint64_t a1)
{
  if (!qword_27DEEC180)
  {
    sub_2381530DC();
    v1 = sub_238152AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEC180);
    }
  }
}

uint64_t sub_2380CAF14@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNBoopSessionViewModel(0);
  result = sub_2381529DC();
  *a2 = result;
  return result;
}

uint64_t sub_2380CAF54(uint64_t a1)
{
  v2 = sub_2381530DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9(v6, v8, v2);

  sub_238152A9C();
  return (*(v3 + 8))(v8, v2);
}

double sub_2380CB0BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return result;
}

uint64_t sub_2380CB13C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2381530DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_238152A9C();
  return (*(v4 + 8))(v9, v3);
}

void sub_2380CB2EC(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a4 = v5;
}

uint64_t sub_2380CB37C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

unint64_t sub_2380CB54C()
{
  result = qword_27DEEC1A8;
  if (!qword_27DEEC1A8)
  {
    v3 = type metadata accessor for CNBoopSessionViewModel(255);
    result = swift_getWitnessTable(byte_23815B740, v3, v0, v1);
    atomic_store(result, &qword_27DEEC1A8);
  }

  return result;
}

uint64_t sub_2380CB5A4()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF3258);
  __swift_project_value_buffer(v0, qword_27DEF3258);
  return sub_23815292C();
}

uint64_t sub_2380CB624()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC1B0);
  v1 = __swift_project_value_buffer(v0, qword_27DEEC1B0);
  if (qword_27DEEA098 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t getDataFromXPC(_:)(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x2383EAA50]();
  if (v2 != sub_23815295C())
  {
    if (qword_27DEEA0A0 != -1)
    {
      swift_once();
    }

    v3 = sub_23815293C();
    __swift_project_value_buffer(v3, qword_27DEEC1B0);
    v4 = sub_23815291C();
    v5 = sub_2381550DC();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_14;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "XPC object is not a dictionary, unable to pull out data";
    goto LABEL_13;
  }

  v11[0] = 0;
  data = xpc_dictionary_get_data(a1, "swift-json", v11);
  if (data && v11[0])
  {
    return sub_2380CBA18(data, v11[0]);
  }

  if (qword_27DEEA0A0 != -1)
  {
    swift_once();
  }

  v10 = sub_23815293C();
  __swift_project_value_buffer(v10, qword_27DEEC1B0);
  v4 = sub_23815291C();
  v5 = sub_2381550DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Could not get data from dictionary";
LABEL_13:
    _os_log_impl(&dword_238060000, v4, v5, v7, v6, 2u);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

LABEL_14:

  return 0;
}

uint64_t createXPCFromData(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD40, &qword_23815B938);
  sub_23815273C();
  return v3;
}

void sub_2380CB960(const void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a3);
LABEL_10:
    xpc_dictionary_set_data(v8, "swift-json", a1, v11);
    *a4 = v9;
    return;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v11 = HIDWORD(a2) - a2;
    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_2380CBA18(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23812C110(a1, &a1[a2]);
  }

  sub_2381525EC();
  swift_allocObject();
  sub_23815259C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23815270C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2380CBB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_2380CBB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2380CBBEC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC1C8);
  __swift_project_value_buffer(v0, qword_27DEEC1C8);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_2380CBC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1E0, &qword_23815BA28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1E8, &qword_23815BA30);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1F0, &qword_23815BA38);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v47 - v9;
  *v5 = sub_238153DEC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1F8, &qword_23815BA40) + 44)];
  *v11 = sub_2381548DC();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC200, &unk_23815BA48);
  sub_2380CC2B4(v2, v11 + *(v13 + 44));
  v51 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v14 = v56;
  v15 = v57;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *v8 = v14;
  v8[16] = v15;
  *(v8 + 3) = 3;
  *(v8 + 2) = xmmword_23815B940;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC208, &qword_23815BA58);
  sub_2380712E4(v5, &v8[v17[12]], &qword_27DEEC1E0, &qword_23815BA28);
  v18 = &v8[v17[13]];
  *v18 = sub_2380CFF34;
  v18[1] = v16;
  v19 = &v8[v17[14]];
  *&v51 = 0;
  sub_2381546FC();
  v20 = *(&v56 + 1);
  *v19 = v56;
  *(v19 + 1) = v20;
  sub_238071284(v5, &qword_27DEEC1E0, &qword_23815BA28);
  v21 = swift_allocObject();
  v22 = *(v2 + 112);
  *(v21 + 112) = *(v2 + 96);
  *(v21 + 128) = v22;
  *(v21 + 144) = *(v2 + 128);
  v23 = *(v2 + 48);
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 64) = v23;
  v24 = *(v2 + 80);
  *(v21 + 80) = *(v2 + 64);
  *(v21 + 96) = v24;
  v25 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v25;
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC210, &qword_23815BA60) + 36)];
  *v26 = sub_2380D1F64;
  *(v26 + 1) = v21;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = swift_allocObject();
  v28 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v28;
  *(v27 + 144) = *(v2 + 128);
  v29 = *(v2 + 112);
  *(v27 + 112) = *(v2 + 96);
  *(v27 + 128) = v29;
  v30 = *(v2 + 80);
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = v30;
  v31 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v31;
  v32 = &v8[*(v6 + 36)];
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = sub_2380CFF64;
  *(v32 + 3) = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380D045C(v2, &v56);
  sub_2380D045C(v2, &v56);
  sub_238152A8C();

  LOBYTE(v51) = v56;
  v33 = swift_allocObject();
  v34 = *(v2 + 112);
  *(v33 + 112) = *(v2 + 96);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v2 + 128);
  v35 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v35;
  v36 = *(v2 + 80);
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = v36;
  v37 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v37;
  sub_2380D045C(v2, &v56);
  v38 = sub_2380D04A0();
  v39 = sub_2380D05E4();
  sub_23815455C();

  sub_238071284(v8, &qword_27DEEC1E8, &qword_23815BA30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v53 = v58;
  v54 = v59;
  v55 = v60;
  v52 = v57;
  v51 = v56;
  v40 = swift_allocObject();
  v41 = *(v2 + 112);
  *(v40 + 112) = *(v2 + 96);
  *(v40 + 128) = v41;
  *(v40 + 144) = *(v2 + 128);
  v42 = *(v2 + 48);
  *(v40 + 48) = *(v2 + 32);
  *(v40 + 64) = v42;
  v43 = *(v2 + 80);
  *(v40 + 80) = *(v2 + 64);
  *(v40 + 96) = v43;
  v44 = *(v2 + 16);
  *(v40 + 16) = *v2;
  *(v40 + 32) = v44;
  sub_2380D045C(v2, &v56);
  *&v56 = v6;
  *(&v56 + 1) = &type metadata for DDPairingState;
  *&v57 = v38;
  *(&v57 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  v45 = v48;
  sub_23815455C();

  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v51;
  v57 = v52;
  sub_23808E828(&v56);
  return (*(v49 + 8))(v10, v45);
}

uint64_t sub_2380CC2B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC250, &qword_23815BB08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC258, &qword_23815BB10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC260, &qword_23815BB18);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  *v11 = sub_238153D1C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC268, &qword_23815BB20);
  sub_2380CC5F8(a1, &v11[*(v22 + 44)]);
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v11, v19, &qword_27DEEC258, &qword_23815BB10);
  v23 = &v19[*(v13 + 44)];
  v24 = v37;
  *(v23 + 4) = v36;
  *(v23 + 5) = v24;
  *(v23 + 6) = v38;
  v25 = v33;
  *v23 = v32;
  *(v23 + 1) = v25;
  v26 = v35;
  *(v23 + 2) = v34;
  *(v23 + 3) = v26;
  sub_23807121C(v19, v21, &qword_27DEEC260, &qword_23815BB18);
  sub_2380CC9F8(v8);
  sub_2380712E4(v21, v16, &qword_27DEEC260, &qword_23815BB18);
  sub_2380712E4(v8, v6, &qword_27DEEC250, &qword_23815BB08);
  v27 = v31;
  sub_2380712E4(v16, v31, &qword_27DEEC260, &qword_23815BB18);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC270, &qword_23815BB28);
  sub_2380712E4(v6, v27 + *(v28 + 48), &qword_27DEEC250, &qword_23815BB08);
  sub_238071284(v8, &qword_27DEEC250, &qword_23815BB08);
  sub_238071284(v21, &qword_27DEEC260, &qword_23815BB18);
  sub_238071284(v6, &qword_27DEEC250, &qword_23815BB08);
  return sub_238071284(v16, &qword_27DEEC260, &qword_23815BB18);
}

uint64_t sub_2380CC5F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2F0, &qword_23815BC18);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2F8, &qword_23815BC20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  result = sub_238153D1C();
  *v16 = result;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v18 = *a1;
  if (*a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC300, &unk_23815BC28) + 44);
    v41 = v4;
    v42 = &v16[v19];
    v43 = v14;
    v45 = 0;
    v46 = v18;
    KeyPath = swift_getKeyPath();
    v20 = swift_allocObject();
    v39 = v10;
    v21 = *(a1 + 7);
    *(v20 + 112) = *(a1 + 6);
    *(v20 + 128) = v21;
    *(v20 + 144) = a1[16];
    v22 = *(a1 + 3);
    *(v20 + 48) = *(a1 + 2);
    *(v20 + 64) = v22;
    v23 = *(a1 + 5);
    *(v20 + 80) = *(a1 + 4);
    *(v20 + 96) = v23;
    v24 = *(a1 + 1);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v24;
    sub_2380D045C(a1, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC308, &qword_23815BC58);
    v25 = v8;
    sub_238087E84();
    v26 = v5;
    v27 = a2;
    sub_2380711D4(&qword_27DEEC310, &qword_27DEEC308, &qword_23815BC58, MEMORY[0x277CE14C0]);
    v28 = v39;
    sub_23815480C();
    v29 = *(v26 + 16);
    v30 = v41;
    v29(v8, v28, v41);
    v31 = v42;
    *v42 = 0;
    v31[8] = 1;
    v32 = v31;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC318, &qword_23815BC60);
    v29(&v32[*(v33 + 48)], v25, v30);
    v34 = *(v26 + 8);
    v34(v28, v30);
    v34(v25, v30);
    v35 = v43;
    sub_2380712E4(v16, v43, &qword_27DEEC2F8, &qword_23815BC20);
    *v27 = 0x4024000000000000;
    *(v27 + 8) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC320, &qword_23815BC68);
    sub_2380712E4(v35, v27 + *(v36 + 48), &qword_27DEEC2F8, &qword_23815BC20);
    v37 = v27 + *(v36 + 64);
    *v37 = 0x4024000000000000;
    *(v37 + 8) = 0;
    sub_238071284(v16, &qword_27DEEC2F8, &qword_23815BC20);
    return sub_238071284(v35, &qword_27DEEC2F8, &qword_23815BC20);
  }

  return result;
}

uint64_t sub_2380CC9F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC278, &qword_23815BB30);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v58 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC280, &qword_23815BB38);
  MEMORY[0x28223BE20](v63);
  v6 = &v58 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC288, &qword_23815BB40);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC290, &qword_23815BB48);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC298, &qword_23815BB50);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2A0, &qword_23815BB58);
  MEMORY[0x28223BE20](v71);
  v67 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2A8, &qword_23815BB60);
  v17 = *(v16 - 8);
  v73 = v16;
  v74 = v17;
  MEMORY[0x28223BE20](v16);
  v70 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC2B0, &qword_23815BB68);
  v75 = *(v19 - 8);
  v76 = v19;
  MEMORY[0x28223BE20](v19);
  v72 = &v58 - v20;
  sub_238153D8C();
  v88 = *(v1 + 8);
  v89 = *(v1 + 24);
  v81 = *(v1 + 8);
  *&v82 = *(v1 + 24);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815472C();
  v21 = v59;
  sub_2381549BC();
  sub_2381548DC();
  sub_238153A8C();
  (*(v65 + 32))(v6, v21, v66);
  v22 = &v6[*(v63 + 36)];
  v23 = v86;
  *(v22 + 4) = v85;
  *(v22 + 5) = v23;
  *(v22 + 6) = v87;
  v24 = v82;
  *v22 = v81;
  *(v22 + 1) = v24;
  v25 = v84;
  *(v22 + 2) = v83;
  *(v22 + 3) = v25;
  sub_2380D069C();
  v26 = v60;
  sub_23815440C();
  sub_238071284(v6, &qword_27DEEC280, &qword_23815BB38);
  v27 = sub_2381545EC();
  KeyPath = swift_getKeyPath();
  v29 = v61;
  (*(v68 + 32))(v61, v26, v69);
  v30 = (v29 + *(v10 + 44));
  *v30 = KeyPath;
  v30[1] = v27;
  v31 = sub_2381545EC();
  v32 = swift_getKeyPath();
  v33 = v62;
  sub_23807121C(v29, v62, &qword_27DEEC290, &qword_23815BB48);
  v34 = (v33 + *(v13 + 44));
  v35 = v33;
  *v34 = v32;
  v34[1] = v31;
  v78 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815470C();
  LOBYTE(v33) = v80;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v33;
  v38 = v67;
  sub_23807121C(v35, v67, &qword_27DEEC298, &qword_23815BB50);
  v39 = v71;
  v40 = (v38 + *(v71 + 36));
  *v40 = v36;
  v40[1] = sub_2380D081C;
  v40[2] = v37;
  v78 = *(v2 + 64);
  LOBYTE(v79) = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC248, &qword_23815BB00);
  sub_23815379C();
  v41 = sub_2380D0834();
  v42 = v70;
  sub_23815454C();

  sub_238071284(v38, &qword_27DEEC2A0, &qword_23815BB58);
  v78 = v88;
  v79 = v89;
  sub_23815470C();
  v43 = swift_allocObject();
  v44 = *(v2 + 112);
  *(v43 + 112) = *(v2 + 96);
  *(v43 + 128) = v44;
  *(v43 + 144) = *(v2 + 128);
  v45 = *(v2 + 48);
  *(v43 + 48) = *(v2 + 32);
  *(v43 + 64) = v45;
  v46 = *(v2 + 80);
  *(v43 + 80) = *(v2 + 64);
  *(v43 + 96) = v46;
  v47 = *(v2 + 16);
  *(v43 + 16) = *v2;
  *(v43 + 32) = v47;
  sub_2380D045C(v2, &v78);
  *&v78 = v39;
  *(&v78 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v72;
  v48 = v73;
  sub_23815455C();

  (*(v74 + 8))(v42, v48);
  v50 = swift_allocObject();
  v51 = *(v2 + 112);
  *(v50 + 112) = *(v2 + 96);
  *(v50 + 128) = v51;
  *(v50 + 144) = *(v2 + 128);
  v52 = *(v2 + 48);
  *(v50 + 48) = *(v2 + 32);
  *(v50 + 64) = v52;
  v53 = *(v2 + 80);
  *(v50 + 80) = *(v2 + 64);
  *(v50 + 96) = v53;
  v54 = *(v2 + 16);
  *(v50 + 16) = *v2;
  *(v50 + 32) = v54;
  v55 = v77;
  (*(v75 + 32))(v77, v49, v76);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC250, &qword_23815BB08) + 36));
  *v56 = sub_2380D0AA0;
  v56[1] = v50;
  v56[2] = 0;
  v56[3] = 0;
  return sub_2380D045C(v2, &v78);
}

void sub_2380CD280(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  if (qword_27DEEA0A8 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEEC1C8);
  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v16 = v9;
    *v8 = 136315138;
    v10 = sub_238154D2C();
    v12 = sub_238085EAC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_238060000, v6, v7, "New pairing state: %s", v8, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v13);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  if (v4)
  {
    if (v4 == 1)
    {
      sub_238103664();
    }

    else
    {
      v16 = *(a3 + 8);
      v17 = *(a3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
      sub_23815471C();
      v16 = *(a3 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
      sub_23815471C();
      v16 = *(a3 + 32);
      sub_23815471C();
      v14 = *(a3 + 96);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v16) = 0;
      v15 = v14;
      sub_238152A9C();
    }
  }
}

void sub_2380CD4C4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2[3];
  v24 = a2[2];
  v25 = v4;
  v26 = *(a2 + 64);
  v5 = a2[1];
  v22 = *a2;
  v23 = v5;
  if (qword_27DEEA0A8 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEC1C8);
  sub_23808E888(&v22, &v17);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  sub_23808E828(&v22);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    sub_23808E888(&v22, v15);
    v11 = sub_238154D2C();
    v13 = sub_238085EAC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_238060000, v7, v8, "New pairing state: %s", v9, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1, v14);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  if (v26 == 2)
  {
    if (v22)
    {
      v17 = *(a3 + 8);
      *&v18 = *(a3 + 24);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
      sub_23815471C();
      v17 = *(a3 + 48);
      LOBYTE(v15[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
      sub_23815471C();
      v17 = *(a3 + 32);
      LOBYTE(v15[0]) = 0;
      sub_23815471C();
    }
  }
}

uint64_t sub_2380CD70C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815470C();
  v4 = sub_238154DFC();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v9 = sub_2380D32AC(0x3736353433323130, 0xEA00000000003938);
      v10 = sub_2380BC5E0(v6, v7, v9);

      if (v10)
      {
        MEMORY[0x2383E9400](v6, v7);
      }

      v6 = sub_238154DFC();
      v7 = v8;
    }

    while (v8);
  }

  v11 = v3 < sub_238154D8C();
  result = swift_allocObject();
  *(result + 16) = v11;
  *(result + 24) = 0;
  *(result + 32) = 0xE000000000000000;
  *(result + 40) = v3;
  *a2 = sub_2380D0D14;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_2380CD898@<X0>(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC328, &qword_23815BC70);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC330, &qword_23815BC78);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  sub_23815392C();
  v47 = v13;
  v48 = a5;
  if ((a1 & 1) == 0)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
LABEL_8:
    *&v49 = v18;
    *(&v49 + 1) = v19;
    sub_2380704A0();
    v20 = sub_23815438C();
    v22 = v21;
    v24 = v23;
    v46 = v25;
    sub_2381548DC();
    sub_2381538EC();
    v26 = v24 & 1;
    v53 = v24 & 1;
    v27 = sub_238153EFC();
    v28 = sub_2381540FC();
    v29 = &v12[*(v10 + 36)];
    v30 = *(sub_238153A7C() + 20);
    v31 = *MEMORY[0x277CE0118];
    v32 = sub_238153DDC();
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #10.0 }

    *v29 = _Q0;
    *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    *v12 = v20;
    *(v12 + 1) = v22;
    v12[16] = v26;
    *(v12 + 17) = *v52;
    *(v12 + 5) = *&v52[3];
    *(v12 + 3) = v46;
    v38 = v50;
    *(v12 + 2) = v49;
    *(v12 + 3) = v38;
    *(v12 + 4) = v51;
    *(v12 + 20) = v27;
    v12[84] = v28;
    v39 = sub_2381541BC();
    KeyPath = swift_getKeyPath();
    sub_23807121C(v12, v15, &qword_27DEEC328, &qword_23815BC70);
    v41 = &v15[*(v47 + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = swift_getKeyPath();
    v43 = v48;
    sub_23807121C(v15, v48, &qword_27DEEC330, &qword_23815BC78);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEEC340, &qword_23815BCE8);
    v44 = v43 + *(result + 36);
    *v44 = v42;
    *(v44 + 8) = 1;
    return result;
  }

  result = sub_2380CDBF4(a2, a3);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a4)
  {
    v17 = *(result + 8 * a4 + 32);

    if (v17 > 9)
    {
      v19 = 0xE100000000000000;
      v18 = 48;
    }

    else
    {
      *&v49 = v17;
      v18 = sub_23815559C();
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_2380CDBF4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v36 = a1;
  v37 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v38 = 0;
  v39 = v2;

  result = sub_238154DFC();
  if (!v4)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_78:

    return v5;
  }

  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = HIBYTE(v4) & 0xF;
    v7 = result & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {

      goto LABEL_67;
    }

    if ((v4 & 0x1000000000000000) == 0)
    {
      break;
    }

    v10 = sub_2380B191C(result, v4, 10);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
LABEL_71:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2380BB8A4(0, *(v5 + 2) + 1, 1, v5);
      }

      v32 = *(v5 + 2);
      v31 = *(v5 + 3);
      if (v32 >= v31 >> 1)
      {
        v5 = sub_2380BB8A4((v31 > 1), v32 + 1, 1, v5);
      }

      *(v5 + 2) = v32 + 1;
      *&v5[8 * v32 + 32] = v10;
    }

LABEL_67:
    result = sub_238154DFC();
    if (!v4)
    {
      goto LABEL_78;
    }
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_23815544C();
      v7 = v33;
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 < 1)
      {
        goto LABEL_80;
      }

      if (!--v7)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v17 = (result + 1);
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            goto LABEL_65;
          }

          v19 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            goto LABEL_65;
          }

          ++v17;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v9 == 45)
    {
      if (v7 < 1)
      {
        goto LABEL_82;
      }

      if (!--v7)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v11 = (result + 1);
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            goto LABEL_65;
          }

          v13 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            goto LABEL_65;
          }

          ++v11;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      if (!v7)
      {
LABEL_65:
        v10 = 0;
        LOBYTE(v7) = 1;
LABEL_66:
        v35 = v7;
        v28 = v7;

        if ((v28 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }

      v10 = 0;
      if (result)
      {
        while (1)
        {
          v23 = *result - 48;
          if (v23 > 9)
          {
            goto LABEL_65;
          }

          v24 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            goto LABEL_65;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

LABEL_64:
    LOBYTE(v7) = 0;
    goto LABEL_66;
  }

  v34[0] = result;
  v34[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (result == 43)
  {
    if (!v6)
    {
      goto LABEL_81;
    }

    v7 = v6 - 1;
    if (v6 != 1)
    {
      v10 = 0;
      v20 = v34 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v7)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  if (result != 45)
  {
    if (v6)
    {
      v10 = 0;
      v25 = v34;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v6)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v10 = 0;
      v14 = v34 + 1;
      while (1)
      {
        v15 = *v14 - 48;
        if (v15 > 9)
        {
          break;
        }

        v16 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v16 - v15;
        if (__OFSUB__(v16, v15))
        {
          break;
        }

        ++v14;
        if (!--v7)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_2380CDFA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC240, &qword_23815BAF8);
  sub_23815470C();
  v4 = sub_238154DFC();
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    do
    {
      v9 = sub_2380D32AC(0x3736353433323130, 0xEA00000000003938);
      v10 = sub_2380BC5E0(v7, v6, v9);

      if (v10)
      {
        MEMORY[0x2383E9400](v7, v6);
      }

      v7 = sub_238154DFC();
      v6 = v8;
    }

    while (v8);
    v6 = 0;
  }

  v11 = sub_238154D8C();
  v12 = *a3;
  if (v11 >= *a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
    sub_23815471C();
    v13 = a3[15];
    v14 = sub_2380D0BC8(v12, v6, 0xE000000000000000);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = MEMORY[0x2383E9380](v14, v16, v18, v20);
    v23 = v22;

    v13(v21, v23);
  }
}

uint64_t sub_2380CE180(uint64_t a1)
{
  v2 = sub_2381549FC();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_238154A2C();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8(0, v8);
  v9 = sub_23815517C();
  v10 = swift_allocObject();
  v11 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(a1 + 128);
  v12 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v12;
  v13 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v13;
  v14 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v14;
  aBlock[4] = sub_2380D0AF4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);
  sub_2380D045C(a1, v19);

  sub_238154A0C();
  v19[0] = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0, MEMORY[0x277D83970]);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_2380CE4C8()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E0, &qword_23815BD88);
  MEMORY[0x2383E8E00](&v5, v3);
  return v5;
}

uint64_t sub_2380CE57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v35 = *(a1 - 8);
  v40 = *(v35 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v8 = sub_238153A3C();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v47[0] = *(a1 + 24);
  v11 = v47[0];
  v47[1] = MEMORY[0x277CDF748];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v47);
  v43 = v8;
  v44 = MEMORY[0x277D839B0];
  v45 = WitnessTable;
  v46 = MEMORY[0x277D839C8];
  v38 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = &v32 - v15;
  v16 = (v2 + *(a1 + 56));
  v17 = *v16;
  v18 = v16[1];
  v43 = v17;
  v44 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  sub_23815470C();
  v19 = v10;
  v20 = v7;
  sub_23815452C();
  LOBYTE(v43) = sub_2380CE4C8() & 1;
  v21 = v35;
  v22 = v37;
  (*(v35 + 16))(v37, v3, a1);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v11;
  (*(v21 + 32))(v24 + v23, v22, a1);
  v25 = v33;
  v26 = MEMORY[0x277D839B0];
  v27 = WitnessTable;
  v28 = MEMORY[0x277D839C8];
  sub_23815455C();

  (*(v41 + 8))(v19, v8);
  v43 = v8;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_2381507A4();
  v30 = *(v39 + 8);
  v30(v25, OpaqueTypeMetadata2);
  sub_2381507A4();
  return (v30)(v29, OpaqueTypeMetadata2);
}

double sub_2380CE9A4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Shake(0, a4, a5, a4);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  if (*a2 == 1)
  {
    v17 = sub_238154FBC();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    (*(v10 + 16))(v12, a3, v9);
    sub_238154F8C();
    v18 = sub_238154F7C();
    v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 2) = v18;
    *(v20 + 3) = v21;
    *(v20 + 4) = a4;
    *(v20 + 5) = a5;
    (*(v10 + 32))(&v20[v19], v12, v9);
    sub_2380D2A4C(0, 0, v16, &unk_23815BD78, v20);
  }

  return result;
}

uint64_t sub_2380CEBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_238154F8C();
  v6[4] = sub_238154F7C();
  v9 = swift_task_alloc();
  v6[5] = v9;
  v11 = type metadata accessor for Shake(0, a5, a6, v10);
  v6[6] = v11;
  *v9 = v6;
  v9[1] = sub_2380CEC94;

  return sub_2380CEE5C(v11);
}

uint64_t sub_2380CEC94()
{

  v1 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380CEDD0, v1, v0);
}

uint64_t sub_2380CEDD0()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = sub_2380CE520(0);
  v4 = (v2 + *(v1 + 52));
  if (*v4)
  {
    (*v4)(v3);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2380CEE5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(a1 - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  sub_238154F8C();
  v2[7] = sub_238154F7C();
  v5 = sub_238154F3C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_2380CEF48, v5, v4);
}

void sub_2380CEF48()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v0 + 80) = v2;
  v3 = *(v1 + 24);
  *(v0 + 88) = v3;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3)
  {
    v4 = v3;
    v5 = v2 * 0.9;
    *(v0 + 96) = *(v1 + 40);
    *(v0 + 104) = 0;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_2380CF188;
    v7 = *(v0 + 96);
    v8 = *(v0 + 16);

    sub_2380CF688(v8, v5 / v4, v7);
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = v2 * 0.1;
    (*(v10 + 16))(v9);
    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = swift_allocObject();
    *(v0 + 120) = v14;
    *(v14 + 16) = *(v11 + 16);
    *(v14 + 24) = *(v11 + 24);
    (*(v10 + 32))(v14 + v13, v9, v11);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    swift_getWitnessTable(byte_23815BD10, v11);
    *v15 = v0;
    v15[1] = sub_2380CF4DC;

    sub_2380D1794(sub_2380D1710, v14, v12);
  }
}

uint64_t sub_2380CF188()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2380CF2A8, v3, v2);
}

uint64_t sub_2380CF2A8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 104) + 1;
  if (v2 == v1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = *(v0 + 80) * 0.1;
    (*(v4 + 16))(v3, *(v0 + 24), v5);
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v0 + 120) = v8;
    *(v8 + 16) = *(v5 + 16);
    *(v8 + 24) = *(v5 + 24);
    (*(v4 + 32))(v8 + v7, v3, v5);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    swift_getWitnessTable(byte_23815BD10, v5);
    *v9 = v0;
    v9[1] = sub_2380CF4DC;

    return sub_2380D1794(sub_2380D1710, v8, v6);
  }

  else
  {
    *(v0 + 104) = v2;
    v11 = *(v0 + 80);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_2380CF188;
    v13 = *(v0 + 96);
    v14 = *(v0 + 16);

    return sub_2380CF688(v14, v11 * 0.9 / v1, v13);
  }
}

uint64_t sub_2380CF4DC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2380CF620, v3, v2);
}

uint64_t sub_2380CF620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380CF688(uint64_t a1, double a2, double a3)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v5 = *(a1 - 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 64);
  *(v4 + 64) = swift_task_alloc();
  sub_238154F8C();
  *(v4 + 72) = sub_238154F7C();
  v7 = sub_238154F3C();
  *(v4 + 80) = v7;
  *(v4 + 88) = v6;

  return MEMORY[0x2822009F8](sub_2380CF778, v7, v6);
}

uint64_t sub_2380CF778()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16) * 0.5;
  v8 = *(v4 + 16);
  *(v0 + 96) = v8;
  *(v0 + 104) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v3, v5);
  v9 = *(v4 + 80);
  *(v0 + 184) = v9;
  v10 = (v9 + 32) & ~v9;
  v11 = (v1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 112) = v12;
  v13 = *(v5 + 16);
  *(v0 + 120) = v13;
  *(v12 + 16) = v13;
  v14 = *(v5 + 24);
  *(v0 + 128) = v14;
  *(v12 + 24) = v14;
  v15 = *(v4 + 32);
  *(v0 + 136) = v15;
  *(v0 + 144) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v12 + v10, v2, v5);
  *(v12 + v11) = v6;
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *(v0 + 160) = swift_getWitnessTable(byte_23815BD10, v5);
  *v16 = v0;
  v16[1] = sub_2380CF940;

  return sub_2380D1794(sub_2380D1C54, v12, v7);
}

uint64_t sub_2380CF940()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2380CFA84, v3, v2);
}

uint64_t sub_2380CFA84()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = (*(v0 + 184) + 32) & ~*(v0 + 184);
  v7 = (*(v0 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 120);
  (*(v0 + 96))(v2, *(v0 + 40), v3);
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  *(v8 + 16) = v11;
  v1(v8 + v6, v2, v3);
  *(v8 + v7) = v4;
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_2380CFBE4;

  return sub_2380D1794(sub_2380D1D9C, v8, v5 * 0.5);
}

uint64_t sub_2380CFBE4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2380CFD28, v3, v2);
}

uint64_t sub_2380CFD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380CFD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Shake(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFE00(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  type metadata accessor for Shake(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFE78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  type metadata accessor for Shake(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3D8, &unk_23815BD60);
  return sub_23815471C();
}

uint64_t sub_2380CFEF4(__n128 a1)
{
  if (*(v1 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v1, 32, 7, a1);
}

uint64_t sub_2380CFF34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_2380CFF6C(uint64_t a1, uint64_t a2, void (*a3)(void, void), double a4)
{
  v28 = a3;
  v30 = a1;
  v33 = sub_2381549FC();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238154A2C();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E8, &unk_23815BDA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = sub_238154A4C();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_23815492C();
  v37 = a2;
  v38 = v28;
  sub_23815398C();

  sub_2380D0AA8(0, v19);
  v20 = sub_23815517C();
  sub_238154A3C();
  sub_238154A6C();
  v28 = *(v13 + 8);
  v28(v16, v12);
  (*(v9 + 16))(v11, v30, v8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v11, v8);
  aBlock[4] = sub_2380D1BE4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_89;
  v23 = _Block_copy(aBlock);
  v24 = v31;
  sub_238154A0C();
  v39 = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2380711D4(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0, MEMORY[0x277D83970]);
  v26 = v32;
  v25 = v33;
  sub_23815537C();
  MEMORY[0x2383E9780](v18, v24, v26, v23);
  _Block_release(v23);

  (*(v36 + 8))(v26, v25);
  (*(v34 + 8))(v24, v35);
  v28(v18, v29);
}

unint64_t sub_2380D04A0()
{
  result = qword_27DEEC218;
  if (!qword_27DEEC218)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1E8, &qword_23815BA30);
    v4[0] = sub_2380D052C();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC218);
  }

  return result;
}

unint64_t sub_2380D052C()
{
  result = qword_27DEEC220;
  if (!qword_27DEEC220)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC210, &qword_23815BA60);
    v4[0] = sub_2380711D4(&qword_27DEEC228, &qword_27DEEC208, &qword_23815BA58, byte_23815BD10);
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC220);
  }

  return result;
}

unint64_t sub_2380D05E4()
{
  result = qword_27DEEC230;
  if (!qword_27DEEC230)
  {
    result = swift_getWitnessTable(byte_23815D4C8, &type metadata for DDPairingState, v0, v1);
    atomic_store(result, &qword_27DEEC230);
  }

  return result;
}

unint64_t sub_2380D0648()
{
  result = qword_27DEEC238;
  if (!qword_27DEEC238)
  {
    result = swift_getWitnessTable(asc_2381592A8, &type metadata for DAPairingState, v0, v1);
    atomic_store(result, &qword_27DEEC238);
  }

  return result;
}

unint64_t sub_2380D069C()
{
  result = qword_27DEEC2B8;
  if (!qword_27DEEC2B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC280, &qword_23815BB38);
    v4[0] = sub_2380711D4(&qword_27DEEC2C0, &qword_27DEEC278, &qword_23815BB30, MEMORY[0x277CDF1A8]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC2B8);
  }

  return result;
}

uint64_t sub_2380D0754@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383E80F0]();
  *a1 = result;
  return result;
}

uint64_t sub_2380D07B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C8C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2380D0834()
{
  result = qword_27DEEC2C8;
  if (!qword_27DEEC2C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC2A0, &qword_23815BB58);
    v4[0] = sub_2380D08EC();
    v4[1] = sub_2380711D4(&qword_27DEEC2E0, &qword_27DEEC2E8, &unk_23815BC08, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC2C8);
  }

  return result;
}

unint64_t sub_2380D08EC()
{
  result = qword_27DEEC2D0;
  if (!qword_27DEEC2D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC298, &qword_23815BB50);
    v4[0] = sub_2380D09A4();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC2D0);
  }

  return result;
}

unint64_t sub_2380D09A4()
{
  result = qword_27DEEC2D8;
  if (!qword_27DEEC2D8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC290, &qword_23815BB48);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC280, &qword_23815BB38);
    v4[3] = sub_2380D069C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC2D8);
  }

  return result;
}

unint64_t sub_2380D0AA8(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEBA50;
  if (!qword_27DEEBA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBA50);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2380D0B70()
{
  result = qword_27DEEBC88;
  if (!qword_27DEEBC88)
  {
    v3 = sub_2381549FC();
    result = swift_getWitnessTable(MEMORY[0x277D851A0], v3, v0, v1);
    atomic_store(result, &qword_27DEEBC88);
  }

  return result;
}

uint64_t sub_2380D0BC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_238154DAC();

    return sub_238154E8C();
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7, v1);
}

uint64_t sub_2380D0CDC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

void sub_2380D0D3C(uint64_t a1)
{
  sub_2380D11BC(319, &qword_27DEEC3C8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23809C4FC(319);
      if (v3 <= 0x3F)
      {
        sub_2380D11BC(319, &qword_27DEEC3D0, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2380D0E50(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t sub_2380D0FB4(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = ((((((result & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(result + 16) = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 8) = 0;
      }

      else
      {
        *(result + 8) = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_2380D11BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2380D120C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1F0, &qword_23815BA38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC1E8, &qword_23815BA30);
  sub_2380D04A0();
  sub_2380D05E4();
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  return swift_getOpaqueTypeConformance2();
}

double sub_2380D1318(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for Shake(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_2380CE9A4(a1, a2, v10, v7, v8);
}

uint64_t sub_2380D13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = type metadata accessor for Shake(0, v5, *(v4 + 40), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 48), v5);
  if (*(v4 + v8 + *(v6 + 52)))
  {
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7, v10);
}

uint64_t sub_2380D14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Shake(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_238087150;

  return sub_2380CEBBC(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t objectdestroy_71Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Shake(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 48), v5);
  if (*(v4 + v8 + *(v6 + 52)))
  {
  }

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7, v10);
}

uint64_t sub_2380D1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for Shake(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2380CFD90(v9, v5, v6, v7);
}

uint64_t sub_2380D1794(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  *(v3 + 40) = sub_238154F8C();
  *(v3 + 48) = sub_238154F7C();
  v5 = sub_238154F3C();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2380D1834, v5, v4);
}

uint64_t sub_2380D1834(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v1 + 72) = sub_238154F7C();
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v1;
  v4[1] = sub_2380D1954;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2380D1954()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2380D1AB4, v3, v2);
}

uint64_t sub_2380D1AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D1B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC3E8, &unk_23815BDA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7, v6);
}

uint64_t objectdestroy_91Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for Shake(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + *(v6 + 48), v5);
  if (*(v4 + v8 + *(v6 + 52)))
  {
  }

  return MEMORY[0x2821FE8E8](v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v7 | 7, v10);
}

uint64_t sub_2380D1DB4(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for Shake(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9.n128_u64[0] = *(v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4 + v8, v5, v6, v9);
}

uint64_t sub_2380D1EA8(void *a1)
{
  v1 = a1[1];
  v2 = sub_238153A3C();
  v4[0] = v1;
  v4[1] = MEMORY[0x277CDF748];
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, v4);
  return swift_getOpaqueTypeConformance2();
}

void sub_2380D1F78(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v28 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  v27 = *(v31 - 8);
  v6 = MEMORY[0x28223BE20](v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = a2;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v33 = v4;
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v13)) | (v16 << 6);
      v18 = v32;
      v19 = *(v32 + 48);
      v20 = sub_2381527EC();
      v21 = *(v20 - 8);
      v22 = v19 + *(v21 + 72) * v17;
      v23 = v29;
      (*(v21 + 16))(v29, v22, v20);
      *(v23 + *(v31 + 48)) = *(*(v18 + 56) + v17);
      sub_2380F1A54(v23, v8);
      v24 = v33;
      v25 = v30(v8);
      v4 = v24;
      if (v24)
      {
        sub_238071284(v8, &unk_27DEEBB90, &unk_23815A7A0);

        return;
      }

      if (v25)
      {
        break;
      }

      v13 &= v13 - 1;
      sub_238071284(v8, &unk_27DEEBB90, &unk_23815A7A0);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v28;
    sub_2380F1A54(v8, v28);
    (*(v27 + 56))(v26, 0, 1, v31);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        (*(v27 + 56))(v28, 1, 1, v31);
        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v33 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2380D222C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _DDNodeViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_2380F1924(v12, v10, type metadata accessor for _DDNodeViewModel);
      v14 = a1(v10);
      if (v3)
      {
        return sub_2380F198C(v10, type metadata accessor for _DDNodeViewModel);
      }

      if (v14)
      {
        break;
      }

      sub_2380F198C(v10, type metadata accessor for _DDNodeViewModel);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_2380F19EC(v10, v18, type metadata accessor for _DDNodeViewModel);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_2380D23F8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_238152BAC();
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

void sub_2380D260C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v42 = sub_2381536AC();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v31 - v11;
  v12 = type metadata accessor for DecorationIdentifier(0) - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 56);
  v20 = (v17 + 63) >> 6;
  v40 = (v8 + 48);
  v35 = v8;
  v38 = (v8 + 32);
  v21 = v13;
  v43 = a3;

  v22 = 0;
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v22;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_2380F1924(*(v43 + 48) + *(v21 + 72) * (__clz(__rbit64(v19)) | (v22 << 6)), v15, type metadata accessor for DecorationIdentifier);
    v41(v15);
    if (v3)
    {
      sub_2380F198C(v15, type metadata accessor for DecorationIdentifier);

      return;
    }

    v19 &= v19 - 1;
    sub_2380F198C(v15, type metadata accessor for DecorationIdentifier);
    if ((*v40)(v7, 1, v42) == 1)
    {
      sub_238071284(v7, &qword_27DEEC4E8, &qword_23815C178);
    }

    else
    {
      v34 = v21;
      v24 = *v38;
      (*v38)(v36, v7, v42);
      v33 = v24;
      v24(v37, v36, v42);
      v25 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2380BBADC(0, v25[2] + 1, 1, v25);
      }

      v27 = v25[2];
      v26 = v25[3];
      v39 = v25;
      v28 = v27 + 1;
      v21 = v34;
      if (v27 >= v26 >> 1)
      {
        v31 = v27;
        v32 = v27 + 1;
        v30 = sub_2380BBADC((v26 > 1), v27 + 1, 1, v39);
        v27 = v31;
        v28 = v32;
        v39 = v30;
      }

      v29 = v39;
      v39[2] = v28;
      v33(&v29[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27], v37, v42);
    }
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_2380D2A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2380712E4(a3, v25 - v10, &qword_27DEEBA00, &qword_23815B4A0);
  v12 = sub_238154FBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238071284(v11, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238154F3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238154D3C() + 32;
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

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

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

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
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

uint64_t sub_2380D2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2380712E4(a3, v25 - v10, &qword_27DEEBA00, &qword_23815B4A0);
  v12 = sub_238154FBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238071284(v11, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238154F3C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238154D3C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E0, &qword_23815C148);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v22;
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

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E0, &qword_23815C148);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2380D3060(uint64_t a1)
{
  v2 = type metadata accessor for DecorationIdentifier(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = sub_2380F15B0(&qword_27DEEC4F0, type metadata accessor for DecorationIdentifier, byte_23815A1D4);
  result = MEMORY[0x2383E9660](v12, v2, v13);
  v15 = 0;
  v23 = result;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  for (i = (v16 + 63) >> 6; v18; result = sub_2380F198C(v9, type metadata accessor for DecorationIdentifier))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_2380F1924(*(a1 + 48) + *(v3 + 72) * (v21 | (v20 << 6)), v11, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v11, v6, type metadata accessor for DecorationIdentifier);
    sub_2380EB4D8(v9, v6);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 64 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380D32AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238154D8C();
  v5 = MEMORY[0x2383E9660](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
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
  v7 = sub_238154DFC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_2380EBCF4(v13, v9, v10);

      v9 = sub_238154DFC();
      v10 = v11;
    }

    while (v11);
    v5 = v18;
  }

  return v5;
}

uint64_t sub_2380D336C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC3F0);
  __swift_project_value_buffer(v0, qword_27DEEC3F0);
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t AirDropDiscoveryView.sessionID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AirDropDiscoveryView.isPreviewVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

void sub_2380D348C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2380D350C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t AirDropDiscoveryView.isPreviewVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t (*AirDropDiscoveryView.isPreviewVisible.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a1 + 8) = *(a1 + 9);
  return sub_2380D368C;
}

uint64_t sub_2380D368C(uint64_t *a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;

  return sub_238152A9C();
}

Swift::Void __swiftcall AirDropDiscoveryView.setIsPreviewVisible(isVisible:)(Swift::Bool isVisible)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
}

uint64_t AirDropDiscoveryView.previewImageData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return v1;
}

double sub_2380D37DC@<D0>(_OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_2380D383C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a2[9];
  v6 = a2[10];
  sub_2380E6764(v5, v6);

  sub_2380E6764(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v5, v6);

  return result;
}

double AirDropDiscoveryView.previewImageData.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  sub_2380E6764(v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v4, v5);

  return result;
}

void (*AirDropDiscoveryView.previewImageData.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[9];
  v6 = v1[10];
  v4[10] = v5;
  v4[11] = v6;
  v7 = v1[11];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  sub_2380E6764(v5, v6);

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return sub_2380D3A0C;
}

void sub_2380D3A0C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  v4 = v3[6];
  v3[8] = v4;
  v5 = v3[7];
  v3[5] = v3[12];
  v3[9] = v5;
  if (a2)
  {
    sub_2380E6764(v4, v5);
    sub_23815471C();
    sub_238087244(v3[3], v3[4]);

    sub_238087244(v3[6], v3[7]);
  }

  else
  {
    sub_23815471C();
    sub_238087244(v3[3], v3[4]);
  }

  free(v3);
}

uint64_t AirDropDiscoveryView.$previewImageData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815472C();
  return v1;
}

double AirDropDiscoveryView.init(airDropClient:bundleID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AirDropDiscoveryView.init(airDropClient:bundleID:previewImageLoader:)(a1, a2, a3, &unk_23815BE50, 0, v9);
  v5 = v13;
  *(a4 + 64) = v12;
  *(a4 + 80) = v5;
  *(a4 + 96) = v14;
  *(a4 + 112) = v15;
  v6 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a4 + 32) = v10;
  *(a4 + 48) = v8;
  return result;
}

uint64_t sub_2380D3BA4()
{
  sub_238154F8C();
  *(v0 + 16) = sub_238154F7C();
  v2 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380D3C38, v2, v1);
}

uint64_t sub_2380D3C38()
{

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

unint64_t AirDropDiscoveryView.init(airDropClient:bundleID:previewImageLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v53 = a3;
  v60 = a2;
  v58 = a1;
  v63 = sub_238152E1C();
  v57 = *(v63 - 8);
  v7 = MEMORY[0x28223BE20](v63);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = &v50 - v9;
  v10 = sub_238152DEC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_238152E0C();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2381527EC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC410, &unk_23815BE58);
  swift_allocObject();
  *(a6 + 24) = sub_238152A0C();
  sub_2381527DC();
  sub_23815279C();
  (*(v15 + 8))(v17, v14);
  v18 = sub_238154DBC();
  result = sub_238154DBC();
  if (result >> 14 < v18 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_238154D9C();
    v20 = sub_238154E8C();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x2383E9380](v20, v22, v24, v26);
    v29 = v28;

    *(a6 + 56) = v27;
    *(a6 + 64) = v29;
    v65 = xmmword_23815BDB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
    sub_2381546FC();
    v30 = v67;
    *(a6 + 72) = v66;
    *(a6 + 88) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC418, &qword_23815BE68);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_23815BDC0;
    sub_238152D9C();
    sub_238152DCC();
    sub_238152DBC();
    sub_238152DAC();
    *&v66 = v31;
    sub_2380F15B0(&qword_27DEEBA08, MEMORY[0x277CD90C8], MEMORY[0x277CD90D0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC420, &unk_23815BE70);
    sub_2380711D4(&qword_27DEEC428, &qword_27DEEC420, &unk_23815BE70, MEMORY[0x277D83970]);
    sub_23815537C();
    v32 = v13;
    v52 = v13;
    sub_238152DFC();
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC430, &qword_23815E820) + 48);
    v34 = v54;
    *v54 = 0x706F7264726961;
    *(v34 + 1) = 0xE700000000000000;
    (*(v61 + 16))(&v34[v33], v32, v62);
    v35 = v57;
    v36 = v63;
    (*(v57 + 104))(v34, *MEMORY[0x277CD90A8], v63);
    (*(v35 + 16))(v59, v34, v36);
    sub_238152CEC();
    v37 = v53;
    v51 = sub_238152CDC();
    type metadata accessor for _DDContactInfoCache(0);
    swift_allocObject();
    v38 = sub_2380C1928();
    type metadata accessor for _DDAirDropMetadataCache(0);
    v39 = swift_allocObject();
    v40 = v58;

    *&v66 = sub_2380EED1C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF70, &qword_23815BE80);
    sub_238152A5C();
    *(v39 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v40;
    type metadata accessor for DeviceBrowserViewModel(0);
    swift_allocObject();
    v41 = sub_2380A0DD8(v59, v51, v38, v39);
    *(a6 + 32) = v60;
    *(a6 + 40) = v37;
    *a6 = v41;
    *(a6 + 8) = v40;
    v42 = swift_allocObject();
    swift_retain_n();
    *&v66 = sub_2380EED1C(MEMORY[0x277D84F90]);
    sub_238152A5C();
    *(v42 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v40;
    *(a6 + 16) = v42;
    v43 = v56;
    *(a6 + 96) = v55;
    *(a6 + 104) = v43;
    *(a6 + 112) = 0;
    v45 = type metadata accessor for PreviewImageFrameReportingCoordinator(0, v44);
    v46 = objc_allocWithZone(v45);
    v47 = &v46[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame];
    *v47 = 0u;
    *(v47 + 1) = 0u;
    v48 = &v46[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageContentFrame];
    *v48 = 0u;
    *(v48 + 1) = 0u;
    *&v46[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_airDropClient] = v40;
    v64.receiver = v46;
    v64.super_class = v45;
    v49 = objc_msgSendSuper2(&v64, sel_init);
    (*(v35 + 8))(v34, v63);
    result = (*(v61 + 8))(v52, v62);
    *(a6 + 48) = v49;
  }

  return result;
}

uint64_t AirDropDiscoveryView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v29 = v1[4];
  v30 = v3;
  v5 = v1[5];
  v31 = v1[6];
  v6 = v1[1];
  v25 = *v1;
  v26 = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v27 = v1[2];
  v28 = v7;
  v10 = v1[6];
  v23[5] = v5;
  v23[6] = v10;
  v23[0] = v9;
  v23[1] = v8;
  v23[2] = v27;
  v32 = *(v1 + 14);
  v24 = *(v1 + 14);
  v23[3] = v4;
  v23[4] = v29;
  sub_2380D45B8(a1);
  v11 = swift_allocObject();
  v12 = v30;
  *(v11 + 80) = v29;
  *(v11 + 96) = v12;
  *(v11 + 112) = v31;
  *(v11 + 128) = v32;
  v13 = v26;
  *(v11 + 16) = v25;
  *(v11 + 32) = v13;
  v14 = v28;
  *(v11 + 48) = v27;
  *(v11 + 64) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC450, &qword_23815BE98) + 36));
  sub_23815396C();
  sub_2380EEFF8(&v25, v22);
  sub_238154F9C();
  *v15 = &unk_23815BE90;
  v15[1] = v11;
  v16 = swift_allocObject();
  v17 = v30;
  *(v16 + 80) = v29;
  *(v16 + 96) = v17;
  *(v16 + 112) = v31;
  *(v16 + 128) = v32;
  v18 = v26;
  *(v16 + 16) = v25;
  *(v16 + 32) = v18;
  v19 = v28;
  *(v16 + 48) = v27;
  *(v16 + 64) = v19;
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC458, &unk_23815BEA0) + 36));
  *v20 = 0;
  v20[1] = 0;
  v20[2] = sub_2380EF030;
  v20[3] = v16;
  return sub_2380EEFF8(&v25, v23);
}

void sub_2380D45B8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - v4;
  v5 = v1[5];
  v76 = v1[4];
  v77 = v5;
  v78 = v1[6];
  v79 = *(v1 + 14);
  v6 = v1[1];
  v72 = *v1;
  v73 = v6;
  v7 = v1[3];
  v74 = v1[2];
  v75 = v7;
  v65 = v72;
  v68 = *(v1 + 72);
  v69 = *(v1 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  v63 = v71;
  v64 = v70;
  v8 = v75;
  v9 = swift_allocObject();
  v10 = v77;
  *(v9 + 80) = v76;
  *(v9 + 96) = v10;
  *(v9 + 112) = v78;
  *(v9 + 128) = v79;
  v11 = v73;
  *(v9 + 16) = v72;
  *(v9 + 32) = v11;
  v12 = v75;
  *(v9 + 48) = v74;
  *(v9 + 64) = v12;
  LOBYTE(v70) = 0;
  v66 = v8;
  sub_2380EEFF8(&v72, &v68);
  sub_2381546FC();
  v13 = *(&v68 + 1);
  *(a1 + 32) = v68;
  *(a1 + 40) = v13;
  v14 = type metadata accessor for _DDDevicePickerView(0);
  v15 = v14[7];
  *(a1 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[8];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v17 = v14[9];
  *(a1 + v17) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v14[10];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v14[11];
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v20 = v14[12];
  *(a1 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v21 = (a1 + v14[13]);
  [objc_allocWithZone(type metadata accessor for _DDAskToAirDropManager(0)) init];
  sub_2380F15B0(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager, byte_23815D738);
  v22 = sub_2381539BC();
  v24 = v23;
  *v21 = v22;
  v21[1] = v23;
  v25 = (a1 + v14[14]);
  v26 = objc_allocWithZone(type metadata accessor for _DDWirelessSettingsController(0));
  v62 = v24;
  [v26 init];
  sub_2380F15B0(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController, asc_23815DBE4);
  *v25 = sub_2381539BC();
  v25[1] = v27;
  v28 = (a1 + v14[15]);
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v29 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager(0);
  sub_2380F15B0(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
  v30 = v29;
  *v28 = sub_2381539BC();
  v28[1] = v31;
  v32 = (a1 + v14[16]);
  v33 = qword_27DEEA030;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_2380F15B0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v36 = v35;
  *v32 = sub_2381539BC();
  v32[1] = v37;
  v38 = v14[17];
  if (qword_27DEEA128 != -1)
  {
    swift_once();
  }

  v39 = (a1 + v38);
  v70 = qword_27DEEDA60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2381546FC();
  v40 = *(&v68 + 1);
  *v39 = v68;
  v39[1] = v40;
  v41 = a1 + v14[18];
  LOBYTE(v70) = 0;
  sub_2381546FC();
  v42 = *(&v68 + 1);
  *v41 = v68;
  *(v41 + 8) = v42;
  v43 = a1 + v14[19];
  LOBYTE(v70) = 0;
  sub_2381546FC();
  v44 = *(&v68 + 1);
  *v43 = v68;
  *(v43 + 8) = v44;
  v45 = a1 + v14[20];
  LOBYTE(v70) = 0;
  sub_2381546FC();
  v46 = *(&v68 + 1);
  *v45 = v68;
  *(v45 + 8) = v46;
  swift_unknownObjectWeakInit();
  *(a1 + v14[26]) = 4;
  *(a1 + v14[27]) = 5;
  *(a1 + v14[28]) = xmmword_23815BDD0;
  type metadata accessor for _DDContactInfoCache(0);
  sub_2380F15B0(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache, byte_23815B404);

  *(a1 + 16) = sub_2381539BC();
  *(a1 + 24) = v47;
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_2380F15B0(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel, a5_0);

  *a1 = sub_2381539BC();
  *(a1 + 8) = v48;
  sub_2380BDAE8();
  v49 = (a1 + v14[25]);
  *v49 = v50;
  v49[1] = v51;
  v52 = (a1 + v14[22]);
  v53 = v63;
  *v52 = v64;
  v52[1] = v53;
  v54 = v66;
  swift_unknownObjectWeakAssign();
  v55 = (a1 + v14[23]);
  *v55 = sub_2380F152C;
  v55[1] = v9;
  *(a1 + v14[24]) = xmmword_23815BDE0;
  v56 = &v34[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  *v56 = 0x706F7264726961;
  *(v56 + 1) = 0xE700000000000000;

  v57 = sub_238154FBC();
  v58 = v67;
  (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v60 = v62;
  v59[4] = v62;
  v61 = v60;
  sub_2380D2A4C(0, 0, v58, &unk_23815C430, v59);
}

uint64_t sub_2380D4DD0(uint64_t a1)
{
  v1[17] = a1;
  sub_238154F8C();
  v1[18] = sub_238154F7C();
  v3 = sub_238154F3C();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_2380D4E68, v3, v2);
}

uint64_t sub_2380D4E68()
{
  v1 = *(v0 + 136);
  sub_2380A54D4();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v4;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  *(v0 + 128) = *(v1 + 14);
  *(v0 + 96) = v6;
  *(v0 + 112) = v7;
  *(v0 + 80) = v5;
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_2380D4F2C;

  return sub_2380D50AC();
}

uint64_t sub_2380D4F2C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_2380D504C, v3, v2);
}

uint64_t sub_2380D504C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D50AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  *(v1 + 384) = swift_task_alloc();
  v2 = sub_23815313C();
  *(v1 + 392) = v2;
  *(v1 + 400) = *(v2 - 8);
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  v3 = sub_238152F3C();
  *(v1 + 424) = v3;
  *(v1 + 432) = *(v3 - 8);
  *(v1 + 440) = swift_task_alloc();
  v4 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v4;
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = *(v0 + 112);
  v5 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v5;
  v6 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v6;
  *(v1 + 448) = sub_238154F8C();
  *(v1 + 456) = sub_238154F7C();
  v8 = sub_238154F3C();
  *(v1 + 464) = v8;
  *(v1 + 472) = v7;

  return MEMORY[0x2822009F8](sub_2380D5268, v8, v7);
}

uint64_t sub_2380D5268()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5A0, &qword_23815C290);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238158810;
  sub_238152F0C();
  sub_238152F1C();
  *(v0 + 376) = v4;
  sub_2380F15B0(&qword_27DEEC5A8, MEMORY[0x277D547F0], MEMORY[0x277D547F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5B0, &qword_23815C298);
  sub_2380711D4(&qword_27DEEC5B8, &qword_27DEEC5B0, &qword_23815C298, MEMORY[0x277D83970]);
  sub_23815537C();
  LOBYTE(v4) = sub_238152EEC();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) != 0 && (v6 = *(v0 + 408), v5 = *(v0 + 416), v7 = *(v0 + 392), v8 = *(v0 + 400), *(v0 + 480) = *(v0 + 24), sub_23815316C(), (*(v8 + 104))(v6, *MEMORY[0x277D54970], v7), sub_2380F15B0(&qword_27DEEC5C0, MEMORY[0x277D549A0], MEMORY[0x277D549A8]), v9 = sub_238154C7C(), v10 = *(v8 + 8), v10(v6, v7), v10(v5, v7), (v9 & 1) == 0))
  {
    v21 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 80);
    *(v0 + 336) = v21;
    *(v0 + 352) = *(v0 + 112);
    *(v0 + 368) = *(v0 + 128);
    v22 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v22;
    v23 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v23;
    v24 = swift_task_alloc();
    *(v0 + 488) = v24;
    *v24 = v0;
    v24[1] = sub_2380D5654;

    return sub_2380E1384();
  }

  else
  {
    v11 = *(v0 + 384);

    v12 = sub_238154FBC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_2380EEFF8(v0 + 16, v0 + 136);
    v13 = sub_238154F7C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v13;
    *(v14 + 24) = v15;
    v16 = *(v0 + 96);
    *(v14 + 96) = *(v0 + 80);
    *(v14 + 112) = v16;
    *(v14 + 128) = *(v0 + 112);
    *(v14 + 144) = *(v0 + 128);
    v17 = *(v0 + 32);
    *(v14 + 32) = *(v0 + 16);
    *(v14 + 48) = v17;
    v18 = *(v0 + 64);
    *(v14 + 64) = *(v0 + 48);
    *(v14 + 80) = v18;
    sub_2380D2A4C(0, 0, v11, &unk_23815C2A8, v14);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2380D5654()
{
  v2 = *v1;
  v2[62] = v0;

  if (v0)
  {
    v3 = v2[58];
    v4 = v2[59];

    return MEMORY[0x2822009F8](sub_2380D5974, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[63] = v5;
    *v5 = v2;
    v5[1] = sub_2380D57C0;

    return MEMORY[0x2821B5F88]();
  }
}

uint64_t sub_2380D57C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_2380F1AE0;
  }

  else
  {
    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_2380D58E4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2380D58E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D5974()
{
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 496);
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEC3F0);
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 496);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_238060000, v4, v5, "Error tracking transfer updates %@", v8, 0xCu);
    sub_238071284(v9, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v9, -1, -1);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  *(v0 + 504) = v12;
  *v12 = v0;
  v12[1] = sub_2380D57C0;

  return MEMORY[0x2821B5F88]();
}

uint64_t sub_2380D5B54(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v52 - v6;
  v7 = &qword_23815A090;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v52 - v9;
  v11 = sub_2381527EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v52 - v15;
  v17 = v2[4];
  v18 = v2[6];
  v62 = v2[5];
  v63 = v18;
  v19 = v2[1];
  v57 = *v2;
  v20 = v2[2];
  v21 = v2[3];
  v58 = v19;
  v59 = v20;
  v64 = *(v2 + 14);
  v60 = v21;
  v61 = v17;
  v22 = a1;
  v24 = v23;
  sub_2380712E4(v22, v10, &qword_27DEEC9F0, &qword_23815A090);
  if ((*(v12 + 48))(v10, 1, v24) == 1)
  {
    sub_238071284(v10, &qword_27DEEC9F0, &qword_23815A090);
    if (a2 >> 62)
    {
      if (!sub_2381554FC())
      {
        goto LABEL_4;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v56[0] = 0;
      return sub_2381529EC();
    }

    sub_2381554EC();
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v12 + 32);
  (v7)(v16, v10, v24);
  v26 = v64;
  v65 = v64;
  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
    v27 = swift_allocObject();
    v53 = v7;
    v28 = v27;
    *(v27 + 16) = xmmword_2381590E0;
    *(v27 + 32) = v26;
    v29 = sub_238154FBC();
    (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
    v30 = v54;
    (*(v12 + 16))(v54, v16, v24);
    sub_238154F8C();
    v52[1] = v12 + 32;
    v31 = v16;
    sub_2380712E4(&v65, v56, &qword_27DEEC610, &qword_23815C458);
    sub_2380712E4(&v65, v56, &qword_27DEEC610, &qword_23815C458);
    sub_2380EEFF8(&v57, v56);
    v32 = sub_238154F7C();
    v33 = v24;
    v34 = (*(v12 + 80) + 160) & ~*(v12 + 80);
    v35 = swift_allocObject();
    v36 = v60;
    *(v35 + 104) = v61;
    v37 = v63;
    *(v35 + 120) = v62;
    *(v35 + 136) = v37;
    *(v35 + 40) = v57;
    v38 = v59;
    *(v35 + 56) = v58;
    *(v35 + 72) = v38;
    v39 = MEMORY[0x277D85700];
    *(v35 + 16) = v32;
    *(v35 + 24) = v39;
    *(v35 + 32) = v28;
    *(v35 + 152) = v64;
    *(v35 + 88) = v36;
    (v53)(v35 + v34, v30, v33);
    sub_2381351C8(0, 0, v55, &unk_23815C460, v35);

    sub_238071284(&v65, &qword_27DEEC610, &qword_23815C458);
    return (*(v12 + 8))(v31, v33);
  }

  if (a2 >> 62)
  {
LABEL_12:
    if (!sub_2381554FC())
    {
      goto LABEL_13;
    }

LABEL_9:
    v40 = sub_238154FBC();
    (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
    v41 = *(v12 + 16);
    v53 = v7;
    v42 = v54;
    v41(v54, v16, v24);
    sub_238154F8C();
    sub_2380EEFF8(&v57, v56);

    v43 = sub_238154F7C();
    v44 = v24;
    v45 = (*(v12 + 80) + 160) & ~*(v12 + 80);
    v46 = v16;
    v47 = swift_allocObject();
    v48 = v60;
    *(v47 + 104) = v61;
    v49 = v63;
    *(v47 + 120) = v62;
    *(v47 + 136) = v49;
    *(v47 + 40) = v57;
    v50 = v59;
    *(v47 + 56) = v58;
    *(v47 + 72) = v50;
    v51 = MEMORY[0x277D85700];
    *(v47 + 16) = v43;
    *(v47 + 24) = v51;
    *(v47 + 32) = a2;
    *(v47 + 152) = v64;
    *(v47 + 88) = v48;
    (v53)(v47 + v45, v42, v44);
    sub_2381351C8(0, 0, v55, &unk_23815C448, v47);

    return (*(v12 + 8))(v46, v44);
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_13:
  sub_2381529FC();
  return (*(v12 + 8))(v16, v24);
}

uint64_t sub_2380D61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC490, &qword_23815BF08);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_238152F6C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_23815334C();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = sub_2381526CC();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v11 = sub_238152FAC();
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_238154F8C();
  v6[21] = sub_238154F7C();
  v13 = sub_238154F3C();
  v6[22] = v13;
  v6[23] = v12;

  return MEMORY[0x2822009F8](sub_2380D645C, v13, v12);
}

uint64_t sub_2380D645C()
{
  sub_238154B0C();
  v1 = sub_238154ACC();
  *(v0 + 192) = v1;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_2380D6520;

  return MEMORY[0x2821B5E38](v1, 0, 0xF000000000000000);
}

uint64_t sub_2380D6520(uint64_t a1)
{
  v3 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v4 = v3[22];
    v5 = v3[23];
    v6 = sub_2380D6EC0;
  }

  else
  {

    v4 = v3[22];
    v5 = v3[23];
    v6 = sub_2380D663C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2380D663C()
{
  v68 = v0;
  v1 = v0;
  v2 = v0[26];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[18];
    v64 = *(v4 + 16);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v59 = (v0[12] + 8);
    v60 = v0[15];
    v62 = (v4 + 8);
    v63 = *(v4 + 72);
    v6 = MEMORY[0x277D84F90];
    v7 = v5;
    v65 = *(v2 + 16);
    do
    {
      v8 = v1[20];
      v9 = v1[17];
      v10 = v1[13];
      v11 = v1[11];
      v64(v8, v7, v9);
      sub_238152F8C();
      sub_23815333C();
      (*v59)(v10, v11);
      v12 = v9;
      v13 = *v62;
      (*v62)(v8, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2380BBAB4(0, v6[2] + 1, 1, v6);
      }

      v15 = v6[2];
      v14 = v6[3];
      v1 = v66;
      if (v15 >= v14 >> 1)
      {
        v6 = sub_2380BBAB4((v14 > 1), v15 + 1, 1, v6);
      }

      v16 = v66[16];
      v17 = v66[14];
      v6[2] = v15 + 1;
      (*(v60 + 32))(v6 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v15, v16, v17);
      v7 += v63;
      --v3;
    }

    while (v3);
    v61 = v6;
    v18 = (v66[9] + 8);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = v1[19];
      v21 = v1[17];
      v22 = v1[10];
      v23 = v1[8];
      v64(v20, v5, v21);
      sub_238152F9C();
      v24 = sub_238152F5C();
      v26 = v25;
      (*v18)(v22, v23);
      v13(v20, v21);
      if (v26 >> 60 == 15)
      {
        v1 = v66;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2380BB9A8(0, *(v19 + 2) + 1, 1, v19);
        }

        v1 = v66;
        v28 = *(v19 + 2);
        v27 = *(v19 + 3);
        if (v28 >= v27 >> 1)
        {
          v19 = sub_2380BB9A8((v27 > 1), v28 + 1, 1, v19);
        }

        *(v19 + 2) = v28 + 1;
        v29 = &v19[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v26;
      }

      v5 += v63;
      --v65;
    }

    while (v65);

    v30 = v61;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
  }

  v1[28] = v30;
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v31 = sub_23815293C();
  __swift_project_value_buffer(v31, qword_27DEEC3F0);

  v32 = sub_23815291C();
  v33 = sub_2381550FC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v1[14];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v67 = v36;
    *v35 = 134218499;
    *(v35 + 4) = v30[2];

    *(v35 + 12) = 2160;
    *(v35 + 14) = 1752392040;
    *(v35 + 22) = 2081;
    v37 = v30;
    v38 = MEMORY[0x2383E9520](v30, v34);
    v40 = sub_238085EAC(v38, v39, &v67);

    *(v35 + 24) = v40;
    v1 = v66;
    _os_log_impl(&dword_238060000, v32, v33, "Loaded items (count=%ld): %{private,mask.hash}s", v35, 0x20u);
    v41 = __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x2383EA8A0](v36, -1, -1, v41);
    MEMORY[0x2383EA8A0](v35, -1, -1);
  }

  else
  {
    v37 = v30;
  }

  v42 = sub_23815291C();
  v43 = sub_2381550FC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x2383E9520](v19, MEMORY[0x277CC9318]);
    v48 = sub_238085EAC(v46, v47, &v67);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_238060000, v42, v43, "Item preview data %s", v44, 0xCu);
    v49 = __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x2383EA8A0](v45, -1, -1, v49);
    MEMORY[0x2383EA8A0](v44, -1, -1);
  }

  if (*(v19 + 2))
  {
    v51 = *(v19 + 4);
    v50 = *(v19 + 5);
    sub_238085D80(v51, v50);
  }

  else
  {
    v51 = 0;
    v50 = 0xF000000000000000;
  }

  v1[29] = v51;
  v1[30] = v50;
  v52 = v1[3];

  v53 = *(v52 + 32);
  v54 = *(v52 + 40);
  v55 = swift_task_alloc();
  v1[31] = v55;
  *v55 = v1;
  v55[1] = sub_2380D6C68;
  v56 = v1[7];
  v57 = v1[4];

  return MEMORY[0x2821B5FA0](v56, v37, v57, v51, v50, v53, v54, 0);
}

uint64_t sub_2380D6C68()
{
  v2 = *v1;
  v2[32] = v0;

  v3 = v2[30];
  v4 = v2[29];
  if (v0)
  {
    sub_238087244(v4, v3);

    v5 = v2[22];
    v6 = v2[23];
    v7 = sub_2380D6F88;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    sub_238087244(v4, v3);

    v5 = v2[22];
    v6 = v2[23];
    v7 = sub_2380D6E08;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2380D6E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D6EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D6F88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AirDropDiscoveryView.endpoints.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC410, &unk_23815BE58);
  v1 = sub_2380711D4(&qword_27DEEC460, &qword_27DEEC410, &unk_23815BE58, MEMORY[0x277CBCE20]);
  return MEMORY[0x2383E7100](v0, v1);
}

uint64_t AirDropDiscoveryView.endpoint(for:)@<X0>(uint64_t a1@<X8>)
{
  sub_238152A2C();
  sub_2380D23F8(sub_2380EF054, v3, a1);
}

uint64_t sub_2380D71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238154F8C();
  v4[3] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2380D7258, v6, v5);
}

uint64_t sub_2380D7258()
{
  sub_2380A54D4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2380D72F8;

  return MEMORY[0x2821B5F80]();
}

uint64_t sub_2380D72F8()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2380F1B1C, v3, v4);
}

double sub_2380D743C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-v5 - 8];
  v7 = v2[4];
  v8 = v2[6];
  v29 = v2[5];
  v30 = v8;
  v9 = v2[1];
  v24 = *v2;
  v10 = v2[2];
  v11 = v2[3];
  v25 = v9;
  v26 = v10;
  v31 = *(v2 + 14);
  v27 = v11;
  v28 = v7;
  v12 = sub_238154FBC();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_238154F8C();
  sub_2380EEFF8(&v24, v23);
  v13 = sub_238154F7C();
  v14 = swift_allocObject();
  v15 = v29;
  v16 = v30;
  v17 = v27;
  *(v14 + 96) = v28;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  v18 = v25;
  v19 = v26;
  *(v14 + 32) = v24;
  *(v14 + 48) = v18;
  v20 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v20;
  *(v14 + 144) = v31;
  *(v14 + 64) = v19;
  *(v14 + 80) = v17;
  sub_2380D2A4C(0, 0, v6, a2, v14);

  return result;
}

uint64_t sub_2380D75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238154F8C();
  v4[3] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2380D7648, v6, v5);
}

uint64_t sub_2380D7648()
{
  sub_2380A8BA4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2380D76E8;

  return MEMORY[0x2821B5F88]();
}

uint64_t sub_2380D76E8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_2380F1B1C;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_2380D780C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2380D780C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380D78D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v180 = a3;
  v181 = a6;
  v162 = a4;
  v163 = a5;
  v170 = a2;
  v176 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v139 = *(v8 - 8);
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  v138 = (&v135 - v9);
  v10 = sub_23815362C();
  v157 = *(v10 - 8);
  v158 = v10;
  MEMORY[0x28223BE20](v10);
  v151 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v137 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v153 = &v135 - v15;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v154 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v152 = (&v135 - v16);
  v164 = sub_23815354C();
  v156 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v160 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v18 = MEMORY[0x28223BE20](v168);
  v148 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v150 = &v135 - v20;
  v21 = sub_2381536EC();
  v165 = *(v21 - 8);
  v166 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v159 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v167 = &v135 - v24;
  v177 = type metadata accessor for _DDNodeDecoration(0);
  v155 = *(v177 - 8);
  v25 = MEMORY[0x28223BE20](v177);
  v136 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v141 = &v135 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v147 = &v135 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v149 = &v135 - v32;
  MEMORY[0x28223BE20](v31);
  v175 = &v135 - v33;
  v34 = sub_23815305C();
  v173 = *(v34 - 8);
  v174 = v34;
  MEMORY[0x28223BE20](v34);
  v179 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2381527EC();
  v171 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v172 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2381536AC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v7[5];
  v192 = v7[4];
  v193 = v43;
  v194 = v7[6];
  v195 = *(v7 + 14);
  v44 = v7[1];
  v188 = *v7;
  v189 = v44;
  v45 = v7[3];
  v190 = v7[2];
  v191 = v45;
  v46 = *(v40 + 16);
  v178 = v40 + 16;
  v169 = v46;
  v46(v42, v181, v39);
  (*(v37 + 16))(&v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v180, v36);
  v47 = *(v40 + 80);
  v48 = (v47 + 136) & ~v47;
  v49 = v47 | 7;
  v50 = *(v37 + 80);
  v142 = v49;
  v143 = v48 + v41;
  v51 = (v48 + v41 + v50) & ~v50;
  v52 = swift_allocObject();
  v53 = v193;
  *(v52 + 80) = v192;
  *(v52 + 96) = v53;
  *(v52 + 112) = v194;
  *(v52 + 128) = v195;
  v54 = v189;
  *(v52 + 16) = v188;
  *(v52 + 32) = v54;
  v55 = v191;
  *(v52 + 48) = v190;
  *(v52 + 64) = v55;
  v56 = *(v40 + 32);
  v144 = v48;
  v145 = v42;
  v146 = v40 + 32;
  v56(v52 + v48, v42, v39);
  v57 = v52 + v51;
  v58 = v174;
  v59 = v179;
  (*(v37 + 32))(v57, v172, v171);
  v60 = v173;
  (*(v173 + 16))(v59, v176, v58);
  v61 = (*(v60 + 88))(v59, v58);
  if (v61 == *MEMORY[0x277D548C8])
  {
    (*(v60 + 96))(v59, v58);
    sub_2380EEFF8(&v188, v187);

    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC528, &qword_23815C1B0) + 64);
    v63 = v175;
    *v175 = sub_2380EF7C8;
    *(v63 + 8) = v52;
    swift_storeEnumTagMultiPayload();
    v64 = v177;
    v169(v63 + *(v177 + 24), v181, v39);
    *(v63 + *(v64 + 20)) = v170;

    sub_2380A9944(v180, v63);

    sub_2380F198C(v63, type metadata accessor for _DDNodeDecoration);
    v65 = sub_23815361C();
    return (*(*(v65 - 8) + 8))(&v59[v62], v65);
  }

  v67 = v175;
  v176 = v39;
  if (v61 == *MEMORY[0x277D548B8])
  {
    (*(v60 + 96))(v59, v58);
    sub_2380EEFF8(&v188, v187);

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC520, &qword_23815C1A8);
    v69 = *(v68 + 48);
    v175 = v68;

    v70 = v165;
    v71 = v166;
    v72 = v167;
    (*(v165 + 32))(v167, &v59[v69], v166);
    v73 = v159;
    (*(v70 + 16))(v159, v72, v71);
    if ((*(v70 + 88))(v73, v71) == *MEMORY[0x277D54BF8])
    {
      (*(v70 + 96))(v73, v71);
      v74 = *(v73 + 1);
      v75 = v73[16];
      v76 = *(v73 + 4);
      v174 = *(v73 + 3);
      v172 = v74;
      v173 = v76;
      v77 = COERCE_DOUBLE(sub_2381536DC());
      v79 = v77;
      if (v77 <= 0.1)
      {
        v79 = 0.1;
      }

      v80 = v79;
      v81 = v78 & 1;
      if (v78)
      {
        v80 = v77;
      }

      v171 = *&v80;
      v82 = v145;
      v83 = v176;
      v84 = v169;
      v169(v145, v181, v176);
      v85 = swift_allocObject();
      v86 = v193;
      *(v85 + 80) = v192;
      *(v85 + 96) = v86;
      *(v85 + 112) = v194;
      *(v85 + 128) = v195;
      v87 = v189;
      *(v85 + 16) = v188;
      *(v85 + 32) = v87;
      v88 = v191;
      *(v85 + 48) = v190;
      *(v85 + 64) = v88;
      v56(v85 + v144, v82, v83);
      v185 = v81;
      v183 = v75;
      v89 = v150;
      *v150 = 1;
      *(v89 + 1) = v186[0];
      *(v89 + 4) = *(v186 + 3);
      *(v89 + 8) = v171;
      *(v89 + 16) = v81;
      *(v89 + 17) = *v184;
      *(v89 + 20) = *&v184[3];
      v90 = v163;
      *(v89 + 24) = v162;
      *(v89 + 32) = v90;
      *(v89 + 40) = v172;
      *(v89 + 48) = v75;
      v59 = v179;
      *(v89 + 49) = *v182;
      *(v89 + 52) = *&v182[3];
      v91 = v173;
      *(v89 + 56) = v174;
      *(v89 + 64) = v91;
      *(v89 + 72) = sub_2380EF9BC;
      *(v89 + 80) = v85;
      swift_storeEnumTagMultiPayload();
      v92 = v177;
      v93 = v149;
      v84(&v149[*(v177 + 24)], v181, v83);
      sub_2380F19EC(v89, v93, type metadata accessor for _DDNodeDecoration.Kind);
      *(v93 + *(v92 + 20)) = v170;
      sub_2380EEFF8(&v188, v187);

      sub_2380A9944(v180, v93);

      sub_2380F198C(v93, type metadata accessor for _DDNodeDecoration);
      (*(v165 + 8))(v167, v166);
    }

    else
    {
      v107 = COERCE_DOUBLE(sub_2381536DC());
      v109 = v107;
      if (v107 <= 0.1)
      {
        v109 = 0.1;
      }

      v110 = v109;
      if (v108)
      {
        v110 = v107;
      }

      v187[0] = v108 & 1;
      LOBYTE(v186[0]) = 1;
      v111 = v148;
      *v148 = 1;
      *(v111 + 8) = v110;
      *(v111 + 16) = v108 & 1;
      v112 = v70;
      v113 = v163;
      *(v111 + 24) = v162;
      *(v111 + 32) = v113;
      *(v111 + 40) = 0;
      *(v111 + 48) = 1;
      *(v111 + 56) = -1;
      *(v111 + 64) = -1;
      *(v111 + 72) = sub_2380EF7C8;
      *(v111 + 80) = v52;
      swift_storeEnumTagMultiPayload();
      v114 = v177;
      v115 = v147;
      v169(&v147[*(v177 + 24)], v181, v176);
      sub_2380F19EC(v111, v115, type metadata accessor for _DDNodeDecoration.Kind);
      *(v115 + *(v114 + 20)) = v170;

      sub_2380A9944(v180, v115);

      sub_2380F198C(v115, type metadata accessor for _DDNodeDecoration);
      v116 = *(v112 + 8);
      v116(v167, v71);
      v116(v73, v71);
    }

    v117 = *(v175 + 20);
    v118 = sub_23815361C();
    return (*(*(v118 - 8) + 8))(&v59[v117], v118);
  }

  else
  {
    v94 = v181;
    if (v61 == *MEMORY[0x277D548E8])
    {
      (*(v60 + 96))(v59, v58);
      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC518, &qword_23815C1A0) + 48);
      v96 = v156;
      v97 = v160;
      v98 = v164;
      (*(v156 + 32))(v160, v59, v164);
      v99 = v154;
      v100 = v152;
      (*(v154 + 32))(v152, &v59[v95], v161);
      v101 = v151;
      (*(v96 + 16))(v151, v97, v98);
      v103 = v157;
      v102 = v158;
      (*(v157 + 104))(v101, *MEMORY[0x277D54B78], v158);
      sub_2380EEFF8(&v188, v187);
      v104 = v153;
      sub_2380D987C(v100, v181, v153);
      (*(v103 + 8))(v101, v102);
      v105 = (*(v155 + 48))(v104, 1, v177);
      v106 = v180;
      if (v105 == 1)
      {

        (*(v99 + 8))(v100, v161);
        (*(v96 + 8))(v160, v164);
        return sub_238071284(v104, &qword_27DEEBA48, &qword_23815BF00);
      }

      else
      {
        v123 = v141;
        sub_2380F19EC(v104, v141, type metadata accessor for _DDNodeDecoration);
        sub_2380A9944(v106, v123);

        sub_2380F198C(v123, type metadata accessor for _DDNodeDecoration);
        (*(v99 + 8))(v100, v161);
        return (*(v96 + 8))(v160, v164);
      }
    }

    else
    {
      v119 = v180;
      v120 = v177;
      if (v61 == *MEMORY[0x277D548B0])
      {
        (*(v60 + 96))(v59, v58);
        swift_storeEnumTagMultiPayload();
        v169(v67 + *(v120 + 24), v94, v176);
        *(v67 + *(v120 + 20)) = v170;
        sub_2380EEFF8(&v188, v187);

        sub_2380A9944(v119, v67);

        sub_2380F198C(v67, type metadata accessor for _DDNodeDecoration);
        v122 = v157;
        v121 = v158;
      }

      else
      {
        v125 = v169;
        v124 = v170;
        v126 = v176;
        if (v61 != *MEMORY[0x277D548E0])
        {
          if (v61 == *MEMORY[0x277D548F0])
          {
            *v175 = sub_2380EF7C8;
            *(v67 + 8) = v52;
          }

          else
          {
            if (v61 != *MEMORY[0x277D548D8])
            {
              sub_2380EEFF8(&v188, v187);

              return (*(v60 + 8))(v59, v58);
            }

            *v175 = sub_2380EF7C8;
            *(v67 + 8) = v52;
          }

          v134 = v124;
          swift_storeEnumTagMultiPayload();
          v125(v67 + *(v120 + 24), v181, v126);
          *(v67 + *(v120 + 20)) = v134;
          sub_2380EEFF8(&v188, v187);

          sub_2380A9944(v180, v67);

          return sub_2380F198C(v67, type metadata accessor for _DDNodeDecoration);
        }

        (*(v60 + 96))(v59, v58);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC510, &unk_23815E6E0);
        v129 = v138;
        v128 = v139;
        v130 = v140;
        (*(v139 + 32))(v138, &v59[*(v127 + 48)], v140);
        sub_2380EEFF8(&v188, v187);
        v131 = v137;
        sub_2380DAF6C(v129, v181, v137);
        if ((*(v155 + 48))(v131, 1, v120) == 1)
        {
          (*(v128 + 8))(v129, v130);

          sub_238071284(v131, &qword_27DEEBA48, &qword_23815BF00);
        }

        else
        {
          v132 = v131;
          v133 = v136;
          sub_2380F19EC(v132, v136, type metadata accessor for _DDNodeDecoration);
          sub_2380A9944(v180, v133);

          sub_2380F198C(v133, type metadata accessor for _DDNodeDecoration);
          (*(v128 + 8))(v129, v130);
        }

        v121 = v164;
        v122 = v156;
      }

      return (*(v122 + 8))(v59, v121);
    }
  }
}

double sub_2380D8C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v4 = sub_2381527EC();
  v24 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2381536AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_238154FBC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, v26, v7);
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v4);
  sub_238154F8C();
  sub_2380EEFF8(a1, v28);
  v15 = sub_238154F7C();
  v16 = (*(v8 + 80) + 152) & ~*(v8 + 80);
  v17 = (v9 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  v20 = *(a1 + 80);
  *(v18 + 96) = *(a1 + 64);
  *(v18 + 112) = v20;
  *(v18 + 128) = *(a1 + 96);
  *(v18 + 144) = *(a1 + 112);
  v21 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v21;
  v22 = *(a1 + 48);
  *(v18 + 64) = *(a1 + 32);
  *(v18 + 80) = v22;
  (*(v8 + 32))(v18 + v16, v10, v7);
  (*(v5 + 32))(v18 + v17, v25, v24);
  sub_2381351C8(0, 0, v13, &unk_23815C268, v18);

  return result;
}

uint64_t sub_2380D8F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v6[9] = type metadata accessor for DecorationIdentifier(0);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  v6[11] = swift_task_alloc();
  v6[12] = sub_238154F8C();
  v6[13] = sub_238154F7C();
  v8 = swift_task_alloc();
  v6[14] = v8;
  *v8 = v6;
  v8[1] = sub_2380D905C;

  return MEMORY[0x2821B5F60](a5);
}

uint64_t sub_2380D905C()
{
  *(*v1 + 120) = v0;

  v3 = sub_238154F3C();
  if (v0)
  {
    v4 = sub_2380D93C0;
  }

  else
  {
    v4 = sub_2380D91B8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2380D91B8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  v6 = sub_2381536AC();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = *(v4 + 20);
  v9 = sub_2381527EC();
  (*(*(v9 - 8) + 16))(v1 + v8, v3, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_238152A7C();
  sub_2380E7D24(v1, v2);
  sub_2380F198C(v1, type metadata accessor for DecorationIdentifier);
  sub_238071284(v2, &qword_27DEEBA48, &qword_23815BF00);
  v10(v0 + 2, 0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2380D93C0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2380D9438(uint64_t a1, uint64_t a2)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-v9 - 8];
  v11 = sub_238154FBC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_238154F8C();
  sub_2380EEFF8(a1, v21);
  v12 = sub_238154F7C();
  v13 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  v16 = *(a1 + 80);
  *(v14 + 96) = *(a1 + 64);
  *(v14 + 112) = v16;
  *(v14 + 128) = *(a1 + 96);
  *(v14 + 144) = *(a1 + 112);
  v17 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v17;
  v18 = *(a1 + 48);
  *(v14 + 64) = *(a1 + 32);
  *(v14 + 80) = v18;
  (*(v5 + 32))(v14 + v13, v7, v4);
  sub_2381351C8(0, 0, v10, &unk_23815C1C0, v14);

  return result;
}

uint64_t sub_2380D9660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_238154F8C();
  v5[3] = sub_238154F7C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2380D9720;

  return MEMORY[0x2821B5F60](a5);
}

uint64_t sub_2380D9720()
{
  *(*v1 + 40) = v0;

  v3 = sub_238154F3C();
  if (v0)
  {
    v4 = sub_2380F1B14;
  }

  else
  {
    v4 = sub_2380F1B20;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2380D987C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v191 = a2;
  v211 = a3;
  v212 = a1;
  v3 = sub_2381536CC();
  v198 = *(v3 - 8);
  v199 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v195 = (&v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v197 = (&v177 - v6);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v203 = *(v201 - 8);
  v7 = MEMORY[0x28223BE20](v201);
  v193 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v8;
  MEMORY[0x28223BE20](v7);
  v202 = &v177 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v210 = *(v10 - 8);
  v11 = *(v210 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v204 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v190 = &v177 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v207 = &v177 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v194 = &v177 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v177 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v177 - v21;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC538, &qword_23815C1D0);
  v208 = *(v206 - 8);
  v23 = MEMORY[0x28223BE20](v206);
  v200 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v205 = &v177 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC540, &qword_23815C1D8);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v177 - v28);
  v30 = sub_23815361C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v189 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v177 - v34;
  v209 = v10;
  sub_23815365C();
  if ((*(v27 + 88))(v29, v26) != *MEMORY[0x277D54B90])
  {
    (*(v27 + 8))(v29, v26);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v87 = sub_23815293C();
    __swift_project_value_buffer(v87, qword_27DEEC3F0);
    v89 = v209;
    v88 = v210;
    v90 = *(v210 + 16);
    v90(v22, v212, v209);
    v91 = sub_23815291C();
    v92 = sub_2381550EC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v213 = v94;
      *v93 = 136315138;
      v95 = v207;
      v90(v207, v22, v89);
      v96 = *(v88 + 8);
      v96(v22, v89);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190, MEMORY[0x277D54B98]);
      v97 = sub_23815559C();
      v99 = v98;
      v96(v95, v89);
      v100 = sub_238085EAC(v97, v99, &v213);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_238060000, v91, v92, "Unable to create decoration for request. intervention stlye not supported: %s", v93, 0xCu);
      v101 = __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x2383EA8A0](v94, -1, -1, v101);
      MEMORY[0x2383EA8A0](v93, -1, -1);
    }

    else
    {
      (*(v88 + 8))(v22, v89);
    }

    goto LABEL_37;
  }

  (*(v27 + 96))(v29, v26);
  v36 = v29[1];
  v183 = *v29;
  v37 = v29[3];
  v182 = v29[2];
  v38 = v29[4];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC550, &qword_23815C1E0);
  v40 = *(v31 + 32);
  v41 = v29 + *(v39 + 80);
  v181 = v31 + 32;
  v180 = v40;
  v40(v35, v41, v30);
  v42 = *(v38 + 16);
  v187 = v30;
  v188 = v35;
  if (!v42)
  {
    v102 = v35;

LABEL_16:
    v103 = v210;
    v104 = v204;
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v105 = sub_23815293C();
    __swift_project_value_buffer(v105, qword_27DEEC3F0);
    v106 = *(v103 + 16);
    v107 = v209;
    v106(v104, v212, v209);
    v108 = sub_23815291C();
    v109 = sub_2381550EC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v212 = v108;
      v111 = v110;
      v112 = swift_slowAlloc();
      v213 = v112;
      *v111 = 136315138;
      LODWORD(v208) = v109;
      v113 = v207;
      v106(v207, v104, v107);
      v114 = *(v103 + 8);
      v114(v104, v107);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190, MEMORY[0x277D54B98]);
      v115 = sub_23815559C();
      v117 = v116;
      v114(v113, v107);
      v118 = sub_238085EAC(v115, v117, &v213);

      *(v111 + 4) = v118;
      v119 = v212;
      _os_log_impl(&dword_238060000, v212, v208, "Unable to create decoration for request. Too many actions: %s", v111, 0xCu);
      v120 = __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x2383EA8A0](v112, -1, -1, v120);
      MEMORY[0x2383EA8A0](v111, -1, -1);

      (*(v31 + 8))(v188, v187);
    }

    else
    {
      (*(v103 + 8))(v104, v107);

      (*(v31 + 8))(v102, v30);
    }

    goto LABEL_37;
  }

  v186 = v37;
  v184 = v36;
  v185 = v31;
  v43 = v208;
  v44 = *(v208 + 16);
  v46 = v205;
  v45 = v206;
  v44(v205, v38 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v206);

  if (v42 != 1)
  {
    (*(v43 + 8))(v46, v45);

    v31 = v185;
    v30 = v187;
    v102 = v188;
    goto LABEL_16;
  }

  v47 = v200;
  v44(v200, v46, v45);
  if ((*(v43 + 88))(v47, v45) == *MEMORY[0x277D54B60])
  {
    (*(v43 + 96))(v47, v45);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC558, &qword_23815C1E8) + 48);
    v49 = v201;
    v204 = *(v203 + 32);
    (v204)(v202, v47, v201);
    v50 = sub_2381527EC();
    (*(*(v50 - 8) + 8))(&v47[v48], v50);
    v51 = v197;
    sub_23815356C();
    v53 = v198;
    v52 = v199;
    v200 = *(v198 + 88);
    v54 = (v200)(v51, v199);
    if (v54 == *MEMORY[0x277D54BF0])
    {
      v55 = *(v53 + 96);
      LODWORD(v196) = v54;
      v179 = v53 + 96;
      v178 = v55;
      v55(v51, v52);
      v56 = v51[1];
      v194 = *v51;
      v197 = v56;
      v57 = v203 + 16;
      v58 = v193;
      (*(v203 + 16))(v193, v202, v49);
      v59 = (*(v57 + 64) + 16) & ~*(v57 + 64);
      v60 = swift_allocObject();
      (v204)(v60 + v59, v58, v49);
      v61 = v195;
      v62 = v188;
      sub_2381535EC();
      v63 = v199;
      v64 = (v200)(v61, v199);
      if (v64 == v196)
      {
        v178(v61, v63);
        v65 = v61[1];
        v204 = *v61;
        v200 = v65;
        v66 = v185;
        v67 = v189;
        v68 = v187;
        (*(v185 + 16))(v189, v62, v187);
        v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
        v70 = swift_allocObject();
        v180(v70 + v69, v67, v68);
        v72 = v209;
        v71 = v210;
        v73 = v207;
        (*(v210 + 16))(v207, v212, v209);
        v74 = v60;
        v75 = (*(v71 + 80) + 16) & ~*(v71 + 80);
        v76 = swift_allocObject();
        (*(v71 + 32))(v76 + v75, v73, v72);
        v77 = v211;
        v78 = v184;
        *v211 = v183;
        *(v77 + 1) = v78;
        v79 = v186;
        *(v77 + 2) = v182;
        *(v77 + 3) = v79;
        v80 = v197;
        *(v77 + 4) = v194;
        *(v77 + 5) = v80;
        *(v77 + 6) = &unk_23815C1F8;
        *(v77 + 7) = v74;
        v81 = v200;
        *(v77 + 8) = v204;
        *(v77 + 9) = v81;
        *(v77 + 10) = &unk_23815C208;
        *(v77 + 11) = v70;
        *(v77 + 12) = sub_2380EFE28;
        *(v77 + 13) = v76;
        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        v82 = sub_2381546DC();
        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v66 + 8))(v188, v68);
        v83 = type metadata accessor for _DDNodeDecoration(0);
        v84 = *(v83 + 24);
        v85 = sub_2381536AC();
        (*(*(v85 - 8) + 16))(&v77[v84], v191, v85);
        *&v77[*(v83 + 20)] = v82;
        return (*(*(v83 - 8) + 56))(v77, 0, 1, v83);
      }

      v204 = v60;

      (*(v53 + 8))(v61, v63);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v158 = sub_23815293C();
      __swift_project_value_buffer(v158, qword_27DEEC3F0);
      v159 = v209;
      v160 = v210;
      v161 = *(v210 + 16);
      v162 = v190;
      v161(v190, v212, v209);
      v163 = sub_23815291C();
      v164 = sub_2381550EC();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v185;
      if (v165)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v213 = v168;
        *v167 = 136315138;
        v169 = v207;
        v161(v207, v162, v159);
        v170 = *(v160 + 8);
        v170(v162, v159);
        sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190, MEMORY[0x277D54B98]);
        v171 = sub_23815559C();
        v173 = v172;
        v170(v169, v159);
        v174 = sub_238085EAC(v171, v173, &v213);

        *(v167 + 4) = v174;
        _os_log_impl(&dword_238060000, v163, v164, "Unable to create decoration for request. DeclineAction only .text buttons are supported: %s", v167, 0xCu);
        v175 = __swift_destroy_boxed_opaque_existential_1(v168);
        MEMORY[0x2383EA8A0](v168, -1, -1, v175);
        MEMORY[0x2383EA8A0](v167, -1, -1);

        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v185 + 8))(v188, v187);
      }

      else
      {
        (*(v160 + 8))(v162, v159);

        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v166 + 8))(v62, v187);
      }
    }

    else
    {

      (*(v53 + 8))(v51, v52);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v140 = sub_23815293C();
      __swift_project_value_buffer(v140, qword_27DEEC3F0);
      v142 = v209;
      v141 = v210;
      v143 = *(v210 + 16);
      v144 = v194;
      v143(v194, v212, v209);
      v145 = sub_23815291C();
      v146 = sub_2381550EC();
      v147 = os_log_type_enabled(v145, v146);
      v148 = v185;
      if (v147)
      {
        v149 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v213 = v212;
        *v149 = 136315138;
        v150 = v207;
        v143(v207, v144, v142);
        v151 = *(v141 + 8);
        v151(v144, v142);
        sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190, MEMORY[0x277D54B98]);
        v152 = sub_23815559C();
        v154 = v153;
        v151(v150, v142);
        v155 = sub_238085EAC(v152, v154, &v213);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_238060000, v145, v146, "Unable to create decoration for request. AcceptAction only .text buttons are supported: %s", v149, 0xCu);
        v156 = v212;
        v157 = __swift_destroy_boxed_opaque_existential_1(v212);
        MEMORY[0x2383EA8A0](v156, -1, -1, v157);
        MEMORY[0x2383EA8A0](v149, -1, -1);
      }

      else
      {
        (*(v141 + 8))(v144, v142);
      }

      (*(v203 + 8))(v202, v201);
      (*(v208 + 8))(v205, v206);
      (*(v148 + 8))(v188, v187);
    }
  }

  else
  {

    v121 = *(v43 + 8);
    v208 = v43 + 8;
    v204 = v121;
    (v121)(v47, v45);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v122 = sub_23815293C();
    __swift_project_value_buffer(v122, qword_27DEEC3F0);
    v123 = v209;
    v124 = v210;
    v125 = *(v210 + 16);
    v126 = v196;
    v125(v196, v212, v209);
    v127 = sub_23815291C();
    v128 = sub_2381550EC();
    v129 = os_log_type_enabled(v127, v128);
    v130 = v185;
    if (v129)
    {
      v131 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v213 = v212;
      *v131 = 136315138;
      v132 = v207;
      v125(v207, v126, v123);
      v133 = *(v124 + 8);
      v133(v126, v123);
      sub_2380711D4(&qword_27DEEC548, &qword_27DEEC508, &unk_23815C190, MEMORY[0x277D54B98]);
      v134 = sub_23815559C();
      v136 = v135;
      v133(v132, v123);
      v137 = sub_238085EAC(v134, v136, &v213);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_238060000, v127, v128, "Unable to create decoration for request. Only .single actions are supported: %s", v131, 0xCu);
      v138 = v212;
      v139 = __swift_destroy_boxed_opaque_existential_1(v212);
      MEMORY[0x2383EA8A0](v138, -1, -1, v139);
      MEMORY[0x2383EA8A0](v131, -1, -1);
    }

    else
    {
      (*(v124 + 8))(v126, v123);
    }

    (v204)(v205, v206);
    (*(v130 + 8))(v188, v187);
  }

LABEL_37:
  v176 = type metadata accessor for _DDNodeDecoration(0);
  return (*(*(v176 - 8) + 56))(v211, 1, 1, v176);
}

uint64_t sub_2380DAF6C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v191 = a2;
  v211 = a3;
  v212 = a1;
  v3 = sub_2381536CC();
  v198 = *(v3 - 8);
  v199 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v195 = (&v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v197 = (&v177 - v6);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v203 = *(v201 - 8);
  v7 = MEMORY[0x28223BE20](v201);
  v193 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v8;
  MEMORY[0x28223BE20](v7);
  v202 = &v177 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v210 = *(v10 - 8);
  v11 = *(v210 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v204 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v190 = &v177 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v207 = &v177 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v194 = &v177 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v196 = &v177 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v177 - v21;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC570, &qword_23815C228);
  v208 = *(v206 - 8);
  v23 = MEMORY[0x28223BE20](v206);
  v200 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v205 = &v177 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC578, &qword_23815C230);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v177 - v28);
  v30 = sub_23815361C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v189 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v177 - v34;
  v209 = v10;
  sub_23815365C();
  if ((*(v27 + 88))(v29, v26) != *MEMORY[0x277D54B90])
  {
    (*(v27 + 8))(v29, v26);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v87 = sub_23815293C();
    __swift_project_value_buffer(v87, qword_27DEEC3F0);
    v89 = v209;
    v88 = v210;
    v90 = *(v210 + 16);
    v90(v22, v212, v209);
    v91 = sub_23815291C();
    v92 = sub_2381550EC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v213 = v94;
      *v93 = 136315138;
      v95 = v207;
      v90(v207, v22, v89);
      v96 = *(v88 + 8);
      v96(v22, v89);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0, MEMORY[0x277D54B98]);
      v97 = sub_23815559C();
      v99 = v98;
      v96(v95, v89);
      v100 = sub_238085EAC(v97, v99, &v213);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_238060000, v91, v92, "Unable to create decoration for request. intervention stlye not supported: %s", v93, 0xCu);
      v101 = __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x2383EA8A0](v94, -1, -1, v101);
      MEMORY[0x2383EA8A0](v93, -1, -1);
    }

    else
    {
      (*(v88 + 8))(v22, v89);
    }

    goto LABEL_37;
  }

  (*(v27 + 96))(v29, v26);
  v36 = v29[1];
  v183 = *v29;
  v37 = v29[3];
  v182 = v29[2];
  v38 = v29[4];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC588, &qword_23815C238);
  v40 = *(v31 + 32);
  v41 = v29 + *(v39 + 80);
  v181 = v31 + 32;
  v180 = v40;
  v40(v35, v41, v30);
  v42 = *(v38 + 16);
  v187 = v30;
  v188 = v35;
  if (!v42)
  {
    v102 = v35;

LABEL_16:
    v103 = v210;
    v104 = v204;
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v105 = sub_23815293C();
    __swift_project_value_buffer(v105, qword_27DEEC3F0);
    v106 = *(v103 + 16);
    v107 = v209;
    v106(v104, v212, v209);
    v108 = sub_23815291C();
    v109 = sub_2381550EC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v212 = v108;
      v111 = v110;
      v112 = swift_slowAlloc();
      v213 = v112;
      *v111 = 136315138;
      LODWORD(v208) = v109;
      v113 = v207;
      v106(v207, v104, v107);
      v114 = *(v103 + 8);
      v114(v104, v107);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0, MEMORY[0x277D54B98]);
      v115 = sub_23815559C();
      v117 = v116;
      v114(v113, v107);
      v118 = sub_238085EAC(v115, v117, &v213);

      *(v111 + 4) = v118;
      v119 = v212;
      _os_log_impl(&dword_238060000, v212, v208, "Unable to create decoration for request. Too many actions: %s", v111, 0xCu);
      v120 = __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x2383EA8A0](v112, -1, -1, v120);
      MEMORY[0x2383EA8A0](v111, -1, -1);

      (*(v31 + 8))(v188, v187);
    }

    else
    {
      (*(v103 + 8))(v104, v107);

      (*(v31 + 8))(v102, v30);
    }

    goto LABEL_37;
  }

  v186 = v37;
  v184 = v36;
  v185 = v31;
  v43 = v208;
  v44 = *(v208 + 16);
  v46 = v205;
  v45 = v206;
  v44(v205, v38 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v206);

  if (v42 != 1)
  {
    (*(v43 + 8))(v46, v45);

    v31 = v185;
    v30 = v187;
    v102 = v188;
    goto LABEL_16;
  }

  v47 = v200;
  v44(v200, v46, v45);
  if ((*(v43 + 88))(v47, v45) == *MEMORY[0x277D54B60])
  {
    (*(v43 + 96))(v47, v45);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC590, &qword_23815C240) + 48);
    v49 = v201;
    v204 = *(v203 + 32);
    (v204)(v202, v47, v201);
    v50 = sub_2381527EC();
    (*(*(v50 - 8) + 8))(&v47[v48], v50);
    v51 = v197;
    sub_23815356C();
    v53 = v198;
    v52 = v199;
    v200 = *(v198 + 88);
    v54 = (v200)(v51, v199);
    if (v54 == *MEMORY[0x277D54BF0])
    {
      v55 = *(v53 + 96);
      LODWORD(v196) = v54;
      v179 = v53 + 96;
      v178 = v55;
      v55(v51, v52);
      v56 = v51[1];
      v194 = *v51;
      v197 = v56;
      v57 = v203 + 16;
      v58 = v193;
      (*(v203 + 16))(v193, v202, v49);
      v59 = (*(v57 + 64) + 16) & ~*(v57 + 64);
      v60 = swift_allocObject();
      (v204)(v60 + v59, v58, v49);
      v61 = v195;
      v62 = v188;
      sub_2381535EC();
      v63 = v199;
      v64 = (v200)(v61, v199);
      if (v64 == v196)
      {
        v178(v61, v63);
        v65 = v61[1];
        v204 = *v61;
        v200 = v65;
        v66 = v185;
        v67 = v189;
        v68 = v187;
        (*(v185 + 16))(v189, v62, v187);
        v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
        v70 = swift_allocObject();
        v180(v70 + v69, v67, v68);
        v72 = v209;
        v71 = v210;
        v73 = v207;
        (*(v210 + 16))(v207, v212, v209);
        v74 = v60;
        v75 = (*(v71 + 80) + 16) & ~*(v71 + 80);
        v76 = swift_allocObject();
        (*(v71 + 32))(v76 + v75, v73, v72);
        v77 = v211;
        v78 = v184;
        *v211 = v183;
        *(v77 + 1) = v78;
        v79 = v186;
        *(v77 + 2) = v182;
        *(v77 + 3) = v79;
        v80 = v197;
        *(v77 + 4) = v194;
        *(v77 + 5) = v80;
        *(v77 + 6) = &unk_23815C250;
        *(v77 + 7) = v74;
        v81 = v200;
        *(v77 + 8) = v204;
        *(v77 + 9) = v81;
        *(v77 + 10) = &unk_23815C258;
        *(v77 + 11) = v70;
        *(v77 + 12) = sub_2380F012C;
        *(v77 + 13) = v76;
        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        v82 = sub_2381546DC();
        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v66 + 8))(v188, v68);
        v83 = type metadata accessor for _DDNodeDecoration(0);
        v84 = *(v83 + 24);
        v85 = sub_2381536AC();
        (*(*(v85 - 8) + 16))(&v77[v84], v191, v85);
        *&v77[*(v83 + 20)] = v82;
        return (*(*(v83 - 8) + 56))(v77, 0, 1, v83);
      }

      v204 = v60;

      (*(v53 + 8))(v61, v63);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v158 = sub_23815293C();
      __swift_project_value_buffer(v158, qword_27DEEC3F0);
      v159 = v209;
      v160 = v210;
      v161 = *(v210 + 16);
      v162 = v190;
      v161(v190, v212, v209);
      v163 = sub_23815291C();
      v164 = sub_2381550EC();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v185;
      if (v165)
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v213 = v168;
        *v167 = 136315138;
        v169 = v207;
        v161(v207, v162, v159);
        v170 = *(v160 + 8);
        v170(v162, v159);
        sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0, MEMORY[0x277D54B98]);
        v171 = sub_23815559C();
        v173 = v172;
        v170(v169, v159);
        v174 = sub_238085EAC(v171, v173, &v213);

        *(v167 + 4) = v174;
        _os_log_impl(&dword_238060000, v163, v164, "Unable to create decoration for request. DeclineAction only .text buttons are supported: %s", v167, 0xCu);
        v175 = __swift_destroy_boxed_opaque_existential_1(v168);
        MEMORY[0x2383EA8A0](v168, -1, -1, v175);
        MEMORY[0x2383EA8A0](v167, -1, -1);

        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v185 + 8))(v188, v187);
      }

      else
      {
        (*(v160 + 8))(v162, v159);

        (*(v203 + 8))(v202, v201);
        (*(v208 + 8))(v205, v206);
        (*(v166 + 8))(v62, v187);
      }
    }

    else
    {

      (*(v53 + 8))(v51, v52);
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v140 = sub_23815293C();
      __swift_project_value_buffer(v140, qword_27DEEC3F0);
      v142 = v209;
      v141 = v210;
      v143 = *(v210 + 16);
      v144 = v194;
      v143(v194, v212, v209);
      v145 = sub_23815291C();
      v146 = sub_2381550EC();
      v147 = os_log_type_enabled(v145, v146);
      v148 = v185;
      if (v147)
      {
        v149 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v213 = v212;
        *v149 = 136315138;
        v150 = v207;
        v143(v207, v144, v142);
        v151 = *(v141 + 8);
        v151(v144, v142);
        sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0, MEMORY[0x277D54B98]);
        v152 = sub_23815559C();
        v154 = v153;
        v151(v150, v142);
        v155 = sub_238085EAC(v152, v154, &v213);

        *(v149 + 4) = v155;
        _os_log_impl(&dword_238060000, v145, v146, "Unable to create decoration for request. AcceptAction only .text buttons are supported: %s", v149, 0xCu);
        v156 = v212;
        v157 = __swift_destroy_boxed_opaque_existential_1(v212);
        MEMORY[0x2383EA8A0](v156, -1, -1, v157);
        MEMORY[0x2383EA8A0](v149, -1, -1);
      }

      else
      {
        (*(v141 + 8))(v144, v142);
      }

      (*(v203 + 8))(v202, v201);
      (*(v208 + 8))(v205, v206);
      (*(v148 + 8))(v188, v187);
    }
  }

  else
  {

    v121 = *(v43 + 8);
    v208 = v43 + 8;
    v204 = v121;
    (v121)(v47, v45);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v122 = sub_23815293C();
    __swift_project_value_buffer(v122, qword_27DEEC3F0);
    v123 = v209;
    v124 = v210;
    v125 = *(v210 + 16);
    v126 = v196;
    v125(v196, v212, v209);
    v127 = sub_23815291C();
    v128 = sub_2381550EC();
    v129 = os_log_type_enabled(v127, v128);
    v130 = v185;
    if (v129)
    {
      v131 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v213 = v212;
      *v131 = 136315138;
      v132 = v207;
      v125(v207, v126, v123);
      v133 = *(v124 + 8);
      v133(v126, v123);
      sub_2380711D4(&qword_27DEEC580, &qword_27DEEC500, &unk_23815E6B0, MEMORY[0x277D54B98]);
      v134 = sub_23815559C();
      v136 = v135;
      v133(v132, v123);
      v137 = sub_238085EAC(v134, v136, &v213);

      *(v131 + 4) = v137;
      _os_log_impl(&dword_238060000, v127, v128, "Unable to create decoration for request. Only .single actions are supported: %s", v131, 0xCu);
      v138 = v212;
      v139 = __swift_destroy_boxed_opaque_existential_1(v212);
      MEMORY[0x2383EA8A0](v138, -1, -1, v139);
      MEMORY[0x2383EA8A0](v131, -1, -1);
    }

    else
    {
      (*(v124 + 8))(v126, v123);
    }

    (v204)(v205, v206);
    (*(v130 + 8))(v188, v187);
  }

LABEL_37:
  v176 = type metadata accessor for _DDNodeDecoration(0);
  return (*(*(v176 - 8) + 56))(v211, 1, 1, v176);
}

uint64_t sub_2380DC65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v5 = sub_238152F4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _DDNodeDecoration(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238152FBC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D54860])
  {
    (*(v13 + 8))(v15, v12);
LABEL_4:
    v17 = 0x8000000238162760;
    v18 = 0xD000000000000010;
LABEL_5:
    *v11 = v18;
    *(v11 + 1) = v17;
LABEL_6:
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    v19 = *(v9 + 24);
    v20 = sub_2381536AC();
    (*(*(v20 - 8) + 16))(&v11[v19], v33, v20);
    *&v11[*(v9 + 20)] = v34;

    sub_2380A9944(v35, v11);
    return sub_2380F198C(v11, type metadata accessor for _DDNodeDecoration);
  }

  if (v16 == *MEMORY[0x277D54830])
  {
    goto LABEL_4;
  }

  if (v16 == *MEMORY[0x277D54840])
  {
    (*(v13 + 96))(v15, v12);
    (*(v6 + 32))(v8, v15, v5);
    sub_2380F15B0(&qword_27DEEC598, MEMORY[0x277D54800], MEMORY[0x277D54808]);
    *v11 = sub_23815559C();
    *(v11 + 1) = v22;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    v23 = *(v9 + 24);
    v24 = sub_2381536AC();
    (*(*(v24 - 8) + 16))(&v11[v23], v33, v24);
    *&v11[*(v9 + 20)] = v34;

    sub_2380A9944(v35, v11);
    sub_2380F198C(v11, type metadata accessor for _DDNodeDecoration);
    return (*(v6 + 8))(v8, v5);
  }

  if (v16 == *MEMORY[0x277D54868] || v16 == *MEMORY[0x277D54898])
  {
    goto LABEL_6;
  }

  if (v16 == *MEMORY[0x277D54888])
  {
    v17 = 0x8000000238162780;
    v18 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D54838])
  {
    v25 = 0x7571657220646162;
    v26 = 0xEB00000000747365;
LABEL_24:
    *v11 = v25;
    *(v11 + 1) = v26;
    goto LABEL_6;
  }

  if (v16 == *MEMORY[0x277D54848])
  {
    v25 = 0x7073657220646162;
    v27 = 1702063727;
LABEL_23:
    v26 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_24;
  }

  if (v16 == *MEMORY[0x277D54890])
  {
    v17 = 0x8000000238162740;
    v18 = 0xD00000000000001BLL;
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D54858])
  {
    v28 = 0x6D6165727473;
LABEL_22:
    v25 = v28 & 0xFFFFFFFFFFFFLL | 0x6520000000000000;
    v27 = 1919906418;
    goto LABEL_23;
  }

  if (v16 == *MEMORY[0x277D54870])
  {
    v29 = "missing own contact";
LABEL_29:
    v17 = (v29 - 32) | 0x8000000000000000;
    v18 = 0xD000000000000013;
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D54878])
  {
    v29 = "missing record data";
    goto LABEL_29;
  }

  if (v16 == *MEMORY[0x277D54850])
  {
    v28 = 0x726576726573;
    goto LABEL_22;
  }

  if (v16 == *MEMORY[0x277D54880])
  {
    v17 = 0x80000002381626E0;
    v18 = 0xD000000000000014;
    goto LABEL_5;
  }

  strcpy(v11, "unknown error");
  *(v11 + 7) = -4864;
  type metadata accessor for _DDNodeDecoration.Kind(0);
  swift_storeEnumTagMultiPayload();
  v30 = *(v9 + 24);
  v31 = sub_2381536AC();
  (*(*(v31 - 8) + 16))(&v11[v30], v33, v31);
  *&v11[*(v9 + 20)] = v34;

  sub_2380A9944(v35, v11);
  sub_2380F198C(v11, type metadata accessor for _DDNodeDecoration);
  return (*(v13 + 8))(v15, v12);
}

uint64_t AirDropDiscoveryView.handleTransferUpdates(transferUpdates:endpointUUID:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC468, &qword_23815BED8);
  *(v3 + 312) = swift_task_alloc();
  v4 = sub_23815345C();
  *(v3 + 320) = v4;
  *(v3 + 328) = *(v4 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v5 = sub_238152FBC();
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  v6 = type metadata accessor for _DDNodeDecoration(0);
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC470, &qword_23815BEE0);
  *(v3 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC478, &qword_23815BEE8);
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  v7 = sub_23815305C();
  *(v3 + 432) = v7;
  *(v3 + 440) = *(v7 - 8);
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC480, &qword_23815BEF0);
  *(v3 + 464) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC488, &qword_23815BEF8);
  *(v3 + 472) = v8;
  *(v3 + 480) = *(v8 - 8);
  *(v3 + 488) = swift_task_alloc();
  v9 = sub_23815300C();
  *(v3 + 496) = v9;
  *(v3 + 504) = *(v9 - 8);
  *(v3 + 512) = swift_task_alloc();
  v10 = type metadata accessor for DecorationIdentifier(0);
  *(v3 + 520) = v10;
  *(v3 + 528) = *(v10 - 8);
  *(v3 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00);
  *(v3 + 544) = swift_task_alloc();
  v11 = sub_23815313C();
  *(v3 + 552) = v11;
  *(v3 + 560) = *(v11 - 8);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  v12 = sub_2381530BC();
  *(v3 + 584) = v12;
  *(v3 + 592) = *(v12 - 8);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  v13 = sub_2381536AC();
  *(v3 + 640) = v13;
  *(v3 + 648) = *(v13 - 8);
  *(v3 + 656) = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *(v2 + 16);
  *(v3 + 672) = *v2;
  v16 = *(v2 + 80);
  *(v3 + 184) = *(v2 + 64);
  *(v3 + 200) = v16;
  *(v3 + 216) = *(v2 + 96);
  *(v3 + 136) = v15;
  v17 = *(v2 + 48);
  *(v3 + 152) = *(v2 + 32);
  *(v3 + 664) = v14;
  *(v3 + 232) = *(v2 + 112);
  *(v3 + 168) = v17;
  *(v3 + 688) = sub_238154F8C();
  *(v3 + 696) = sub_238154F7C();
  v19 = sub_238154F3C();
  *(v3 + 704) = v19;
  *(v3 + 712) = v18;

  return MEMORY[0x2822009F8](sub_2380DD340, v19, v18);
}

uint64_t sub_2380DD340()
{
  v1 = v0[79];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v0[90] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC490, &qword_23815BF08);
  sub_2381532DC();
  sub_23815303C();
  v8 = *(v2 + 8);
  v0[91] = v8;
  v0[92] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59 = v8;
  v8(v1, v3);
  sub_23815316C();
  (*(v6 + 104))(v5, *MEMORY[0x277D54970], v7);
  v9 = MEMORY[0x2383E7760](v4, v5);
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  if (v9)
  {
    v11 = v0[83];
    v12 = v0[38];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v13 = sub_2380D3060(v0[36]);
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    sub_2380D260C(sub_2380EF1E0, v14, v13);
    v16 = v15;

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v0[81];
      v19 = *(v18 + 16);
      v18 += 16;
      v64 = v19;
      v65 = v0[65];
      v20 = v16 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v60 = v0[48];
      v61 = v0[66];
      v63 = *(v18 + 56);
      v62 = (v18 - 8);
      do
      {
        v25 = v0[82];
        v26 = v0[80];
        v27 = v0[67];
        v28 = v0[38];
        v64(v25, v20, v26);
        v64(v27, v25, v26);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
        (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
        v30 = *(v65 + 20);
        v31 = sub_2381527EC();
        (*(*(v31 - 8) + 16))(v27 + v30, v28, v31);
        swift_getKeyPath();
        swift_getKeyPath();
        v32 = sub_238152A7C();
        v34 = v33;
        v35 = sub_2380E6DE4(v27);
        if (v36)
        {
          v37 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = *v34;
          *v34 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2380E9728();
          }

          v39 = v0[68];
          v40 = v0[67];
          sub_2380F198C(*(v66 + 48) + *(v61 + 72) * v37, type metadata accessor for DecorationIdentifier);
          sub_2380F19EC(*(v66 + 56) + *(v60 + 72) * v37, v39, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v37, v66);
          sub_2380F198C(v40, type metadata accessor for DecorationIdentifier);
          *v34 = v66;

          v21 = 0;
        }

        else
        {
          sub_2380F198C(v0[67], type metadata accessor for DecorationIdentifier);
          v21 = 1;
        }

        v22 = v0[82];
        v23 = v0[80];
        v24 = v0[68];
        (*(v60 + 56))(v24, v21, 1, v0[47]);
        sub_238071284(v24, &qword_27DEEBA48, &qword_23815BF00);
        v32(v0 + 30, 0);

        (*v62)(v22, v23);
        v20 += v63;
        --v17;
      }

      while (v17);
    }
  }

  v41 = v0[78];
  v42 = v0[73];
  v44 = v0[63];
  v43 = v0[64];
  v45 = v0[62];
  sub_2381532DC();
  sub_23815302C();
  v59(v41, v42);
  v46 = sub_238152FDC();
  v48 = v47;
  (*(v44 + 8))(v43, v45);
  if (v48 >> 60 != 15)
  {
    v49 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v50 = sub_23815274C();
    v51 = [v49 initWithData_];

    if (v51)
    {
      v52 = sub_23815466C();
      sub_238087244(v46, v48);
      v53 = v52;
      goto LABEL_16;
    }

    sub_238087244(v46, v48);
  }

  v53 = sub_23815467C();
LABEL_16:
  v0[93] = v53;
  sub_2381532EC();
  v0[94] = sub_238154F7C();
  v54 = sub_2380711D4(&qword_27DEEC498, &qword_27DEEC488, &qword_23815BEF8, MEMORY[0x277D54AD0]);
  v55 = swift_task_alloc();
  v0[95] = v55;
  *v55 = v0;
  v55[1] = sub_2380DDA18;
  v56 = v0[58];
  v57 = v0[59];

  return MEMORY[0x282200308](v56, v57, v54);
}

uint64_t sub_2380DDA18()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 752);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380DE084;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380DDBB0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2380DDBB0()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return MEMORY[0x2822009F8](sub_2380DDC18, v2, v1);
}

uint64_t sub_2380DDC18()
{
  v43 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 464);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    v4 = swift_task_alloc();
    *(v0 + 776) = v4;
    *v4 = v0;
    v4[1] = sub_2380DEB08;
    v5 = *(v0 + 720);
    v6 = *(v0 + 600);

    return MEMORY[0x2821B6068](v6, v5);
  }

  else
  {
    v7 = *(v0 + 744);
    v8 = *(v0 + 664);
    v9 = *(v0 + 456);
    v10 = *(v0 + 440);
    v40 = *(v0 + 432);
    v11 = *(v0 + 304);
    v39 = *(v0 + 672);
    (*(v1 + 32))(*(v0 + 616), v3, v2);
    *(v0 + 16) = v39;
    v12 = *(v0 + 184);
    v13 = *(v0 + 216);
    *(v0 + 96) = *(v0 + 200);
    *(v0 + 112) = v13;
    *(v0 + 128) = *(v0 + 232);
    v14 = *(v0 + 152);
    *(v0 + 32) = *(v0 + 136);
    *(v0 + 48) = v14;
    *(v0 + 64) = *(v0 + 168);
    *(v0 + 80) = v12;
    sub_23815306C();
    sub_2380D78D0(v9, v7, v11, 0, 0xE000000000000000, v8);
    (*(v10 + 8))(v9, v40);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 616);
    v16 = *(v0 + 608);
    v17 = *(v0 + 592);
    v18 = *(v0 + 584);
    v19 = sub_23815293C();
    __swift_project_value_buffer(v19, qword_27DEEC3F0);
    (*(v17 + 16))(v16, v15, v18);
    v20 = sub_23815291C();
    v21 = sub_2381550FC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 728);
    v24 = *(v0 + 616);
    v25 = *(v0 + 608);
    v26 = *(v0 + 584);
    if (v22)
    {
      v27 = swift_slowAlloc();
      v41 = v24;
      v42 = swift_slowAlloc();
      v28 = v42;
      *v27 = 136315138;
      sub_2380F15B0(&qword_27DEEC4A8, MEMORY[0x277D54928], MEMORY[0x277D54930]);
      v29 = sub_23815559C();
      v31 = v30;
      v23(v25, v26);
      v32 = sub_238085EAC(v29, v31, &v42);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_238060000, v20, v21, "Starting send updated %s", v27, 0xCu);
      v33 = __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2383EA8A0](v28, -1, -1, v33);
      MEMORY[0x2383EA8A0](v27, -1, -1);

      v23(v41, v26);
    }

    else
    {

      v23(v25, v26);
      v23(v24, v26);
    }

    *(v0 + 752) = sub_238154F7C();
    v34 = sub_2380711D4(&qword_27DEEC498, &qword_27DEEC488, &qword_23815BEF8, MEMORY[0x277D54AD0]);
    v35 = swift_task_alloc();
    *(v0 + 760) = v35;
    *v35 = v0;
    v35[1] = sub_2380DDA18;
    v36 = *(v0 + 464);
    v37 = *(v0 + 472);

    return MEMORY[0x282200308](v36, v37, v34);
  }
}

uint64_t sub_2380DE084()
{
  v0[34] = v0[96];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v1 = v0[89];
  v2 = v0[88];

  return MEMORY[0x2822009F8](sub_2380DE120, v2, v1);
}

uint64_t sub_2380DE120()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];

  (*(v2 + 8))(v1, v3);
  v4 = v0[96];
  v5 = v0[41];
  v0[35] = v4;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  v7 = swift_dynamicCast();
  v8 = *(v5 + 56);
  if (v7)
  {
    v10 = v0[42];
    v9 = v0[43];
    v11 = v0[40];
    v12 = v0[41];
    v13 = v0[39];
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v9, v13, v11);
    (*(v12 + 16))(v10, v9, v11);
    v14 = (*(v12 + 88))(v10, v11);
    v15 = v0[41];
    v16 = v0[42];
    v17 = v0[40];
    if (v14 == *MEMORY[0x277D54B10])
    {
      (*(v15 + 96))(v0[42], v17);
      v19 = *v16;
      v18 = v16[1];

      if (v19 == 0xD000000000000017 && 0x80000002381625E0 == v18)
      {

LABEL_18:
        if (qword_27DEEA0B0 != -1)
        {
          swift_once();
        }

        v53 = sub_23815293C();
        __swift_project_value_buffer(v53, qword_27DEEC3F0);
        v54 = sub_23815291C();
        v55 = sub_2381550DC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          sub_238154F5C();
          sub_2380F15B0(&qword_27DEEC4A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
          swift_allocError();
          sub_238154BFC();
          v58 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 4) = v58;
          *v57 = v58;
          _os_log_impl(&dword_238060000, v54, v55, "Transfer cancelled {error: %@}", v56, 0xCu);
          sub_238071284(v57, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v57, -1, -1);
          MEMORY[0x2383EA8A0](v56, -1, -1);
        }

        v59 = v54;
        v60 = v0[93];
        v61 = v0[83];
        v62 = v0[81];
        v63 = v0[80];
        v64 = v0[49];
        v65 = v0[47];
        v75 = v0[43];
        v66 = v0[41];
        v72 = v0[40];
        v67 = v0[38];

        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        (*(v62 + 16))(v64 + *(v65 + 24), v61, v63);
        *(v64 + *(v65 + 20)) = v60;
        sub_2380A9944(v67, v64);

        sub_2380F198C(v64, type metadata accessor for _DDNodeDecoration);
        (*(v66 + 8))(v75, v72);
        goto LABEL_23;
      }

      v52 = sub_2381555CC();

      if (v52)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v15 + 8))(v0[42], v17);
    }

    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v36 = sub_23815293C();
    __swift_project_value_buffer(v36, qword_27DEEC3F0);
    v37 = v4;
    v38 = sub_23815291C();
    v39 = sub_2381550DC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v4;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_238060000, v38, v39, "Transfer failed {error: %@}", v40, 0xCu);
      sub_238071284(v41, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v41, -1, -1);
      MEMORY[0x2383EA8A0](v40, -1, -1);
    }

    v44 = v0[93];
    v45 = v0[83];
    v74 = v4;
    v46 = v0[81];
    v47 = v0[80];
    v48 = v0[49];
    v49 = v0[47];
    v50 = v0[41];
    v70 = v0[40];
    v71 = v0[43];
    v51 = v0[38];

    strcpy(v48, "unknown error");
    *(v48 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v46 + 16))(v48 + *(v49 + 24), v45, v47);
    *(v48 + *(v49 + 20)) = v44;

    sub_2380A9944(v51, v48);
    sub_2380F198C(v48, type metadata accessor for _DDNodeDecoration);

    (*(v50 + 8))(v71, v70);
  }

  else
  {
    v20 = v0[39];
    v8(v20, 1, 1, v0[40]);
    sub_238071284(v20, &qword_27DEEC468, &qword_23815BED8);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEEC3F0);
    v22 = v4;
    v23 = sub_23815291C();
    v24 = sub_2381550DC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v4;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_238060000, v23, v24, "Transfer failed {error: %@}", v25, 0xCu);
      sub_238071284(v26, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v26, -1, -1);
      MEMORY[0x2383EA8A0](v25, -1, -1);
    }

    v29 = v0[93];
    v30 = v0[83];
    v73 = v4;
    v31 = v0[81];
    v32 = v0[80];
    v33 = v0[49];
    v34 = v0[47];
    v35 = v0[38];

    strcpy(v33, "unknown error");
    *(v33 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v31 + 16))(v33 + *(v34 + 24), v30, v32);
    *(v33 + *(v34 + 20)) = v29;

    sub_2380A9944(v35, v33);
    sub_2380F198C(v33, type metadata accessor for _DDNodeDecoration);
  }

LABEL_23:
  (*(v0[81] + 8))(v0[83], v0[80]);

  v68 = v0[1];

  return v68(0);
}

uint64_t sub_2380DEB08()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_2380DF354;
  }

  else
  {
    v5 = sub_2380DEC44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380DEC44()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[50];

  sub_23815306C();
  sub_23815304C();
  (*(v2 + 8))(v1, v3);
  v5 = sub_23815309C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[53];
  v9 = v0[50];
  if (v7 == 1)
  {
    sub_238071284(v0[50], &qword_27DEEC470, &qword_23815BEE0);
    v10 = sub_23815307C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  else
  {
    sub_23815308C();
    (*(v6 + 8))(v9, v5);
  }

  v11 = v0[52];
  sub_2380712E4(v0[53], v11, &qword_27DEEC478, &qword_23815BEE8);
  v12 = sub_23815307C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_5;
  }

  v22 = v0[51];
  sub_2380712E4(v0[52], v22, &qword_27DEEC478, &qword_23815BEE8);
  v23 = (*(v13 + 88))(v22, v12);
  if (v23 == *MEMORY[0x277D54908])
  {
    v24 = v0[93];
    v51 = v0[91];
    v25 = v0[83];
    v42 = v0[73];
    v45 = v0[75];
    v41 = v0[53];
    v48 = v0[52];
    v26 = v0[51];
    v27 = v0[45];
    v28 = v0[46];
    v29 = v0[44];
    v30 = v0[38];
    (*(v13 + 96))(v26, v12);
    (*(v27 + 32))(v28, v26, v29);
    sub_2380DC65C(v28, v24, v30, v25);

    (*(v27 + 8))(v28, v29);
    sub_238071284(v41, &qword_27DEEC478, &qword_23815BEE8);
    v51(v45, v42);
    sub_238071284(v48, &qword_27DEEC478, &qword_23815BEE8);
    goto LABEL_8;
  }

  if (v23 != *MEMORY[0x277D54910])
  {
    (*(v13 + 8))(v0[51], v12);
LABEL_5:
    v14 = v0[93];
    v50 = v0[91];
    v15 = v0[83];
    v16 = v0[81];
    v17 = v0[80];
    v44 = v0[73];
    v47 = v0[75];
    v18 = v0[53];
    v19 = v0[49];
    v20 = v0[47];
    v21 = v0[38];
    sub_238071284(v0[52], &qword_27DEEC478, &qword_23815BEE8);
    strcpy(v19, "unknown error");
    *(v19 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 16))(v19 + *(v20 + 24), v15, v17);
    *(v19 + *(v20 + 20)) = v14;
    sub_2380A9944(v21, v19);
    sub_2380F198C(v19, type metadata accessor for _DDNodeDecoration);
    sub_238071284(v18, &qword_27DEEC478, &qword_23815BEE8);
    v50(v47, v44);
LABEL_8:
    v53 = 0;
    goto LABEL_9;
  }

  v33 = v0[93];
  v52 = v0[91];
  v34 = v0[83];
  v35 = v0[81];
  v36 = v0[80];
  v43 = v0[73];
  v46 = v0[75];
  v37 = v0[53];
  v49 = v0[52];
  v38 = v0[49];
  v39 = v0[47];
  v40 = v0[38];
  type metadata accessor for _DDNodeDecoration.Kind(0);
  swift_storeEnumTagMultiPayload();
  (*(v35 + 16))(v38 + *(v39 + 24), v34, v36);
  *(v38 + *(v39 + 20)) = v33;
  sub_2380A9944(v40, v38);
  sub_2380F198C(v38, type metadata accessor for _DDNodeDecoration);
  sub_238071284(v37, &qword_27DEEC478, &qword_23815BEE8);
  v52(v46, v43);
  sub_238071284(v49, &qword_27DEEC478, &qword_23815BEE8);
  v53 = 1;
LABEL_9:
  (*(v0[81] + 8))(v0[83], v0[80]);

  v31 = v0[1];

  return v31(v53);
}

uint64_t sub_2380DF354()
{

  v1 = v0[98];
  v2 = v0[41];
  v0[35] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[42];
    v6 = v0[43];
    v8 = v0[40];
    v9 = v0[41];
    v10 = v0[39];
    v5(v10, 0, 1, v8);
    (*(v9 + 32))(v6, v10, v8);
    (*(v9 + 16))(v7, v6, v8);
    v11 = (*(v9 + 88))(v7, v8);
    v12 = v0[41];
    v13 = v0[42];
    v14 = v0[40];
    if (v11 == *MEMORY[0x277D54B10])
    {
      (*(v12 + 96))(v0[42], v14);
      v16 = *v13;
      v15 = v13[1];

      if (v16 == 0xD000000000000017 && 0x80000002381625E0 == v15)
      {

LABEL_18:
        if (qword_27DEEA0B0 != -1)
        {
          swift_once();
        }

        v50 = sub_23815293C();
        __swift_project_value_buffer(v50, qword_27DEEC3F0);
        v51 = sub_23815291C();
        v52 = sub_2381550DC();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          sub_238154F5C();
          sub_2380F15B0(&qword_27DEEC4A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
          swift_allocError();
          sub_238154BFC();
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v53 + 4) = v55;
          *v54 = v55;
          _os_log_impl(&dword_238060000, v51, v52, "Transfer cancelled {error: %@}", v53, 0xCu);
          sub_238071284(v54, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v54, -1, -1);
          MEMORY[0x2383EA8A0](v53, -1, -1);
        }

        v56 = v51;
        v57 = v0[93];
        v58 = v0[83];
        v59 = v0[81];
        v60 = v0[80];
        v61 = v0[49];
        v62 = v0[47];
        v72 = v0[43];
        v63 = v0[41];
        v69 = v0[40];
        v64 = v0[38];

        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        (*(v59 + 16))(v61 + *(v62 + 24), v58, v60);
        *(v61 + *(v62 + 20)) = v57;
        sub_2380A9944(v64, v61);

        sub_2380F198C(v61, type metadata accessor for _DDNodeDecoration);
        (*(v63 + 8))(v72, v69);
        goto LABEL_23;
      }

      v49 = sub_2381555CC();

      if (v49)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v12 + 8))(v0[42], v14);
    }

    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v33 = sub_23815293C();
    __swift_project_value_buffer(v33, qword_27DEEC3F0);
    v34 = v1;
    v35 = sub_23815291C();
    v36 = sub_2381550DC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_238060000, v35, v36, "Transfer failed {error: %@}", v37, 0xCu);
      sub_238071284(v38, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v38, -1, -1);
      MEMORY[0x2383EA8A0](v37, -1, -1);
    }

    v41 = v0[93];
    v42 = v0[83];
    v71 = v1;
    v43 = v0[81];
    v44 = v0[80];
    v45 = v0[49];
    v46 = v0[47];
    v47 = v0[41];
    v67 = v0[40];
    v68 = v0[43];
    v48 = v0[38];

    strcpy(v45, "unknown error");
    *(v45 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 16))(v45 + *(v46 + 24), v42, v44);
    *(v45 + *(v46 + 20)) = v41;

    sub_2380A9944(v48, v45);
    sub_2380F198C(v45, type metadata accessor for _DDNodeDecoration);

    (*(v47 + 8))(v68, v67);
  }

  else
  {
    v17 = v0[39];
    v5(v17, 1, 1, v0[40]);
    sub_238071284(v17, &qword_27DEEC468, &qword_23815BED8);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v18 = sub_23815293C();
    __swift_project_value_buffer(v18, qword_27DEEC3F0);
    v19 = v1;
    v20 = sub_23815291C();
    v21 = sub_2381550DC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&dword_238060000, v20, v21, "Transfer failed {error: %@}", v22, 0xCu);
      sub_238071284(v23, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v23, -1, -1);
      MEMORY[0x2383EA8A0](v22, -1, -1);
    }

    v26 = v0[93];
    v27 = v0[83];
    v70 = v1;
    v28 = v0[81];
    v29 = v0[80];
    v30 = v0[49];
    v31 = v0[47];
    v32 = v0[38];

    strcpy(v30, "unknown error");
    *(v30 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v28 + 16))(v30 + *(v31 + 24), v27, v29);
    *(v30 + *(v31 + 20)) = v26;

    sub_2380A9944(v32, v30);
    sub_2380F198C(v30, type metadata accessor for _DDNodeDecoration);
  }

LABEL_23:
  (*(v0[81] + 8))(v0[83], v0[80]);

  v65 = v0[1];

  return v65(0);
}

uint64_t sub_2380DFD1C@<X0>(uint64_t a1@<X0>, char *a4@<X8>)
{
  v6 = sub_2381536AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransferIDStatus(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DecorationIdentifier(0);
  if (sub_2381527AC())
  {
    sub_2380F1924(a1, v12, type metadata accessor for TransferIDStatus);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13) != 1)
    {
      v14 = *(v7 + 32);
      v14(v9, v12, v6);
      if ((sub_2381527AC() & 1) == 0)
      {
        v14(a4, v9, v6);
        return (*(v7 + 56))(a4, 0, 1, v6);
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return (*(v7 + 56))(a4, 1, 1, v6);
}

uint64_t sub_2380DFF50(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_238154F8C();
  v2[8] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2380DFFE8, v4, v3);
}

uint64_t sub_2380DFFE8()
{
  sub_2380712E4(*(v0 + 48), v0 + 16, &qword_27DEEBF18, &qword_23815B098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  if (swift_dynamicCast() && (v1 = *(v0 + 121), v1 != 2))
  {
    *(v0 + 120) = v1 & 1;
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
    *v6 = v0;
    v6[1] = sub_2380E0180;
    v4 = v0 + 120;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
    sub_23815355C();
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_2380E02BC;
    v4 = v0 + 122;
    v5 = v2;
  }

  return MEMORY[0x2821B6230](v4, v5);
}