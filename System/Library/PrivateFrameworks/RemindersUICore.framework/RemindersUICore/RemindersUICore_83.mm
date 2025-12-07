uint64_t sub_21D8ACDBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288, &qword_21DC0B2C8);
  result = sub_21DBFBE9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v19);
      MEMORY[0x223D44FA0](v20);
      MEMORY[0x223D44FA0](v21);
      result = sub_21DBFC82C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8AD06C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280, &qword_21DC0B2C0);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
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

uint64_t sub_21D8AD2E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633F8, &qword_21DC2F380);
  result = sub_21DBFBE9C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_21D8B7748(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.SectionID.hash(into:)(v32);
      result = sub_21DBFC82C();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_21D8B7748(v5, *(v8 + 48) + v16 * v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_21D8AD5E8(uint64_t a1)
{
  v2 = v1;
  v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63478, &qword_21DC2F438);
  result = sub_21DBFBE9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v42 = v1;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v44 = (v3 + 48);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
LABEL_15:
      v24 = *(v10 + 48);
      v47 = *(v45 + 72);
      v25 = v49;
      sub_21D8B7748(v24 + v47 * (v21 | (v13 << 6)), v49, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(v25 + *(v8 + 20), v7, &unk_27CE5CD70, &unk_21DC09230);
      if ((*v44)(v7, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v26 = v7;
        v27 = v12;
        v28 = v8;
        v29 = v7;
        v30 = v10;
        v31 = v43;
        sub_21D8B7748(v26, v43, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.SectionID.hash(into:)(v50);
        v32 = v31;
        v10 = v30;
        v7 = v29;
        v8 = v28;
        v12 = v27;
        sub_21D8791E0(v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      result = sub_21DBFC82C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_21D8B7748(v49, *(v12 + 48) + v20 * v47, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      ++*(v12 + 16);
      v17 = v48;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v10 + 32);
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    v2 = v42;
    *(v10 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_21D8ADAB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08, &qword_21DC289B0);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v19);
      MEMORY[0x223D44FA0](v20);
      result = sub_21DBFC82C();
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

uint64_t sub_21D8ADD30(uint64_t a1)
{
  v2 = v1;
  v46 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460, &qword_21DC2F410);
  result = sub_21DBFBE9C();
  v14 = result;
  if (*(v12 + 16))
  {
    v42 = v1;
    v43 = v11;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v45 = (v3 + 48);
    v21 = result + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v48 = (v19 - 1) & v19;
LABEL_15:
      v26 = *(v12 + 48);
      v47 = *(v6 + 72);
      sub_21D66A69C(v26 + v47 * (v23 | (v15 << 6)), v11);
      sub_21DBFC7DC();
      sub_21D0D3954(v11, v8, &qword_27CE5FB90, &unk_21DC09290);
      if ((*v45)(v8, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v27 = v8;
        v28 = v14;
        v29 = v8;
        v30 = v6;
        v31 = v12;
        v32 = v44;
        sub_21D8B7748(v27, v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.ItemID.hash(into:)(v49);
        v33 = v32;
        v12 = v31;
        v6 = v30;
        v8 = v29;
        v14 = v28;
        v11 = v43;
        sub_21D8791E0(v33, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      result = sub_21DBFC82C();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21D66A69C(v11, *(v14 + 48) + v22 * v47);
      ++*(v14 + 16);
      v19 = v48;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v41 = 1 << *(v12 + 32);
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    v2 = v42;
    *(v12 + 16) = 0;
  }

  *v2 = v14;
  return result;
}

uint64_t sub_21D8AE190(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A00, &unk_21DC289A0);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
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
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_21D8B7748(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)(v27);
      sub_21DBFC82C();
      v19 = v24;
      v20 = sub_21DBFBCFC();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_21D8B7748(i, *(v7 + 48) + v20 * v18, type metadata accessor for TTRRecurrenceRuleModel);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_21D8AE440(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468, &unk_21DC2F418);
  result = sub_21DBFBE9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
    v37 = result;
    while (1)
    {
      if (!v10)
      {
        v19 = v6;
        while (1)
        {
          v6 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v6 >= v11)
          {
            break;
          }

          v20 = v7[v6];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v38 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        v34 = 1 << *(v3 + 32);
        if (v34 >= 64)
        {
          bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v34;
        }

        v2 = v35;
        *(v3 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v21 = (*(v3 + 48) + 80 * (v18 | (v6 << 6)));
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v26 = v21[4];
      v43 = v21[7];
      v39 = v21[8];
      v40 = v21[5];
      v41 = v21[6];
      v42 = v21[9];
      sub_21DBFC7DC();
      if (v22)
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v25)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_21DBFC7FC();
        if (v25)
        {
LABEL_17:
          sub_21DBFC7FC();
          sub_21DBFA27C();
          goto LABEL_20;
        }
      }

      sub_21DBFC7FC();
LABEL_20:
      if (v40)
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v43)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_21DBFC7FC();
        if (v43)
        {
LABEL_22:
          sub_21DBFC7FC();
          sub_21DBFA27C();
          goto LABEL_25;
        }
      }

      sub_21DBFC7FC();
LABEL_25:
      sub_21DBFC7FC();
      if (v42)
      {
        sub_21DBFA27C();
      }

      result = sub_21DBFC82C();
      v5 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v14 = v23;
        v16 = v42;
        v15 = v43;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v14 = v23;
      v16 = v42;
      v15 = v43;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = (*(v37 + 48) + 80 * v13);
      *v17 = v14;
      v17[1] = v22;
      v17[2] = v24;
      v17[3] = v25;
      v17[4] = v26;
      v17[5] = v40;
      v17[6] = v41;
      v17[7] = v15;
      v17[8] = v39;
      v17[9] = v16;
      ++*(v37 + 16);
      v3 = v36;
      v10 = v38;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8AE80C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63440, &qword_21DC2F3E0);
  result = sub_21DBFBE9C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8AEB34(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21DBF70DC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63438, &qword_21DC2F3D8);
  result = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8AEE90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430, &qword_21DC2F3D0);
  result = sub_21DBFBE9C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v17);
      result = sub_21DBFC82C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8AF0E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63428, &qword_21DC2F3C8);
  result = sub_21DBFBE9C();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8AF3E4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63420, &qword_21DC2F3C0);
  result = sub_21DBFBE9C();
  v11 = result;
  if (*(v9 + 16))
  {
    v33 = v1;
    v34 = v9;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v24 = *(v35 + 72);
      sub_21D8B7748(v23 + v24 * (v20 | (v12 << 6)), v8, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
      TTRRemindersListViewModel.ItemID.hash(into:)(v36);
      sub_21D8791E0(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = sub_21DBFC82C();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D8B7748(v8, *(v11 + 48) + v19 * v24, type metadata accessor for TTRRemindersListViewModel.Item);
      ++*(v11 + 16);
      v9 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v9 + 32);
    if (v32 >= 64)
    {
      bzero(v13, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v33;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_21D8AF75C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21DBF686C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63418, &unk_21DC2F3B0);
  result = sub_21DBFBE9C();
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
      sub_21D0D8A98(&unk_280D0C7E8, MEMORY[0x277D45298], MEMORY[0x277D452A0]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8AFAB8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_21DBF5D5C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63410, &qword_21DC2F3A8);
  result = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8AFE28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21DBFBE9C();
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
      result = sub_21DBFB62C();
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

uint64_t sub_21D8B0048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633E8, &unk_21DC2F360);
  result = sub_21DBFBE9C();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D8B034C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63408, &unk_21DC2F398);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v43 = (v4 + 48);
    v44 = result;
    v41 = (v4 + 32);
    v39 = v2;
    v40 = (v4 + 8);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
LABEL_15:
      v25 = *(v11 + 48);
      v47 = *(v45 + 72);
      v26 = v49;
      sub_21D8B7748(v25 + v47 * (v22 | (v14 << 6)), v49, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      sub_21DBFC7DC();
      sub_21D0D3954(v26, v8, &unk_27CE58E70, &unk_21DC0A930);
      if ((*v43)(v8, 1, v3) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v27 = v42;
        (*v41)(v42, v8, v3);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
        sub_21DBFA00C();
        (*v40)(v27, v3);
      }

      v28 = v46;
      v29 = v49;
      MEMORY[0x223D44FA0](*(v49 + *(v46 + 20)));
      if (*(v29 + *(v28 + 24) + 8))
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
      }

      else
      {
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v13 = v44;
      v30 = -1 << *(v44 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21D8B7748(v49, *(v13 + 48) + v21 * v47, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      ++*(v13 + 16);
      v18 = v48;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v11 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v2 = v39;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_21D8B0890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400, &unk_21DC2F388);
  result = sub_21DBFBE9C();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_21DBFC7DC();
      if (v17 == 2)
      {
        MEMORY[0x223D44FA0](1);
      }

      else
      {
        MEMORY[0x223D44FA0](0);
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_21D8B0B14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21DBFBE9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_21DBFA16C();
      sub_21DBFC7DC();
      sub_21DBFA27C();
      v20 = sub_21DBFC82C();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
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

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

uint64_t sub_21D8B0DB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21DBFBE9C();
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
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v19);
      result = sub_21DBFC82C();
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
      *(*(v7 + 48) + v15) = v19;
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

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_21D8B0FF8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633D0, &qword_21DC2F348);
  result = sub_21DBFBE9C();
  v14 = result;
  if (*(v12 + 16))
  {
    v47 = v3;
    v40 = v2;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v45 = (v4 + 48);
    v46 = result;
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v21 = result + 56;
    v43 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v50 = *(v48 + 72);
      sub_21D8B7748(v26 + v50 * (v23 | (v15 << 6)), v11, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      v27 = v11;
      sub_21D0D3954(&v11[*(v49 + 20)], v8, &qword_27CE5EA20, &qword_21DC0D4A0);
      v28 = v47;
      if ((*v45)(v8, 1, v47) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v8, v28);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_21DBFA00C();
        v30 = v29;
        v12 = v43;
        (*v41)(v30, v28);
      }

      result = sub_21DBFC82C();
      v14 = v46;
      v31 = -1 << *(v46 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v11 = v27;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21D8B7748(v27, *(v14 + 48) + v22 * v50, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v38 = 1 << *(v12 + 32);
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    v2 = v40;
    *(v12 + 16) = 0;
  }

  *v2 = v14;
  return result;
}

void *sub_21D8B156C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288, &qword_21DC0B2C8);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_21D8B16EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280, &qword_21DC0B2C0);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        sub_21DBF8E0C();
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
}

void *sub_21D8B1898(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_21DBFBE8C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_21D8B77B0(*(v13 + 48) + v28, v12, a4);
        result = sub_21D8B7748(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

  return result;
}

void *sub_21D8B1ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08, &qword_21DC289B0);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21D8B1C34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460, &qword_21DC2F410);
  v6 = *v0;
  v7 = sub_21DBFBE8C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
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
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21D0D3954(*(v6 + 48) + v21, v5, &qword_27CE5FB90, &unk_21DC09290);
        result = sub_21D66A69C(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_21D8B1E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468, &unk_21DC2F418);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_21D1D9B34(v23, &v22);
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

void *sub_21D8B2074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430, &qword_21DC2F3D0);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_21D8B227C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFBE8C();
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

void *sub_21D8B240C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400, &unk_21DC2F388);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21D8B2588(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFBE8C();
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

void *sub_21D8B271C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_21DBFBE8C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_21D8B2954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63450, &qword_21DC2F3F0);
  result = sub_21DBFBE9C();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21D8B2D80(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F8, &unk_21DC2F400);
  result = sub_21DBFBE9C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_21D8B77B0(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)(v30);
      result = sub_21DBFC82C();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_21D8B7748(v5, *(v8 + 48) + v15 * v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_21D8B3058(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288, &qword_21DC0B2C8);
  result = sub_21DBFBE9C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v19);
      MEMORY[0x223D44FA0](v20);
      MEMORY[0x223D44FA0](v21);
      result = sub_21DBFC82C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_21D8B32D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280, &qword_21DC0B2C0);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
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

