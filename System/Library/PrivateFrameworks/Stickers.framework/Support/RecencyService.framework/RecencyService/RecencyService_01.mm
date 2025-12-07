uint64_t sub_231C7F3BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_231C8BCCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
  v39 = v4;
  result = sub_231C8C0DC();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_231C8BE5C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
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
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_231C7F780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_231C8BC9C();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231C8BCCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
  v47 = v4;
  result = sub_231C8C0DC();
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

      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_231C8BE5C();
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

unint64_t sub_231C7FC28(int64_t a1, uint64_t a2)
{
  v4 = sub_231C8BCCC();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v39);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v8 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v36 = ~v13;
    v37 = (sub_231C8C06C() + 1) & ~v13;
    v38 = a2 + 64;
    v15 = *(v8 + 72);
    v31 = (v34 + 8);
    v32 = (v34 + 32);
    do
    {
      v16 = v15;
      v17 = v15 * v14;
      sub_231C859F8(*(a2 + 48) + v15 * v14, v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      sub_231C8C2BC();
      MEMORY[0x238379510](*v11);
      sub_231C859F8(&v11[*(v40 + 20)], v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v19 = v33;
          v20 = v35;
          (*v32)(v33, v7, v35);
          v21 = 2;
          goto LABEL_11;
        }

        MEMORY[0x238379510](3);
        sub_231C8BEFC();
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v19 = v33;
          v20 = v35;
          (*v32)(v33, v7, v35);
          v21 = 0;
LABEL_11:
          MEMORY[0x238379510](v21);
          sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_231C8BE6C();
          (*v31)(v19, v20);
          goto LABEL_15;
        }

        MEMORY[0x238379510](1);
        sub_231C8BEFC();
      }

