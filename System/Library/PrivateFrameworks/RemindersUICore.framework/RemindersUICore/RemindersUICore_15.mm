uint64_t sub_21D21E1E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58290, &qword_21DC09060);
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v33 = v22[1];
      v34 = *v22;
      if ((v4 & 1) == 0)
      {
        v23 = v21;
        sub_21D179D54(v34, *(&v34 + 1), v33, *(&v33 + 1));
      }

      result = sub_21DBFB62C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v34;
      v16[1] = v33;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21D21E470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58298, &qword_21DC09068);
  v38 = v4;
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        if ((v38 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v2;
        if (v36 >= 64)
        {
          bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 32 * v21);
      v39 = v27[1];
      v40 = *v27;
      if ((v38 & 1) == 0)
      {
        sub_21D179E10(v24, v25, v26);
        sub_21D179D54(v40, *(&v40 + 1), v39, *(&v39 + 1));
      }

      sub_21DBFC7DC();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x223D44FA0](1);
          sub_21DBFA27C();
          goto LABEL_23;
        }

        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      MEMORY[0x223D44FA0](v28);
      sub_21DBFB64C();
LABEL_23:
      result = sub_21DBFC82C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v40;
      v17[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_21D21E78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D8, &qword_21DC08F90);
  v40 = v4;
  result = sub_21DBFC3EC();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v41 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v39 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_21D1073B0(v25, v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      else
      {
        sub_21D107480(v25, v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v26 = v7;
      v27 = *(*(v41 + 56) + v23);
      sub_21DBFC7DC();
      v28 = v26;
      TTRRemindersListViewModel.ItemID.hash(into:)(v42);
      result = sub_21DBFC82C();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D1073B0(v28, *(v11 + 48) + v24 * v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(*(v11 + 56) + v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21D21EB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A68, &qword_21DC0CC70);
  v38 = v4;
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v38 & 1) == 0)
      {
        v26 = v21;
        v27 = v23;
        sub_21DBF8E0C();
      }

      result = sub_21DBFB62C();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

uint64_t sub_21D21EDA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A48, &qword_21DC0CC58);
  v52 = v4;
  result = sub_21DBFC3EC();
  v15 = result;
  if (*(v13 + 16))
  {
    v50 = v5;
    v44 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v49 = (v6 + 48);
    v45 = (v6 + 8);
    v46 = (v6 + 32);
    v22 = result + 64;
    v23 = v53;
    v47 = v13;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v26 = (v20 - 1) & v20;
LABEL_15:
      v29 = v25 | (v16 << 6);
      v30 = *(v13 + 48);
      v55 = *(v51 + 72);
      v56 = v26;
      v31 = v30 + v55 * v29;
      if (v52)
      {
        sub_21D1073B0(v31, v23, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        v54 = *(*(v13 + 56) + 8 * v29);
      }

      else
      {
        sub_21D107480(v31, v23, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        v54 = *(*(v13 + 56) + 8 * v29);
      }

      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(v23 + *(v11 + 20), v10, &qword_27CE5EA20, &qword_21DC0D4A0);
      v32 = v50;
      if ((*v49)(v10, 1, v50) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v33 = v48;
        (*v46)(v48, v10, v32);
        sub_21DBFC7FC();
        sub_21D0F1C20(&qword_280D171E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_21DBFA00C();
        v34 = v33;
        v13 = v47;
        (*v45)(v34, v32);
      }

      result = sub_21DBFC82C();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      v23 = v53;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_21D1073B0(v23, *(v15 + 48) + v55 * v24, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      *(*(v15 + 56) + 8 * v24) = v54;
      ++*(v15 + 16);
      v20 = v56;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_37;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_21D21F32C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_21DBFC3EC();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        sub_21DBF8E0C();
      }

      result = sub_21DBFB62C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_21D21F594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A28, &qword_21DC0CC18);
  v36 = v4;
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v36 & 1) == 0)
      {
        v25 = v23;
        v26 = v21;
      }

      result = sub_21DBFB62C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
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

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21D21F818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599E0, &unk_21DC38B80);
  v34 = v4;
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        sub_21DBF8E0C();
      }

      sub_21DBFC7DC();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21D21FAB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58150, &qword_21DC08F00);
  v38 = v4;
  result = sub_21DBFC3EC();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_21D1073B0(v25, v7, type metadata accessor for TTRTemplatesListViewModel.Template);
      }

      else
      {
        sub_21D107480(v25, v7, type metadata accessor for TTRTemplatesListViewModel.Template);
        v26 = v23;
      }

      result = sub_21DBFB62C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_21D1073B0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for TTRTemplatesListViewModel.Template);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_21D21FE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599C0, &unk_21DC0CBA0);
  result = sub_21DBFC3EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_21DBFC7CC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_21D220064()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58338, &unk_21DC0D170);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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
}

void sub_21D2201D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65230, &unk_21DC38B90);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_21DBF8E0C();
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
}

id sub_21D220360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308, &qword_21DC0CB20);
  v27 = v0;
  v1 = *v0;
  v28 = sub_21DBFC3DC();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = *(*(v1 + 48) + 8 * v14);
        v16 = *(v1 + 56) + 48 * v14;
        v18 = *v16;
        v17 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        v22 = *(v16 + 40);
        *(*(v28 + 48) + 8 * v14) = v15;
        v23 = *(v28 + 56) + 48 * v14;
        *v23 = v18;
        *(v23 + 8) = v17;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
        *(v23 + 40) = v22;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v24 = v15;
        v25 = v18;
        v26 = v17;
        result = v19;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void sub_21D220548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58138, &qword_21DC0CAA0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
}