uint64_t sub_21D8B3524(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633F8, &qword_21DC2F380);
  result = sub_21DBFBE9C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_21D8B77B0(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.SectionID.hash(into:)(v30);
      result = sub_21DBFC82C();
      v20 = -1 << *(v8 + 32);
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_21D8B7748(v5, *(v8 + 48) + v15 * v19, type metadata accessor for TTRRemindersListViewModel.SectionID);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_21D8B37FC(uint64_t a1)
{
  v2 = v1;
  v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63478, &qword_21DC2F438);
  result = sub_21DBFBE9C();
  v14 = result;
  if (*(v12 + 16))
  {
    v42 = v2;
    v43 = v11;
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v45 = (v3 + 48);
    v46 = result;
    v21 = result + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v49 = (v19 - 1) & v19;
LABEL_15:
      v26 = *(v12 + 48);
      v48 = *(v9 + 72);
      sub_21D8B77B0(v26 + v48 * (v23 | (v15 << 6)), v11, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(&v11[*(v8 + 20)], v7, &unk_27CE5CD70, &unk_21DC09230);
      if ((*v45)(v7, 1, v47) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v27 = v7;
        v28 = v12;
        v29 = v9;
        v30 = v8;
        v31 = v7;
        v32 = v44;
        sub_21D8B7748(v27, v44, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.SectionID.hash(into:)(v50);
        v33 = v32;
        v7 = v31;
        v8 = v30;
        v9 = v29;
        v12 = v28;
        v11 = v43;
        sub_21D8791E0(v33, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      result = sub_21DBFC82C();
      v14 = v46;
      v34 = -1 << *(v46 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21D8B7748(v11, *(v14 + 48) + v22 * v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      ++*(v14 + 16);
      v19 = v49;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v2 = v42;
        goto LABEL_29;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v14;
  }

  return result;
}

uint64_t sub_21D8B3C94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08, &qword_21DC289B0);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      MEMORY[0x223D44FA0](v19);
      result = sub_21DBFC82C();
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

uint64_t sub_21D8B3EE0(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460, &qword_21DC2F410);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v34 = v1;
    v35 = result;
    v14 = 0;
    v15 = 1 << *(v11 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v11 + 56);
    v18 = (v15 + 63) >> 6;
    v37 = (v3 + 48);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v41 = (v17 - 1) & v17;
LABEL_15:
      v24 = *(v11 + 48);
      v40 = *(v38 + 72);
      sub_21D0D3954(v24 + v40 * (v21 | (v14 << 6)), v10, &qword_27CE5FB90, &unk_21DC09290);
      sub_21DBFC7DC();
      sub_21D0D3954(v10, v7, &qword_27CE5FB90, &unk_21DC09290);
      if ((*v37)(v7, 1, v39) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v25 = v36;
        sub_21D8B7748(v7, v36, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.ItemID.hash(into:)(v42);
        v13 = v35;
        sub_21D8791E0(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      result = sub_21DBFC82C();
      v26 = -1 << *(v13 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_21D66A69C(v10, *(v13 + 48) + v20 * v40);
      ++*(v13 + 16);
      v17 = v41;
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v2 = v34;
        goto LABEL_29;
      }

      v23 = *(v11 + 56 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v41 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

uint64_t sub_21D8B4308(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v23 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A00, &unk_21DC289A0);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v21 = v1;
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
    for (i = result + 56; v11; ++*(v7 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v23;
      v17 = *(v24 + 72);
      sub_21D8B77B0(*(v5 + 48) + v17 * (v13 | (v8 << 6)), v23, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)(v25);
      sub_21DBFC82C();
      v18 = i;
      v19 = sub_21DBFBCFC();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D8B7748(v16, *(v7 + 48) + v19 * v17, type metadata accessor for TTRRecurrenceRuleModel);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v15 = *(v5 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_21D8B4584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468, &unk_21DC2F418);
  result = sub_21DBFBE9C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_37:
    *v2 = v5;
    return result;
  }

  v32 = v3;
  v6 = 0;
  v7 = v3 + 56;
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
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v21 = (*(v3 + 48) + 80 * (v18 | (v6 << 6)));
    v22 = v21[4];
    v23 = v21[1];
    v24 = v21[2];
    v37 = v21[3];
    v38 = v22;
    v36 = v24;
    v34 = *v21;
    v35 = v23;
    sub_21DBFC7DC();
    if (*(&v34 + 1))
    {
      sub_21DBFC7FC();
      sub_21D1D9B34(&v34, v33);
      sub_21DBFA27C();
      if (*(&v35 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_21DBFC7FC();
      sub_21D1D9B34(&v34, v33);
      if (*(&v35 + 1))
      {
LABEL_17:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (*(&v36 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    sub_21DBFC7FC();
    if (*(&v36 + 1))
    {
LABEL_18:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      if (*(&v37 + 1))
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

LABEL_23:
    sub_21DBFC7FC();
    if (*(&v37 + 1))
    {
LABEL_19:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      if (*(&v38 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_21DBFC7FC();
    if (*(&v38 + 1))
    {
LABEL_20:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      goto LABEL_26;
    }

LABEL_25:
    sub_21DBFC7FC();
LABEL_26:
    v3 = v32;
    result = sub_21DBFC82C();
    v25 = -1 << *(v5 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v12 + 8 * v27);
        if (v31 != -1)
        {
          v13 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = (*(v5 + 48) + 80 * v13);
    v15 = v35;
    v16 = v36;
    v17 = v38;
    v14[3] = v37;
    v14[4] = v17;
    v14[1] = v15;
    v14[2] = v16;
    *v14 = v34;
    ++*(v5 + 16);
  }

  v19 = v6;
  while (1)
  {
    v6 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_37;
    }

    v20 = *(v7 + 8 * v6);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v10 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21D8B4930(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63440, &qword_21DC2F3E0);
  result = sub_21DBFBE9C();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_21D8B4C28(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21DBF70DC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63438, &qword_21DC2F3D8);
  v7 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_27CE58AC0, MEMORY[0x277D45430], MEMORY[0x277D45438]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B4F44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430, &qword_21DC2F3D0);
  result = sub_21DBFBE9C();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v16);
      result = sub_21DBFC82C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_21D8B5164(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63428, &qword_21DC2F3C8);
  result = sub_21DBFBE9C();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21D8B5438(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63420, &qword_21DC2F3C0);
  result = sub_21DBFBE9C();
  v11 = result;
  if (*(v9 + 16))
  {
    v32 = v1;
    v33 = v9;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v24 = *(v34 + 72);
      sub_21D8B77B0(v23 + v24 * (v20 | (v12 << 6)), v8, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
      TTRRemindersListViewModel.ItemID.hash(into:)(v35);
      sub_21D8791E0(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = sub_21DBFC82C();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D8B7748(v8, *(v11 + 48) + v19 * v24, type metadata accessor for TTRRemindersListViewModel.Item);
      ++*(v11 + 16);
      v9 = v33;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_26;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_21D8B5780(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21DBF686C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63418, &unk_21DC2F3B0);
  v7 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&unk_280D0C7E8, MEMORY[0x277D45298], MEMORY[0x277D452A0]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B5A9C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_21DBF5D5C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63410, &qword_21DC2F3A8);
  v7 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B5DCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21DBFBE9C();
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
      result = sub_21DBFB62C();
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

uint64_t sub_21D8B5FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633E8, &unk_21DC2F360);
  result = sub_21DBFBE9C();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21D8B62AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70, &unk_21DC0A930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63408, &unk_21DC2F398);
  result = sub_21DBFBE9C();
  v15 = result;
  if (*(v13 + 16))
  {
    v37 = v2;
    v16 = 0;
    v17 = *(v13 + 56);
    v38 = v13 + 56;
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v43 = v21;
    v44 = (v4 + 48);
    v39 = (v4 + 8);
    v40 = (v4 + 32);
    v22 = result + 56;
    v41 = v12;
    v45 = result;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
LABEL_15:
      v27 = *(v13 + 48);
      v46 = *(v10 + 72);
      sub_21D8B77B0(v27 + v46 * (v24 | (v16 << 6)), v12, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      sub_21DBFC7DC();
      sub_21D0D3954(v12, v8, &unk_27CE58E70, &unk_21DC0A930);
      if ((*v44)(v8, 1, v3) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v28 = v42;
        (*v40)(v42, v8, v3);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
        sub_21DBFA00C();
        (*v39)(v28, v3);
      }

      MEMORY[0x223D44FA0](*&v12[*(v9 + 20)]);
      if (*&v12[*(v9 + 24) + 8])
      {
        sub_21DBFC7FC();
        v12 = v41;
        sub_21DBFA27C();
      }

      else
      {
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v15 = v45;
      v29 = -1 << *(v45 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v22 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v22 + 8 * v31);
          if (v35 != -1)
          {
            v23 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v23 = __clz(__rbit64((-1 << v30) & ~*(v22 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_21D8B7748(v12, *(v15 + 48) + v23 * v46, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      ++*(v15 + 16);
      v21 = v43;
      v20 = v47;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v37;
        goto LABEL_32;
      }

      v26 = *(v38 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v47 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v15;
  }

  return result;
}

uint64_t sub_21D8B67DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400, &unk_21DC2F388);
  result = sub_21DBFBE9C();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_21DBFC7DC();
      if (v16 == 2)
      {
        MEMORY[0x223D44FA0](1);
      }

      else
      {
        MEMORY[0x223D44FA0](0);
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

void sub_21D8B6A30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21DBFBE9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_21DBFA16C();
      sub_21DBFC7DC();
      v20 = v19;
      sub_21DBFA27C();
      v21 = sub_21DBFC82C();

      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
}

uint64_t sub_21D8B6CA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      result = sub_21DBFC82C();
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
      *(*(v7 + 48) + v14) = v18;
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

        v4 = v3;
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

uint64_t sub_21D8B6EBC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633D0, &qword_21DC2F348);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v3;
    v39 = v1;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v4 + 48);
    v45 = v11;
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = result + 56;
    v42 = v9;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v48 = *(v47 + 72);
      v26 = v49;
      sub_21D8B77B0(v25 + v48 * (v22 | (v14 << 6)), v49, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(v26 + *(v9 + 20), v8, &qword_27CE5EA20, &qword_21DC0D4A0);
      v27 = v46;
      if ((*v44)(v8, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v28 = v8;
        v29 = v43;
        (*v41)(v43, v28, v27);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_21DBFA00C();
        v30 = v29;
        v8 = v28;
        v9 = v42;
        (*v40)(v30, v27);
      }

      result = sub_21DBFC82C();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      v11 = v45;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21D8B7748(v49, *(v13 + 48) + v21 * v48, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v13;
  }

  return result;
}

unint64_t sub_21D8B7578()
{
  result = qword_280D16988;
  if (!qword_280D16988)
  {
    result = swift_getWitnessTable(byte_21DC2F138, &type metadata for DeferredUpdate, v0, v1);
    atomic_store(result, &qword_280D16988);
  }

  return result;
}

unint64_t sub_21D8B75D0()
{
  result = qword_27CE633A0;
  if (!qword_27CE633A0)
  {
    result = swift_getWitnessTable(byte_21DC2F1D0, &type metadata for CachedPresentationTreeInvalidationFlags, v0, v1);
    atomic_store(result, &qword_27CE633A0);
  }

  return result;
}

unint64_t sub_21D8B7628()
{
  result = qword_27CE633A8;
  if (!qword_27CE633A8)
  {
    result = swift_getWitnessTable(asc_21DC2F1A0, &type metadata for CachedPresentationTreeInvalidationFlags, v0, v1);
    atomic_store(result, &qword_27CE633A8);
  }

  return result;
}

unint64_t sub_21D8B7680()
{
  result = qword_27CE633B0;
  if (!qword_27CE633B0)
  {
    result = swift_getWitnessTable(byte_21DC2F1F8, &type metadata for CachedPresentationTreeInvalidationFlags, v0, v1);
    atomic_store(result, &qword_27CE633B0);
  }

  return result;
}

unint64_t sub_21D8B76D8()
{
  result = qword_27CE633B8;
  if (!qword_27CE633B8)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for CachedPresentationTreeInvalidationFlags, v0, v1);
    atomic_store(result, &qword_27CE633B8);
  }

  return result;
}

uint64_t sub_21D8B7748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8B77B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t REMRepeatType.localizedString.getter(uint64_t a1)
{
  v1 = [objc_opt_self() localizedDescriptionForRepeatType_];
  v2 = sub_21DBFA16C();

  return v2;
}

unint64_t sub_21D8B7888()
{
  result = qword_27CE63480;
  if (!qword_27CE63480)
  {
    type metadata accessor for REMRepeatType(255);
    result = swift_getWitnessTable(byte_21DC081E4, v3, v0, v1);
    atomic_store(result, &qword_27CE63480);
  }

  return result;
}

void *TTRTimeZoneOverrideMenuPresenterCapability.__allocating_init(userDefaults:defaultTimeZone:currentTimeZone:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D0DA550(v16, a2, a3, a4, a5, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.saveRecentlyUsedTimeZone(_:)(char *a1)
{
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68, &qword_21DC2F480);
  v8 = *(v4 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  v11 = *(v5 + 16);
  v32 = v3;
  v29 = v11;
  v30 = v5 + 16;
  v11((v10 + v9), a1, v3);
  v12 = sub_21D8B82CC(v10);

  v13 = v12[2];
  if (v13)
  {
    v28 = v1;
    v33 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v13, 0);
    v14 = v33;
    v27[1] = v12;
    v15 = v12 + v9;
    v16 = (v5 + 8);
    do
    {
      v17 = v32;
      v29(v7, v15, v32);
      v18 = sub_21DBF5BCC();
      v20 = v19;
      (*v16)(v7, v17);
      v33 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21D18E678((v21 > 1), v22 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v31;
      --v13;
    }

    while (v13);

    v1 = v28;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v24 = *(v1 + 40);
  v25 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v24);
  (*(v25 + 16))(v14, v24, v25);
  return swift_endAccess();
}

void *TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverrides(prefix:)(void *a1)
{
  v57 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v2 = sub_21DBF5C4C();
  v58 = *(v2 - 8);
  v3 = v58;
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = *(v1 + 56);

  v15(v16);

  v17 = *(v1 + 72);
  v56 = v1;

  v17(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68, &qword_21DC2F480);
  v19 = *(v3 + 72);
  v20 = v58;
  v21 = v11;
  v22 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v70 = (v22 + v19);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC08D00;
  v24 = *(v20 + 16);
  v64 = v22;
  (v24)(v23 + v22, v14, v2);
  v54 = v14;
  v25 = MEMORY[0x223D3E3D0](v21, v14);
  v68 = v20 + 16;
  if ((v25 & 1) == 0)
  {
    (v24)(v8, v21, v2);
    v23 = sub_21D2118F0(1, 2, 1, v23);
    *(v23 + 16) = 2;
    (*(v20 + 32))(v70 + v23, v8, v2);
  }

  v26 = v24;
  v61 = v57[2];
  v55 = v21;
  if (v61)
  {
    v27 = 0;
    v60 = v57 + v64;
    v69 = v2;
    v70 = (v20 + 8);
    v62 = (v20 + 40);
    v63 = (v20 + 24);
    v59 = v19 + v64;
    v67 = v5;
    v71 = v24;
    do
    {
      v66 = v27;
      (v26)(v5, &v60[v27 * v19], v2);
      v31 = *(v23 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = v23 + v64;
        v34 = v23 + v59;
        v65 = v23 + v64;
        while ((MEMORY[0x223D3E3D0](v33, v5) & 1) == 0)
        {
          ++v32;
          v33 += v19;
          v34 += v19;
          if (v31 == v32)
          {
            goto LABEL_13;
          }
        }

        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_51;
        }

        v36 = *(v23 + 16);
        while (v35 != v36)
        {
          if (v35 >= v36)
          {
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
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          (v71)(v8, v34, v2);
          v37 = MEMORY[0x223D3E3D0](v8, v5);
          (*v70)(v8, v2);
          if ((v37 & 1) == 0)
          {
            if (v35 != v32)
            {
              if (v32 < 0)
              {
                goto LABEL_43;
              }

              v38 = *(v23 + 16);
              if (v32 >= v38)
              {
                goto LABEL_44;
              }

              v39 = v8;
              v40 = v65;
              v41 = v39;
              v42 = v69;
              v71();
              if (v35 >= v38)
              {
                goto LABEL_45;
              }

              (*v63)(v40 + v32 * v19, v34, v42);
              if (v35 >= *(v23 + 16))
              {
                goto LABEL_46;
              }

              v2 = v42;
              v8 = v41;
              (*v62)(v34, v41, v42);
              v5 = v67;
            }

            ++v32;
          }

          ++v35;
          v36 = *(v23 + 16);
          v34 += v19;
        }

        if (v35 < v32)
        {
          goto LABEL_48;
        }

        if (v32 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }
      }

      else
      {
LABEL_13:
        v35 = *(v23 + 16);
        v32 = v35;
      }

      v43 = v32 - v35;
      v44 = v32;
      if (__OFADD__(v35, v32 - v35))
      {
        goto LABEL_47;
      }

      if (v32 > *(v23 + 24) >> 1)
      {
        if (v35 > v32)
        {
          v44 = v35;
        }

        v23 = sub_21D2118F0(1, v44, 1, v23);
      }

      v45 = v23 + v64;
      v46 = v32 * v19;
      v47 = v23 + v64 + v32 * v19;
      v2 = v69;
      swift_arrayDestroy();
      v48 = v35 == v32;
      v26 = v71;
      if (!v48)
      {
        if (v46 < (v35 * v19) || v47 >= v45 + v35 * v19 + (*(v23 + 16) - v35) * v19)
        {
          v2 = v69;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v2 = v69;
          if (v46 != v35 * v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = *(v23 + 16);
        v29 = __OFADD__(v28, v43);
        v30 = v28 + v43;
        if (v29)
        {
          goto LABEL_50;
        }

        *(v23 + 16) = v30;
      }

      v5 = v67;
      v27 = v66 + 1;
      (*v70)(v67, v2);
    }

    while (v27 != v61);
  }

  v72 = v57;
  sub_21DBF8E0C();
  sub_21D563578(v23);
  v50 = sub_21D8B82CC(v72);

  v51 = *(v58 + 8);
  v51(v55, v2);
  v51(v54, v2);
  return v50;
}

void *sub_21D8B82CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0, qword_21DC0BF70);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v31 - v12;
  swift_beginAccess();
  v13 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
  v15 = *(v14 + 8);
  sub_21DBF8E0C();
  v16 = v15(v13, v14);
  result = swift_endAccess();
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v39 = *(v18 + 16);
  if (v39)
  {
    v19 = 0;
    v37 = (v6 + 48);
    v38 = v18 + 32;
    v35 = (v6 + 32);
    v36 = a1;
    v40 = (v6 + 16);
    v20 = v33;
    v31 = v18;
    while (v19 < *(v18 + 16))
    {
      sub_21DBF8E0C();
      sub_21DBF5BBC();

      if ((*v37)(v20, 1, v5) == 1)
      {
        result = sub_21D1E0858(v20);
      }

      else
      {
        v34 = *v35;
        v34(v41, v20, v5);
        v21 = 0;
        v22 = a1;
        v23 = a1[2];
        while (v23 != v21)
        {
          (*(v6 + 16))(v10, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21++, v5);
          v24 = MEMORY[0x223D3E3D0](v10, v41);
          v25 = *(v6 + 8);
          v25(v10, v5);
          if (v24)
          {
            result = (v25)(v41, v5);
            a1 = v22;
            v20 = v33;
            goto LABEL_19;
          }
        }

        (*v40)(v32, v41, v5);
        a1 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_21D2118F0(0, v36[2] + 1, 1, v36);
        }

        v20 = v33;
        v27 = v36[2];
        v26 = v36[3];
        if (v27 >= v26 >> 1)
        {
          v36 = sub_21D2118F0((v26 > 1), v27 + 1, 1, v36);
        }

        (*(v6 + 8))(v41, v5);
        v28 = v36;
        v36[2] = v27 + 1;
        result = (v34)(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v32, v5);
LABEL_19:
        v18 = v31;
      }

      if (++v19 == v39)
      {

        a1 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    if (a1[2] >= 9uLL)
    {
      sub_21D19885C(a1, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 0x11uLL);
      v30 = v29;

      return v30;
    }

    return a1;
  }

  return result;
}

void *TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverridesWithCurrentTimeZone(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68, &qword_21DC2F480);
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  (*(v3 + 16))(v5 + v4, a1, v2);
  v6 = sub_21D8B82CC(v5);

  return v6;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

id TTRIQuickLookImageAttachmentPreviewItem.__allocating_init(attachmentID:fileURL:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID] = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRIQuickLookImageAttachmentPreviewItem.init(attachmentID:fileURL:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID] = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_21D0DB414(a1, v7);
  if (!v8)
  {
    sub_21D1A8418(v7);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  sub_21D1B2ABC();
  v2 = *&v6[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID];
  v3 = sub_21DBFB63C();

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = sub_21DBF544C();

  return v4 & 1;
}

id TTRIQuickLookImageAttachmentPreviewItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIQuickLookImageAttachmentPreviewItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.previewItemURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v4 = sub_21DBF54CC();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, v1 + v3, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.previewItemTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem(uint64_t a1)
{
  result = qword_27CE634A0;
  if (!qword_27CE634A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8B9180(uint64_t a1)
{
  result = sub_21DBF54CC();
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

uint64_t sub_21D8B924C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63510);
  v1 = __swift_project_value_buffer(v0, qword_27CE63510);
  if (qword_27CE570F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8ED00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRUrgentAlarmAuthorizationService.authorizationStatus.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21D0D3954(v1 + 16, &v10, &qword_27CE63528, &qword_21DC2F540);
  if (v11)
  {
    sub_21D0D0FD0(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_21DBF5E8C();
    v3 = sub_21DBF5E6C();
    (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_21D0CF7E0(&v10, &qword_27CE63528, &qword_21DC2F540);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE63510);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "TTRUrgentAlarmAuthorizationService: missing alarm manager -- returning nil authorization status", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    v9 = sub_21DBF5E6C();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

void *TTRUrgentAlarmAuthorizationService.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_21DBF5EAC();
  swift_allocObject();
  v2 = sub_21DBF5E9C();
  v3 = MEMORY[0x277D44D00];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  return v0;
}

void *TTRUrgentAlarmAuthorizationService.init()()
{
  v1 = sub_21DBF5EAC();
  swift_allocObject();
  v0[2] = sub_21DBF5E9C();
  v2 = MEMORY[0x277D44D00];
  v0[5] = v1;
  v0[6] = v2;
  return v0;
}

__n128 TTRUrgentAlarmAuthorizationService.__allocating_init(alarmManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  return result;
}

uint64_t TTRUrgentAlarmAuthorizationService.init(alarmManager:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

uint64_t TTRUrgentAlarmAuthorizationService.checkAndRequestAccessIfNeeded()()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1A8, &qword_21DC2F550);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D8B96B8, 0, 0);
}

uint64_t sub_21D8B96B8()
{
  sub_21D0D3954(*(v0 + 96) + 16, v0 + 56, &qword_27CE63528, &qword_21DC2F540);
  if (!*(v0 + 80))
  {
    sub_21D0CF7E0(v0 + 56, &qword_27CE63528, &qword_21DC2F540);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE63510);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRUrgentAlarmAuthorizationService: checkAndRequestAccessIfNeeded missing alarm manager", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    goto LABEL_20;
  }

  v1 = *(v0 + 112);
  sub_21D0D0FD0((v0 + 56), v0 + 16);
  TTRUrgentAlarmAuthorizationService.authorizationStatus.getter(v1);
  v2 = sub_21DBF5E6C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE63510);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_8;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "TTRUrgentAlarmAuthorizationService: Missing AlarmKit authorization status; will not request for authorization";
LABEL_7:
    _os_log_impl(&dword_21D0C9000, v5, v6, v8, v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
LABEL_8:
    v9 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_21D0CF7E0(v9, &qword_27CE5B1A8, &qword_21DC2F550);
LABEL_20:

    v20 = *(v0 + 8);

    return v20();
  }

  v14 = *(v0 + 104);
  sub_21D0D3954(*(v0 + 112), v14, &qword_27CE5B1A8, &qword_21DC2F550);
  v15 = (*(v3 + 88))(v14, v2);
  if (v15 == *MEMORY[0x277D44CD8])
  {
LABEL_15:
    sub_21D0CF7E0(*(v0 + 112), &qword_27CE5B1A8, &qword_21DC2F550);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE63510);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAEDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v17, v18, "TTRUrgentAlarmAuthorizationService: AlarmKit authorization status already determined; will not request for authorization", v19, 2u);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_20;
  }

  if (v15 != *MEMORY[0x277D44CE0])
  {
    if (v15 != *MEMORY[0x277D44CE8])
    {
      (*(v3 + 8))(*(v0 + 104), v2);
      if (qword_27CE56DE8 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE63510);
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAEBC();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "TTRUrgentAlarmAuthorizationService: Unknown AlarmKit authorization status; will not request for authorization";
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE63510);
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAEDC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21D0C9000, v23, v24, "TTRUrgentAlarmAuthorizationService: AlarmKit authorization status is not determined. Requesting authorization...", v25, 2u);
    MEMORY[0x223D46520](v25, -1, -1);
  }

  v26 = swift_task_alloc();
  *(v0 + 120) = v26;
  *v26 = v0;
  v26[1] = sub_21D8B9C88;

  return sub_21D8B9F3C(v0 + 16);
}

uint64_t sub_21D8B9C88()
{

  return MEMORY[0x2822009F8](sub_21D8B9D84, 0, 0);
}

uint64_t sub_21D8B9D84()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_21D0CF7E0(v1, &qword_27CE5B1A8, &qword_21DC2F550);

  v2 = v0[1];

  return v2();
}

uint64_t TTRUrgentAlarmAuthorizationService.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 16, &qword_27CE63528, &qword_21DC2F540);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8B9EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return TTRUrgentAlarmAuthorizationService.checkAndRequestAccessIfNeeded()();
}

uint64_t sub_21D8B9F3C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_21DBF5E6C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D8BA008, 0, 0);
}

uint64_t sub_21D8BA008()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21D8BA0C4;
  v5 = v0[7];

  return MEMORY[0x2821A6558](v5, v2, v3);
}

uint64_t sub_21D8BA0C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21D8BA418;
  }

  else
  {
    v2 = sub_21D8BA1D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D8BA1D8()
{
  v25 = v0;
  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE63510);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  if (v8)
  {
    v23 = v0[7];
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315138;
    sub_21D8BA788();
    v14 = sub_21DBFC5BC();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v9, v12);
    v18 = sub_21D0CDFB4(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRUrgentAlarmAuthorizationService: Finished request for AlarmKit authorization {authorizationStatus: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);

    v17(v23, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v12);
    v19(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_21D8BA418()
{
  v17 = v0;
  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63510);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    v11 = sub_21DBFA1AC();
    v13 = sub_21D0CDFB4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRUrgentAlarmAuthorizationService: Failed to request AlarmKit authorization {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t dispatch thunk of TTRUrgentAlarmAuthorizationServiceType.checkAndRequestAccessIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

unint64_t sub_21D8BA788()
{
  result = qword_27CE63530;
  if (!qword_27CE63530)
  {
    v3 = sub_21DBF5E6C();
    result = swift_getWitnessTable(MEMORY[0x277D44CF0], v3, v0, v1);
    atomic_store(result, &qword_27CE63530);
  }

  return result;
}

uint64_t TTRTipGroceryRenameSection.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipGroceryRenameSection.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipGroceryRenameSection.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D8BAC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
  __swift_allocate_value_buffer(v0, qword_27CE63538);
  __swift_project_value_buffer(v0, qword_27CE63538);
  return sub_21DBF8EAC();
}

uint64_t static TTRTipGroceryRenameSection.startedEditingSection.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
  v3 = __swift_project_value_buffer(v2, qword_27CE63538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TTRTipGroceryRenameSection.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_21DBF8E7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE63538);
  (*(v1 + 16))(v3, v8, v0);
  sub_21DBF8E1C();
  sub_21D8BB4E4(&qword_27CE63550, MEMORY[0x277CE19C0]);
  sub_21D8BB4E4(&qword_27CE63558, MEMORY[0x277CE19B8]);
  sub_21DBF8E8C();
  sub_21DBF8DFC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_21DBF8E0C();

  return v9;
}

uint64_t sub_21D8BAFBC@<X0>(uint64_t *a2@<X8>)
{
  v34 = a2;
  v2 = sub_21DBF528C();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63570, &qword_21DC2F6C0);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63578, &qword_21DC2F6C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63580, &qword_21DC2F6D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63588, &qword_21DC2F6D8);
  v15 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v17 = &v28 - v16;
  sub_21D0D0F1C(&qword_27CE63590, &qword_27CE63578, &qword_21DC2F6C8, MEMORY[0x277CC90F8]);
  sub_21DBF52AC();
  swift_getKeyPath(" \n%_");
  sub_21DBF526C();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath(byte_21DC2F718);
  v18 = MEMORY[0x277CC90C0];
  sub_21D0D0F1C(&qword_27CE63598, &qword_27CE63580, &qword_21DC2F6D0, MEMORY[0x277CC90C0]);
  sub_21DBF526C();

  (*(v12 + 8))(v14, v11);
  v37 = 1;
  v19 = v30;
  sub_21DBF529C();
  v21 = v31;
  v20 = v32;
  v22 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x277CC8FD8], v33);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE635A0, &qword_21DC2F748);
  v24 = v34;
  v34[3] = v23;
  v24[4] = sub_21D8BBCE4();
  __swift_allocate_boxed_opaque_existential_0(v24);
  sub_21D0D0F1C(&qword_27CE635D0, &qword_27CE63588, &qword_21DC2F6D8, v18);
  sub_21D0D0F1C(&unk_27CE635D8, &qword_27CE63570, &qword_21DC2F6C0, MEMORY[0x277CC9080]);
  v25 = v29;
  v26 = v35;
  sub_21DBF527C();
  (*(v20 + 8))(v21, v22);
  (*(v36 + 8))(v19, v26);
  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_21D8BB4E4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21DBF8E1C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D8BB530()
{
  result = qword_27CE63560;
  if (!qword_27CE63560)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipGroceryRenameSection, &type metadata for TTRTipGroceryRenameSection, v0, v1);
    atomic_store(result, &qword_27CE63560);
  }

  return result;
}

uint64_t sub_21D8BB584()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D8BB65C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D8BB750()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20, &qword_21DC26330);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_21DBF8E7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE63538);
  (*(v1 + 16))(v3, v8, v0);
  sub_21DBF8E1C();
  sub_21D8BB4E4(&qword_27CE63550, MEMORY[0x277CE19C0]);
  sub_21D8BB4E4(&qword_27CE63558, MEMORY[0x277CE19B8]);
  sub_21DBF8E8C();
  sub_21DBF8DFC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_21DBF8E0C();

  return v9;
}

uint64_t sub_21D8BB990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D8BBC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D8BBC90();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_21D8BBC90()
{
  result = qword_27CE63568;
  if (!qword_27CE63568)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipGroceryRenameSection, &type metadata for TTRTipGroceryRenameSection, v0, v1);
    atomic_store(result, &qword_27CE63568);
  }

  return result;
}

unint64_t sub_21D8BBCE4()
{
  result = qword_27CE635A8;
  if (!qword_27CE635A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE635A0, &qword_21DC2F748);
    v4[0] = sub_21D8BBD9C();
    v4[1] = sub_21D0D0F1C(&qword_27CE635C8, &qword_27CE63570, &qword_21DC2F6C0, MEMORY[0x277CE1978]);
    result = swift_getWitnessTable(MEMORY[0x277CE1970], v3, v4);
    atomic_store(result, &qword_27CE635A8);
  }

  return result;
}

unint64_t sub_21D8BBD9C()
{
  result = qword_27CE635B0;
  if (!qword_27CE635B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63588, &qword_21DC2F6D8);
    v4[0] = sub_21D8BBE20();
    result = swift_getWitnessTable(MEMORY[0x277CE1980], v3, v4);
    atomic_store(result, &qword_27CE635B0);
  }

  return result;
}

unint64_t sub_21D8BBE20()
{
  result = qword_27CE635B8;
  if (!qword_27CE635B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63580, &qword_21DC2F6D0);
    v4[0] = sub_21D0D0F1C(&qword_27CE635C0, &qword_27CE63578, &qword_21DC2F6C8, MEMORY[0x277CE1988]);
    result = swift_getWitnessTable(MEMORY[0x277CE1980], v3, v4);
    atomic_store(result, &qword_27CE635B8);
  }

  return result;
}

BOOL sub_21D8BC074(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0, &unk_21DC09120);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  sub_21D0D3954(a1, v30, &qword_27CE5C690, &unk_21DC11AB0);
  if (!v31)
  {
    v20 = &qword_27CE5C690;
    v21 = &unk_21DC11AB0;
    v22 = v30;
LABEL_11:
    sub_21D0CF7E0(v22, v20, v21);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v2;
  v15 = v5;
  v16 = v29[1];
  v17 = OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL;
  v18 = *(v11 + 48);
  v29[0] = v14;
  sub_21D0D3954(v14 + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL, v13, &qword_27CE5EA20, &qword_21DC0D4A0);
  sub_21D0D3954(&v16[v17], &v13[v18], &qword_27CE5EA20, &qword_21DC0D4A0);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5EA20, &qword_21DC0D4A0);
  if (v19(&v13[v18], 1, v4) == 1)
  {

    (*(v15 + 8))(v10, v4);
LABEL_10:
    v20 = &unk_27CE5F2A0;
    v21 = &unk_21DC09120;
    v22 = v13;
    goto LABEL_11;
  }

  (*(v15 + 32))(v7, &v13[v18], v4);
  sub_21D17A744();
  v24 = sub_21DBFA10C();
  v25 = *(v15 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_21D0CF7E0(v13, &qword_27CE5EA20, &qword_21DC0D4A0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v26 = *(v29[0] + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle + 8);
  v27 = *&v16[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle + 8];
  if (v26)
  {
    if (v27)
    {
      if (*(v29[0] + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle) == *&v16[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle] && v26 == v27)
      {

        return 1;
      }

      v28 = sub_21DBFC64C();

      return (v28 & 1) != 0;
    }

LABEL_20:

    return 0;
  }

  sub_21DBF8E0C();

  if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for TTRIQuickLookPreviewItem(uint64_t a1)
{
  result = qword_27CE635E8;
  if (!qword_27CE635E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D8BC5F8(uint64_t a1)
{
  sub_21D514D00(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *TTRIQuickLookPreviewController.__allocating_init(ttr_previewItems:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  *&v3[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  [v6 setDataSource_];
  return v6;
}

uint64_t TTRIQuickLookPreviewController.transitionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate];
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  [v2 setDelegate_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_21D8BC83C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate;
  swift_beginAccess();
  *(v4 + 1) = v2;
  swift_unknownObjectWeakAssign();
  [v3 setDelegate_];
  return swift_unknownObjectRelease();
}

void (*TTRIQuickLookPreviewController.transitionDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D8BC964;
}

void sub_21D8BC964(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    [v4 setDelegate_];
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *TTRIQuickLookPreviewController.init(ttr_previewItems:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  *&v1[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  [v6 setDataSource_];
  return v6;
}

id TTRIQuickLookPreviewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIQuickLookPreviewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_21DBFC31C();
  __break(1u);
}

id TTRIQuickLookPreviewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TTRIQuickLookPreviewController.__allocating_init(previewItems:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A698, &qword_21DC10088);
  v3 = sub_21DBFA5DC();

  v4 = [v2 initWithPreviewItems_];

  return v4;
}

char *_s15RemindersUICore30TTRIQuickLookPreviewControllerC15previewItemURLsACSay10Foundation3URLVG_tcfC_0(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v33 = *(v11 + 56);
    v34 = 0x800000021DC6ADD0;
    v32 = (v11 + 40);
    v30[1] = a1;
    v31 = (v11 - 8);
    do
    {
      v35 = v9;
      v10(v8, v13, v2);
      v10(v5, v8, v2);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF516C();
      v16 = v15;
      v17 = type metadata accessor for TTRIQuickLookPreviewItem(0);
      v18 = objc_allocWithZone(v17);
      v19 = &v18[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle];
      *v19 = v14;
      v19[1] = v16;
      v20 = OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL;
      v10(&v18[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL], v5, v2);
      (*v32)(&v18[v20], 0, 1, v2);
      v38.receiver = v18;
      v38.super_class = v17;
      objc_msgSendSuper2(&v38, sel_init);
      v21 = *v31;
      (*v31)(v5, v2);
      v21(v8, v2);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v13 += v33;
      v9 = v35 - 1;
    }

    while (v35 != 1);

    v22 = v39;
    if (!(v39 >> 62))
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A698, &qword_21DC10088);
    v23 = sub_21DBFC33C();

    goto LABEL_8;
  }

  v22 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  v23 = v22;
LABEL_8:

  v24 = type metadata accessor for TTRIQuickLookPreviewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v26 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = v23;
  v37.receiver = v27;
  v37.super_class = v26;
  *&v25[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v37, sel_init);
  v36.receiver = v25;
  v36.super_class = v24;
  v28 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  [v28 setDataSource_];
  return v28;
}

uint64_t TTRReminderCellTitleInteractor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellTitleInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellTitleInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderCellTitleInteractor.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellTitleInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8BD61C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D8335E8(v3, v4);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntryPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D8335E8(v3, v4);
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  sub_21D257D78(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntryPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D257D78(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntryPresenterConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickEntryPresenterConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_21D8BD7C8(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_27CE56A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (v3 == 2)
  {
    v4 = 1;
    v5 = (byte_27CE5E181 & 1) != 0;
    if (byte_27CE5E181)
    {
      v6 = 0x80;
    }

    else
    {
      v4 = 5;
      v6 = -64;
    }
  }

  else if (byte_27CE5E181 & 1) != 0 && (v3)
  {
    v4 = 0;
    v6 = 0x80;
    v5 = 1;
  }

  else
  {
    v6 = -64;
    v5 = 1;
    v4 = 6;
  }

  *a2 = v5;
  *(a2 + 1) = v3 == 2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
}

unint64_t sub_21D8BD8CC()
{
  result = qword_27CE63680;
  if (!qword_27CE63680)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BDB0, &unk_21DC14D20);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE63680);
  }

  return result;
}

uint64_t sub_21D8BD930(char a1)
{
  if (!a1)
  {
    return 0x65646F4D65736162;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000018;
}

uint64_t sub_21D8BD990(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x800000021DC43A70;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = 0x800000021DC43A70;
  }

  else
  {
    v6 = 0x800000021DC43A90;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65646F4D65736162;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE90000000000006CLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000018;
    v4 = 0x800000021DC43A90;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x65646F4D65736162;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE90000000000006CLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DBFC64C();
  }

  return v11 & 1;
}

uint64_t sub_21D8BDA70()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

double sub_21D8BDB1C(uint64_t a1)
{
  sub_21DBFA27C();

  return result;
}

uint64_t sub_21D8BDBB4(uint64_t a1)
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

unint64_t sub_21D8BDC5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D8BDD5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21D8BDC8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0xD000000000000012;
  v5 = 0x800000021DC43A70;
  if (v2 != 1)
  {
    v4 = 0xD000000000000018;
    v5 = 0x800000021DC43A90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65646F4D65736162;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21D8BDD08()
{
  result = qword_27CE63688;
  if (!qword_27CE63688)
  {
    result = swift_getWitnessTable(a6D, &type metadata for TTRSECreateRemindersGenerativeModel, v0, v1);
    atomic_store(result, &qword_27CE63688);
  }

  return result;
}

unint64_t sub_21D8BDD5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBFC45C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void static TTRListColors.color(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v5 = [v4 ckSymbolicColorName];
    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = [v4 daSymbolicColorName];
    v10 = sub_21DBFA16C();
    v12 = v11;

    if (qword_280D1AD80 != -1)
    {
      swift_once();
    }

    v13 = off_280D1AD88;
    if (*(off_280D1AD88 + 2))
    {
      v14 = sub_21D0CEF70(v6, v8);
      v16 = v15;

      if (v16)
      {
        v17 = *(v13[7] + 8 * v14);
        if (qword_280D1BB08 == -1)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          swift_once();
          if ((v17 & 0x8000000000000000) == 0)
          {
LABEL_8:
            if (v17 < *(off_280D1BB10 + 2))
            {
              v18 = (off_280D1BB10 + 48 * v17);
              v20 = v18[4];
              v19 = v18[5];
              v22 = v18[6];
              v21 = v18[7];
              v24 = v18[8];
              v23 = v18[9];
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              sub_21DBF8E0C();

LABEL_20:

              *a2 = v20;
              *(a2 + 8) = v19;
              *(a2 + 16) = v22;
              *(a2 + 24) = v21;
              *(a2 + 32) = v24;
              *(a2 + 40) = v23;
              *(a2 + 48) = 0;
              return;
            }

            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (v13[2])
    {
      v29 = sub_21D0CEF70(v10, v12);
      v31 = v30;

      if (v31)
      {
        v17 = *(v13[7] + 8 * v29);
        if (qword_280D1BB08 == -1)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

LABEL_18:
          if (v17 < *(off_280D1BB10 + 2))
          {
            v32 = (off_280D1BB10 + 48 * v17);
            v20 = v32[4];
            v19 = v32[5];
            v22 = v32[6];
            v21 = v32[7];
            v24 = v32[8];
            v23 = v32[9];
            sub_21DBF8E0C();
            sub_21DBF8E0C();
            sub_21DBF8E0C();
            goto LABEL_20;
          }

          goto LABEL_28;
        }

LABEL_26:
        swift_once();
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    *a2 = a1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    return;
  }

  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = xmmword_280D1BAC8;
  v26 = xmmword_280D1BAD8;
  v27 = xmmword_280D1BAE8;
  v28 = byte_280D1BAF8;
  *a2 = xmmword_280D1BAC8;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  sub_21D0FB960(v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28);
}

id static TTRListColors.SmartList.siriFoundInApps.getter()
{
  v0 = [objc_opt_self() ttr_systemPurpleColor];

  return v0;
}

uint64_t TTRListColors.Color.localizedDescription.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  if (v0[3])
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = *(v0 + 4);
    LOBYTE(v9) = 1;
    v3 = TTRListColors.Color.nativeColor.getter();
    v4 = [v3 accessibilityName];

    v1 = sub_21DBFA16C();
  }

  else
  {
    sub_21DBF8E0C();
  }

  return v1;
}

uint64_t sub_21D8BE260()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63690);
  v1 = __swift_project_value_buffer(v0, qword_27CE63690);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static TTRListColors.remColor(for:list:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*(a1 + 48))
  {
    v3 = v2;
  }

  else
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = (*(v5 + 72))(v4, v5);
    LOBYTE(v5) = [v6 supportsListAppearance];

    v7 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v8 = sub_21DBFA12C();
    if (v5)
    {
      v9 = [v7 initWithCKSymbolicColorName:v8 hexString:0];
    }

    else
    {
      v9 = [v7 initWithDASymbolicColorName:v8 daHexString:0];
    }

    v2 = v9;
  }

  return v2;
}

uint64_t static TTRListColors.ttrColor(withSymbolicName:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1AD80 != -1)
  {
    v11 = a1;
    v12 = a2;
    swift_once();
    a1 = v11;
    a2 = v12;
  }

  v2 = off_280D1AD88;
  if (!*(off_280D1AD88 + 2))
  {
    return 0;
  }

  result = sub_21D0CEF70(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2[7] + 8 * result);
  if (qword_280D1BB08 == -1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = swift_once();
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (v5 < *(off_280D1BB10 + 2))
      {
        type metadata accessor for RemindersUICoreBundleLookupObject();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v7 = objc_opt_self();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v8 = [v7 bundleForClass_];
        v9 = sub_21DBFA12C();
        v10 = [objc_opt_self() colorNamed:v9 inBundle:v8 compatibleWithTraitCollection:0];

        return v10;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t TTRListColors.SymbolicColor.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRListColors.SymbolicColor.colorAssetName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRListColors.SymbolicColor.localizedDescription.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRListColors.SymbolicColor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRListColors.Color.description.getter()
{
  v1 = *v0;
  if (*(v0 + 48))
  {
    v7 = 0x286D6F74737563;
    v2 = [v1 hexString];
    v3 = sub_21DBFA16C();
    v5 = v4;

    MEMORY[0x223D42AA0](v3, v5);
  }

  else
  {
    v7 = 0x63696C6F626D7973;
    MEMORY[0x223D42AA0](v1, *(v0 + 8));
  }

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v7;
}

char *static TTRListColors.availableSymbolicColors(for:)(uint64_t a1)
{
  if (qword_280D1BB08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  MEMORY[0x28223BE20](a1);
  v5[2] = v1;
  return sub_21D4E7974(sub_21D8BF5B4, v5, v2);
}

void sub_21D8BE8CC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v16 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 72))(v9, v10);
  LOBYTE(v9) = [v11 supportsListAppearance];

  v12 = sub_21DBFA12C();
  if ((v9 & 1) == 0)
  {
    IsSupportedByDA = REMSymbolicColorIsSupportedByDA();

    if ((IsSupportedByDA & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v14 = v16;
    goto LABEL_6;
  }

  IsSupportedByCK = REMSymbolicColorIsSupportedByCK();

  if (IsSupportedByCK)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
  v5 = 0;
  v14 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_6:
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v14;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
}

uint64_t static TTRListColors.availableColors(for:)(uint64_t a1)
{
  if (qword_280D1BB08 != -1)
  {
    v17 = a1;
    swift_once();
    a1 = v17;
  }

  MEMORY[0x28223BE20](a1);
  v18[2] = v1;
  v3 = sub_21D4E7974(sub_21D8BF5F8, v18, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21D18F590(0, v4, 0);
    v5 = v21;
    v18[5] = v3;
    v6 = (v3 + 72);
    do
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *v6;
      v19 = *(v6 - 1);
      v20 = v9;
      v21 = v5;
      v12 = *(v5 + 16);
      v13 = *(v5 + 24);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v12 >= v13 >> 1)
      {
        sub_21D18F590((v13 > 1), v12 + 1, 1);
        v5 = v21;
      }

      v6 += 6;
      *(v5 + 16) = v12 + 1;
      v14 = v5 + 56 * v12;
      *(v14 + 32) = v8;
      *(v14 + 40) = v7;
      v15 = v19;
      *(v14 + 48) = v20;
      *(v14 + 56) = v10;
      *(v14 + 64) = v15;
      *(v14 + 72) = v11;
      *(v14 + 80) = 0;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

double static TTRListColors.allSymbolicColors.getter()
{
  if (qword_280D1BB08 != -1)
  {
    swift_once();
  }

  sub_21DBF8E0C();
  return result;
}

double static TTRListColors.defaultColor.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  *a1 = xmmword_280D1BAC8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

void static TTRListColors.defaultColor.setter(uint64_t a1)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_280D1BAC8;
  v5 = xmmword_280D1BAD8;
  v6 = xmmword_280D1BAE8;
  v7 = byte_280D1BAF8;
  xmmword_280D1BAC8 = v8;
  xmmword_280D1BAD8 = v9;
  *&xmmword_280D1BAE8 = v1;
  *(&xmmword_280D1BAE8 + 1) = v2;
  byte_280D1BAF8 = v3;
  sub_21D1078C0(v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7);
}

uint64_t (*static TTRListColors.defaultColor.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_21D8BEDC0@<D0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  *a1 = xmmword_280D1BAC8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

void sub_21D8BEE58(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_21D0FB960(*a1, v2, v3, v4, v5, v6, v7);
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_280D1BAC8;
  v9 = xmmword_280D1BAD8;
  v10 = xmmword_280D1BAE8;
  v11 = byte_280D1BAF8;
  *&xmmword_280D1BAC8 = v1;
  *(&xmmword_280D1BAC8 + 1) = v2;
  *&xmmword_280D1BAD8 = v3;
  *(&xmmword_280D1BAD8 + 1) = v4;
  *&xmmword_280D1BAE8 = v5;
  *(&xmmword_280D1BAE8 + 1) = v6;
  byte_280D1BAF8 = v7;
  sub_21D1078C0(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11);
}

id static TTRListColors.tagged.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t UIColor.hexString.getter()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v13[0] = 0.0;
  v10 = 0;
  v11 = 0.0;
  [v0 getRed:v13 green:&v12 blue:&v11 alpha:&v10];
  v1 = v13[0] * 255.0;
  if (COERCE__INT64(fabs(v13[0] * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v12 * 255.0;
  if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = v11 * 255.0;
  if (COERCE__INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v3 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v4 = (v2 << 8) | (v1 << 16) | v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83B88];
  *(v5 + 16) = xmmword_21DC08D00;
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v4;
  sub_21DBFA17C();
  v8 = sub_21DBFA01C();

  return v8;
}

BOOL UIColor.adjustsForAccessibilityIncreaseContrast.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = sub_21DBFB24C();

  v5 = [v1 resolvedColorWithTraitCollection_];
  v6 = [v2 currentTraitCollection];
  v7 = sub_21DBFB24C();

  v8 = [v1 resolvedColorWithTraitCollection_];
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  LOBYTE(v6) = sub_21DBFB63C();

  return (v6 & 1) == 0;
}

UIColor __swiftcall UIColor.accessibilityAdjustedForTraitCollection(_:)(UITraitCollection a1)
{
  if ([(objc_class *)a1.super.isa accessibilityContrast]== 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 currentTraitCollection];
    v4 = sub_21DBFB24C();

    v5 = [v14 resolvedColorWithTraitCollection_];
    v6 = [v2 currentTraitCollection];
    v7 = sub_21DBFB24C();

    v8 = [v14 resolvedColorWithTraitCollection_];
    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    LOBYTE(v6) = sub_21DBFB63C();

    if (v6)
    {
      v9 = [(objc_class *)a1.super.isa userInterfaceStyle];
      v10 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v9 == 2)
      {
        v11 = [v10 initWithWhite:1.0 alpha:0.2];
        result.super.isa = [v14 _colorBlendedWithColor_];
        if (!result.super.isa)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        v11 = [v10 initWithWhite:0.0 alpha:0.2];
        result.super.isa = [v14 _colorBlendedWithColor_];
        if (!result.super.isa)
        {
          __break(1u);
          return result;
        }
      }

      isa = result.super.isa;

      return isa;
    }
  }

LABEL_6:

  return v14;
}

void sub_21D8BF610(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_21DBFBD0C();
    }

    else
    {
      v3 = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_21D3656F4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 objectIdentifier];
        v14 = sub_21DBFA16C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21D18E678((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58, &unk_21DC11840);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_21D15746C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_21D15746C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_21D15746C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}