LABEL_15:
      v22 = sub_231C8C2DC();
      result = sub_231C7DC8C(v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v23 = v36;
      v24 = v22 & v36;
      v12 = v38;
      if (a1 >= v37)
      {
        v15 = v16;
        if (v24 < v37)
        {
          goto LABEL_5;
        }

LABEL_19:
        if (a1 < v24)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }

      v15 = v16;
      if (v24 < v37)
      {
        goto LABEL_19;
      }

LABEL_20:
      if (v15 * a1 < v17 || *(a2 + 48) + v15 * a1 >= (*(a2 + 48) + v17 + v15))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v15 * a1 != v17)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v25 = *(a2 + 56);
      v26 = *(v34 + 72);
      v27 = v26 * a1;
      result = v25 + v26 * a1;
      if (v26 * a1 < (v26 * v14) || result >= v25 + v26 * v14 + v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v14;
        if (v27 == v26 * v14)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v14;
LABEL_5:
      v14 = (v14 + 1) & v23;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_231C8010C(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_231C8BCCC();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_231C8C06C();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_231C8BE5C();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_231C8045C(int64_t a1, uint64_t a2)
{
  v40 = sub_231C8BCCC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_231C8C06C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_231C8BE5C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_231C8077C(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_231C7DC08(a2);
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
      sub_231C81274();
      goto LABEL_7;
    }

    sub_231C7E8B0(v16, a3 & 1);
    v27 = sub_231C7DC08(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_231C859F8(a2, v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      return sub_231C80EE8(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_231C8C25C();
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
  v21 = sub_231C8BCCC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

uint64_t sub_231C80958(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_231C7DB70(a2);
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
      sub_231C815A4();
      goto LABEL_7;
    }

    sub_231C7EF1C(v17, a3 & 1);
    v24 = sub_231C7DB70(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_231C80FD8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_231C8C25C();
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
  v22 = v21 + *(*(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) - 8) + 72) * v14;

  return sub_231C87EB4(a1, v22);
}

uint64_t sub_231C80B40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_231C7DB70(a2);
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
      sub_231C81B44();
      goto LABEL_7;
    }

    sub_231C7F780(v17, a3 & 1);
    v28 = sub_231C7DB70(a2);
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
      return sub_231C81180(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_231C8C25C();
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
  v22 = sub_231C8BC9C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_231C80D44(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_231C7DB70(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_231C818D0();
      goto LABEL_7;
    }

    sub_231C7F3BC(result, a2 & 1);
    result = sub_231C7DB70(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_231C810C8(v14, v11, v20, a3);
    }
  }

  result = sub_231C8C25C();
  __break(1u);
  return result;
}

uint64_t sub_231C80EE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  sub_231C85990(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  v10 = a4[7];
  v11 = sub_231C8BCCC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_231C80FD8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231C8BCCC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  result = sub_231C85990(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
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

uint64_t sub_231C810C8(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_231C8BCCC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_231C81180(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_231C8BCCC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_231C8BC9C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

void *sub_231C81274()
{
  v1 = v0;
  v2 = sub_231C8BCCC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
  v7 = *v0;
  v8 = sub_231C8C0CC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_231C859F8(*(v7 + 48) + v24, v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_231C85990(v19, *(v42 + 48) + v24, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v31 = v29;
        v7 = v36;
        result = (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_231C815A4()
{
  v1 = v0;
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_231C8BCCC();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
  v5 = *v0;
  v6 = sub_231C8C0CC();
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
        sub_231C859F8(*(v5 + 56) + v26, v35, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_231C85990(v25, *(v27 + 56) + v26, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
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

void *sub_231C818D0()
{
  v1 = v0;
  v29 = sub_231C8BCCC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
  v3 = *v0;
  v4 = sub_231C8C0CC();
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
    for (i = v31 + 32; v12; *(*(v23 + 56) + 8 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 8 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

char *sub_231C81B44()
{
  v1 = v0;
  v41 = sub_231C8BC9C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_231C8BCCC();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
  v4 = *v0;
  v5 = sub_231C8C0CC();
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

unint64_t sub_231C81E98(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v77 = a5;
  v75 = a3;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = MEMORY[0x28223BE20](v10);
  v73 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  result = MEMORY[0x28223BE20](v13);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v21 = &v64 - v17;
  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_69;
  }

  v22 = v75 - a2;
  if (v75 - a2 != 0x8000000000000000 || v20 != -1)
  {
    v23 = (a2 - a1) / v20;
    v82 = a1;
    v81 = a4;
    v76 = v8;
    v74 = a1;
    if (v23 >= v22 / v20)
    {
      v25 = v22 / v20 * v20;
      v71 = v18;
      if (a4 < a2 || &a2[v25] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
        result = v74;
        v26 = v79;
      }

      else
      {
        v26 = v79;
        if (a4 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
          result = v74;
        }
      }

      v44 = &a4[v25];
      if (v25 >= 1)
      {
        v45 = -v20;
        v68 = (v9 + 16);
        v69 = (v9 + 8);
        v46 = v44;
        v47 = v73;
        v48 = v75;
        v65 = v45;
        v66 = a4;
        do
        {
          v72 = v44;
          v64 = v44;
          v49 = a2;
          v50 = &a2[v45];
          v67 = &a2[v45];
          v70 = a2;
          while (1)
          {
            if (v49 <= result)
            {
              v79 = v26;
              v82 = v49;
              v44 = v64;
              goto LABEL_66;
            }

            v52 = v48;
            v75 = v46;
            v53 = *v68;
            v78 = &v46[v45];
            v53(v47);
            v54 = v45;
            v55 = v71;
            (v53)(v71, v50, v8);
            v56 = sub_231C77F20(v47, v55, v77);
            v79 = v26;
            if (v26)
            {
              v63 = *v69;
              (*v69)(v55, v8);
              v63(v47, v8);
              v82 = v70;
              v80 = v72;
              goto LABEL_67;
            }

            v57 = v56;
            v58 = &v52[v54];
            v59 = *v69;
            (*v69)(v55, v8);
            v59(v47, v8);
            if (v57)
            {
              break;
            }

            v46 = v78;
            v48 = v58;
            if (v52 < v75 || v58 >= v75)
            {
              v8 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v66;
              v50 = v67;
              v47 = v73;
            }

            else
            {
              v51 = v66;
              v50 = v67;
              v8 = v76;
              v47 = v73;
              if (v52 != v75)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v72 = v46;
            v26 = v79;
            result = v74;
            v45 = v65;
            v49 = v70;
            if (v78 <= v51)
            {
              a2 = v70;
              v44 = v72;
              goto LABEL_65;
            }
          }

          v48 = v58;
          if (v52 < v70 || v58 >= v70)
          {
            a2 = v67;
            v8 = v76;
            swift_arrayInitWithTakeFrontToBack();
            v45 = v65;
            v61 = v66;
            v47 = v73;
          }

          else
          {
            v60 = v52 == v70;
            v61 = v66;
            a2 = v67;
            v8 = v76;
            v47 = v73;
            v45 = v65;
            if (!v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          result = v74;
          v46 = v75;
          v26 = v79;
          v44 = v72;
        }

        while (v75 > v61);
      }

LABEL_65:
      v79 = v26;
      v82 = a2;
LABEL_66:
      v80 = v44;
LABEL_67:
      sub_231C82640(&v82, &v81, &v80);

      return 1;
    }

    v24 = v23 * v20;
    if (a4 < result || result + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == result)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v74;
LABEL_17:
    v74 = &a4[v24];
    v80 = &a4[v24];
    if (v24 >= 1 && a2 < v75)
    {
      v28 = *(v9 + 16);
      v72 = v15;
      v73 = (v9 + 16);
      v70 = v28;
      v71 = (v9 + 8);
      v29 = v21;
      v78 = v20;
      while (1)
      {
        v30 = result;
        v31 = a2;
        v32 = v70;
        (v70)(v29, a2, v8);
        v33 = v29;
        v34 = v72;
        v35 = a4;
        (v32)(v72, a4, v8);
        v36 = v79;
        v37 = sub_231C77F20(v33, v34, v77);
        v79 = v36;
        if (v36)
        {
          v62 = *v71;
          (*v71)(v34, v8);
          v62(v33, v8);
          goto LABEL_67;
        }

        v38 = v37;
        v39 = *v71;
        (*v71)(v34, v8);
        v39(v33, v8);
        v29 = v33;
        if ((v38 & 1) == 0)
        {
          break;
        }

        a2 = &v31[v78];
        v40 = v30;
        if (v30 >= v31 && v30 < a2)
        {
          v41 = v75;
          v8 = v76;
          if (v30 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
            v40 = v30;
          }

          a4 = v35;
          v42 = v78;
          v43 = v41;
          goto LABEL_38;
        }

        v8 = v76;
        swift_arrayInitWithTakeFrontToBack();
        v40 = v30;
        a4 = v35;
LABEL_37:
        v43 = v75;
        v42 = v78;
LABEL_38:
        result = &v40[v42];
        v82 = result;
        if (a4 >= v74 || a2 >= v43)
        {
          goto LABEL_67;
        }
      }

      a4 = &v35[v78];
      v40 = v30;
      if (v30 < v35 || v30 >= a4)
      {
        v8 = v76;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v8 = v76;
        if (v30 == v35)
        {
LABEL_36:
          v81 = a4;
          a2 = v31;
          goto LABEL_37;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v30;
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_231C825A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231C8262C(v3);
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

uint64_t sub_231C82640(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231C8BCCC();
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

void *sub_231C82738(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A18, &qword_231C8EA98);
  v10 = *(sub_231C8BCCC() - 8);
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
  v15 = *(sub_231C8BCCC() - 8);
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

uint64_t sub_231C82910(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_231C8BCCC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_231C8BCCC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - v7;
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A0, &qword_231C8EA28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = (&v42 + *(v21 + 56) - v22);
  sub_231C859F8(a1, &v42 - v22, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a2, v24, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_231C859F8(v23, v19, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v44 + 8))(v19, v45);
LABEL_23:
        sub_231C67FE0(v23, &qword_27DD709A0, &qword_231C8EA28);
        goto LABEL_24;
      }

      v39 = v44;
      v28 = v45;
      v40 = v42;
      (*(v44 + 32))(v42, v24, v45);
      v29 = sub_231C8BCAC();
      v30 = *(v39 + 8);
      v30(v40, v28);
      v31 = v19;
LABEL_28:
      v30(v31, v28);
      sub_231C7DC8C(v23, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      return v29 & 1;
    }

    sub_231C859F8(v23, v17, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v33 = *v17;
    v32 = v17[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v33 != *v24 || v32 != v24[1])
      {
        goto LABEL_19;
      }

LABEL_25:

      goto LABEL_26;
    }

LABEL_21:

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_231C859F8(v23, v14, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v44 + 8))(v14, v45);
      goto LABEL_23;
    }

    v27 = v43;
    v26 = v44;
    v28 = v45;
    (*(v44 + 32))(v43, v24, v45);
    v29 = sub_231C8BCAC();
    v30 = *(v26 + 8);
    v30(v27, v28);
    v31 = v14;
    goto LABEL_28;
  }

  sub_231C859F8(v23, v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  v36 = *v11;
  v35 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_21;
  }

  if (v36 == *v24 && v35 == v24[1])
  {
    goto LABEL_25;
  }

LABEL_19:
  v38 = sub_231C8C23C();

  if (v38)
  {
LABEL_26:
    sub_231C7DC8C(v23, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v29 = 1;
    return v29 & 1;
  }

  sub_231C7DC8C(v23, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
LABEL_24:
  v29 = 0;
  return v29 & 1;
}

unint64_t sub_231C830A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709E0, &qword_231C8EA68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709A8, &qword_231C8EA30);
    v7 = sub_231C8C0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v9, v5, &qword_27DD709E0, &qword_231C8EA68);
      result = sub_231C7DB70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_231C8BCCC();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_231C83290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709D8, &qword_231C8EA60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B0, &qword_231C8EA38);
    v7 = sub_231C8C0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v9, v5, &qword_27DD709D8, &qword_231C8EA60);
      result = sub_231C7DB70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_231C8BCCC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_231C8BC9C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_231C834B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709D0, &qword_231C8EA58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
    v7 = sub_231C8C0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v9, v5, &qword_27DD709D0, &qword_231C8EA58);
      result = sub_231C7DB70(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_231C8BCCC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
      result = sub_231C85990(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_231C836CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C8, &qword_231C8EA50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
    v7 = sub_231C8C0EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_231C67EB0(v9, v5, &qword_27DD709C8, &qword_231C8EA50);
      result = sub_231C7DC08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
      sub_231C85990(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v16 = v7[7];
      v17 = sub_231C8BCCC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_231C838E8(char **a1, uint64_t a2, uint64_t *a3, int64_t a4, char *a5)
{
  v232 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v251 = &v229 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v269 = &v229 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v235 = &v229 - v14;
  MEMORY[0x28223BE20](v13);
  v244 = &v229 - v15;
  v16 = sub_231C8BC9C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v246 = &v229 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v258 = &v229 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v233 = &v229 - v23;
  MEMORY[0x28223BE20](v22);
  v240 = &v229 - v24;
  v274 = sub_231C8BCCC();
  v25 = *(v274 - 8);
  v26 = MEMORY[0x28223BE20](v274);
  v239 = &v229 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v262 = &v229 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v256 = &v229 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v229 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v248 = &v229 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v250 = &v229 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v230 = &v229 - v40;
  MEMORY[0x28223BE20](v39);
  v229 = &v229 - v41;
  v247 = a3;
  v42 = a3[1];
  v271 = a5;
  v245 = v25;
  if (v42 < 1)
  {
    swift_retain_n();
    v45 = MEMORY[0x277D84F90];
LABEL_149:
    v44 = *v232;
    if (!*v232)
    {
      goto LABEL_188;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_151:
      v275 = v45;
      v215 = *(v45 + 2);
      if (v215 >= 2)
      {
        do
        {
          v216 = *v247;
          if (!*v247)
          {
            goto LABEL_186;
          }

          v217 = *&v45[16 * v215];
          v218 = v45;
          v219 = *&v45[16 * v215 + 24];
          v220 = *(v245 + 72);
          v221 = (v216 + v220 * v217);
          v222 = (v216 + v220 * *&v45[16 * v215 + 16]);
          v223 = (v216 + v220 * v219);
          v45 = v271;

          v224 = v221;
          v225 = v255;
          sub_231C81E98(v224, v222, v223, v44, v45);
          v255 = v225;
          if (v225)
          {
            break;
          }

          if (v219 < v217)
          {
            goto LABEL_175;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v218 = sub_231C8262C(v218);
          }

          if (v215 - 2 >= *(v218 + 2))
          {
            goto LABEL_176;
          }

          v226 = &v218[16 * v215];
          *v226 = v217;
          *(v226 + 1) = v219;
          v275 = v218;
          sub_231C825A0(v215 - 1);
          v45 = v275;
          v215 = *(v275 + 2);
        }

        while (v215 > 1);
      }
    }

LABEL_182:
    v45 = sub_231C8262C(v45);
    goto LABEL_151;
  }

  v43 = v42;
  v267 = v25 + 16;
  v268 = (v25 + 8);
  v266 = (v17 + 56);
  v252 = v17 + 16;
  v265 = (v17 + 48);
  v257 = (v17 + 32);
  v254 = (v17 + 8);
  v264 = (v25 + 32);
  swift_retain_n();
  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v231 = a4;
  v270 = v16;
  v253 = v17;
  v259 = v34;
  v46 = v43;
LABEL_4:
  v47 = v44 + 1;
  v236 = v45;
  v234 = v44;
  if ((v44 + 1) >= v46)
  {
    v69 = v44 + 1;
    v100 = v255;
    v62 = v256;
    goto LABEL_50;
  }

  v48 = v44;
  v49 = *v247;
  v50 = *(v25 + 72);
  v51 = *(v25 + 16);
  v52 = v229;
  v273 = (*v247 + v50 * v47);
  (v51)(v229);
  v263 = v50;
  v272 = v49;
  v53 = v49 + v50 * v48;
  v54 = v52;
  v55 = v230;
  v260 = v51;
  (v51)(v230, v53, v274);
  v56 = v255;
  LODWORD(v261) = sub_231C77F20(v52, v55, v271);
  v255 = v56;
  if (v56)
  {
    v227 = *v268;
    v228 = v274;
    (*v268)(v55, v274);
    (v227)(v54, v228);
  }

  v249 = v46;
  v57 = *v268;
  v58 = v274;
  (*v268)(v55, v274);
  v243 = v57;
  (v57)(v54, v58);
  v59 = v48 + 2;
  v44 = v263;
  v60 = v271;
  v61 = &v272[v263 * (v48 + 2)];
  v62 = v256;
  while (1)
  {
    v69 = v249;
    if (v249 == v59)
    {
      break;
    }

    v272 = v59;
    v70 = v250;
    v71 = v274;
    v72 = v260;
    (v260)(v250, v61, v274);
    v64 = v248;
    v72(v248, v273, v71);
    swift_beginAccess();
    v73 = *(v60 + 120);
    v74 = 0.0;
    if (*(v73 + 16))
    {
      v75 = sub_231C7DB70(v70);
      if (v76)
      {
        v74 = *(*(v73 + 56) + 8 * v75);
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v77 = *(v60 + 120);
    if (*(v77 + 16) && (v78 = sub_231C7DB70(v64), (v79 & 1) != 0))
    {
      v80 = *(*(v77 + 56) + 8 * v78);
      swift_endAccess();
      if (v74 != v80)
      {
        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      if (v74 != 0.0)
      {
        v80 = 0.0;
LABEL_23:
        v65 = v80 < v74;
LABEL_33:
        v66 = v250;
        goto LABEL_9;
      }
    }

    swift_beginAccess();
    v81 = *(v60 + 128);
    if (*(v81 + 16))
    {
      v63 = v250;
      v82 = sub_231C7DB70(v250);
      if (v83)
      {
        (*(v253 + 16))(v244, *(v81 + 56) + *(v253 + 72) * v82, v270);
        v84 = 0;
      }

      else
      {
        v84 = 1;
      }
    }

    else
    {
      v84 = 1;
      v63 = v250;
    }

    v85 = *v266;
    v86 = v244;
    v87 = v270;
    (*v266)(v244, v84, 1, v270);
    swift_endAccess();
    v88 = *v265;
    if ((*v265)(v86, 1, v87) != 1)
    {
      v89 = *v257;
      (*v257)(v240, v244, v87);
      v90 = v271;
      swift_beginAccess();
      v91 = *(v90 + 128);
      if (*(v91 + 16) && (v92 = sub_231C7DB70(v248), (v93 & 1) != 0))
      {
        v94 = *(v91 + 56) + *(v253 + 72) * v92;
        v86 = v235;
        (*(v253 + 16))(v235, v94, v270);
        v95 = 0;
      }

      else
      {
        v95 = 1;
        v86 = v235;
      }

      v96 = v270;
      v85(v86, v95, 1, v270);
      swift_endAccess();
      if (v88(v86, 1, v96) != 1)
      {
        v97 = v233;
        v89(v233, v86, v96);
        v98 = v240;
        v65 = sub_231C8BC6C();
        v99 = *v254;
        (*v254)(v97, v96);
        v99(v98, v96);
        v60 = v271;
        v62 = v256;
        v34 = v259;
        v64 = v248;
        goto LABEL_33;
      }

      (*v254)(v240, v96);
      v63 = v250;
    }

    sub_231C67FE0(v86, &qword_27DD70528, &qword_231C8D980);
    sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v64 = v248;
    v65 = sub_231C8BE7C();
    v66 = v63;
    v60 = v271;
    v62 = v256;
    v34 = v259;
LABEL_9:
    v67 = v274;
    v68 = v243;
    (v243)(v64, v274);
    (v68)(v66, v67);
    v59 = v272 + 1;
    v44 = v263;
    v61 = &v263[v61];
    v273 = &v263[v273];
    if ((v261 ^ v65))
    {
      v69 = v272;
      break;
    }
  }

  v100 = v255;
  v25 = v245;
  a4 = v231;
  v45 = v236;
  if ((v261 & 1) == 0)
  {
    goto LABEL_50;
  }

  if (v69 < v234)
  {
    goto LABEL_181;
  }

  if (v234 < v69)
  {
    v101 = v44 * (v69 - 1);
    v102 = v69 * v44;
    v249 = v69;
    v103 = v69;
    v104 = v234;
    v105 = v234 * v44;
    do
    {
      if (v104 != --v103)
      {
        v106 = *v247;
        if (!*v247)
        {
          goto LABEL_185;
        }

        v107 = *v264;
        (*v264)(v239, v106 + v105, v274);
        if (v105 < v101 || v106 + v105 >= (v106 + v102))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105 != v101)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v107((v106 + v101), v239, v274);
        v100 = v255;
        v45 = v236;
        v34 = v259;
      }

      ++v104;
      v101 -= v44;
      v102 -= v44;
      v105 += v44;
    }

    while (v104 < v103);
    v25 = v245;
    a4 = v231;
    v62 = v256;
    v69 = v249;
  }

LABEL_50:
  v108 = v247[1];
  if (v69 >= v108)
  {
    goto LABEL_60;
  }

  if (__OFSUB__(v69, v234))
  {
    goto LABEL_178;
  }

  if (&v69[-v234] >= a4)
  {
LABEL_60:
    v44 = v69;
    goto LABEL_61;
  }

  v109 = (v234 + a4);
  if (__OFADD__(v234, a4))
  {
    goto LABEL_179;
  }

  v110 = v234;
  if (v109 >= v108)
  {
    v44 = v247[1];
  }

  else
  {
    v44 = v109;
  }

  if (v44 < v234)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v69 == v44)
  {
    v44 = v69;
    goto LABEL_62;
  }

  v255 = v100;
  v165 = *v247;
  v166 = *(v25 + 72);
  v263 = *(v25 + 16);
  v167 = (v165 + v166 * (v69 - 1));
  v260 = -v166;
  v168 = (v234 - v69);
  v249 = v69;
  v261 = v165;
  v237 = v166;
  v169 = (v165 + v69 * v166);
  v170 = v271;
  v238 = v44;
  while (2)
  {
    v241 = v169;
    v242 = v168;
    v243 = v167;
LABEL_116:
    v273 = v168;
    v171 = v274;
    v172 = v263;
    (v263)(v34, v169, v274);
    v172(v62, v167, v171);
    swift_beginAccess();
    v173 = *(v170 + 120);
    v174 = 0.0;
    if (*(v173 + 16))
    {
      v175 = sub_231C7DB70(v34);
      if (v176)
      {
        v174 = *(*(v173 + 56) + 8 * v175);
      }
    }

    swift_endAccess();
    swift_beginAccess();
    v177 = *(v170 + 120);
    v178 = *(v177 + 16);
    v272 = v169;
    if (v178 && (v179 = sub_231C7DB70(v62), (v180 & 1) != 0))
    {
      v181 = *(*(v177 + 56) + 8 * v179);
      swift_endAccess();
      if (v174 != v181)
      {
LABEL_128:
        v187 = v181 < v174;
        v188 = v62;
        goto LABEL_140;
      }
    }

    else
    {
      swift_endAccess();
      if (v174 != 0.0)
      {
        v181 = 0.0;
        goto LABEL_128;
      }
    }

    swift_beginAccess();
    v182 = *(v170 + 128);
    if (*(v182 + 16))
    {
      v183 = sub_231C7DB70(v34);
      v184 = v270;
      if (v185)
      {
        (*(v253 + 16))(v269, *(v182 + 56) + *(v253 + 72) * v183, v270);
        v186 = 0;
      }

      else
      {
        v186 = 1;
      }
    }

    else
    {
      v186 = 1;
      v184 = v270;
    }

    v189 = *v266;
    v190 = v269;
    (*v266)(v269, v186, 1, v184);
    swift_endAccess();
    v191 = *v265;
    if ((*v265)(v190, 1, v184) == 1)
    {
LABEL_138:
      sub_231C67FE0(v190, &qword_27DD70528, &qword_231C8D980);
      sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
      v34 = v259;
      v187 = sub_231C8BE7C();
      v188 = v62;
    }

    else
    {
      v192 = v184;
      v193 = *v257;
      (*v257)(v258, v269, v192);
      v194 = v271;
      swift_beginAccess();
      v195 = *(v194 + 128);
      if (*(v195 + 16) && (v196 = sub_231C7DB70(v62), (v197 & 1) != 0))
      {
        v198 = *(v195 + 56) + *(v253 + 72) * v196;
        v190 = v251;
        (*(v253 + 16))(v251, v198, v270);
        v199 = 0;
      }

      else
      {
        v199 = 1;
        v190 = v251;
      }

      v200 = v270;
      v189(v190, v199, 1, v270);
      swift_endAccess();
      if (v191(v190, 1, v200) == 1)
      {
        (*v254)(v258, v200);
        v62 = v256;
        goto LABEL_138;
      }

      v201 = v246;
      v193(v246, v190, v200);
      v202 = v258;
      v187 = sub_231C8BC6C();
      v203 = *v254;
      (*v254)(v201, v200);
      v203(v202, v200);
      v188 = v256;
      v34 = v259;
    }

LABEL_140:
    v204 = *v268;
    v205 = v188;
    v206 = v274;
    (*v268)();
    v207 = v34;
    (v204)(v34, v206);
    if ((v187 & 1) == 0)
    {
      v62 = v205;
      v170 = v271;
LABEL_114:
      v167 = v243 + v237;
      v168 = v242 - 1;
      v169 = &v241[v237];
      ++v249;
      v44 = v238;
      if (v249 != v238)
      {
        continue;
      }

      v100 = v255;
      v25 = v245;
      v45 = v236;
LABEL_61:
      v110 = v234;
LABEL_62:
      if (v44 < v110)
      {
        goto LABEL_177;
      }

      v255 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_231C7D000(0, *(v45 + 2) + 1, 1, v45);
      }

      v112 = *(v45 + 2);
      v111 = *(v45 + 3);
      v113 = v112 + 1;
      if (v112 >= v111 >> 1)
      {
        v45 = sub_231C7D000((v111 > 1), v112 + 1, 1, v45);
      }

      *(v45 + 2) = v113;
      v114 = &v45[16 * v112];
      *(v114 + 4) = v110;
      *(v114 + 5) = v44;
      v273 = *v232;
      if (!v273)
      {
        goto LABEL_187;
      }

      if (v112)
      {
        while (2)
        {
          v115 = v113 - 1;
          if (v113 >= 4)
          {
            v120 = &v45[16 * v113 + 32];
            v121 = *(v120 - 64);
            v122 = *(v120 - 56);
            v126 = __OFSUB__(v122, v121);
            v123 = v122 - v121;
            if (v126)
            {
              goto LABEL_164;
            }

            v125 = *(v120 - 48);
            v124 = *(v120 - 40);
            v126 = __OFSUB__(v124, v125);
            v118 = v124 - v125;
            v119 = v126;
            if (v126)
            {
              goto LABEL_165;
            }

            v127 = &v45[16 * v113];
            v129 = *v127;
            v128 = *(v127 + 1);
            v126 = __OFSUB__(v128, v129);
            v130 = v128 - v129;
            if (v126)
            {
              goto LABEL_167;
            }

            v126 = __OFADD__(v118, v130);
            v131 = v118 + v130;
            if (v126)
            {
              goto LABEL_170;
            }

            if (v131 >= v123)
            {
              v149 = &v45[16 * v115 + 32];
              v151 = *v149;
              v150 = *(v149 + 1);
              v126 = __OFSUB__(v150, v151);
              v152 = v150 - v151;
              if (v126)
              {
                goto LABEL_174;
              }

              if (v118 < v152)
              {
                v115 = v113 - 2;
              }
            }

            else
            {
LABEL_82:
              if (v119)
              {
                goto LABEL_166;
              }

              v132 = &v45[16 * v113];
              v134 = *v132;
              v133 = *(v132 + 1);
              v135 = __OFSUB__(v133, v134);
              v136 = v133 - v134;
              v137 = v135;
              if (v135)
              {
                goto LABEL_169;
              }

              v138 = &v45[16 * v115 + 32];
              v140 = *v138;
              v139 = *(v138 + 1);
              v126 = __OFSUB__(v139, v140);
              v141 = v139 - v140;
              if (v126)
              {
                goto LABEL_172;
              }

              if (__OFADD__(v136, v141))
              {
                goto LABEL_173;
              }

              if (v136 + v141 < v118)
              {
                goto LABEL_96;
              }

              if (v118 < v141)
              {
                v115 = v113 - 2;
              }
            }
          }

          else
          {
            if (v113 == 3)
            {
              v116 = *(v45 + 4);
              v117 = *(v45 + 5);
              v126 = __OFSUB__(v117, v116);
              v118 = v117 - v116;
              v119 = v126;
              goto LABEL_82;
            }

            v142 = &v45[16 * v113];
            v144 = *v142;
            v143 = *(v142 + 1);
            v126 = __OFSUB__(v143, v144);
            v136 = v143 - v144;
            v137 = v126;
LABEL_96:
            if (v137)
            {
              goto LABEL_168;
            }

            v145 = &v45[16 * v115];
            v147 = *(v145 + 4);
            v146 = *(v145 + 5);
            v126 = __OFSUB__(v146, v147);
            v148 = v146 - v147;
            if (v126)
            {
              goto LABEL_171;
            }

            if (v148 < v136)
            {
              break;
            }
          }

          v153 = v115 - 1;
          if (v115 - 1 >= v113)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          v154 = *v247;
          if (!*v247)
          {
            goto LABEL_184;
          }

          v155 = v45;
          v156 = *&v45[16 * v153 + 32];
          v157 = *&v45[16 * v115 + 40];
          v158 = *(v25 + 72);
          v159 = (v154 + v158 * v156);
          v160 = (v154 + v158 * *&v45[16 * v115 + 32]);
          v161 = (v154 + v158 * v157);
          v45 = v271;

          v162 = v159;
          v163 = v255;
          sub_231C81E98(v162, v160, v161, v273, v45);
          v255 = v163;
          if (v163)
          {
          }

          if (v157 < v156)
          {
            goto LABEL_162;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_231C8262C(v155);
          }

          v25 = v245;
          if (v153 >= *(v155 + 2))
          {
            goto LABEL_163;
          }

          v164 = &v155[16 * v153];
          *(v164 + 4) = v156;
          *(v164 + 5) = v157;
          v275 = v155;
          sub_231C825A0(v115);
          v45 = v275;
          v113 = *(v275 + 2);
          v34 = v259;
          if (v113 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v46 = v247[1];
      a4 = v231;
      if (v44 >= v46)
      {
        goto LABEL_149;
      }

      goto LABEL_4;
    }

    break;
  }

  v208 = v273;
  if (v261)
  {
    v209 = *v264;
    v210 = v262;
    v211 = v272;
    v212 = v274;
    (*v264)(v262, v272, v274);
    swift_arrayInitWithTakeFrontToBack();
    v209(v167, v210, v212);
    v167 += v260;
    v169 = &v211[v260];
    v213 = __CFADD__(v208, 1);
    v168 = v208 + 1;
    v62 = v205;
    v34 = v207;
    v170 = v271;
    if (v213)
    {
      goto LABEL_114;
    }

    goto LABEL_116;
  }

  __break(1u);
LABEL_184:

  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:

  __break(1u);
LABEL_187:

  __break(1u);
LABEL_188:

  __break(1u);
  return result;
}

uint64_t sub_231C84F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v101 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v85 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v99 = &v73[-v12];
  v88 = sub_231C8BC9C();
  v83 = *(v88 - 8);
  v13 = MEMORY[0x28223BE20](v88);
  v81 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v87 = &v73[-v15];
  v76 = sub_231C8BCCC();
  v16 = MEMORY[0x28223BE20](v76);
  v95 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v73[-v19];
  result = MEMORY[0x28223BE20](v18);
  v100 = &v73[-v23];
  v75 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v26 = *(v22 + 16);
    v25 = v22 + 16;
    v97 = v26;
    v27 = *(v25 + 56);
    v91 = (v83 + 56);
    v82 = v83 + 16;
    v90 = (v83 + 48);
    v86 = (v83 + 32);
    v84 = (v83 + 8);
    v96 = (v25 - 8);
    v98 = v25;
    v93 = (v25 + 16);
    v94 = v24;
    v28 = v24 + v27 * (a3 - 1);
    v92 = -v27;
    v29 = a1 - a3;
    v74 = v27;
    v30 = v24 + v27 * a3;
    v89 = v20;
LABEL_5:
    v80 = a3;
    v77 = v30;
    v78 = v29;
    v31 = v29;
    v79 = v28;
    v32 = v28;
    v33 = v76;
    while (1)
    {
      v102 = v31;
      v34 = v100;
      v35 = v97;
      v97(v100, v30, v33);
      v35(v20, v32, v33);
      v36 = v101;
      swift_beginAccess();
      v37 = *(v36 + 120);
      v38 = 0.0;
      if (*(v37 + 16))
      {
        v39 = sub_231C7DB70(v34);
        if (v40)
        {
          v38 = *(*(v37 + 56) + 8 * v39);
        }
      }

      swift_endAccess();
      swift_beginAccess();
      v41 = *(v36 + 120);
      if (*(v41 + 16) && (v42 = sub_231C7DB70(v20), (v43 & 1) != 0))
      {
        v44 = *(*(v41 + 56) + 8 * v42);
        swift_endAccess();
        if (v38 != v44)
        {
          goto LABEL_18;
        }
      }

      else
      {
        swift_endAccess();
        if (v38 != 0.0)
        {
          v44 = 0.0;
LABEL_18:
          v50 = v44 < v38;
          v51 = v34;
          v52 = v33;
          v53 = v20;
          goto LABEL_30;
        }
      }

      swift_beginAccess();
      v45 = *(v36 + 128);
      if (*(v45 + 16))
      {
        v46 = sub_231C7DB70(v34);
        v47 = v88;
        if (v48)
        {
          (*(v83 + 16))(v99, *(v45 + 56) + *(v83 + 72) * v46, v88);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }
      }

      else
      {
        v49 = 1;
        v47 = v88;
      }

      v54 = *v91;
      v55 = v99;
      (*v91)(v99, v49, 1, v47);
      swift_endAccess();
      v56 = *v90;
      if ((*v90)(v55, 1, v47) == 1)
      {
        goto LABEL_28;
      }

      v57 = *v86;
      (*v86)(v87, v99, v47);
      v58 = v101;
      swift_beginAccess();
      v59 = *(v58 + 128);
      if (*(v59 + 16) && (v60 = sub_231C7DB70(v89), (v61 & 1) != 0))
      {
        v62 = *(v59 + 56) + *(v83 + 72) * v60;
        v55 = v85;
        (*(v83 + 16))(v85, v62, v47);
        v63 = 0;
      }

      else
      {
        v63 = 1;
        v55 = v85;
      }

      v54(v55, v63, 1, v47);
      swift_endAccess();
      if (v56(v55, 1, v47) == 1)
      {
        break;
      }

      v64 = v57;
      v65 = v81;
      v64(v81, v55, v47);
      v66 = v87;
      v50 = sub_231C8BC6C();
      v67 = *v84;
      (*v84)(v65, v47);
      v67(v66, v47);
      v52 = v33;
      v53 = v89;
      v51 = v100;
LABEL_30:
      v68 = *v96;
      v20 = v53;
      (*v96)(v53, v52);
      result = (v68)(v51, v52);
      v69 = v102;
      if ((v50 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v94)
      {
        __break(1u);
        return result;
      }

      v33 = v52;
      v70 = *v93;
      v71 = v95;
      (*v93)(v95, v30, v33);
      swift_arrayInitWithTakeFrontToBack();
      result = v70(v32, v71, v33);
      v32 += v92;
      v30 += v92;
      v72 = __CFADD__(v69, 1);
      v31 = v69 + 1;
      if (v72)
      {
LABEL_4:
        a3 = v80 + 1;
        v28 = v79 + v74;
        v29 = v78 - 1;
        v30 = v77 + v74;
        if (v80 + 1 == v75)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    (*v84)(v87, v47);
    v34 = v100;
LABEL_28:
    sub_231C67FE0(v55, &qword_27DD70528, &qword_231C8D980);
    sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
    v52 = v33;
    v53 = v89;
    v50 = sub_231C8BE7C();
    v51 = v34;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_231C85724(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_231C8C22C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231C8BCCC();
        v8 = sub_231C8BF5C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_231C8BCCC() - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_231C838E8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_231C84F44(0, v4, 1, a1, a2);
  }
}

uint64_t sub_231C858A8(uint64_t *a1, char *a2)
{
  v4 = *(sub_231C8BCCC() - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_231C82724(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_231C85724(v8, a2);

  *a1 = v5;
}

uint64_t sub_231C85990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C859F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_231C85A60()
{
  result = qword_280CFA4F0;
  if (!qword_280CFA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4F0);
  }

  return result;
}

unint64_t sub_231C85AB4()
{
  result = qword_27DD707F0;
  if (!qword_27DD707F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD707F0);
  }

  return result;
}

unint64_t sub_231C85B08()
{
  result = qword_27DD707F8;
  if (!qword_27DD707F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD707F8);
  }

  return result;
}

unint64_t sub_231C85B5C()
{
  result = qword_280CFA4D8;
  if (!qword_280CFA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4D8);
  }

  return result;
}

unint64_t sub_231C85BB0()
{
  result = qword_27DD70800;
  if (!qword_27DD70800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70800);
  }

  return result;
}

unint64_t sub_231C85C04()
{
  result = qword_280CFA9F0;
  if (!qword_280CFA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9F0);
  }

  return result;
}

unint64_t sub_231C85C58()
{
  result = qword_27DD70858;
  if (!qword_27DD70858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70858);
  }

  return result;
}

unint64_t sub_231C85CAC()
{
  result = qword_27DD70860;
  if (!qword_27DD70860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70860);
  }

  return result;
}

uint64_t sub_231C85D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_231C85D48()
{
  result = qword_280CFA9D8;
  if (!qword_280CFA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9D8);
  }

  return result;
}

unint64_t sub_231C85D9C()
{
  result = qword_27DD70870;
  if (!qword_27DD70870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70870);
  }

  return result;
}

unint64_t sub_231C85DF0()
{
  result = qword_280CFA490;
  if (!qword_280CFA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA490);
  }

  return result;
}

unint64_t sub_231C85E48()
{
  result = qword_27DD708B0;
  if (!qword_27DD708B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708B0);
  }

  return result;
}

unint64_t sub_231C85F30()
{
  result = qword_27DD708C0;
  if (!qword_27DD708C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708C0);
  }

  return result;
}

unint64_t sub_231C85F88()
{
  result = qword_27DD708C8;
  if (!qword_27DD708C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708C8);
  }

  return result;
}

void sub_231C86004(uint64_t a1)
{
  sub_231C86160(319, &qword_280CFA6A0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_231C86160(319, qword_280CFA388, _s14AutoSerializerVMa);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_231C86160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_231C8C04C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231C86214(uint64_t a1)
{
  result = sub_231C8BCCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231C862A8(uint64_t a1)
{
  result = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ImageGlyphRecencyModelMigrator.run(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_231C67D74;

  return v9(a1, a2, a3);
}

uint64_t sub_231C864E4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_231C86574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_231C8669C(uint64_t a1)
{
  sub_231C867E4(319);
  if (v1 <= 0x3F)
  {
    sub_231C86880(319, &qword_280CFA008, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_231C86880(319, &qword_280CFA018, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      if (v3 <= 0x3F)
      {
        sub_231C8692C(319);
        if (v4 <= 0x3F)
        {
          sub_231C86160(319, &qword_280CFA6A0, MEMORY[0x277CC9578]);
          if (v5 <= 0x3F)
          {
            sub_231C869D8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_231C867E4(uint64_t a1)
{
  if (!qword_280CF9FF8)
  {
    sub_231C8BCCC();
    sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_231C8BE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF9FF8);
    }
  }
}

void sub_231C86880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_231C8BCCC();
    a3(255);
    sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_231C8BE4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_231C8692C(uint64_t a1)
{
  if (!qword_280CF9FE8)
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(255);
    sub_231C8BCCC();
    sub_231C85D00(&qword_280CFA478, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v1 = sub_231C8BE4C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CF9FE8);
    }
  }
}

void sub_231C869D8()
{
  if (!qword_280CF9FC0)
  {
    v0 = sub_231C8C04C();
    if (!v1)
    {
      atomic_store(v0, &qword_280CF9FC0);
    }
  }
}

unint64_t sub_231C86A2C()
{
  result = qword_27DD708D0;
  if (!qword_27DD708D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708D0);
  }

  return result;
}

unint64_t sub_231C86A84()
{
  result = qword_27DD708D8;
  if (!qword_27DD708D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708D8);
  }

  return result;
}

unint64_t sub_231C86ADC()
{
  result = qword_27DD708E0;
  if (!qword_27DD708E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708E0);
  }

  return result;
}

unint64_t sub_231C86B34()
{
  result = qword_27DD708E8;
  if (!qword_27DD708E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708E8);
  }

  return result;
}

unint64_t sub_231C86B8C()
{
  result = qword_27DD708F0;
  if (!qword_27DD708F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708F0);
  }

  return result;
}

unint64_t sub_231C86BE4()
{
  result = qword_27DD708F8;
  if (!qword_27DD708F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD708F8);
  }

  return result;
}

unint64_t sub_231C86C3C()
{
  result = qword_27DD70900;
  if (!qword_27DD70900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70900);
  }

  return result;
}

unint64_t sub_231C86C94()
{
  result = qword_280CFA480;
  if (!qword_280CFA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA480);
  }

  return result;
}

unint64_t sub_231C86CEC()
{
  result = qword_280CFA488;
  if (!qword_280CFA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA488);
  }

  return result;
}

unint64_t sub_231C86D44()
{
  result = qword_280CFA9A8;
  if (!qword_280CFA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9A8);
  }

  return result;
}

unint64_t sub_231C86D9C()
{
  result = qword_280CFA9B0;
  if (!qword_280CFA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9B0);
  }

  return result;
}

unint64_t sub_231C86DF4()
{
  result = qword_280CFA9C8;
  if (!qword_280CFA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9C8);
  }

  return result;
}

unint64_t sub_231C86E4C()
{
  result = qword_280CFA9D0;
  if (!qword_280CFA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9D0);
  }

  return result;
}

unint64_t sub_231C86EA4()
{
  result = qword_280CFA9B8;
  if (!qword_280CFA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9B8);
  }

  return result;
}

unint64_t sub_231C86EFC()
{
  result = qword_280CFA9C0;
  if (!qword_280CFA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9C0);
  }

  return result;
}

unint64_t sub_231C86F54()
{
  result = qword_27DD70908;
  if (!qword_27DD70908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70908);
  }

  return result;
}

unint64_t sub_231C86FAC()
{
  result = qword_27DD70910;
  if (!qword_27DD70910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70910);
  }

  return result;
}

unint64_t sub_231C87004()
{
  result = qword_280CFA9E0;
  if (!qword_280CFA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9E0);
  }

  return result;
}

unint64_t sub_231C8705C()
{
  result = qword_280CFA9E8;
  if (!qword_280CFA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA9E8);
  }

  return result;
}

unint64_t sub_231C870B4()
{
  result = qword_280CFA4A8;
  if (!qword_280CFA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4A8);
  }

  return result;
}

unint64_t sub_231C8710C()
{
  result = qword_280CFA4B0;
  if (!qword_280CFA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4B0);
  }

  return result;
}

unint64_t sub_231C87164()
{
  result = qword_280CFA4C8;
  if (!qword_280CFA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4C8);
  }

  return result;
}

unint64_t sub_231C871BC()
{
  result = qword_280CFA4D0;
  if (!qword_280CFA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4D0);
  }

  return result;
}