id sub_21D2206D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280, &qword_21DC09A00);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_21D0CEB98(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_21D0CF2E8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_21D22086C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_21D2209B8()
{
  v1 = v0;
  v2 = type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59970, &qword_21DC0CB08);
  v8 = *v0;
  v9 = sub_21DBFC3DC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_21D107480(*(v8 + 48) + v24, v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v25 = *(v29 + 72) * v23;
        sub_21D107480(*(v8 + 56) + v25, v4, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
        sub_21D1073B0(v7, *(v10 + 48) + v24, type metadata accessor for TTRRemindersListViewModel.ItemID);
        result = sub_21D1073B0(v4, *(v10 + 56) + v25, type metadata accessor for PendingDisplay.AccumulatedResult.PendingReminderListItemDisplay);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_21D220CA4(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59968, &qword_21DC0CB00);
  v9 = *v1;
  v10 = sub_21DBFC3DC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v28 = v2;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = *(v9 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_14:
        v24 = v21 | (v15 << 6);
        v25 = *(v29 + 72) * v24;
        sub_21D107480(*(v9 + 48) + v25, v8, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        v26 = *(v30 + 72) * v24;
        sub_21D107480(*(v9 + 56) + v26, v5, type metadata accessor for TTRSECreateRemindersViewModel.Item);
        sub_21D1073B0(v8, *(v11 + 48) + v25, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
        result = sub_21D1073B0(v5, *(v11 + 56) + v26, type metadata accessor for TTRSECreateRemindersViewModel.Item);
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v2 = v28;
        goto LABEL_18;
      }

      v23 = *(v13 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

void *sub_21D220F90()
{
  v1 = v0;
  v26 = sub_21DBFC1BC();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59E08, &qword_21DC0D158);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_21D0CEB98(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_21D0CF2E8(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_21D221228()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58140, &qword_21DC08EF0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v19;
        result = v18;
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

void sub_21D221388()
{
  v1 = v0;
  v35 = sub_21DBF56BC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582D0, &unk_21DC090A0);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;
        sub_21DBF8E0C();
        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_21D22163C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E8, &unk_21DC090C0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_21D0CEB98(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21D0CF2E8(v25, (*(v4 + 56) + v22));
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
}

void *sub_21D2217E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260, &unk_21DC09040);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v33 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58278, &qword_21DC0CEB0);
  v4 = *v0;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v33 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 80 * v20;
        v22 = (*(v4 + 48) + 80 * v20);
        v24 = v22[1];
        v23 = v22[2];
        v25 = v22[4];
        v41 = v22[3];
        v42 = v25;
        v38 = *v22;
        v39 = v24;
        v40 = v23;
        v26 = *(v35 + 72) * v20;
        v27 = v34;
        sub_21D0D3954(*(v4 + 56) + v26, v34, &qword_27CE65260, &unk_21DC09040);
        v28 = v36;
        v29 = (*(v36 + 48) + v21);
        v30 = v39;
        v31 = v40;
        v32 = v42;
        v29[3] = v41;
        v29[4] = v32;
        v29[1] = v30;
        v29[2] = v31;
        *v29 = v38;
        sub_21D0D523C(v27, *(v28 + 56) + v26, &qword_27CE65260, &unk_21DC09040);
        result = sub_21D1D9B34(&v38, v37);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v33;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

void *sub_21D221AA8(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *v2;
  v10 = sub_21DBFC3DC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v27 = v5;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = *(v9 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(v28 + 72) * v24;
        sub_21D107480(*(v9 + 48) + v25, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v26 = *(*(v9 + 56) + 8 * v24);
        sub_21D1073B0(v8, *(v11 + 48) + v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
        *(*(v11 + 56) + 8 * v24) = v26;
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v27;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v11;
  }

  return result;
}

void *sub_21D221CF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70, &unk_21DC0D058);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D78, &qword_21DC0D068);
  v6 = *v0;
  v7 = sub_21DBFC3DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    for (i = (v14 + 63) >> 6; v16; result = sub_21D0D523C(v29, *(v28 + 56) + v24, &qword_27CE59D70, &unk_21DC0D058))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = v18 | (v12 << 6);
      v22 = *(v33 + 72) * v21;
      v23 = v31;
      sub_21D0D3954(*(v6 + 48) + v22, v31, &qword_27CE5FB90, &unk_21DC09290);
      v24 = *(v34 + 72) * v21;
      v25 = *(v6 + 56) + v24;
      v26 = v6;
      v27 = v32;
      sub_21D0D3954(v25, v32, &qword_27CE59D70, &unk_21DC0D058);
      v28 = v35;
      sub_21D0D523C(v23, *(v35 + 48) + v22, &qword_27CE5FB90, &unk_21DC09290);
      v29 = v27;
      v6 = v26;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {

        v1 = v30;
        v8 = v35;
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

void sub_21D22202C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRISubtaskListViewModel.Subtask(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59930, &qword_21DC0CA98);
  v4 = *v0;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21D107480(*(v4 + 56) + v26, v30, type metadata accessor for TTRISubtaskListViewModel.Subtask);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21D1073B0(v25, *(v27 + 56) + v26, type metadata accessor for TTRISubtaskListViewModel.Subtask);
        sub_21DBF8E0C();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

char *sub_21D222284()
{
  v1 = v0;
  v31 = sub_21DBF5D5C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CD0, &unk_21DC0CF90);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21D222508()
{
  v1 = v0;
  v29 = sub_21DBF5D5C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59CD8, &qword_21DC0CFA0);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21D222770()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE67AB0, &qword_21DC42410);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v22 + 32) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      result = *(v4 + 48);
      v21 = *v17;
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + 40 * v14;
      *v22 = v21;
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21D2228E4()
{
  v1 = v0;
  v29 = sub_21DBF5B9C();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599B8, &qword_21DC0CB98);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_21D222B60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59960, &unk_21DC0CAF0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_21D222CE4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v43 = a1;
  v44 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v41 = &v37 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_21DBFC3DC();
  v14 = v13;
  if (*(v12 + 16))
  {
    v37 = v7;
    result = (v13 + 64);
    v16 = v12 + 64;
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v16 + 8 * v17)
    {
      result = memmove(result, (v12 + 64), 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v45 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v38 = v12;
    v24 = v39;
    v25 = v43;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = *(v40 + 72) * v29;
        sub_21D107480(*(v12 + 48) + v30, v24, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v31 = v41;
        v32 = *(v42 + 72) * v29;
        v33 = *(v12 + 56) + v32;
        v34 = v44;
        sub_21D0D3954(v33, v41, v25, v44);
        v35 = v45;
        sub_21D1073B0(v24, *(v45 + 48) + v30, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v36 = v34;
        v12 = v38;
        result = sub_21D0D523C(v31, *(v35 + 56) + v32, v25, v36);
        v22 = v46;
      }

      while (v46);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v37;
        v14 = v45;
        goto LABEL_18;
      }

      v28 = *(v16 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v46 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

char *sub_21D223010()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21DBF5C4C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59978, &qword_21DC0CB28);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_21D107480(*(v5 + 56) + v26, v35, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_21D1073B0(v25, *(v27 + 56) + v26, type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_21D22333C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59940, &qword_21DC0CAB8);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_21D2234B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59910, &unk_21DC0CA50);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 112 * v17;
        v19 = (*(v2 + 48) + 112 * v17);
        v20 = v19[3];
        v21 = v19[4];
        v22 = v19[5];
        *&v34[9] = *(v19 + 89);
        v33[4] = v21;
        *v34 = v22;
        v33[3] = v20;
        v24 = v19[1];
        v23 = v19[2];
        v33[0] = *v19;
        v33[1] = v24;
        v33[2] = v23;
        v25 = 32 * v17;
        v26 = *(v2 + 56) + 32 * v17;
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        v31 = *v26;
        memmove((*(v4 + 48) + v18), v19, 0x69uLL);
        v29 = *(v4 + 56) + v25;
        *v29 = v31;
        *(v29 + 16) = v27;
        *(v29 + 24) = v28;
        sub_21D22BF24(v33, v32);
        swift_unknownObjectRetain();
        v30 = v31;
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
}

id sub_21D223698(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C20, &unk_21DC0CEA0);
  v6 = *v1;
  v7 = sub_21DBFC3DC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v2;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_21D107480(*(v6 + 56) + v23, v5, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_21D1073B0(v5, *(v8 + 56) + v23, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
        result = v22;
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

        v2 = v24;
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
    *v2 = v8;
  }

  return result;
}

id sub_21D2238D0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C28, &qword_21DC0CEB8);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 56) + v22, v4, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_21D1073B0(v4, *(v7 + 56) + v22, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void sub_21D223B08()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8, &unk_21DC09250);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B50, &qword_21DC0CD98);
  v4 = *v0;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 32 * v20;
        v22 = (*(v4 + 48) + 32 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_21D0D3954(*(v4 + 56) + v28, v33, &qword_27CE583A8, &unk_21DC09250);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        sub_21D0D523C(v27, *(v29 + 56) + v28, &qword_27CE583A8, &unk_21DC09250);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v15 = v36;
      }

      while (v36);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v31;
        v6 = v35;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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
}

char *sub_21D223D7C()
{
  v1 = v0;
  v41 = sub_21DBF563C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21DBF799C();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58248, &unk_21DC09000);
  v4 = *v0;
  v5 = sub_21DBFC3DC();
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

id sub_21D2240E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_21D224234()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58200, &qword_21DC08FB8);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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

id sub_21D224390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58228, &unk_21DC08FE0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        result = v25;
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

void *sub_21D224524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58230, &unk_21DC0CDB0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_21D181CE0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_21D0CEB98(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_21D0CF2E8(v22, (*(v4 + 56) + v17));
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

void *sub_21D2246C8()
{
  v1 = v0;
  v39 = sub_21DBF56BC();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58220, &qword_21DC08FD8);
  v3 = *v0;
  v4 = sub_21DBFC3DC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v35 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v40 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v37 = v41 + 16;
    v36 = v41 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v41;
        v20 = *(v41 + 72) * v18;
        v21 = v38;
        v22 = v39;
        (*(v41 + 16))(v38, *(v3 + 48) + v20, v39);
        v18 *= 192;
        sub_21D1D9BE4(*(v3 + 56) + v18, v43);
        v23 = v40;
        result = (*(v19 + 32))(*(v40 + 48) + v20, v21, v22);
        v24 = (*(v23 + 56) + v18);
        v25 = v43[8];
        v26 = v43[9];
        v27 = v43[11];
        v24[10] = v43[10];
        v24[11] = v27;
        v24[8] = v25;
        v24[9] = v26;
        v28 = v43[4];
        v29 = v43[5];
        v30 = v43[7];
        v24[6] = v43[6];
        v24[7] = v30;
        v24[4] = v28;
        v24[5] = v29;
        v31 = v43[0];
        v32 = v43[1];
        v33 = v43[3];
        v24[2] = v43[2];
        v24[3] = v33;
        *v24 = v31;
        v24[1] = v32;
        v13 = v42;
      }

      while (v42);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v35;
        v5 = v40;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_21D2249EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B78, &qword_21DC0CDE0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 48 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        v24 = *(v19 + 32);
        LOBYTE(v19) = *(v19 + 40);
        *(*(v4 + 48) + 8 * v17) = v18;
        v25 = *(v4 + 56) + 48 * v17;
        *v25 = v21;
        *(v25 + 8) = v20;
        *(v25 + 16) = v23;
        *(v25 + 24) = v22;
        *(v25 + 32) = v24;
        *(v25 + 40) = v19;
        sub_21DBF8E0C();
        v26 = v18;
        v27 = v21;
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
}