unint64_t sub_231C87214()
{
  result = qword_280CFA4B8;
  if (!qword_280CFA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4B8);
  }

  return result;
}

unint64_t sub_231C8726C()
{
  result = qword_280CFA4C0;
  if (!qword_280CFA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4C0);
  }

  return result;
}

unint64_t sub_231C872C4()
{
  result = qword_27DD70918;
  if (!qword_27DD70918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70918);
  }

  return result;
}

unint64_t sub_231C8731C()
{
  result = qword_27DD70920;
  if (!qword_27DD70920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70920);
  }

  return result;
}

unint64_t sub_231C87374()
{
  result = qword_280CFA4E0;
  if (!qword_280CFA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4E0);
  }

  return result;
}

unint64_t sub_231C873CC()
{
  result = qword_280CFA4E8;
  if (!qword_280CFA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4E8);
  }

  return result;
}

unint64_t sub_231C87420()
{
  result = qword_280CFA680;
  if (!qword_280CFA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA680);
  }

  return result;
}

unint64_t sub_231C87474()
{
  result = qword_280CF9FF0;
  if (!qword_280CF9FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FF0);
  }

  return result;
}

unint64_t sub_231C87530()
{
  result = qword_280CFA000;
  if (!qword_280CFA000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_231C85D00(&qword_280CFA6A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA000);
  }

  return result;
}