void *sub_21D224B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58208, &qword_21DC08FC0);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_21D224CD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B68, &qword_21DC0CDC8);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_21DBF8E0C();
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
}

id sub_21D224E58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
        sub_21DBF8E0C();
        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_21D224FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B30, &qword_21DC0CD78);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_21D22512C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B48, &qword_21DC0CD90);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void sub_21D225288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B18, &unk_21DC0CD58);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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
}

void *sub_21D2253EC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AA8, &qword_21DC0CCE0);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 48) + v21, v4, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21D1073B0(v4, *(v7 + 48) + v21, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void sub_21D22562C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58290, &qword_21DC09060);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 32 * v17);
        v23 = *v19;
        v20 = *v19;
        v24 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v20;
        v21[1] = v24;
        v22 = v18;
        sub_21D179D54(v23, *(&v23 + 1), v24, *(&v24 + 1));
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
}

void sub_21D2257BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58298, &qword_21DC09068);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = *(v4 + 48) + v18;
        v27 = *v22;
        v24 = *v22;
        v28 = v22[1];
        v25 = *(v19 + 16);
        *v23 = *v19;
        *(v23 + 8) = v21;
        *(v23 + 16) = v25;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v28;
        sub_21D179E10(v20, v21, v25);
        sub_21D179D54(v27, *(&v27 + 1), v28, *(&v28 + 1));
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
}

void *sub_21D225964()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D8, &qword_21DC08F90);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 48) + v21, v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v22 = *(*(v5 + 56) + v20);
        result = sub_21D1073B0(v4, *(v7 + 48) + v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
        *(*(v7 + 56) + v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void sub_21D225B9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A68, &qword_21DC0CC70);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v21;
        v23[1] = v20;
        v23[2] = v22;
        v24 = v18;
        v25 = v21;
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
}

void *sub_21D225D24()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A48, &qword_21DC0CC58);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 48) + v21, v4, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21D1073B0(v4, *(v7 + 48) + v21, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void sub_21D225F78(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        sub_21DBF8E0C();
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

void *sub_21D2260CC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A30, &unk_21DC0CC30);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 48) + v21, v4, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21D1073B0(v4, *(v7 + 48) + v21, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

id sub_21D22630C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A28, &qword_21DC0CC18);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        v22 = v20;
        result = v18;
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

void *sub_21D226480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58188, &unk_21DC0CC20);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_21D2265CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599E0, &unk_21DC38B80);
  v2 = *v0;
  v3 = sub_21DBFC3DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

id sub_21D226734()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58150, &qword_21DC08F00);
  v5 = *v0;
  v6 = sub_21DBFC3DC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_21D107480(*(v5 + 56) + v22, v4, type metadata accessor for TTRTemplatesListViewModel.Template);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_21D1073B0(v4, *(v7 + 56) + v22, type metadata accessor for TTRTemplatesListViewModel.Template);
        result = v21;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_21D226994(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21DBFC3DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
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

      v18 = *(v4 + 64 + 8 * v10);
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

uint64_t sub_21D226AD0(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, char *), uint64_t (*a5)(uint64_t, char *))
{
  v9 = a3;
  a4(a2, &v9);
  v6 = *MEMORY[0x277D44BF0];
  v8 = 1;
  return a5(v6, &v8);
}

void sub_21D226B34(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_21DBFC2AC();
      sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_21DBFC26C() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_21DBFC27C();
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_21D17E07C(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t _s15RemindersUICore31TTRRemindersListTargetContainerO0eD0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) > 1u)
  {
    if (*(a1 + 8) == 2)
    {
      if (v4 == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v4 == 3 && v3 == 0)
    {
      v6 = 1;
      goto LABEL_16;
    }
  }

  else if (*(a1 + 8))
  {
    if (v4 == 1)
    {
LABEL_9:
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v5 = v3;
      v2 = v2;
      v6 = sub_21DBFB63C();

LABEL_16:
      return v6 & 1;
    }
  }

  else if (!*(a2 + 8))
  {
    goto LABEL_9;
  }

  v6 = 0;
  return v6 & 1;
}

double sub_21D226D88(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_21D226DB0()
{
  v1 = *(sub_21DBF806C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);
  v9 = *(v0 + v7);
  v10 = (v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_21D1E8168(v0 + v2, v0 + v5, v8, v9, v11, v12);
}

void sub_21D226ED0(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
LABEL_38:
    v30 = a1;
    v31 = sub_21DBFBD7C();
    a1 = v30;
    if (v31)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = 0;
    v36 = a1 & 0xC000000000000001;
    v34 = OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a1;
    do
    {
      if (v36)
      {
        a1 = MEMORY[0x223D44740](v4, a1);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_34;
        }

        a1 = *(a1 + 8 * v4 + 32);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      v8 = *(a3 + v34);
      v38[0] = 0;
      v9 = a1;
      v10 = [v8 fetchReminderWithObjectID:v9 error:v38];
      if (!v10)
      {
        v29 = v38[0];

        sub_21DBF52DC();
        swift_willThrow();

        return;
      }

      v11 = v10;
      v12 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        if (v12 < 0)
        {
          v13 = *a2;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;
        }

        v14 = v38[0];
        a1 = sub_21DBFBD7C();
        if (__OFADD__(a1, 1))
        {
          goto LABEL_36;
        }

        *a2 = sub_21D984230(v13, a1 + 1);
      }

      else
      {
        v15 = v38[0];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *a2;
      v17 = v38[0];
      v19 = sub_21D17E07C(v9);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      a1 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_35;
      }

      v22 = v18;
      if (v17[3] >= a1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v24 = v38[0];
          if (v18)
          {
            goto LABEL_4;
          }
        }

        else
        {
          a1 = sub_21D2240E4(&qword_27CE582F8, &qword_21DC250B0);
          v24 = v38[0];
          if (v22)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_21D21BEF8(a1, isUniquelyReferenced_nonNull_native, &qword_27CE582F8, &qword_21DC250B0);
        a1 = sub_21D17E07C(v9);
        if ((v22 & 1) != (v23 & 1))
        {
          sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
          sub_21DBFC70C();
          __break(1u);
          return;
        }

        v19 = a1;
        v24 = v38[0];
        if (v22)
        {
LABEL_4:
          v5 = v24[7];
          v6 = *(v5 + 8 * v19);
          *(v5 + 8 * v19) = v11;

          goto LABEL_5;
        }
      }

      v24[(v19 >> 6) + 8] |= 1 << v19;
      *(v24[6] + 8 * v19) = v9;
      *(v24[7] + 8 * v19) = v11;
      v25 = v24[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_37;
      }

      v24[2] = v27;
      v28 = v9;
LABEL_5:
      *a2 = v24;

      ++v4;
      a1 = v33;
    }

    while (v7 != v32);
  }
}

void sub_21D227210(uint64_t result, uint64_t *a2, void *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v9 = v5 - 1;
    v10 = (result + 56);
    do
    {
      v11 = v9;
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v15 = *(v10 - 3);
      v16 = v12;
      v17 = v13;
      v18 = v14;
      sub_21D22CFA4(v15, v12, v13, v14);
      sub_21D2085AC(&v15, a2, a3, a4);
      sub_21D22CFF4(v15, v16, v17, v18);
      if (v4)
      {
        break;
      }

      v9 = v11 - 1;
      v10 += 32;
    }

    while (v11);
  }
}