unint64_t sub_231C8761C()
{
  result = qword_280CFA010;
  if (!qword_280CFA010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_231C85D00(&qword_280CFA468, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA010);
  }

  return result;
}

unint64_t sub_231C87708()
{
  result = qword_280CF9FE0;
  if (!qword_280CF9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C85D00(&qword_280CFA468, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FE0);
  }

  return result;
}

unint64_t sub_231C877F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70950, &qword_231C8EA00);
    v3 = sub_231C8C0EC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_231C7DD7C(v5, v6);
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

uint64_t sub_231C87908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_231C8C23C();

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

uint64_t sub_231C87A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231C87AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_231C87B34()
{
  result = qword_27DD70970;
  if (!qword_27DD70970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70970);
  }

  return result;
}

unint64_t sub_231C87BF0()
{
  result = qword_27DD70978;
  if (!qword_27DD70978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_231C85D00(&qword_27DD70980, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70978);
  }

  return result;
}

unint64_t sub_231C87CDC()
{
  result = qword_27DD70988;
  if (!qword_27DD70988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_231C85D00(&qword_27DD70990, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70988);
  }

  return result;
}

unint64_t sub_231C87DC8()
{
  result = qword_27DD70998;
  if (!qword_27DD70998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C85D00(&qword_27DD70990, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70998);
  }

  return result;
}

uint64_t sub_231C87EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C87F18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F0, &unk_231C8EA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C87F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_231C88004()
{
  result = qword_27DD70A20;
  if (!qword_27DD70A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70A20);
  }

  return result;
}

unint64_t sub_231C8805C()
{
  result = qword_280CFA670;
  if (!qword_280CFA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA670);
  }

  return result;
}

unint64_t sub_231C880B4()
{
  result = qword_280CFA678;
  if (!qword_280CFA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA678);
  }

  return result;
}

uint64_t sub_231C88108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEC00000070614D79 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEB0000000070614DLL || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6365526F5479656BLL && a2 == 0xEE0070614D64726FLL || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5464726F636572 && a2 == 0xEE0070614D79654BLL || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000231C8F4C0 == a2 || (sub_231C8C23C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000231C8F4E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_231C8C23C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_231C883A8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v2[20] = swift_task_alloc();
  v3 = sub_231C8BBFC();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v2[24] = swift_task_alloc();
  v4 = sub_231C8BC2C();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C8852C, v1, 0);
}

uint64_t sub_231C8852C()
{
  v1 = v0[18];
  v2 = v1 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request;
  if (*(v2 + *(type metadata accessor for RecencyRequest(0) + 36) + 8))
  {
    v3 = v0[25];
    v4 = v0[26];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[21];
    v8 = v0[22];
    v9 = *(v1 + OBJC_IVAR____TtC14RecencyService11LoadHandler_recencyModel);
    v0[28] = v9;
    (*(v4 + 56))(v5, 1, 1, v3);
    (*(v8 + 104))(v6, *MEMORY[0x277CC91D8], v7);

    sub_231C8BC1C();

    return MEMORY[0x2822009F8](sub_231C886D4, v9, 0);
  }

  else
  {
    v10 = v0[17];
    *v10 = xmmword_231C8C920;
    v10[1] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    *(v10 + 57) = 0u;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_231C886D4()
{
  v1 = sub_231C8BC3C();
  v3 = v2;
  sub_231C8BB8C();
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C88D48();
  sub_231C8BB6C();
  v4 = v0[28];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_231C723D0(v1, v3);

  v8 = v5[1];
  swift_beginAccess();
  v4[15] = v8;

  v9 = v5[2];
  swift_beginAccess();
  v4[16] = v9;

  v10 = v5[3];
  swift_beginAccess();
  v4[17] = v10;

  v11 = v5[4];
  swift_beginAccess();
  v4[18] = v11;

  v12 = *(v6 + 36);
  v13 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v5 + v12, v4 + v13);
  swift_endAccess();
  v14 = v5 + *(v6 + 40);
  v15 = *v14;
  LOBYTE(v13) = v14[8];
  sub_231C88DA0(v5, type metadata accessor for ImageGlyphRecencyCodableData);
  v16 = v4 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v16 = v15;
  v16[8] = v13;

  return MEMORY[0x2822009F8](sub_231C88968, v7, 0);
}

uint64_t sub_231C88968()
{
  v1 = *(v0 + 136);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231C88A10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C88A9C()
{
  sub_231C88DA0(v0 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request, type metadata accessor for RecencyRequest);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService11LoadHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for LoadHandler(uint64_t a1)
{
  result = qword_27DD70A28;
  if (!qword_27DD70A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C88B64(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C88C18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v8 + OBJC_IVAR____TtC14RecencyService11LoadHandler_request);
  *(v8 + OBJC_IVAR____TtC14RecencyService11LoadHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService11LoadHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C88CAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C883A8(a1);
}

unint64_t sub_231C88D48()
{
  result = qword_280CFA668;
  if (!qword_280CFA668)
  {
    type metadata accessor for ImageGlyphRecencyCodableData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA668);
  }

  return result;
}

uint64_t sub_231C88DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C88E00(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = sub_231C8BC9C();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  type metadata accessor for ImageGlyphValidator(0);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  v2[49] = swift_task_alloc();
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C88F80, v1, 0);
}

uint64_t sub_231C88F80()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = (*(v0 + 352) + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request);
  v5 = type metadata accessor for RecencyRequest(0);
  sub_231C89B20(&v4[*(v5 + 32)], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 344);
    sub_231C67FE0(*(v0 + 392), &qword_27DD70530, &unk_231C8C9F0);
    *v6 = xmmword_231C8C920;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    *(v6 + 57) = 0u;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 416);
    v10 = *(v0 + 384);
    sub_231C67F18(*(v0 + 392), v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    *(v0 + 330) = *v4;
    *(v0 + 456) = 1;
    *(v0 + 464) = 1;
    sub_231C71734(v9, v10);
    v11 = swift_task_alloc();
    *(v0 + 424) = v11;
    *v11 = v0;
    v11[1] = sub_231C89154;

    return ImageGlyphValidator.validate()();
  }
}

uint64_t sub_231C89154()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  *(*v1 + 432) = v0;

  sub_231C89B90(v3, type metadata accessor for ImageGlyphValidator);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_231C89568;
  }

  else
  {
    v5 = sub_231C892B0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_231C892B0(uint64_t a1)
{
  v2 = *(*(v1 + 352) + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_recencyModel);
  *(v1 + 440) = v2;
  sub_231C8BC8C();

  return MEMORY[0x2822009F8](sub_231C8932C, v2, 0);
}

uint64_t sub_231C8932C()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  ImageGlyphRecencyModel.recordEngagement(for:_:)(v0[52], v1);
  v0[56] = v5;
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_231C893D0, v4, 0);
}