void sub_21D2272C4(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v59 = a3;
  v69 = a2;
  v73 = *MEMORY[0x277D85DE8];
  v6 = sub_21DBF6D7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v53 - v11;
  v14 = *(a1 + 16);
  if (v14)
  {
    v57 = 0;
    v63 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v56 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v62 = a1 + v56;
    v18 = (v16 - 8);
    v19 = *(v16 + 56);
    v12.n128_u64[0] = 136315138;
    v55 = v12;
    v60 = v16;
    v61 = &v53 - v11;
    v68 = v17;
    v64 = v19;
    v54 = v6;
    do
    {
      --v14;
      v15(v13, v62 + v19 * v14, v6);
      v23 = sub_21DBF6D5C();
      v71 = 0;
      v24 = [v63 fetchReminderWithObjectID:v23 error:&v71];

      v25 = v71;
      if (!v24)
      {
        v34 = v71;
        v35 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_280D17ED0 != -1)
        {
          swift_once();
        }

        v36 = sub_21DBF84BC();
        __swift_project_value_buffer(v36, qword_280D0F228);
        v37 = v35;
        v38 = sub_21DBF84AC();
        v39 = sub_21DBFAEBC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v41 = v71;
          *v40 = v55.n128_u32[0];
          swift_getErrorValue();
          v42 = sub_21DBFC74C();
          v44 = v14;
          v45 = sub_21D0CDFB4(v42, v43, &v71);

          *(v40 + 4) = v45;
          v14 = v44;
          _os_log_impl(&dword_21D0C9000, v38, v39, "Failed to fetch reminder {error: %s}", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          v46 = v41;
          v6 = v54;
          MEMORY[0x223D46520](v46, -1, -1);
          v47 = v40;
          v15 = v68;
          v13 = v61;
          MEMORY[0x223D46520](v47, -1, -1);
        }

        else
        {
        }

        (*v18)(v13, v6);
        v57 = 0;
        goto LABEL_5;
      }

      v67 = v14;
      v26 = v24;
      v27 = v25;
      v65 = [v69 updateReminder_];
      v28 = sub_21D22850C(v26);
      v66 = v26;

      v70 = v28;
      v29 = sub_21DBF6D6C();
      if (v29)
      {
        v30 = *(v29 + 16);
        if (v30)
        {
          v71 = MEMORY[0x277D84F90];
          v31 = v29;
          sub_21DBFC01C();
          v58 = v31;
          v32 = v31 + v56;
          v33 = v64;
          do
          {
            v68(v9, v32, v6);
            sub_21DBF6D5C();
            (*v18)(v9, v6);
            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
            v32 += v33;
            --v30;
          }

          while (v30);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
        sub_21D19F2B8(&qword_27CE59DB0, &qword_280D17860, 0x277D44750);
        sub_21DBFA65C();

        v28 = v70;
        v13 = v61;
        v15 = v68;
      }

      if (v28 >> 62)
      {
        v48 = sub_21DBFBD7C();
        if (v48)
        {
LABEL_21:
          v71 = MEMORY[0x277D84F90];
          sub_21DBFC01C();
          if (v48 < 0)
          {
            __break(1u);
          }

          v49 = 0;
          do
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x223D44740](v49, v28);
            }

            else
            {
              v50 = *(v28 + 8 * v49 + 32);
            }

            v51 = v50;
            ++v49;
            v52 = [v69 updateReminder_];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v48 != v49);

          v20 = v71;
          v13 = v61;
          v15 = v68;
          goto LABEL_4;
        }
      }

      else
      {
        v48 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
          goto LABEL_21;
        }
      }

      v20 = MEMORY[0x277D84F90];
LABEL_4:
      v71 = 0;
      v72 = 2;
      v21 = v65;
      v22 = TTRListEditor.move(_:togetherWith:position:)(v65, v20, &v71);

      (*v18)(v13, v6);
      v14 = v67;
LABEL_5:
      v19 = v64;
    }

    while (v14);
  }
}

id _s15RemindersUICore26TTRRemindersListInteractorC11hasSubtasksySbSo11REMReminderCF_0(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  result = [a1 subtaskContext];
  if (result)
  {
    v2 = result;
    v17[0] = 0;
    v3 = [result hasSubtasksWithError_];
    v4 = v17[0];
    if (v17[0])
    {
      swift_willThrow();
      v5 = qword_280D17ED0;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = sub_21DBF84BC();
      __swift_project_value_buffer(v7, qword_280D0F228);
      v8 = v6;
      v9 = sub_21DBF84AC();
      v10 = sub_21DBFAEBC();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17[0] = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = sub_21DBFC75C();
        v15 = sub_21D0CDFB4(v13, v14, v17);

        *(v11 + 4) = v15;
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x223D46520](v12, -1, -1);
        MEMORY[0x223D46520](v11, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v16 = v3;

      return v16;
    }
  }

  return result;
}

id _s15RemindersUICore26TTRRemindersListInteractorC18fetchSubtasksMasks_18includingConcealedSo011REMRemindergH0VSo0K0C_SbtF_0(void *a1, char a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  result = [a1 subtaskContext];
  if (result)
  {
    v4 = result;
    v18[0] = 0;
    if (a2)
    {
      v5 = [result fetchSubtasksMasksIncludingConcealedWithError_];
    }

    else
    {
      v5 = [result fetchSubtasksMasksWithError_];
    }

    v6 = v18[0];
    if (v18[0])
    {
      swift_willThrow();
      v7 = v6;
      if (qword_280D17ED0 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_280D0F228);
      v9 = v7;
      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18[0] = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = sub_21DBFC75C();
        v16 = sub_21D0CDFB4(v14, v15, v18);

        *(v12 + 4) = v16;
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v17 = v5;

      return v17;
    }
  }

  return result;
}