uint64_t sub_231C893D0()
{
  v1 = *(v0 + 448);
  sub_231C89B90(*(v0 + 416), type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *(v0 + 456) = 0;
  v2 = *(v0 + 330);
  v3 = *(v0 + 344);
  *(v0 + 176) = v2;
  *(v0 + 177) = *(v0 + 89);
  *(v0 + 180) = *(v0 + 92);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = v1;
  *(v0 + 208) = 0;
  *(v0 + 209) = *(v0 + 169);
  *(v0 + 212) = *(v0 + 172);
  *(v0 + 216) = 0;
  v4 = *(v0 + 464);
  *(v0 + 224) = v4;
  *(v0 + 228) = *(v0 + 252);
  *(v0 + 225) = *(v0 + 249);
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = -1;
  *v3 = *(v0 + 176);
  v5 = *(v0 + 233);
  v7 = *(v0 + 208);
  v6 = *(v0 + 224);
  v3[1] = *(v0 + 192);
  v3[2] = v7;
  v3[3] = v6;
  *(v3 + 57) = v5;
  *(v0 + 96) = v2;
  *(v0 + 100) = *(v0 + 92);
  *(v0 + 97) = *(v0 + 89);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = 0;
  *(v0 + 132) = *(v0 + 172);
  *(v0 + 129) = *(v0 + 169);
  *(v0 + 136) = 0;
  *(v0 + 144) = v4;
  v8 = *(v0 + 249);
  *(v0 + 148) = *(v0 + 252);
  *(v0 + 145) = v8;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  sub_231C6B1BC(v0 + 176, v0 + 256);
  sub_231C6B1F4(v0 + 96);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_231C89568()
{
  *(v0 + 336) = *(v0 + 432);
  MEMORY[0x238379810]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A48, &qword_231C8ECF0);
  if (swift_dynamicCast())
  {
    v1 = 0xD000000000000022;
    v2 = *(v0 + 416);
    MEMORY[0x238379800](*(v0 + 432));
    v3 = *(v0 + 329);
    sub_231C89B90(v2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C6A674(0, 0, 255);
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = " with a colon is not supported";
      }

      else
      {
        v4 = "ported at this time";
        v1 = 0xD00000000000002ELL;
        LOBYTE(v3) = 1;
      }
    }

    else
    {
      v4 = "RecordEngagementRequestHandler";
      v1 = 0xD000000000000033;
    }

    v7 = v4 | 0x8000000000000000;
    MEMORY[0x238379800](*(v0 + 336));
    v8 = *(v0 + 330);
    v9 = *(v0 + 344);
    *(v0 + 176) = v8;
    *(v0 + 180) = *(v0 + 92);
    *(v0 + 177) = *(v0 + 89);
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
    *(v0 + 184) = 0;
    v10 = *(v0 + 456);
    *(v0 + 208) = v10;
    *(v0 + 209) = *(v0 + 169);
    *(v0 + 212) = *(v0 + 172);
    *(v0 + 216) = 0;
    v11 = *(v0 + 464);
    *(v0 + 224) = v11;
    *(v0 + 225) = *(v0 + 249);
    *(v0 + 228) = *(v0 + 252);
    *(v0 + 232) = v1;
    *(v0 + 240) = v7;
    *(v0 + 248) = v3;
    *v9 = *(v0 + 176);
    v12 = *(v0 + 233);
    v13 = *(v0 + 224);
    v14 = *(v0 + 192);
    v9[2] = *(v0 + 208);
    v9[3] = v13;
    *(v9 + 57) = v12;
    v9[1] = v14;
    *(v0 + 96) = v8;
    *(v0 + 100) = *(v0 + 92);
    *(v0 + 97) = *(v0 + 89);
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = v10;
    *(v0 + 129) = *(v0 + 169);
    *(v0 + 132) = *(v0 + 172);
    *(v0 + 136) = 0;
    *(v0 + 144) = v11;
    v15 = *(v0 + 249);
    *(v0 + 148) = *(v0 + 252);
    *(v0 + 145) = v15;
    *(v0 + 152) = v1;
    *(v0 + 160) = v7;
    *(v0 + 168) = v3;
    sub_231C6B1BC(v0 + 176, v0 + 256);
    sub_231C6B1F4(v0 + 96);

    v6 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 330);
    sub_231C89B90(*(v0 + 416), type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    MEMORY[0x238379800](*(v0 + 336));
    *(v0 + 16) = v5;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = 0;
    *(v0 + 48) = *(v0 + 456);
    *(v0 + 56) = 0;
    *(v0 + 64) = *(v0 + 464);
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    sub_231C6B1F4(v0 + 16);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_231C89850()
{
  sub_231C89B90(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request, type metadata accessor for RecencyRequest);

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_modelMigrator, &qword_27DD70650, &unk_231C8EE00);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphRecordEngagementRequestHandler(uint64_t a1)
{
  result = qword_27DD70A38;
  if (!qword_27DD70A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C89928(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C899DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C67F18(a1, v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_request, type metadata accessor for RecencyRequest);
  *(v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphRecordEngagementRequestHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C89A84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C88E00(a1);
}

uint64_t sub_231C89B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C89B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14AutoSerializerVMa(uint64_t a1)
{
  result = qword_280CFA3C8;
  if (!qword_280CFA3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231C89C64(uint64_t a1)
{
  sub_231C6B6E4();
  if (v1 <= 0x3F)
  {
    sub_231C89D24();
    if (v2 <= 0x3F)
    {
      sub_231C89D88(319);
      if (v3 <= 0x3F)
      {
        sub_231C8C01C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231C89D24()
{
  if (!qword_280CFA020)
  {
    v0 = sub_231C8BDDC();
    if (!v1)
    {
      atomic_store(v0, &qword_280CFA020);
    }
  }
}

void sub_231C89D88(uint64_t a1)
{
  if (!qword_280CFA028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD70A68, &qword_231C8ED08);
    v1 = sub_231C8C04C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CFA028);
    }
  }
}

uint64_t sub_231C89DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A80, &qword_231C8ED30);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A88, &qword_231C8ED38);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  MEMORY[0x28223BE20](v5);
  v29 = v23 - v7;
  v26 = sub_231C8C02C();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231C8BFEC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_231C8BE3C();
  MEMORY[0x28223BE20](v11 - 8);
  v25 = sub_231C6B6E4();
  v23[1] = "recency-model-autoserializer";
  sub_231C8BE1C();
  v33[0] = MEMORY[0x277D84F90];
  sub_231C8B0A8(&qword_280CF9FB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705D0, &qword_231C8CA90);
  sub_231C8B120(&qword_280CF9FC8, &unk_27DD705D0, &qword_231C8CA90, MEMORY[0x277D83970]);
  sub_231C8C05C();
  (*(v24 + 104))(v9, *MEMORY[0x277D85260], v26);
  v12 = sub_231C8C03C();
  *a2 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A70, &qword_231C8ED28);
  swift_allocObject();
  v13 = v12;
  v14 = sub_231C8BDCC();
  *(a2 + 8) = v14;
  _s14AutoSerializerVMa(0);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  v26 = a2 + 16;

  sub_231C8C00C();
  swift_weakInit();
  v15 = v28;
  swift_weakAssign();
  v32 = v13;
  v33[0] = v14;
  v16 = sub_231C8BFFC();
  v17 = v27;
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  sub_231C8B120(&qword_27DD70A90, &qword_27DD70A70, &qword_231C8ED28, MEMORY[0x277CBCE20]);
  sub_231C8B0A8(&qword_27DD70A98, sub_231C6B6E4, MEMORY[0x277D85228]);
  v18 = v29;
  sub_231C8BDFC();
  sub_231C67FE0(v17, &qword_27DD70A80, &qword_231C8ED30);

  v19 = swift_allocObject();
  *(v19 + 16) = sub_231C8B0F0;
  *(v19 + 24) = v15;
  sub_231C8B120(&qword_27DD70AA0, &qword_27DD70A88, &qword_231C8ED38, MEMORY[0x277CBCCF8]);

  v20 = v30;
  v21 = sub_231C8BE0C();

  (*(v31 + 8))(v18, v20);
  v33[3] = sub_231C8BDBC();
  v33[4] = MEMORY[0x277CBCDA0];

  v33[0] = v21;
  return sub_231C8B168(v33, v26);
}

uint64_t sub_231C8A3BC()
{
  if (qword_27DD70510 != -1)
  {
    swift_once();
  }

  v0 = sub_231C8BCFC();
  __swift_project_value_buffer(v0, qword_27DD70A50);
  v1 = sub_231C8BCDC();
  v2 = sub_231C8BFAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_231C65000, v1, v2, "Sending recency database mutation event. This event is being coalesced before saving occurs.", v3, 2u);
    MEMORY[0x238379930](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A70, &qword_231C8ED28);
  sub_231C8B120(&qword_27DD70A78, &qword_27DD70A70, &qword_231C8ED28, MEMORY[0x277CBCE18]);
  return sub_231C8BDEC();
}

uint64_t sub_231C8A4F0()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_27DD70A50);
  __swift_project_value_buffer(v0, qword_27DD70A50);
  return sub_231C8BCEC();
}

uint64_t sub_231C8A570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27DD70510 != -1)
  {
    swift_once();
  }

  v5 = sub_231C8BCFC();
  __swift_project_value_buffer(v5, qword_27DD70A50);
  v6 = sub_231C8BCDC();
  v7 = sub_231C8BFAC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_231C65000, v6, v7, "Save timer fired; saving recency model to disk", v8, 2u);
    MEMORY[0x238379930](v8, -1, -1);
  }

  v9 = sub_231C8BF8C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_231C8ADF8(0, 0, v4, &unk_231C8ED50, v10);

  return sub_231C67FE0(v4, &qword_27DD70658, &qword_231C8D5C8);
}

uint64_t sub_231C8A750(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v4[4] = swift_task_alloc();
  v5 = sub_231C8BBFC();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_231C8BC2C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C8A8D8, 0, 0);
}

uint64_t sub_231C8A8D8()
{
  v1 = os_transaction_create();
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v1 = sub_231C8A950;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_231C8A950()
{
  sub_231C7BCCC(v0[10]);
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CC91D0], v0[5]);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_231C8BC1C();
  v5 = *(v3 + 8);
  v0[13] = v5;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_231C8AB18;

  return sub_231C7C5F0();
}

uint64_t sub_231C8AB18(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 128) = a1;
  *(v4 + 136) = a2;
  *(v4 + 144) = v2;

  if (v2)
  {
    MEMORY[0x238379800](v2);
    v5 = *(v4 + 16);
    (*(v4 + 104))(*(v4 + 88), *(v4 + 64));
    v6 = sub_231C8ADDC;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 16);
    v6 = sub_231C8AC64;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_231C8AC64()
{
  v1 = *(v0 + 144);
  sub_231C8BC4C();
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if (v1)
  {
    MEMORY[0x238379800](v1);
    sub_231C723D0(v2, v3);
    v4 = *(v0 + 16);
    (*(v0 + 104))(*(v0 + 88), *(v0 + 64));
    v5 = sub_231C8ADDC;
    v6 = v4;
  }

  else
  {
    (*(v0 + 104))(*(v0 + 88), *(v0 + 64));
    sub_231C723D0(v2, v3);
    v5 = sub_231C8AD48;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_231C8AD48()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C8ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_231C8B28C(a3, v25 - v10);
  v12 = sub_231C8BF8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_231C67FE0(v11, &qword_27DD70658, &qword_231C8D5C8);
  }

  else
  {
    sub_231C8BF7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_231C8BF6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231C8BEEC() + 32;
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

uint64_t sub_231C8B0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231C8B120(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_231C8B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70AA8, &qword_231C8ED40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8B1D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_231C67D74;

  return sub_231C8A750(a1, v4, v5, v6);
}

uint64_t sub_231C8B28C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8B2FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231C8B3F4;

  return v6(a1);
}

uint64_t sub_231C8B3F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231C8B4F0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_231C8B510, v1, 0);
}

uint64_t sub_231C8B510()
{
  sub_231C8BAE4(*(v0 + 104) + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator, v0 + 56);
  if (*(v0 + 80))
  {
    sub_231C8BB54((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_231C8B63C;

    return sub_231C72B94(v0 + 16, 0);
  }

  else
  {
    v3 = *(v0 + 96);
    sub_231C70D94(v0 + 56);
    *v3 = xmmword_231C8C920;
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *(v3 + 57) = 0u;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_231C8B63C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_231C8B7E8;
  }

  else
  {
    v4 = sub_231C8B768;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_231C8B768()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  v2 = v0[1];

  return v2();
}

uint64_t sub_231C8B7E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C8B84C()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_request);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PerformMigrationHandler(uint64_t a1)
{
  result = qword_27DD70AB0;
  if (!qword_27DD70AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C8B900(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
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

__n128 sub_231C8B9B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v8 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_request);
  *(v8 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService23PerformMigrationHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C8BA48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C8B4F0(a1);
}

uint64_t sub_231C8BAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70650, &unk_231C8EE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C8BB54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}