id sub_21D227D78(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_21D227D8C(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

uint64_t sub_21D227DC0(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v18[0] = 0;
  v4 = [v2 fetchRemindersForMovingWithError_];
  v5 = v18[0];
  if (v4)
  {
    v6 = v4;
    sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
    v7 = sub_21DBFA5EC();
    v8 = v5;
  }

  else
  {
    v9 = v18[0];
    v10 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D17ED0 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_280D0F228);
    v12 = a1;
    v6 = sub_21DBF84AC();
    v13 = sub_21DBFAEBC();

    if (os_log_type_enabled(v6, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = [v12 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_21D0C9000, v6, v13, "Failed to fetch subtasks of reminder {objectID: %@}", v14, 0xCu);
      sub_21D0CF7E0(v15, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

void _s15RemindersUICore26TTRRemindersListInteractorC020optimisticallyUpdateG18ReminderIDOrdering2in03forH10BeingSavedySaySo21REMReminderChangeItemCG_AHtF_0(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = &selRef__setContentViewMarginType_;
    v8 = &selRef__setContentViewMarginType_;
    v26 = v3 & 0xC000000000000001;
    v27 = v4;
    v25 = v3;
    do
    {
      if (v6)
      {
        v17 = MEMORY[0x223D44740](v5, v3);
      }

      else
      {
        v17 = *(v3 + 8 * v5 + 32);
      }

      v18 = v17;
      v19 = [v17 v7[90]];
      if (v19)
      {
        v20 = v19;
        if ([v19 v8[196]])
        {
          if (qword_280D17ED0 != -1)
          {
            swift_once();
          }

          v21 = sub_21DBF84BC();
          __swift_project_value_buffer(v21, qword_280D0F228);
          v18 = v18;
          v22 = a2;
          v23 = sub_21DBF84AC();
          v24 = sub_21DBFAE9C();

          if (os_log_type_enabled(v23, v24))
          {
            v9 = swift_slowAlloc();
            v10 = a2;
            v11 = swift_slowAlloc();
            *v9 = 138412546;
            v12 = [v18 objectID];
            *(v9 + 4) = v12;
            *v11 = v12;
            *(v9 + 12) = 2112;
            v13 = [v22 objectID];
            *(v9 + 14) = v13;
            v11[1] = v13;
            _os_log_impl(&dword_21D0C9000, v23, v24, "TTRRemindersListInteractor: optimistically inserted reminder ID to ordering {targetReminder: %@, insertedID: %@}", v9, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
            swift_arrayDestroy();
            v14 = v11;
            a2 = v10;
            v3 = v25;
            v4 = v27;
            MEMORY[0x223D46520](v14, -1, -1);
            v15 = v9;
            v6 = v26;
            MEMORY[0x223D46520](v15, -1, -1);
            v16 = v23;
          }

          else
          {
            v16 = v18;
            v18 = v20;
            v20 = v23;
          }

          v7 = &selRef__setContentViewMarginType_;
          v8 = &selRef__setContentViewMarginType_;
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void sub_21D228360(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }
}

void sub_21D2283C4(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

void sub_21D228468(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }
}

uint64_t sub_21D22850C(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (v2)
  {
    v3 = v2;
    v24[0] = 0;
    v4 = [v2 fetchRemindersForMovingWithError_];
    v5 = v24[0];
    if (v4)
    {
      v6 = v4;
      sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
      v7 = sub_21DBFA5EC();
      v8 = v5;

      return v7;
    }

    v10 = v24[0];
    v11 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE641B8);
    v13 = a1;
    v14 = v11;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 138412546;
      v20 = [v13 objectID];
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_21DBFC74C();
      v23 = sub_21D0CDFB4(v21, v22, v24);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Failed to fetch subtasks of reminder for moving {objectID: %@, error: %s}", v17, 0x16u);
      sub_21D0CF7E0(v18, &unk_27CE60070, &unk_21DC09550);
      MEMORY[0x223D46520](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

void _s15RemindersUICore26TTRRemindersListInteractorC20updateManualOrdering36completedRecurrentReminderChangeItem8position018paramsForREMManualH011saveRequestySo011REMReminderlM0C_AA28TTRRelativeInsertionPositionOySo0T0CGAA0c12MovingParamspqH0VSo07REMSaveS0CtF_0(void *a1, uint64_t a2, uint64_t *a3, void *a4, __n128 a5)
{
  v53 = a4;
  v51 = sub_21DBF6D7C();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - v11;
  v43 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v52 = *(a3 + 24);
  v16 = a3[4];
  v49 = *(a3 + 20);
  v17 = a3[7];
  v48 = a3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  v54 = v15;
  v50 = v13;
  v19 = v14;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v46 = v16;
  v47 = v17;
  v20 = v12;
  sub_21DBF8E0C();
  *(inited + 32) = [a1 objectID];
  v45 = [a1 accountID];
  if (v12 > 1)
  {
    v22 = v44;
    v21 = v43 != 0;
  }

  else
  {
    v21 = [v43 remObjectID];
    v22 = v44;
  }

  *&v59 = MEMORY[0x277D84F90];
  sub_21D18E718(0, 1, 0);
  v23 = v59;
  if ((inited & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D44740](0, inited);

    sub_21DBFADFC();
    sub_21DBF6D4C();
    swift_unknownObjectRelease();
    v25 = v23[2];
    v24 = v23[3];
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      sub_21D18E718((v24 > 1), v25 + 1, 1);
      v23 = v59;
    }

    v27 = v22;
  }

  else
  {
    v28 = *(inited + 32);

    sub_21DBFADFC();
    sub_21DBF6D4C();

    v25 = v23[2];
    v29 = v23[3];
    v26 = v25 + 1;
    if (v25 >= v29 >> 1)
    {
      sub_21D18E718((v29 > 1), v25 + 1, 1);
      v23 = v59;
    }

    v27 = v42;
  }

  v23[2] = v26;
  (*(v8 + 32))(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v27, v51);
  sub_21D0D8CF0(0, &qword_27CE59830, 0x277D446E8);
  *&v59 = v21;
  *(&v59 + 1) = v20;
  *&v60 = 0;
  v30 = sub_21D39D1B0(v46, v49, v48, v47, v50, v19, v23, v45, &v59);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  if (v52)
  {
    sub_21D0D3954(&v59, &v56, &unk_27CE60D80, &unk_21DC093F0);
    v31 = v53;
    v32 = v54;
    v33 = [v31 updateTemplate_];
    sub_21D0CF7E0(&v59, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRTemplateEditor();
    v34 = swift_initStackObject();
    *(v34 + 16) = v33;
    v35 = v58;
    v36 = v57;
    *(v34 + 24) = v56;
    *(v34 + 40) = v36;
    *(v34 + 56) = v35;
    *(v34 + 64) = 0;
    v55 = 3;
    sub_21D866814(v30);
    v37 = *MEMORY[0x277D44BF0];
    v55 = 1;
    sub_21D863CB4(v37);
  }

  else
  {
    sub_21D0D3954(&v59, &v56, &unk_27CE60D80, &unk_21DC093F0);
    v31 = v53;
    v32 = v54;
    v38 = [v31 updateSmartList_];
    sub_21D0CF7E0(&v59, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRSmartListEditor();
    v34 = swift_initStackObject();
    *(v34 + 16) = v38;
    v39 = v58;
    v40 = v57;
    *(v34 + 24) = v56;
    *(v34 + 40) = v40;
    *(v34 + 56) = v39;
    *(v34 + 64) = 0;
    v55 = 3;
    sub_21D6532B4(v30);
    v41 = *MEMORY[0x277D44BF0];
    v55 = 1;
    sub_21D64F7E4(v41);
  }

  swift_setDeallocating();

  sub_21D0CF7E0(v34 + 24, &unk_27CE60D80, &unk_21DC093F0);
}

unint64_t sub_21D228DA0()
{
  result = qword_27CE59848;
  if (!qword_27CE59848)
  {
    result = swift_getWitnessTable(byte_21DC0CA00, &type metadata for TTRRemindersListInteractor.CreateDefaultListError, v0, v1);
    atomic_store(result, &qword_27CE59848);
  }

  return result;
}

uint64_t sub_21D228E54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21D22D4FC;

  return sub_21D201744(v2, v3);
}

uint64_t sub_21D228F00(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v2[11] = swift_task_alloc();
  sub_21DBFA84C();
  v2[12] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x2822009F8](sub_21D228FD0, v4, v3);
}

uint64_t sub_21D228FD0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = *(v0[10] + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v0[15] = v3;
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v3;
  v7 = v2;
  v8 = sub_21D7DCC08(0, 0, v1, &unk_21DC0D0B8, v5);
  v0[16] = v8;
  sub_21D0CF7E0(v1, &unk_27CE5F150, &qword_21DC0D090);
  v9 = swift_task_alloc();
  v0[17] = v9;
  v10 = sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  *v9 = v0;
  v9[1] = sub_21D229184;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 7, v8, v10, v11, v12);
}

uint64_t sub_21D229184()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_21D22D50C;
  }

  else
  {
    v5 = sub_21D2292D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D2292D8()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[19] = v2;
  v0[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  v0[20] = v3;
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = v2;
  v4 = v2;
  TTRRemindersListInteractor.undoContext.getter((v0 + 2));
  v5 = swift_task_alloc();
  v0[21] = v5;
  *(v5 + 16) = v0 + 8;
  *(v5 + 24) = v1;

  return MEMORY[0x2822009F8](sub_21D2293A4, 0, 0);
}

uint64_t sub_21D2293A4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v0[22] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0 + 2;
  v4[5] = sub_21D22C5E0;
  v4[6] = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_21D2294C0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000035, 0x800000021DC46780, sub_21D22D5C4, v4, v6);
}

uint64_t sub_21D2294C0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_21D229664;
  }

  else
  {

    v2 = sub_21D2295E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D2295E8()
{

  sub_21D0CF7E0(v0 + 16, &unk_27CE60D80, &unk_21DC093F0);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21D22D598, v1, v2);
}

uint64_t sub_21D229664()
{

  sub_21D0CF7E0(v0 + 16, &unk_27CE60D80, &unk_21DC093F0);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21D22D4B8, v1, v2);
}

uint64_t sub_21D2296F4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v2[11] = swift_task_alloc();
  sub_21DBFA84C();
  v2[12] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x2822009F8](sub_21D2297C4, v4, v3);
}

uint64_t sub_21D2297C4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = *(v0[10] + OBJC_IVAR____TtC15RemindersUICore26TTRRemindersListInteractor_store);
  v0[15] = v3;
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v3;
  v7 = v2;
  v8 = sub_21D7DCC08(0, 0, v1, &unk_21DC0D0A0, v5);
  v0[16] = v8;
  sub_21D0CF7E0(v1, &unk_27CE5F150, &qword_21DC0D090);
  v9 = swift_task_alloc();
  v0[17] = v9;
  v10 = sub_21D0D8CF0(0, &qword_27CE5DDD0, 0x277D44548);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  *v9 = v0;
  v9[1] = sub_21D229978;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 7, v8, v10, v11, v12);
}

uint64_t sub_21D229978()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_21D22A0A0;
  }

  else
  {
    v5 = sub_21D229ACC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D229ACC()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[19] = v2;
  v0[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v3 = swift_allocObject();
  v0[20] = v3;
  *(v3 + 16) = xmmword_21DC09CF0;
  *(v3 + 32) = v2;
  v4 = v2;
  TTRRemindersListInteractor.undoContext.getter((v0 + 2));
  v5 = swift_task_alloc();
  v0[21] = v5;
  *(v5 + 16) = v0 + 8;
  *(v5 + 24) = v1;

  return MEMORY[0x2822009F8](sub_21D229B98, 0, 0);
}

uint64_t sub_21D229B98()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v0[22] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v0 + 2;
  v4[5] = sub_21D22C414;
  v4[6] = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_21D229CB4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000035, 0x800000021DC46780, sub_21D22C458, v4, v6);
}

uint64_t sub_21D229CB4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_21D229F90;
  }

  else
  {

    v2 = sub_21D229DDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D229DDC()
{

  sub_21D0CF7E0(v0 + 16, &unk_27CE60D80, &unk_21DC093F0);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21D229E58, v1, v2);
}

uint64_t sub_21D229E58()
{

  v1 = v0[8];
  v2 = v0[19];
  if (v1)
  {

    v3 = v0[1];

    return v3(v1);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = sub_21DBFA12C();
    [v5 internalErrorWithDebugDescription_];

    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21D229F90()
{

  sub_21D0CF7E0(v0 + 16, &unk_27CE60D80, &unk_21DC093F0);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21D22A020, v1, v2);
}

uint64_t sub_21D22A020()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D22A0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_21D22A130()
{
  result = qword_27CE59868;
  if (!qword_27CE59868)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListListType, &type metadata for TTRRemindersListListType, v0, v1);
    atomic_store(result, &qword_27CE59868);
  }

  return result;
}

unint64_t sub_21D22A1CC()
{
  result = qword_27CE59880;
  if (!qword_27CE59880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderSaveOptions, &type metadata for TTRRemindersListReminderSaveOptions, v0, v1);
    atomic_store(result, &qword_27CE59880);
  }

  return result;
}

unint64_t sub_21D22A224()
{
  result = qword_27CE59888;
  if (!qword_27CE59888)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderSaveOptions, &type metadata for TTRRemindersListReminderSaveOptions, v0, v1);
    atomic_store(result, &qword_27CE59888);
  }

  return result;
}

unint64_t sub_21D22A27C()
{
  result = qword_27CE59890;
  if (!qword_27CE59890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderSaveOptions, &type metadata for TTRRemindersListReminderSaveOptions, v0, v1);
    atomic_store(result, &qword_27CE59890);
  }

  return result;
}

unint64_t sub_21D22A2D4()
{
  result = qword_27CE59898;
  if (!qword_27CE59898)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListReminderSaveOptions, &type metadata for TTRRemindersListReminderSaveOptions, v0, v1);
    atomic_store(result, &qword_27CE59898);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

id sub_21D22A408(id result, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }

    v5 = result;
    v4 = a2;
    result = v5;
  }

  return result;
}

void sub_21D22A46C(void *a1, void *a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_21D22A4C0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D22A408(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListTargetContainer(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D22A408(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D22A46C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListTargetContainer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D22A46C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListTargetContainer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListTargetContainer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListTargetContainer.TargetList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListTargetContainer.TargetList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D22A6D4(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_21D22A6EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t assignWithTake for TTRRemindersListReminderInsertionPosition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D227D8C(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListReminderInsertionPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListReminderInsertionPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D22A81C(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_21D22A834(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

double sub_21D22A85C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t *sub_21D22A8B0(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  (a4)(*a2, v8, a3);
  v9 = *a1;
  *a1 = v7;
  v10 = *(a1 + 8);
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

uint64_t assignWithTake for TTRRemindersListBatchReminderCreationParams(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D226D88(v4, v5);
  return a1;
}

void destroy for TTRRemindersListDefaultListType(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for TTRRemindersListDefaultListType(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for TTRRemindersListDefaultListType(void **result, void **a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderListPickerAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderListPickerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListREMManualOrderingSaveTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRRemindersListREMManualOrderingSaveTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_21D22ABC4(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v8 = a1;
    v7 = a2;
    sub_21DBF8E0C();
    a1 = v8;
  }

  return a1;
}

uint64_t assignWithCopy for TTRReminderSectionPerformMoveTarget(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_21D22ABC4(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_21D228360(v8, v9, v10, v11, v12);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRReminderSectionPerformMoveTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21D228360(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderSectionPerformMoveTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderSectionPerformMoveTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_21D22AE68(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  a4(*a2, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  v14 = *(a1 + 32);
  *(a1 + 32) = v9;
  sub_21D2283C4(v10, v11, v12, v13, v14);
  return a1;
}

uint64_t sub_21D22AEE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_21D2283C4(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t sub_21D22AF40(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  a4(*a2, v6, v7, v8, v9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderListPickerViewModel.SectionHeader(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderListPickerViewModel.SectionHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 48))(a1, a2);
}

{
  return (*(a3 + 56))(a1, a2);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.save(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 192))(a1, a2, a3, a4);
}

{
  return (*(a5 + 200))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 240))(a1, a2);
}

{
  return (*(a3 + 248))(a1, a2);
}

{
  return (*(a3 + 256))(a1, a2);
}

{
  return (*(a3 + 264))(a1, a2);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 280))(a1, a2, a3, a4);
}

{
  return (*(a5 + 328))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 296))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 312))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:initialUncompletedRemindersInTargetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 304))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 320))(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.move(reminders:to:position:initialSectionIDByReminderID:sortingStyleInPresenter:paramsForREMManualOrdering:changeReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return (*(a9 + 336))(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  return (*(a9 + 344))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.fetchGrocerySuggestedSectionName(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 544) + **(a4 + 544));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1237C4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 560))(a1, a2);
}

{
  return (*(a3 + 568))(a1, a2);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.createList(from:storingUndoStepsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 608) + **(a4 + 608));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D22D4FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.createList(fromREMListRepresentationOfPublicTemplate:storingUndoStepsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 624) + **(a4 + 624));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D22D4FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.fetchSuggestedSectionsForReminders(withReminderTitles:fromGroceryClassifierWithGroceryLocaleID:maxSuggestionsCountPerReminderTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 632) + **(a6 + 632));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D22D4FC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRRemindersListInteractorType.fetchAutoCategorizationLocalCorrections(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 640) + **(a3 + 640));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D22D4FC;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for TTRRemindersListInteractor(uint64_t a1)
{
  result = qword_280D139D0;
  if (!qword_280D139D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D22BD5C(uint64_t a1)
{
  sub_21D1D4BA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_21D22BEC8()
{
  result = qword_27CE59900;
  if (!qword_27CE59900)
  {
    result = swift_getWitnessTable(byte_21DC0C9B8, &type metadata for TTRRemindersListInteractor.CreateDefaultListError, v0, v1);
    atomic_store(result, &qword_27CE59900);
  }

  return result;
}

void sub_21D22BF80(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_21D22C0A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21D22C140;

  return sub_21D201744(v2, v3);
}

uint64_t sub_21D22C140(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t objectdestroy_23Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D22C284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D08, &qword_21DC0CFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D22C2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D22C354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D203224(a1, v4, v5, v7, v6);
}

void sub_21D22C414()
{
  v1 = *(v0 + 16);
  v2 = TTRAccountEditor.addAndSaveNewList(usingREMListRepresentationOfPublicTemplate:)(*(v0 + 24));
  v3 = *v1;
  *v1 = v2;
}

uint64_t sub_21D22C45C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0, &qword_21DC20E70);

  return sub_21D77B1F4(a1);
}

uint64_t objectdestroy_250Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D22C520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D202FB0(a1, v4, v5, v7, v6);
}

void sub_21D22C5E0()
{
  v1 = *(v0 + 16);
  v2 = TTRAccountEditor.addAndSaveNewList(using:name:)(*(v0 + 24), 0, 0);
  v3 = *v1;
  *v1 = v2;
}

void sub_21D22C674(void *a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC09CF0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v10 = a1;
  v27 = v7;
  v30 = [v9 initWithStore_];
  [v30 setSaveIsNoopIfNoChangedKeys_];
  v31 = v8;
  v11 = v8 & 0xFFFFFFFFFFFFFF8;
  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_11:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v22 = sub_21DBFB12C();
    v23 = swift_allocObject();
    v23[2] = v31;
    v23[3] = a5;
    v23[4] = a6;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_447;
    v24 = _Block_copy(aBlock);
    sub_21D0D0E78(a5, a6);

    [v30 saveWithQueue:v22 completion:v24];
    _Block_release(v24);

    return;
  }

  v13 = 0;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D44740](v13, v31);
      goto LABEL_6;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    v14 = *(v31 + 8 * v13 + 32);
LABEL_6:
    v15 = v14;
    sub_21D0D3954(a2, aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v16 = v30;
    v17 = [v16 updateList_];
    sub_21D0D3954(aBlock, v36, &unk_27CE60D80, &unk_21DC093F0);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    ++v13;
    v18 = qword_280D1AA18;

    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRListEditor();
    v19 = swift_allocObject();
    v34 = type metadata accessor for TTRUserDefaults();
    v35 = &protocol witness table for TTRUserDefaults;
    *&v33 = v18;
    *(v19 + 64) = 0;
    *(v19 + 16) = v17;
    v20 = v36[1];
    *(v19 + 24) = v36[0];
    *(v19 + 40) = v20;
    *(v19 + 56) = v37;
    swift_beginAccess();
    *(v19 + 64) = 0;
    sub_21D0D0FD0(&v33, v19 + 72);
    *&v36[0] = v19;
    v21 = v18;
    a3(v36);

    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_21D22C9FC(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC09CF0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v10 = a1;
  v26 = v7;
  v31 = [v9 initWithStore_];
  [v31 setSaveIsNoopIfNoChangedKeys_];
  v32 = v8;
  v28 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_9:
    sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
    v21 = sub_21DBFB12C();
    v22 = swift_allocObject();
    v22[2] = v32;
    v22[3] = a5;
    v22[4] = a6;
    aBlock[4] = sub_21D22D514;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_291;
    v23 = _Block_copy(aBlock);
    sub_21D0D0E78(a5, a6);

    [v31 saveWithQueue:v21 completion:v23];
    _Block_release(v23);

    return;
  }

  v12 = 0;
  v27 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v27)
    {
      v13 = MEMORY[0x223D44740](v12, v32);
      goto LABEL_6;
    }

    if (v12 >= *(v28 + 16))
    {
      break;
    }

    v13 = *(v32 + 8 * v12 + 32);
LABEL_6:
    v14 = v13;
    ++v12;
    sub_21D0D3954(a2, aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v15 = v31;
    v16 = [v15 updateReminder_];
    sub_21D0D3954(aBlock, v34, &unk_27CE60D80, &unk_21DC093F0);
    type metadata accessor for TTRReminderEditor();
    v17 = swift_allocObject();
    *(v17 + 72) = 0;
    *(v17 + 16) = v16;
    sub_21D0D3954(v34, v17 + 24, &unk_27CE60D80, &unk_21DC093F0);
    *(v17 + 64) = 0;
    v18 = v16;
    v19 = [v18 fetchedCurrentDueDateDeltaAlert];

    sub_21D0CF7E0(v34, &unk_27CE60D80, &unk_21DC093F0);
    sub_21D0CF7E0(aBlock, &unk_27CE60D80, &unk_21DC093F0);
    v20 = *(v17 + 72);
    *(v17 + 72) = v19;

    v34[0] = v17;
    a3(v34);

    if (v11 == v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_21D22CD54(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_220Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_205Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_330Tm()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

id sub_21D22CFA4(uint64_t a1, void *a2, void *a3, char a4)
{
  sub_21DBF8E0C();
  v7 = a2;

  return sub_21D157850(a3, a4 & 0x7F);
}

void sub_21D22CFF4(uint64_t a1, void *a2, void *a3, char a4)
{

  sub_21D157478(a3, a4 & 0x7F);
}

uint64_t objectdestroy_339Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D22D130(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

double sub_21D22D1B0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_21D22D1F4(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
    sub_21DBF8E0C();
  }

  return result;
}

uint64_t initializeWithCopy for TTRRemindersListInteractor.MoveReminderArguments(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D22CFA4(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListInteractor.MoveReminderArguments(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D22CFA4(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_21D22CFF4(v7, v8, v9, v10);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRRemindersListInteractor.MoveReminderArguments(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_21D22CFF4(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListInteractor.MoveReminderArguments(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 25))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x3E | (*(a1 + 24) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListInteractor.MoveReminderArguments(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D22D5E8()
{

  return sub_21D2032B8();
}

void *sub_21D22D674(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_21D22D788@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
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
      sub_21D104E0C(v12, v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v14 = a1(v10);
      if (v3)
      {
        return sub_21D106858(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      if (v14)
      {
        break;
      }

      sub_21D106858(v10, type metadata accessor for TTRRemindersListViewModel.Item);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_21D23018C(v10, v18, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_21D22D954()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE59E20);
  v1 = __swift_project_value_buffer(v0, qword_27CE59E20);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSharedWithYouHighlight.ckShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF54CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id TTRSharedWithYouHighlight.itemProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRSharedWithYouHighlight(0) + 20));

  return v1;
}

uint64_t type metadata accessor for TTRSharedWithYouHighlight(uint64_t a1)
{
  result = qword_280D140C0;
  if (!qword_280D140C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static TTRSharedWithYouHighlight.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21DBF544C() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  type metadata accessor for TTRSharedWithYouHighlight(0);
  return sub_21DBFB63C() & 1;
}

uint64_t sub_21D22DB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21DBF544C() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  return sub_21DBFB63C() & 1;
}

char *TTRSharedWithYouProvider.__allocating_init(store:invocationQueue:backgroundQueue:highlightCenter:customFetchShareForSharedList:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_containerForAccountID;
  *&v15[v16] = sub_21D177CC0(MEMORY[0x277D84F90]);
  *&v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_shareOperationManager] = 0;
  *&v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_store] = a1;
  *&v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_invocationQueue] = a2;
  *&v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_backgroundQueue] = a3;
  v17 = &v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = &v15[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_customFetchShareForSharedList];
  *v18 = a6;
  *(v18 + 1) = a7;
  v28 = a1;
  a2;
  a3;
  swift_unknownObjectRetain();
  sub_21D0D0E78(a6, a7);
  v29.receiver = v15;
  v29.super_class = v7;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = *&v19[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter + 8];
  ObjectType = swift_getObjectType();
  v22 = *(v20 + 24);
  v23 = v19;
  swift_unknownObjectRetain();
  v22(v19, ObjectType, v20);
  swift_unknownObjectRelease();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59E78, &qword_21DC0D1D0);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_21D22FA40;
  *(v25 + 24) = v24;
  v26 = sub_21DBF6B6C();
  sub_21D0D0E88(a6, a7);

  swift_unknownObjectRelease();
  *&v23[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_shareOperationManager] = v26;

  return v23;
}

char *TTRSharedWithYouProvider.init(store:invocationQueue:backgroundQueue:highlightCenter:customFetchShareForSharedList:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_containerForAccountID;
  *&v7[v16] = sub_21D177CC0(MEMORY[0x277D84F90]);
  *&v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_shareOperationManager] = 0;
  *&v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_store] = a1;
  *&v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_invocationQueue] = a2;
  *&v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_backgroundQueue] = a3;
  v17 = &v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = &v7[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_customFetchShareForSharedList];
  *v18 = a6;
  *(v18 + 1) = a7;
  v28 = a1;
  a2;
  a3;
  swift_unknownObjectRetain();
  sub_21D0D0E78(a6, a7);
  v29.receiver = v7;
  v29.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v29, sel_init);
  v20 = *&v19[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_highlightCenter + 8];
  v21 = swift_getObjectType();
  v22 = *(v20 + 24);
  v23 = v19;
  swift_unknownObjectRetain();
  v22(v19, v21, v20);
  swift_unknownObjectRelease();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59E78, &qword_21DC0D1D0);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_21D230318;
  *(v25 + 24) = v24;
  v26 = sub_21DBF6B6C();
  sub_21D0D0E88(a6, a7);

  swift_unknownObjectRelease();
  *&v23[OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_shareOperationManager] = v26;

  return v23;
}

uint64_t sub_21D22E070@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F20, &qword_21DC0D488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F28, &qword_21DC0D490);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-v13];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_21D22F234(a1, Strong, &v22, v8);

    swift_storeEnumTagMultiPayload();
    sub_21D2301F4(v8, v11);
    sub_21D2301F4(v11, v14);
    (*(v6 + 56))(v14, 0, 1, v5);
    return sub_21D2301F4(v14, a3);
  }

  else
  {
    (*(v6 + 56))(v14, 1, 1, v5);
    v17 = sub_21DBF5F5C();
    sub_21D230264(&qword_280D0C850, MEMORY[0x277D44D58], MEMORY[0x277D44D60]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D44D48], v17);
    *a3 = v18;
    swift_storeEnumTagMultiPayload();
    result = (*(v6 + 48))(v14, 1, v5);
    if (result != 1)
    {
      return sub_21D2302AC(v14);
    }
  }

  return result;
}

uint64_t TTRSharedWithYouProvider.highlightInfo(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v31[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59E80, &qword_21DC0D1D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_invocationQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_21DBF9DAC();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ([a1 isShared])
  {
    v18 = [a1 account];
    v19 = [v18 accountTypeHost];

    LODWORD(v18) = [v19 isCloudKit];
    if (v18)
    {
      if (*(v2 + OBJC_IVAR____TtC15RemindersUICore24TTRSharedWithYouProvider_shareOperationManager))
      {
        v31[1] = a1;

        v20 = a1;
        sub_21DBF6B4C();

        (*(v5 + 16))(v7, v10, v4);
        v21 = (*(v5 + 88))(v7, v4);
        v22 = v21;
        if (v21 == *MEMORY[0x277D450E0])
        {
          (*(v5 + 96))(v7, v4);
          v23 = sub_21DBF816C();
          type metadata accessor for TTRSharedWithYouHighlight(0);
          v24 = sub_21DBF81FC();

          (*(v5 + 8))(v10, v4);
          v25 = v31[0];
          *v31[0] = v24;
          return (*(v5 + 104))(v25, v22, v4);
        }

        if (v21 == *MEMORY[0x277D450E8])
        {
          (*(v5 + 8))(v10, v4);
          (*(v5 + 96))(v7, v4);
          v30 = v31[0];
          sub_21D23018C(v7, v31[0], type metadata accessor for TTRSharedWithYouHighlight);
          return (*(v5 + 104))(v30, v22, v4);
        }

        if (v21 == *MEMORY[0x277D450D8])
        {
          (*(v5 + 8))(v10, v4);
          (*(v5 + 96))(v7, v4);
          v25 = v31[0];
          *v31[0] = *v7;
          return (*(v5 + 104))(v25, v22, v4);
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  sub_21D22FA74();
  v26 = swift_allocError();
  *v27 = 0;
  v28 = v31[0];
  *v31[0] = v26;
  return (*(v5 + 104))(v28, *MEMORY[0x277D450D8], v4);
}

uint64_t sub_21D22E7F0(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  if (qword_27CE56598 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE59E20);
  sub_21D104E0C(a1, v7, type metadata accessor for TTRSharedWithYouHighlight);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEDC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_21DBF54CC();
    v19 = a1;
    sub_21D230264(&qword_27CE59F18, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = sub_21DBFC5BC();
    v15 = v14;
    sub_21D106858(v7, type metadata accessor for TTRSharedWithYouHighlight);
    v16 = sub_21D0CDFB4(v13, v15, &v20);

    *(v11 + 4) = v16;
    a1 = v19;
    _os_log_impl(&dword_21D0C9000, v9, v10, "SharedWithYou: Created highlight for {shareURL: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  else
  {

    sub_21D106858(v7, type metadata accessor for TTRSharedWithYouHighlight);
  }

  sub_21D104E0C(a1, v4, type metadata accessor for TTRSharedWithYouHighlight);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59F10, &qword_21DC0D480);
  swift_allocObject();
  return sub_21DBF824C();
}

void TTRSharedWithYouProvider.postNotice(for:with:)(void *a1, unint64_t a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v50 = v4;
    v51 = a2;
    swift_unknownObjectRetain();
    v13 = [v12 highlights];
    sub_21D0D8CF0(0, &unk_27CE59E90, 0x277CDC670);
    v14 = sub_21DBFA5EC();

    MEMORY[0x28223BE20](v15);
    *(&v48 - 2) = a1;
    v16 = sub_21D22D674(sub_21D22FAC8, (&v48 - 4), v14);

    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        if (v51 >= 2)
        {
          if (qword_27CE56598 != -1)
          {
            swift_once();
          }

          v44 = sub_21DBF84BC();
          __swift_project_value_buffer(v44, qword_27CE59E20);
          v45 = MEMORY[0x277D84F90];
          v46 = sub_21D17716C(MEMORY[0x277D84F90]);
          v47 = sub_21D17716C(v45);
          sub_21DAEAB00("unknown change event", 20, 2, v46, v47);
          __break(1u);
        }

        else
        {
          v18 = v17;
          v19 = [objc_allocWithZone(MEMORY[0x277CDC688]) initWithHighlight:v17 type:1];
          v20 = qword_27CE56598;
          v49 = v19;
          if (v20 != -1)
          {
            swift_once();
          }

          v21 = sub_21DBF84BC();
          __swift_project_value_buffer(v21, qword_27CE59E20);
          v22 = v16;
          v23 = sub_21DBF84AC();
          v24 = sub_21DBFAEDC();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v48 = v22;
            v26 = v25;
            v27 = swift_slowAlloc();
            v52 = v27;
            *v26 = 134218242;
            *(v26 + 4) = v51;
            *(v26 + 12) = 2080;
            v28 = [v18 URL];
            sub_21DBF546C();

            v29 = sub_21DBF535C();
            v31 = v30;
            (*(v5 + 8))(v10, v50);
            v32 = sub_21D0CDFB4(v29, v31, &v52);

            *(v26 + 14) = v32;
            _os_log_impl(&dword_21D0C9000, v23, v24, "SharedWithYou: Posting change notice for highlight {event: %ld, highlight.url: %s", v26, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x223D46520](v27, -1, -1);
            v33 = v26;
            v22 = v48;
            MEMORY[0x223D46520](v33, -1, -1);
          }

          v34 = v49;
          [v12 _postNoticeForHighlightEvent_];

          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v4 = v50;
    a2 = v51;
  }

  if (qword_27CE56598 != -1)
  {
    swift_once();
  }

  v35 = sub_21DBF84BC();
  __swift_project_value_buffer(v35, qword_27CE59E20);
  (*(v5 + 16))(v7, a1, v4);
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEDC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52 = v39;
    *v38 = 134218242;
    *(v38 + 4) = a2;
    *(v38 + 12) = 2080;
    v40 = sub_21DBF535C();
    v42 = v41;
    (*(v5 + 8))(v7, v4);
    v43 = sub_21D0CDFB4(v40, v42, &v52);

    *(v38 + 14) = v43;
    _os_log_impl(&dword_21D0C9000, v36, v37, "SharedWithYou: No matching highlight for share, not posting event. {event: %ld, shareUrl: %s", v38, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D46520](v39, -1, -1);
    MEMORY[0x223D46520](v38, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}