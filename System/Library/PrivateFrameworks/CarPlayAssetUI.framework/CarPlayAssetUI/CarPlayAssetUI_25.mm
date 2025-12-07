uint64_t static EditableTheme.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_242E610AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_242C75FB8(v2, v3);
}

uint64_t sub_242E610AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v56 = a2 + 56;
  v48 = result + 56;
  v49 = result;
  v47 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v50 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 56 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v54 = v11[3];
    v15 = v11[4];
    v51 = v2;
    v52 = v11[5];
    v16 = v11[6];
    sub_242F06390();

    v55 = v15;

    v53 = v16;

    v58 = v13;
    v59 = v12;
    sub_242F04DD0();
    v17 = 1 << *(v14 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    v22 = 0;
    if (!v19)
    {
LABEL_18:
      if (v20 <= v22 + 1)
      {
        v24 = v22 + 1;
      }

      else
      {
        v24 = v20;
      }

      v25 = v24 - 1;
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          sub_242C7F83C(__src);
          memcpy(v66, __src, sizeof(v66));
          v19 = 0;
          v30 = v65;
          goto LABEL_26;
        }

        v19 = *(v14 + 64 + 8 * v23);
        ++v22;
        if (v19)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_55:

      return 0;
    }

    while (1)
    {
      v23 = v22;
LABEL_25:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = (*(v14 + 48) + 944 * v27);
      memcpy(__dst, v28, sizeof(__dst));
      v29 = *(*(v14 + 56) + 8 * v27);
      memmove(__src, v28, 0x3B0uLL);
      v65 = v29;
      nullsub_2();
      sub_242C7F7E0(__dst, v62);
      memcpy(v66, __src, sizeof(v66));
      v30 = v65;

      v25 = v23;
LABEL_26:
      memcpy(__src, v66, sizeof(__src));
      v65 = v30;
      if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
      {
        break;
      }

      memcpy(v62, v66, sizeof(v62));
      v60[2] = v67[2];
      v60[3] = v67[3];
      v61 = v68;
      v60[0] = v67[0];
      v60[1] = v67[1];
      ColorSet.hash(into:)(v60);
      memcpy(__dst, v62, sizeof(__dst));
      sub_242C7C7BC(__dst);
      sub_242C7A5F8(v60, v30);

      v21 ^= sub_242F063E0();
      v22 = v25;
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x245D279A0](v21);
    sub_242F04DD0();
    sub_242F04DD0();
    v31 = sub_242F063E0();
    v32 = a2;
    v33 = -1 << *(a2 + 32);
    v34 = v31 & ~v33;
    if (((*(v56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      goto LABEL_55;
    }

    v35 = ~v33;
    while (1)
    {
      v36 = (*(v32 + 48) + 56 * v34);
      v38 = v36[2];
      v37 = v36[3];
      v40 = v36[4];
      v39 = v36[5];
      v41 = v36[6];
      v42 = *v36 == v58 && v36[1] == v59;
      if (!v42 && (sub_242F06110() & 1) == 0)
      {
        goto LABEL_33;
      }

      sub_242C746FC(v38);
      if ((v43 & 1) == 0 || (v37 == v54 ? (v44 = v40 == v55) : (v44 = 0), !v44 && (sub_242F06110() & 1) == 0))
      {

        goto LABEL_33;
      }

      if (v39 == v52 && v41 == v53)
      {
        break;
      }

      v46 = sub_242F06110();

      if (v46)
      {

        goto LABEL_52;
      }

LABEL_33:
      v34 = (v34 + 1) & v35;
      v32 = a2;
      if (((*(v56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_52:

    v3 = v48;
    result = v49;
    v6 = v50;
    v2 = v51;
    v7 = v47;
  }

  while (v50);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v50 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242E61600(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_242E610AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_242C75FB8(v2, v3);
}

void EditableTheme.defaultPalette(for:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v35 = *v2;
  v6 = *(v35 + 16);
  if (v6)
  {
    v32 = v5;
    v33 = v4;
    v34 = a2;
    v7 = sub_242CDD828(v6, 0);
    v8 = sub_242CDFAF8(&v39, v7 + 4, v6, v35);
    v9 = v39;

    a1 = sub_242C6548C(v9);
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_19;
    }

    v4 = v33;
    v3 = v34;
    v5 = v32;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](a1);
  v31 = &v36;
  v10 = sub_242CDAD54(sub_242E62E5C, v30, v7);
  if ((v11 & 1) == 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 < v7[2])
      {
        v14 = &v7[7 * v10];
        v15 = v14[8];
        v34 = v14[7];

        v39 = v35;
        v36 = v4;
        v37 = v5;
        v16 = EditableTheme.palettes(for:)();
        if (!v16)
        {
LABEL_12:

          sub_242CE2D68(&v39);
          v20 = v44;
          v3[4] = v43;
          v3[5] = v20;
          v3[6] = v45[0];
          v13 = *(v45 + 9);
          goto LABEL_13;
        }

        v17 = v16;
        v38[0] = v34;
        v38[1] = v15;
        MEMORY[0x28223BE20](v16);
        v31 = v38;
        v18 = sub_242CDAAFC(sub_242C87674, v30, v17);
        if (v19)
        {

          goto LABEL_12;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          if (v18 < *(v17 + 16))
          {
            v23 = (v17 + (v18 << 7));
            v24 = v23[2];
            v25 = v23[3];
            v26 = v23[5];
            v41 = v23[4];
            v42 = v26;
            v39 = v24;
            v40 = v25;
            v27 = v23[6];
            v28 = v23[7];
            v29 = v23[8];
            *(v45 + 9) = *(v23 + 137);
            v44 = v28;
            v45[0] = v29;
            v43 = v27;
            memmove(v3, v23 + 2, 0x79uLL);
            sub_242C7DAC0(&v39, &v36);

            nullsub_2();

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_242CE2D68(&v39);
  v12 = v44;
  v3[4] = v43;
  v3[5] = v12;
  v3[6] = v45[0];
  v13 = *(v45 + 9);
LABEL_13:
  *(v3 + 105) = v13;
  v21 = v40;
  *v3 = v39;
  v3[1] = v21;
  v22 = v42;
  v3[2] = v41;
  v3[3] = v22;
}

void EditableTheme.defaultWallpaperID(for:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *(*v2 + 16);
  if (v7)
  {
    v17 = a1[1];
    v18 = a2;
    v8 = sub_242CDD828(v7, 0);
    v9 = sub_242CDFAF8(v19, v8 + 4, v7, v6);
    v10 = v19[0];

    a1 = sub_242C6548C(v10);
    if (v9 != v7)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v4 = v17;
    a2 = v18;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v19[0] = v5;
  v19[1] = v4;
  MEMORY[0x28223BE20](a1);
  v16[2] = v19;
  v11 = sub_242CDAD54(sub_242E62E5C, v16, v8);
  if (v12)
  {

    *a2 = 0;
    a2[1] = 0;
    return;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if (v11 >= v8[2])
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = &v8[7 * v11];
  v14 = v13[9];
  v15 = v13[10];

  *a2 = v14;
  a2[1] = v15;
}

void sub_242E61B44(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x745374756F79616CLL && a2 == 0xEC00000073656C79)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242E61BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E62BB4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E61C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E62BB4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void EditableTheme.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3D0, &qword_242F40618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E62BB4(v9, v10, v11);
  sub_242F06480();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3E0, &qword_242F40620);
    sub_242E62C08();
    sub_242F05E00();
    v14 = sub_242C865E0(v16[1], v12, v13);

    (*(v6 + 8))(v8, v5);
    v15 = MEMORY[0x277D84F98];
    *a2 = v14;
    a2[1] = v15;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

void EditableTheme.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA3F8, &qword_242F40628);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E62BB4(v9, v10, v11);
  sub_242F064C0();
  sub_242F05E30();
  KeyPath = swift_getKeyPath();
  v13 = *(v8 + 16);
  if (v13)
  {
    v19 = v2;
    v20 = v5;
    v14 = sub_242CDD828(v13, 0);
    v21 = sub_242CDFAF8(v22, v14 + 4, v13, v8);
    v15 = v22[0];
    v16 = v22[2];

    sub_242C6548C(v15);
    if (v21 != v13)
    {
      __break(1u);
      goto LABEL_8;
    }

    v3 = v19;
    v5 = v20;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v22[0] = v14;
  sub_242CE1B7C(v22, KeyPath);
  v16 = v3;
  if (!v3)
  {

    v17 = sub_242E60430(v22[0], v23);
    (*(v24 + 8))(v7, v5, v17);

    __swift_destroy_boxed_opaque_existential_2Tm(v23);
    return;
  }

LABEL_8:

  __break(1u);
}

void *sub_242E620AC(void *result, uint64_t a2, unint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_242C8745C(a4, v9);
    v8 = sub_242E627BC(v7, a2, a3, a4);

    sub_242CC50B0(a4);
    sub_242CC50B0(a4);
    return v8;
  }

  return result;
}

uint64_t sub_242E62158(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1970, &qword_242F113B0);
  result = sub_242F05A20();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_242F06390();

    sub_242F04DD0();
    result = sub_242F063E0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_242E6237C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1960, &qword_242F113A0);
  v9 = sub_242F05A20();
  v10 = a2;
  v5 = v9;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v40 = a4;
  v41 = v9 + 56;
  result = a4;
  v38 = a1;
  v39 = a2;
  v42 = v5;
  if (v11)
  {
    while (1)
    {
      v51 = v4;
      v14 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
LABEL_15:
      v44 = v12;
      v17 = (*(result + 48) + 56 * (v14 | (v12 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v48 = v17[3];
      v21 = v17[4];
      v46 = v17[5];
      v22 = v17[6];
      sub_242F06390();

      v47 = v21;

      v45 = v22;

      v49 = v19;
      v50 = v18;
      sub_242F04DD0();
      v23 = 1 << *(v20 + 32);
      v24 = v23 < 64 ? ~(-1 << v23) : -1;
      v25 = v24 & *(v20 + 64);
      v26 = (v23 + 63) >> 6;

      v27 = 0;
      v28 = 0;
      if (!v25)
      {
        break;
      }

      while (1)
      {
        v29 = v28;
LABEL_27:
        v32 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v33 = v32 | (v29 << 6);
        v34 = (*(v20 + 48) + 944 * v33);
        memcpy(__dst, v34, sizeof(__dst));
        v35 = *(*(v20 + 56) + 8 * v33);
        memmove(__src, v34, 0x3B0uLL);
        v57 = v35;
        nullsub_2();
        sub_242C7F7E0(__dst, v54);
        memcpy(v58, __src, sizeof(v58));
        v36 = v57;

        v31 = v29;
LABEL_28:
        memcpy(__src, v58, sizeof(__src));
        v57 = v36;
        if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__src) == 1)
        {
          break;
        }

        memcpy(v54, v58, sizeof(v54));
        v52[2] = v59[2];
        v52[3] = v59[3];
        v53 = v60;
        v52[0] = v59[0];
        v52[1] = v59[1];
        ColorSet.hash(into:)(v52);
        memcpy(__dst, v54, sizeof(__dst));
        sub_242C7C7BC(__dst);
        sub_242C7A5F8(v52, v36);

        v5 = v52;
        v27 ^= sub_242F063E0();
        v28 = v31;
        if (!v25)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x245D279A0](v27);
      sub_242F04DD0();
      sub_242F04DD0();
      sub_242F063E0();
      v5 = v42;
      result = sub_242F05960();
      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (*(v42 + 6) + 56 * result);
      *v37 = v50;
      v37[1] = v49;
      v37[2] = v20;
      v37[3] = v48;
      v37[4] = v47;
      v37[5] = v46;
      v37[6] = v45;
      ++*(v42 + 2);
      v4 = v51 - 1;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_40;
      }

      if (v51 == 1)
      {
        goto LABEL_37;
      }

      v10 = v39;
      result = v40;
      a1 = v38;
      v11 = v43;
      v12 = v44;
      if (!v43)
      {
        goto LABEL_10;
      }
    }

LABEL_20:
    if (v26 <= v28 + 1)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        sub_242C7F83C(__src);
        memcpy(v58, __src, sizeof(v58));
        v25 = 0;
        v36 = v57;
        goto LABEL_28;
      }

      v25 = *(v20 + 64 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:

    return v5;
  }

LABEL_10:
  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_37;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v51 = v4;
      v14 = __clz(__rbit64(v16));
      v43 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_242E627BC(unint64_t result, uint64_t a2, unint64_t a3, void *a4)
{
  v21 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 56 * v16);
    result = *v17;
    if (*v17 != *a4 || v17[1] != a4[1])
    {
      result = sub_242F06110();
      if ((result & 1) == 0)
      {
        *(v21 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_19:

          return sub_242E6237C(v21, a2, v6, a3);
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_19;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242E6290C(unint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  for (i = sub_242C8745C(a2, v24); ; i = )
  {
    v22[0] = v22;
    MEMORY[0x28223BE20](i);
    v8 = v22 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v6);
    v23 = 0;
    v9 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v5 = v11 & *(a1 + 56);
    v12 = (v10 + 63) >> 6;
    while (v5)
    {
      v13 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_13:
      v6 = v13 | (v9 << 6);
      v16 = (*(a1 + 48) + 56 * v6);
      if ((*v16 != *a2 || v16[1] != a2[1]) && (sub_242F06110() & 1) == 0)
      {
        *&v8[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
LABEL_21:
          v19 = sub_242E6237C(v8, v22[1], v23, a1);
          goto LABEL_22;
        }
      }
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= v12)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v5 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    sub_242C8745C(a2, v24);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  sub_242C8745C(a2, v24);
  v19 = sub_242E620AC(v21, v5, a1, a2);

  MEMORY[0x245D287D0](v21, -1, -1);
LABEL_22:
  sub_242CC50B0(a2);
  return v19;
}

unint64_t sub_242E62BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA3D8;
  if (!qword_27ECFA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA3D8);
  }

  return result;
}

unint64_t sub_242E62C08()
{
  result = qword_27ECFA3E8;
  if (!qword_27ECFA3E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA3E0, &qword_242F40620);
    sub_242E62C8C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA3E8);
  }

  return result;
}

unint64_t sub_242E62C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA3F0;
  if (!qword_27ECFA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA3F0);
  }

  return result;
}

unint64_t sub_242E62D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA400;
  if (!qword_27ECFA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA400);
  }

  return result;
}

unint64_t sub_242E62D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA408;
  if (!qword_27ECFA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA408);
  }

  return result;
}

unint64_t sub_242E62DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA410;
  if (!qword_27ECFA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA410);
  }

  return result;
}

unint64_t sub_242E62E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA418;
  if (!qword_27ECFA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA418);
  }

  return result;
}

void Display.restoreAssets(from:)(void *a1, __n128 a2)
{
  v4 = v2;
  v5 = a1;
  v6 = *(v2 + 24);
  v7 = v6[2];
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_242D37ED0(v6);
      }

      if (v8 >= v6[2])
      {
        break;
      }

      type metadata accessor for Layout(0);
      Layout.restoreAssets(from:)(v5);
      *(v2 + 24) = v6;
      if (v3)
      {
        return;
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v9 = *(v2 + 448);
    if (v9)
    {
      MEMORY[0x28223BE20](a1);
      v22 = v5;
      v10 = sub_242C85E8C(sub_242E13C08, v21, v9);
      if (v3)
      {
        return;
      }

      v12 = v10;

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    *(v4 + 448) = v11;
    v13 = *(v4 + 456);
    if (v13)
    {
      MEMORY[0x28223BE20](a1);
      v22 = v5;
      v14 = sub_242C85C78(sub_242E13C24, v21, v13);
      if (v3)
      {
        return;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v4 + 456) = v15;
    v16 = Display.vectorFontManager.modify();
    if (*v17 && (VectorFontManager.restoreAssets(from:)(v5), v3))
    {
      (v16)(v23, 1);
    }

    else
    {
      (v16)(v23, 0);
      if ((~*(v4 + 88) & 0xFELL) == 0 || (ImageAsset.restore(from:)(v5), !v3))
      {
        if ((~*(v4 + 160) & 0xFELL) == 0 || (ImageAsset.restore(from:)(v5), !v3))
        {
          if ((~*(v4 + 232) & 0xFELL) == 0 || (ImageAsset.restore(from:)(v5), !v3))
          {
            if ((~*(v4 + 304) & 0xFELL) == 0 || (ImageAsset.restore(from:)(v5), !v3))
            {
              ImageAsset.restore(from:)(v5);
              if (!v3)
              {
                ImageAsset.restore(from:)(v5);
                v18 = v5[3];
                v19 = v5[4];
                __swift_project_boxed_opaque_existential_2Tm(v5, v18);
                v20 = (*(v19 + 16))(v18, v19);

                *(v4 + 568) = v20;
              }
            }
          }
        }
      }
    }
  }
}

void *Display.assets.getter()
{
  v1 = 0;
  v2 = type metadata accessor for Layout(0);
  v102 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v119 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v0 + 24);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  v130[2] = *(v0 + 88);
  v130[3] = v5;
  v131 = *(v0 + 120);
  v130[0] = *(v0 + 56);
  v130[1] = v4;
  v6 = *(v0 + 176);
  v132[2] = *(v0 + 160);
  v132[3] = v6;
  v133 = *(v0 + 192);
  v7 = *(v0 + 144);
  v132[0] = *(v0 + 128);
  v132[1] = v7;
  v8 = *(v0 + 200);
  v135 = *(v0 + 264);
  v9 = *(v0 + 248);
  v134[2] = *(v0 + 232);
  v134[3] = v9;
  v10 = *(v0 + 216);
  v134[0] = v8;
  v134[1] = v10;
  v11 = *(v0 + 344);
  v137 = *(v0 + 336);
  v12 = *(v0 + 320);
  v136[2] = *(v0 + 304);
  v136[3] = v12;
  v13 = *(v0 + 288);
  v136[0] = *(v0 + 272);
  v136[1] = v13;
  v14 = *(v0 + 352);
  v113 = *(v0 + 360);
  v114 = v14;
  v112 = *(v0 + 368);
  v115 = *(v0 + 376);
  v15 = *(v0 + 392);
  v103 = *(v0 + 384);
  v104 = v11;
  v16 = *(v0 + 400);
  v17 = *(v0 + 408);
  v116 = *(v0 + 416);
  v117 = v17;
  v107 = *(v0 + 424);
  v105 = *(v0 + 432);
  v106 = v16;
  v19 = *(v0 + 448);
  v18 = *(v0 + 456);
  v108 = v15;
  v109 = v19;
  v110 = v18;
  v20 = *(v0 + 488);
  v21 = *(v0 + 504);
  v22 = *(v0 + 552);
  v138[3] = *(v0 + 536);
  v138[4] = v22;
  v23 = *(v0 + 520);
  v138[1] = v21;
  v138[2] = v23;
  v138[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA420, &qword_242F40820);
  v24 = swift_allocObject();
  v25 = *(v0 + 72);
  v26 = *(v0 + 104);
  *(v24 + 64) = *(v0 + 88);
  *(v24 + 80) = v26;
  *(v24 + 32) = *(v0 + 56);
  *(v24 + 48) = v25;
  v27 = *(v0 + 128);
  *(v24 + 120) = *(v0 + 144);
  v28 = *(v0 + 176);
  *(v24 + 136) = *(v0 + 160);
  *(v24 + 152) = v28;
  *(v24 + 104) = v27;
  v29 = *(v0 + 200);
  v30 = *(v0 + 248);
  *(v24 + 208) = *(v0 + 232);
  *(v24 + 224) = v30;
  v31 = *(v0 + 216);
  *(v24 + 176) = v29;
  *(v24 + 192) = v31;
  v32 = *(v0 + 272);
  v33 = *(v0 + 304);
  v34 = *(v0 + 320);
  *(v24 + 264) = *(v0 + 288);
  *(v24 + 280) = v33;
  *(v24 + 248) = v32;
  *(v24 + 96) = *(v0 + 120);
  *(v24 + 168) = *(v0 + 192);
  *(v24 + 240) = *(v0 + 264);
  *(v24 + 312) = *(v0 + 336);
  *(v24 + 296) = v34;
  sub_242DD822C(v130, v120);
  sub_242DD822C(v132, v120);
  sub_242DD822C(v134, v120);
  sub_242DD822C(v136, v120);
  v35 = MEMORY[0x277D84F90];
  v118 = 0;
  do
  {
    v36 = *(v24 + v1 + 32);
    v37 = *(v24 + v1 + 40);
    v38 = *(v24 + v1 + 48);
    v39 = *(v24 + v1 + 56);
    v40 = *(v24 + v1 + 64);
    v41 = *(v24 + v1 + 72);
    if ((~*(v24 + v1 + 64) & 0xFELL) != 0)
    {
      *(&v126 + 1) = &type metadata for ImageAsset;
      *&v127 = &protocol witness table for ImageAsset;
      v42 = swift_allocObject();
      *&v125 = v42;
      *(v42 + 16) = v36;
      *(v42 + 24) = v37;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      *(v42 + 48) = v40;
      *(v42 + 56) = v41;
      sub_242C65564(&v125, v120);
    }

    else
    {
      *&v120[2] = v118;
      memset(v120, 0, 32);
    }

    *v121 = v120[0];
    *&v121[2] = v120[1];
    v121[4] = *&v120[2];
    if (*(&v120[1] + 1))
    {
      sub_242C65564(v121, v120);
      sub_242C65564(v120, v121);
      sub_242DD7788(v36, v37, v38, v39, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v122 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_242C82D10(0, v35[2] + 1, 1, v35);
        *&v122 = v35;
      }

      v40 = v35[2];
      v44 = v35[3];
      if (v40 >= v44 >> 1)
      {
        v35 = sub_242C82D10((v44 > 1), v40 + 1, 1, v35);
        *&v122 = v35;
      }

      v45 = v121[3];
      v46 = v121[4];
      v47 = __swift_mutable_project_boxed_opaque_existential_1(v121, v121[3]);
      v48 = MEMORY[0x28223BE20](v47);
      v50 = &v101 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v50, v48);
      sub_242CCEB08(v40, v50, &v122, v45, v46);
      __swift_destroy_boxed_opaque_existential_2Tm(v121);
    }

    else
    {
      sub_242DD7788(v36, v37, v38, v39, v40);
      sub_242C6D138(v121, &qword_27ECEFAD8, &qword_242F092D8);
    }

    v1 += 72;
  }

  while (v1 != 288);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v129 = v35;
  v52 = v109;
  if (v109)
  {
    swift_getKeyPath();

    v53 = v52;
    v54 = v118;
    v55 = sub_242E69F28(v53, sub_242E69F20);
    v118 = v54;

    v40 = &v129;
    sub_242C819FC(v55);
  }

  v56 = v119;
  v57 = v110;
  v58 = v111;
  if (v110)
  {
    v121[0] = MEMORY[0x277D84F90];
    v59 = 1 << *(v110 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v110 + 64);
    v62 = (v59 + 63) >> 6;

    v63 = 0;
    while (v61)
    {
      v64 = v63;
LABEL_24:
      v65 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      memcpy(v120, (*(v57 + 56) + ((v64 << 15) | (v65 << 9))), sizeof(v120));
      v66 = NinePartImage.assets.getter();
      v40 = v121;
      sub_242C819FC(v66);
    }

    while (1)
    {
      v64 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v62)
      {

        sub_242C819FC(v121[0]);
        goto LABEL_27;
      }

      v61 = *(v57 + 64 + 8 * v64);
      v63 = (v63 + 1);
      if (v61)
      {
        v63 = v64;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_27:
  v57 = *(v58 + 16);
  if (v57)
  {
    v67 = v58 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v68 = v129;
    v69 = *(v102 + 72);
    v63 = &qword_242F0A810;
    while (1)
    {
      sub_242E6A22C(v67, v56, type metadata accessor for Layout);
      Layout.assets.getter();
      v40 = *(v70 + 16);
      v71 = v68[2];
      v61 = v40 + v71;
      if (__OFADD__(v71, v40))
      {
        goto LABEL_56;
      }

      v72 = v70;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      if (v73 && v61 <= v68[3] >> 1)
      {
        if (*(v72 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v71 <= v61)
        {
          v74 = v40 + v71;
        }

        else
        {
          v74 = v71;
        }

        v68 = sub_242C82D10(v73, v74, 1, v68);
        if (*(v72 + 16))
        {
LABEL_40:
          v75 = v68[2];
          if ((v68[3] >> 1) - v75 < v40)
          {
            goto LABEL_58;
          }

          v61 = &v68[5 * v75];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0338, &qword_242F0A810);
          swift_arrayInitWithCopy();

          v56 = v119;
          if (v40)
          {
            v76 = v68[2];
            v77 = __OFADD__(v76, v40);
            v78 = v40 + v76;
            if (v77)
            {
              goto LABEL_59;
            }

            v68[2] = v78;
          }

          goto LABEL_30;
        }
      }

      v56 = v119;
      if (v40)
      {
        goto LABEL_57;
      }

LABEL_30:
      sub_242E6A294(v56, type metadata accessor for Layout);
      v67 += v69;
      if (!--v57)
      {
        v129 = v68;
        break;
      }
    }
  }

  if (*&v138[0])
  {
    v121[0] = *&v138[0];
    *&v121[1] = *(v138 + 8);
    *&v121[3] = *(&v138[1] + 8);
    *&v121[5] = *(&v138[2] + 8);
    *&v121[7] = *(&v138[3] + 8);
    sub_242CA321C(v138, v120, &qword_27ECFA428, &qword_242F40828);
    v79 = VectorFontManager.assets.getter();
    sub_242C819FC(v79);
    sub_242C6D138(v138, &qword_27ECFA428, &qword_242F40828);
  }

  v80 = *MEMORY[0x277D74358];
  v81 = *MEMORY[0x277D74418];
  *(&v120[2] + 1) = 0x322D6D6574737953;
  *&v120[3] = 0xE900000000000034;
  LOBYTE(v120[0]) = 0;
  *(&v120[0] + 1) = 100;
  *&v120[1] = v80;
  *(&v120[1] + 1) = v81;
  LOWORD(v120[2]) = 0;
  v82 = v80;
  sub_242DC0268();

  *(&v120[2] + 1) = 0x746C7561666564;
  *&v120[3] = 0xE700000000000000;
  v40 = v129;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v108;
  LOBYTE(v63) = v107;
  v57 = v106;
  if ((v83 & 1) == 0)
  {
LABEL_60:
    v40 = sub_242C82D10(0, v40[2] + 1, 1, v40);
  }

  v85 = v40[2];
  v84 = v40[3];
  if (v85 >= v84 >> 1)
  {
    v40 = sub_242C82D10((v84 > 1), v85 + 1, 1, v40);
  }

  v125 = v120[0];
  v126 = v120[1];
  v127 = v120[2];
  v128 = *&v120[3];
  v121[3] = &type metadata for RasterFont;
  v121[4] = &protocol witness table for RasterFont;
  v86 = swift_allocObject();
  v121[0] = v86;
  v87 = v120[1];
  *(v86 + 16) = v120[0];
  *(v86 + 32) = v87;
  *(v86 + 48) = v120[2];
  *(v86 + 64) = *&v120[3];
  v40[2] = v85 + 1;
  sub_242C65564(v121, &v40[5 * v85 + 4]);
  *v121 = v120[0];
  *&v121[2] = v120[1];
  *&v121[4] = v120[2];
  v121[6] = *&v120[3];
  sub_242C94884(&v125, &v122);
  sub_242C954DC(v121);
  v88 = v104;
  sub_242C7F6C4(v104, v114, v113, v112, v115);
  v90 = v40[2];
  v89 = v40[3];
  v91 = v90 + 1;
  if (v90 >= v89 >> 1)
  {
    v40 = sub_242C82D10((v89 > 1), v90 + 1, 1, v40);
  }

  v123 = &type metadata for ImageAsset;
  v124 = &protocol witness table for ImageAsset;
  v92 = swift_allocObject();
  *&v122 = v92;
  v94 = v113;
  v93 = v114;
  *(v92 + 16) = v88;
  *(v92 + 24) = v93;
  v95 = v112;
  *(v92 + 32) = v94;
  *(v92 + 40) = v95;
  *(v92 + 48) = v115;
  *(v92 + 56) = v103;
  v40[2] = v91;
  sub_242C65564(&v122, &v40[5 * v90 + 4]);
  sub_242C7F6C4(v61, v57, v117, v116, v63);
  v96 = v40[3];
  v97 = v90 + 2;
  if (v97 > (v96 >> 1))
  {
    v40 = sub_242C82D10((v96 > 1), v97, 1, v40);
  }

  v123 = &type metadata for ImageAsset;
  v124 = &protocol witness table for ImageAsset;
  v98 = swift_allocObject();
  *&v122 = v98;
  *(v98 + 16) = v61;
  *(v98 + 24) = v57;
  v99 = v116;
  *(v98 + 32) = v117;
  *(v98 + 40) = v99;
  *(v98 + 48) = v63;
  *(v98 + 56) = v105;
  v40[2] = v97;
  sub_242C65564(&v122, &v40[5 * v91 + 4]);
  return v40;
}

unint64_t Display.DisplayType.defaultID.getter()
{
  v1 = 0x5F72657473756C43;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x445F7265746E6543;
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

uint64_t Display.init(type:manufacturerLogo:appleLogo:allowManufacturerAppIcon:id:size:density:requiresDarkAppearance:reversesDynamicContentDPadScrolling:)@<X0>(unsigned __int8 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X2>, int a4@<W3>, unint64_t *a5@<X4>, int a6@<W5>, int a7@<W6>, unint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v156 = a4;
  v157 = a6;
  v187 = type metadata accessor for Zone(0);
  v162 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = &v140[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v140[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v174 = &v140[-v25];
  v164 = type metadata accessor for Layout(0);
  v171 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v140[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v184 = &v140[-v28];
  MEMORY[0x28223BE20](v29);
  v31 = &v140[-v30];
  v170 = type metadata accessor for LayoutTemplate(0);
  v32 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v173 = &v140[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v183 = &v140[-v35];
  v36 = *a1;
  v37 = *a2;
  v154 = a2[1];
  v155 = v37;
  v153 = *(a2 + 32);
  v38 = *(a2 + 5);
  v39 = a3[1];
  v151 = *a3;
  v152 = v38;
  v150 = v39;
  v40 = a3[2];
  v148 = a3[3];
  v149 = v40;
  v147 = *(a3 + 32);
  v146 = a3[5];
  v42 = *a5;
  v41 = a5[1];
  v145 = sub_242CE7DA0(MEMORY[0x277D84F90]);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  v160 = v36;
  if (v41)
  {
    v143 = v42;
    v144 = v41;
    v44 = v173;
    v43 = v174;
    v46 = v163;
    v45 = v164;
    goto LABEL_11;
  }

  v47 = v36;
  if (v36 > 1)
  {
    v44 = v173;
    v43 = v174;
    v46 = v163;
    v45 = v164;
    if (v47 == 2)
    {
      v143 = 0xD000000000000011;
      v144 = 0x8000000242F5C710;
      goto LABEL_11;
    }

    v144 = 0x8000000242F5C6F0;
    v48 = 0xD000000000000019;
  }

  else
  {
    v44 = v173;
    v43 = v174;
    v46 = v163;
    v45 = v164;
    if (v47)
    {
      v144 = 0xEE0079616C707369;
      v48 = 0x445F7265746E6543;
    }

    else
    {
      v144 = 0xEF79616C70736944;
      v48 = 0x5F72657473756C43;
    }
  }

  v143 = v48;
LABEL_11:
  v203 = 1;
  memset(v201, 0, sizeof(v201));
  v202 = 0;
  sub_242C6D138(v201, &qword_27ECF95B0, &qword_242F3A4A8);
  result = sub_242CE7C6C(MEMORY[0x277D84F90]);
  v50 = v203;
  v51 = v160;
  v159 = a8;
  v158 = a7;
  if (v160 <= 1)
  {
    if (v160)
    {
      if (qword_27ECEF4F0 != -1)
      {
        v122 = result;
        v123 = v203;
        swift_once();
        v50 = v123;
        result = v122;
        v51 = v160;
      }

      i = &qword_27ECF58A0;
      goto LABEL_22;
    }

LABEL_20:
    if (qword_27ECEF4E8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_21;
  }

  if (v160 != 2)
  {
    goto LABEL_20;
  }

  if (qword_27ECEF4F8 != -1)
  {
    v124 = result;
    v125 = v203;
    swift_once();
    v50 = v125;
    result = v124;
    v51 = v160;
  }

  for (i = &qword_27ECF58A8; ; i = &off_27ECF5898)
  {
LABEL_22:
    v53 = *i;
    v169 = *(*i + 16);
    if (!v169)
    {
      v113 = MEMORY[0x277D84F90];
LABEL_44:
      v114 = v157 & 1;
      v115 = v156 & 1;
      v116 = v159;
      *v159 = v143;
      v116[1] = v144;
      *(v116 + 16) = v51;
      v116[3] = v113;
      *(v116 + 4) = a9;
      *(v116 + 5) = a10;
      *(v116 + 6) = a11;
      *(v116 + 7) = 0u;
      *(v116 + 9) = 0u;
      *(v116 + 11) = xmmword_242F385A0;
      *(v116 + 104) = 0;
      *(v116 + 7) = xmmword_242F3A470;
      *(v116 + 8) = 0u;
      *(v116 + 9) = 0u;
      *(v116 + 10) = xmmword_242F385A0;
      *(v116 + 176) = 0;
      *(v116 + 23) = xmmword_242F3A480;
      *(v116 + 27) = 0u;
      *(v116 + 25) = 0u;
      *(v116 + 29) = xmmword_242F385A0;
      *(v116 + 248) = 0;
      *(v116 + 16) = xmmword_242F3A490;
      *(v116 + 17) = 0u;
      *(v116 + 18) = 0u;
      *(v116 + 19) = xmmword_242F385A0;
      *(v116 + 320) = 0;
      strcpy(v116 + 328, "wheelOcclusion");
      *(v116 + 343) = -18;
      v117 = v154;
      *(v116 + 43) = v155;
      *(v116 + 45) = v117;
      *(v116 + 376) = v153;
      v118 = v151;
      v116[48] = v152;
      v116[49] = v118;
      v119 = v149;
      v116[50] = v150;
      v116[51] = v119;
      v116[52] = v148;
      *(v116 + 424) = v147;
      v116[54] = v146;
      *(v116 + 440) = v115;
      *(v116 + 441) = v114;
      *(v116 + 442) = v158;
      *(v116 + 443) = 2;
      v116[56] = v145;
      v116[57] = 0;
      v116[58] = 0;
      v116[59] = 0;
      *(v116 + 480) = v50;
      *(v116 + 61) = 0u;
      *(v116 + 63) = 0u;
      *(v116 + 65) = 0u;
      *(v116 + 67) = 0u;
      v116[69] = 0;
      v116[70] = 1;
      v116[71] = result;
      *(v116 + 36) = xmmword_242F0B4A0;
      return result;
    }

    v141 = v50;
    v142 = result;
    sub_242D7C5C8(&v192);
    v54 = *(v32 + 80);
    v55 = v53;
    v56 = *(v53 + 16);
    v172 = v55;

    if (v56)
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v120 = result;
    v121 = v50;
    swift_once();
    v50 = v121;
    result = v120;
    v51 = v160;
LABEL_21:
    ;
  }

  v167 = v172 + ((v54 + 32) & ~v54);
  v166 = *(v32 + 72);
  v32 = 0;
  v185 = MEMORY[0x277D84F90];
  v161 = v23;
  v168 = v31;
  while (1)
  {
    v182 = v32;
    v57 = v183;
    sub_242E6A22C(v167 + v166 * v32, v183, type metadata accessor for LayoutTemplate);
    sub_242E6A22C(v57, v44, type metadata accessor for LayoutTemplate);
    sub_242F03710();
    if (qword_27ECEF030 != -1)
    {
      swift_once();
    }

    v58 = qword_27ECF2E30;
    sub_242CA321C(v43, v23, &qword_27ECF3028, &qword_242F17A20);
    v59 = &v44[*(v170 + 20)];
    v60 = *v59;
    v61 = v59[1];
    v176 = v58;
    *&v177 = v60;

    *(&v177 + 1) = v61;

    v62 = LayoutTemplate.scaledZones(for:)(a9, a10);
    v63 = v184;
    v64 = &v184[v45[7]];
    *v64 = 0;
    v64[1] = 0;
    v181 = v64;
    v65 = &v63[v45[10]];
    v66 = v197;
    v67 = v199;
    *(v65 + 6) = v198;
    *(v65 + 7) = v67;
    v65[128] = v200;
    v68 = v193;
    v69 = v195;
    *(v65 + 2) = v194;
    *(v65 + 3) = v69;
    *(v65 + 4) = v196;
    *(v65 + 5) = v66;
    *v65 = v192;
    *(v65 + 1) = v68;
    *(v65 + 17) = 2;
    v70 = &v63[v45[12]];
    *(v70 + 41) = 0u;
    *(v70 + 1) = 0u;
    *(v70 + 2) = 0u;
    *v70 = 0u;
    v180 = v70;
    *(v70 + 8) = 2;
    v71 = &v63[v45[13]];
    v72 = MEMORY[0x277D84F90];
    *v71 = MEMORY[0x277D84F90];
    v71[1] = 2;
    v178 = v71;
    v179 = v62;
    v73 = &v63[v45[14]];
    *v73 = v72;
    v73[1] = 2;
    v175 = v73;
    v74 = *(v62 + 16);
    v165 = v74;
    if (v74)
    {
      v75 = v62;
      *&v188[0] = v72;
      sub_242E3BC70(0, v74, 0);
      v72 = *&v188[0];
      v76 = v75 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v77 = *(v162 + 72);
      v78 = v74;
      do
      {
        v79 = v186;
        sub_242E6A22C(v76, v186, type metadata accessor for Zone);
        v80 = &v79[*(v187 + 20)];
        v81 = *v80;
        v82 = v80[1];

        sub_242E6A294(v79, type metadata accessor for Zone);
        *&v188[0] = v72;
        v84 = *(v72 + 16);
        v83 = *(v72 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_242E3BC70((v83 > 1), v84 + 1, 1);
          v72 = *&v188[0];
        }

        *(v72 + 16) = v84 + 1;
        v85 = v72 + 16 * v84;
        *(v85 + 32) = v81;
        *(v85 + 40) = v82;
        v76 += v77;
        --v78;
      }

      while (v78);
      v23 = v161;
      v43 = v174;
      v46 = v163;
      v45 = v164;
    }

    v87 = sub_242C86440(v86);

    v88 = *(v87 + 16);

    v89 = *(v72 + 16);

    if (v88 != v89)
    {
      break;
    }

    sub_242C6D138(v43, &qword_27ECF3028, &qword_242F17A20);
    v44 = v173;
    sub_242E6A294(v173, type metadata accessor for LayoutTemplate);
    v90 = v23;
    v91 = v184;
    sub_242D7C5F8(v23, v184);
    v92 = &v91[v45[5]];
    v93 = *(&v177 + 1);
    *v92 = v177;
    v92[1] = v93;
    *&v91[v45[6]] = v179;
    v91[v45[9]] = 2;
    *&v91[v45[8]] = v176;
    v94 = &v91[v45[11]];
    *v94 = 0u;
    v94[1] = 0u;
    v95 = MEMORY[0x277D84F90];
    *v175 = MEMORY[0x277D84F90];
    v96 = *(v65 + 7);
    v188[6] = *(v65 + 6);
    v188[7] = v96;
    v189 = v65[128];
    v97 = *(v65 + 3);
    v188[2] = *(v65 + 2);
    v188[3] = v97;
    v98 = *(v65 + 5);
    v188[4] = *(v65 + 4);
    v188[5] = v98;
    v99 = *(v65 + 1);
    v188[0] = *v65;
    v188[1] = v99;
    sub_242C6D138(v188, &qword_27ECF4660, &qword_242F263D8);
    v100 = v197;
    v101 = v199;
    *(v65 + 6) = v198;
    *(v65 + 7) = v101;
    v65[128] = v200;
    v102 = v193;
    v103 = v195;
    *(v65 + 2) = v194;
    *(v65 + 3) = v103;
    *(v65 + 4) = v196;
    *(v65 + 5) = v100;
    *v65 = v192;
    *(v65 + 1) = v102;
    v104 = v181;

    *v104 = 0;
    v104[1] = 0;
    v105 = v180;
    v106 = v180[1];
    v190[0] = *v180;
    v190[1] = v106;
    v191[0] = v180[2];
    *(v191 + 9) = *(v180 + 41);
    sub_242C6D138(v190, &qword_27ECF4668, &qword_242F263E0);
    *v105 = 0u;
    v105[1] = 0u;
    v105[2] = 0u;
    *(v105 + 41) = 0u;
    *v178 = v95;
    v31 = v168;
    sub_242CE35C0(v91, v168);
    sub_242E6A22C(v31, v46, type metadata accessor for Layout);
    v107 = v185;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v172;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v107 = sub_242C82F78(0, v107[2] + 1, 1, v107);
    }

    v111 = v107[2];
    v110 = v107[3];
    if (v111 >= v110 >> 1)
    {
      v185 = sub_242C82F78((v110 > 1), v111 + 1, 1, v107);
    }

    else
    {
      v185 = v107;
    }

    v32 = v182 + 1;
    sub_242E6A294(v31, type metadata accessor for Layout);
    sub_242E6A294(v183, type metadata accessor for LayoutTemplate);
    v112 = v185;
    v185[2] = v111 + 1;
    result = sub_242CE35C0(v46, v112 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v111);
    if (v32 == v169)
    {

      v51 = v160;
      result = v142;
      LOBYTE(v50) = v141;
      v113 = v185;
      goto LABEL_44;
    }

    v23 = v90;
    v43 = v174;
    if (v32 >= *(v109 + 16))
    {
      goto LABEL_45;
    }
  }

  *&v188[0] = 0;
  *(&v188[0] + 1) = 0xE000000000000000;
  sub_242F05A80();

  v188[0] = v177;
  MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
  v126 = MEMORY[0x277D84F90];
  if (v165)
  {
    *&v190[0] = MEMORY[0x277D84F90];
    v127 = v165;
    sub_242E3BC70(0, v165, 0);
    v126 = *&v190[0];
    v128 = v179 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v129 = *(v162 + 72);
    do
    {
      v131 = v186;
      sub_242E6A22C(v128, v186, type metadata accessor for Zone);
      v132 = &v131[*(v187 + 20)];
      v134 = *v132;
      v133 = v132[1];

      sub_242E6A294(v131, type metadata accessor for Zone);
      *&v190[0] = v126;
      v136 = *(v126 + 16);
      v135 = *(v126 + 24);
      if (v136 >= v135 >> 1)
      {
        sub_242E3BC70((v135 > 1), v136 + 1, 1);
        v126 = *&v190[0];
      }

      *(v126 + 16) = v136 + 1;
      v130 = v126 + 16 * v136;
      *(v130 + 32) = v134;
      *(v130 + 40) = v133;
      v128 += v129;
      --v127;
    }

    while (v127);
  }

  v137 = MEMORY[0x245D26920](v126, MEMORY[0x277D837D0]);
  v139 = v138;

  MEMORY[0x245D26660](v137, v139);

  result = sub_242F05C60();
  __break(1u);
  return result;
}

CarPlayAssetUI::Display::DisplayType_optional __swiftcall Display.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Display.DisplayType.rawValue.getter()
{
  v1 = 0x72657473756C63;
  v2 = 0x65676E6573736170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6F437265746E6563;
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

uint64_t sub_242E64D24()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E64DFC(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E64EC0(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242E64FA0(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x72657473756C63;
  v4 = 0xE900000000000072;
  v5 = 0x65676E6573736170;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000242F583B0;
  }

  if (*v1)
  {
    v3 = 0x6F437265746E6563;
    v2 = 0xED0000656C6F736ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double Display.id.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void Display.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
}

void sub_242E651E8(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a2 + 32) = *result;
  *(a2 + 40) = v3;
  if (v2 != v4 || v3 != v5)
  {
    sub_242E65344(v4, v5, v2, v3);
  }
}

void Display.size.setter(double a1, double a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v2[4] = a1;
  v2[5] = a2;
  if (v3 != a1 || v4 != a2)
  {
    v6 = v2;
    v7 = *(v2 + 3);
    v8 = v7[2];
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_13:
        v7 = sub_242D37ED0(v7);
      }

      for (i = 0; i != v8; ++i)
      {
        if (i >= v7[2])
        {
          __break(1u);
          goto LABEL_13;
        }

        type metadata accessor for Layout(0);
        Layout.resize(from:to:)(__PAIR128__(*&v4, *&v3), __PAIR128__(*&a2, *&a1));
      }

      *(v6 + 3) = v7;
    }
  }
}

void sub_242E65344(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 24);
  v6 = v5[2];
  if (v6)
  {
    v7 = v4;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v5 = sub_242D37ED0(v5);
    }

    for (i = 0; i != v6; ++i)
    {
      if (i >= v5[2])
      {
        __break(1u);
        goto LABEL_9;
      }

      type metadata accessor for Layout(0);
      Layout.resize(from:to:)(__PAIR128__(*&a2, *&a1), __PAIR128__(*&a4, *&a3));
    }

    *(v7 + 24) = v5;
  }
}

void (*Display.size.modify(void *a1))(double **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2] = v1;
  v4 = *(v1 + 32);
  v3[3] = v4;
  v5 = *(v1 + 40);
  v3[4] = v5;
  *v3 = v4;
  v3[1] = v5;
  return sub_242E654CC;
}

void sub_242E654CC(double **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = *(*a1 + 2);
  v6 = **a1;
  v7 = (*a1)[1];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = v6 == v4;
  if (v7 != v3)
  {
    v8 = 0;
  }

  if (a2)
  {
    if (!v8)
    {
      sub_242E65344(v2[3], v2[4], v6, v7);
    }
  }

  else if (!v8)
  {
    v9 = *(v2 + 2);
    v10 = *(v9 + 24);
    v11 = v10[2];
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_17:
        v10 = sub_242D37ED0(v10);
      }

      for (i = 0; i != v11; ++i)
      {
        if (i >= v10[2])
        {
          __break(1u);
          goto LABEL_17;
        }

        v14 = *(v2 + 3);
        v13 = *(v2 + 4);
        type metadata accessor for Layout(0);
        Layout.resize(from:to:)(__PAIR128__(v13, v14), __PAIR128__(*&v7, *&v6));
      }

      *(v9 + 24) = v10;
    }
  }

  free(v2);
}

uint64_t Display.background.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 104);
  v9 = *(v1 + 88);
  v10 = v3;
  v11 = *(v1 + 120);
  v4 = v11;
  v8[0] = *(v1 + 56);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_242DD822C(v8, v7);
}

__n128 Display.background.setter(__int128 *a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 104);
  v8[2] = *(v1 + 88);
  v8[3] = v4;
  v9 = *(v1 + 120);
  v8[0] = *(v1 + 56);
  v8[1] = v3;
  sub_242DD8264(v8);
  v5 = *a1;
  *(v1 + 72) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 88) = result;
  *(v1 + 104) = v7;
  *(v1 + 120) = *(a1 + 8);
  *(v1 + 56) = v5;
  return result;
}

uint64_t Display.shapeMask.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v9 = *(v1 + 160);
  v10 = v2;
  v11 = *(v1 + 192);
  v3 = v11;
  v4 = *(v1 + 144);
  v8[0] = *(v1 + 128);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242DD822C(v8, v7);
}

__n128 Display.shapeMask.setter(uint64_t a1)
{
  v3 = *(v1 + 176);
  v7[2] = *(v1 + 160);
  v7[3] = v3;
  v8 = *(v1 + 192);
  v4 = *(v1 + 144);
  v7[0] = *(v1 + 128);
  v7[1] = v4;
  sub_242DD8264(v7);
  v5 = *(a1 + 48);
  *(v1 + 160) = *(a1 + 32);
  *(v1 + 176) = v5;
  *(v1 + 192) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = result;
  return result;
}

uint64_t Display.interior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v9 = *(v1 + 232);
  v10 = v3;
  v11 = *(v1 + 264);
  v4 = v11;
  v8[0] = *(v1 + 200);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_242DD822C(v8, v7);
}

__n128 Display.interior.setter(__int128 *a1)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v8[2] = *(v1 + 232);
  v8[3] = v4;
  v9 = *(v1 + 264);
  v8[0] = *(v1 + 200);
  v8[1] = v3;
  sub_242DD8264(v8);
  v5 = *a1;
  *(v1 + 216) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 232) = result;
  *(v1 + 248) = v7;
  *(v1 + 264) = *(a1 + 8);
  *(v1 + 200) = v5;
  return result;
}

uint64_t Display.wheelOcclusion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  v9 = *(v1 + 304);
  v10 = v2;
  v11 = *(v1 + 336);
  v3 = v11;
  v4 = *(v1 + 288);
  v8[0] = *(v1 + 272);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242DD822C(v8, v7);
}

__n128 Display.wheelOcclusion.setter(uint64_t a1)
{
  v3 = *(v1 + 320);
  v7[2] = *(v1 + 304);
  v7[3] = v3;
  v8 = *(v1 + 336);
  v4 = *(v1 + 288);
  v7[0] = *(v1 + 272);
  v7[1] = v4;
  sub_242DD8264(v7);
  v5 = *(a1 + 48);
  *(v1 + 304) = *(a1 + 32);
  *(v1 + 320) = v5;
  *(v1 + 336) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 272) = *a1;
  *(v1 + 288) = result;
  return result;
}

uint64_t Display.manufacturerLogo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  v4 = *(v1 + 360);
  v5 = *(v1 + 368);
  v6 = *(v1 + 384);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 376);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return sub_242C7F6C4(v2, v3, v4, v5, v7);
}

__n128 Display.manufacturerLogo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242C7F724(*(v1 + 344), *(v1 + 352), *(v1 + 360), *(v1 + 368), *(v1 + 376));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 344) = *a1;
  *(v1 + 360) = v6;
  *(v1 + 376) = v3;
  *(v1 + 384) = v4;
  return result;
}

uint64_t Display.appleLogo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 392);
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  v6 = *(v1 + 432);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 424);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return sub_242C7F6C4(v2, v3, v4, v5, v7);
}

__n128 Display.appleLogo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242C7F724(*(v1 + 392), *(v1 + 400), *(v1 + 408), *(v1 + 416), *(v1 + 424));
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 392) = *a1;
  *(v1 + 408) = v6;
  *(v1 + 424) = v3;
  *(v1 + 432) = v4;
  return result;
}

uint64_t Display.iPhoneVideoPosition.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 464) = result;
  *(v3 + 472) = a2;
  *(v3 + 480) = a3 & 1;
  return result;
}

uint64_t Display.vectorFontManager.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 536);
  v8 = *(v1 + 520);
  v9 = v2;
  v10 = *(v1 + 552);
  v3 = *(v1 + 504);
  v7[0] = *(v1 + 488);
  v4 = v7[0];
  v7[1] = v3;
  *(a1 + 32) = v8;
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 552);
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_242CA321C(v7, &v6, &qword_27ECFA428, &qword_242F40828);
}

__n128 Display.vectorFontManager.setter(uint64_t a1)
{
  v8 = *(v1 + 552);
  v3 = *(v1 + 536);
  v7[2] = *(v1 + 520);
  v7[3] = v3;
  v4 = *(v1 + 504);
  v7[0] = *(v1 + 488);
  v7[1] = v4;
  sub_242C6D138(v7, &qword_27ECF95B0, &qword_242F3A4A8);
  v5 = *(a1 + 48);
  *(v1 + 520) = *(a1 + 32);
  *(v1 + 536) = v5;
  *(v1 + 552) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 488) = *a1;
  *(v1 + 504) = result;
  return result;
}

double Display.overrides.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 584);

  return result;
}

void Display.overrides.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 584) = v2;
}

double Display.init(id:type:layouts:size:density:manufacturerLogo:appleLogo:allowManufacturerAppIcon:requiresDarkAppearance:reversesDynamicContentDPadScrolling:localNotifications:shadows:vectorFontManager:sendsButtonPressOnTouchDown:iPhoneVideoPosition:)@<D0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14, __int128 *a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v26 = (a9 + 344);
  v28 = *a1;
  v27 = a1[1];
  v29 = *a2;
  v41 = a4[1];
  v42 = *a4;
  v40 = *(a4 + 32);
  v30 = *a5;
  v38 = a5[1];
  v39 = *(a4 + 5);
  v36 = a5[3];
  v37 = a5[2];
  v35 = *(a5 + 32);
  v34 = a5[5];
  v46 = a15[1];
  v47 = *a15;
  v44 = a15[3];
  v45 = a15[2];
  v43 = *(a15 + 8);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  if (!v27)
  {
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v28 = 0xD000000000000011;
        v27 = 0x8000000242F5C710;
      }

      else
      {
        v27 = 0x8000000242F5C6F0;
        v28 = 0xD000000000000019;
      }
    }

    else if (v29)
    {
      v27 = 0xEE0079616C707369;
      v28 = 0x445F7265746E6543;
    }

    else
    {
      v27 = 0xEF79616C70736944;
      v28 = 0x5F72657473756C43;
    }
  }

  v51 = a19 & 1;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  sub_242C6D138(v49, &qword_27ECF95B0, &qword_242F3A4A8);
  v31 = sub_242CE7C6C(MEMORY[0x277D84F90]);
  v32 = v51;
  *a9 = v28;
  *(a9 + 8) = v27;
  *(a9 + 16) = v29;
  *(a9 + 24) = a3;
  *(a9 + 32) = a10;
  *(a9 + 40) = a11;
  *(a9 + 48) = a12;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = xmmword_242F385A0;
  *(a9 + 104) = 0;
  *(a9 + 112) = xmmword_242F3A470;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = xmmword_242F385A0;
  *(a9 + 176) = 0;
  *(a9 + 184) = xmmword_242F3A480;
  *(a9 + 216) = 0u;
  *(a9 + 200) = 0u;
  *(a9 + 232) = xmmword_242F385A0;
  *(a9 + 248) = 0;
  *(a9 + 256) = xmmword_242F3A490;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 304) = xmmword_242F385A0;
  *(a9 + 320) = 0;
  strcpy((a9 + 328), "wheelOcclusion");
  *(a9 + 343) = -18;
  *v26 = v42;
  v26[1] = v41;
  *(a9 + 376) = v40;
  *(a9 + 384) = v39;
  *(a9 + 392) = v30;
  *(a9 + 400) = v38;
  *(a9 + 408) = v37;
  *(a9 + 416) = v36;
  *(a9 + 424) = v35;
  *(a9 + 432) = v34;
  *(a9 + 440) = a6 & 1;
  *(a9 + 441) = a7 & 1;
  *(a9 + 442) = a8;
  *(a9 + 443) = a16;
  *(a9 + 448) = a13;
  *(a9 + 456) = a14;
  *(a9 + 464) = a17;
  *(a9 + 472) = a18;
  *(a9 + 480) = v32;
  v26[9] = v47;
  v26[10] = v46;
  v26[11] = v45;
  v26[12] = v44;
  *(a9 + 552) = v43;
  *(a9 + 560) = 1;
  *(a9 + 568) = v31;
  *&result = 7;
  *(a9 + 576) = xmmword_242F0B4A0;
  return result;
}

uint64_t Display.addLayout(using:layoutType:layoutStyleID:)(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v4 = v3;
  v115 = a2;
  v119 = a1;
  v120 = type metadata accessor for Zone(0);
  v101 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v110 = type metadata accessor for LayoutTemplate(0);
  MEMORY[0x28223BE20](v110);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Layout(0);
  v118 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v117 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v98 - v19;
  MEMORY[0x28223BE20](v21);
  v116 = &v98 - v22;
  v109 = *v115;
  v23 = *a3;
  v24 = a3[1];
  v114 = v23;
  sub_242E6A22C(v119, v15, type metadata accessor for LayoutTemplate);
  v25 = *(v4 + 32);
  v26 = *(v4 + 40);
  v119 = v4;
  sub_242D7C5C8(&v125);
  v113 = v24;

  sub_242F03710();
  if (qword_27ECEF030 != -1)
  {
    swift_once();
  }

  v27 = qword_27ECF2E30;
  v111 = v13;
  v112 = v10;
  sub_242CA321C(v13, v10, &qword_27ECF3028, &qword_242F17A20);
  v28 = &v15[*(v110 + 20)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v103 = v27;
  *&v104 = v29;

  *(&v104 + 1) = v30;

  v31 = LayoutTemplate.scaledZones(for:)(v25, v26);
  v32 = &v20[v16[7]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v20[v16[10]];
  v34 = v130;
  v35 = v132;
  *(v33 + 6) = v131;
  *(v33 + 7) = v35;
  v33[128] = v133;
  v36 = v126;
  v37 = v128;
  *(v33 + 2) = v127;
  *(v33 + 3) = v37;
  *(v33 + 4) = v129;
  *(v33 + 5) = v34;
  *v33 = v125;
  *(v33 + 1) = v36;
  v107 = v33;
  *(v33 + 17) = 2;
  v38 = &v20[v16[12]];
  *(v38 + 41) = 0u;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  v108 = v38;
  *(v38 + 8) = 2;
  v39 = &v20[v16[13]];
  v40 = MEMORY[0x277D84F90];
  *v39 = MEMORY[0x277D84F90];
  *(v39 + 1) = 2;
  v105 = v39;
  v106 = v31;
  v110 = v16;
  v41 = v16[14];
  v115 = v20;
  v42 = &v20[v41];
  *v42 = v40;
  *(v42 + 1) = 2;
  v102 = v42;
  v43 = *(v31 + 16);
  v44 = v15;
  v98 = v43;
  if (v43)
  {
    v45 = v31;
    v99 = v32;
    v100 = v15;
    *&v121[0] = v40;
    sub_242E3BC70(0, v43, 0);
    v46 = *&v121[0];
    v47 = v45 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v48 = *(v101 + 72);
    do
    {
      sub_242E6A22C(v47, v7, type metadata accessor for Zone);
      v49 = &v7[*(v120 + 20)];
      v50 = *v49;
      v51 = *(v49 + 1);

      sub_242E6A294(v7, type metadata accessor for Zone);
      *&v121[0] = v46;
      v53 = *(v46 + 16);
      v52 = *(v46 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_242E3BC70((v52 > 1), v53 + 1, 1);
        v46 = *&v121[0];
      }

      *(v46 + 16) = v53 + 1;
      v54 = v46 + 16 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v51;
      v47 += v48;
      --v43;
    }

    while (v43);
    v56 = v118;
    v55 = v119;
    v32 = v99;
    v44 = v100;
  }

  else
  {
    v46 = v40;
    v56 = v118;
    v55 = v119;
  }

  v58 = sub_242C86440(v57);

  v59 = *(v58 + 16);

  v60 = *(v46 + 16);

  if (v59 == v60)
  {
    sub_242C6D138(v111, &qword_27ECF3028, &qword_242F17A20);
    sub_242E6A294(v44, type metadata accessor for LayoutTemplate);
    v61 = v115;
    sub_242D7C5F8(v112, v115);
    v62 = v110;
    v63 = &v61[*(v110 + 20)];
    v64 = *(&v104 + 1);
    *v63 = v104;
    *(v63 + 1) = v64;
    v65 = v107;
    *&v61[v62[6]] = v106;
    v61[v62[9]] = v109;
    *&v61[v62[8]] = v103;
    v66 = &v61[v62[11]];
    *v66 = 0u;
    *(v66 + 1) = 0u;
    v67 = MEMORY[0x277D84F90];
    *v102 = MEMORY[0x277D84F90];
    v68 = *(v65 + 7);
    v121[6] = *(v65 + 6);
    v121[7] = v68;
    v122 = v65[128];
    v69 = *(v65 + 3);
    v121[2] = *(v65 + 2);
    v121[3] = v69;
    v70 = *(v65 + 5);
    v121[4] = *(v65 + 4);
    v121[5] = v70;
    v71 = *(v65 + 1);
    v121[0] = *v65;
    v121[1] = v71;
    sub_242C6D138(v121, &qword_27ECF4660, &qword_242F263D8);
    v72 = v130;
    v73 = v132;
    *(v65 + 6) = v131;
    *(v65 + 7) = v73;
    v65[128] = v133;
    v74 = v126;
    v75 = v128;
    *(v65 + 2) = v127;
    *(v65 + 3) = v75;
    *(v65 + 4) = v129;
    *(v65 + 5) = v72;
    *v65 = v125;
    *(v65 + 1) = v74;

    v76 = v113;
    *v32 = v114;
    *(v32 + 1) = v76;
    v77 = v108;
    v78 = *(v108 + 1);
    v123[0] = *v108;
    v123[1] = v78;
    v124[0] = *(v108 + 2);
    *(v124 + 9) = *(v108 + 41);
    sub_242C6D138(v123, &qword_27ECF4668, &qword_242F263E0);
    *v77 = 0u;
    *(v77 + 1) = 0u;
    *(v77 + 2) = 0u;
    *(v77 + 41) = 0u;
    *v105 = v67;
    v79 = v116;
    sub_242CE35C0(v61, v116);
    v80 = v117;
    sub_242E6A22C(v79, v117, type metadata accessor for Layout);
    v81 = *(v55 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_242C82F78(0, v81[2] + 1, 1, v81);
    }

    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_242C82F78((v82 > 1), v83 + 1, 1, v81);
    }

    sub_242E6A294(v79, type metadata accessor for Layout);
    v81[2] = v83 + 1;
    result = sub_242CE35C0(v80, v81 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v83);
    *(v55 + 24) = v81;
  }

  else
  {
    *&v121[0] = 0;
    *(&v121[0] + 1) = 0xE000000000000000;
    sub_242F05A80();

    v121[0] = v104;
    MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
    v85 = MEMORY[0x277D84F90];
    if (v98)
    {
      *&v123[0] = MEMORY[0x277D84F90];
      v86 = v98;
      sub_242E3BC70(0, v98, 0);
      v85 = *&v123[0];
      v87 = v106 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
      v88 = *(v101 + 72);
      do
      {
        sub_242E6A22C(v87, v7, type metadata accessor for Zone);
        v90 = &v7[*(v120 + 20)];
        v91 = *v90;
        v92 = *(v90 + 1);

        sub_242E6A294(v7, type metadata accessor for Zone);
        *&v123[0] = v85;
        v94 = *(v85 + 16);
        v93 = *(v85 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_242E3BC70((v93 > 1), v94 + 1, 1);
          v85 = *&v123[0];
        }

        *(v85 + 16) = v94 + 1;
        v89 = v85 + 16 * v94;
        *(v89 + 32) = v91;
        *(v89 + 40) = v92;
        v87 += v88;
        --v86;
      }

      while (v86);
    }

    v95 = MEMORY[0x245D26920](v85, MEMORY[0x277D837D0]);
    v97 = v96;

    MEMORY[0x245D26660](v95, v97);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

void Display.getLayouts(layoutType:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for Layout(0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = *(v1 + 24);
  v24 = *(v8 + 16);
  if (v24)
  {
    v9 = 0;
    v10 = *a1;
    v11 = MEMORY[0x277D84F90];
    do
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v12 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v13 = *(v25 + 72);
      sub_242E6A22C(v8 + v12 + v13 * v9, v7, type metadata accessor for Layout);
      if (v7[*(v26 + 36)] > 1u)
      {
        v14 = 0xE700000000000000;
        if (v7[*(v26 + 36)] == 2)
        {
          v18 = 0x72616D697270;
        }

        else
        {
          v18 = 0x616C7265766FLL;
        }

        v15 = v18 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
        if (v10 > 1)
        {
LABEL_9:
          if (v10 == 2)
          {
            v16 = 0x7972616D697270;
          }

          else
          {
            v16 = 0x79616C7265766FLL;
          }

          v17 = 0xE700000000000000;
          if (v15 != v16)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v7[*(v26 + 36)])
        {
          v15 = 0x79616C7265646E75;
          if (v10 > 1)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = 0x74756F68636E7570;
          if (v10 > 1)
          {
            goto LABEL_9;
          }
        }
      }

      v17 = 0xE800000000000000;
      if (v10)
      {
        if (v15 != 0x79616C7265646E75)
        {
          goto LABEL_26;
        }
      }

      else if (v15 != 0x74756F68636E7570)
      {
        goto LABEL_26;
      }

LABEL_24:
      if (v14 == v17)
      {

LABEL_27:
        sub_242CE35C0(v7, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BE70(0, *(v11 + 16) + 1, 1);
          v11 = v28;
        }

        v22 = *(v11 + 16);
        v21 = *(v11 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_242E3BE70((v21 > 1), v22 + 1, 1);
          v11 = v28;
        }

        *(v11 + 16) = v22 + 1;
        sub_242CE35C0(v27, v11 + v12 + v22 * v13);
        goto LABEL_4;
      }

LABEL_26:
      v19 = sub_242F06110();

      if (v19)
      {
        goto LABEL_27;
      }

      sub_242E6A294(v7, type metadata accessor for Layout);
LABEL_4:
      ++v9;
    }

    while (v24 != v9);
  }
}

unint64_t sub_242E66E24(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x7374756F79616CLL;
      break;
    case 3:
      result = 1702521203;
      break;
    case 4:
      result = 0x797469736E6564;
      break;
    case 5:
      result = 0x756F72676B636162;
      break;
    case 6:
      result = 0x73614D6570616873;
      break;
    case 7:
      result = 0x726F697265746E69;
      break;
    case 8:
      result = 0x63634F6C65656877;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x676F4C656C707061;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x73776F64616873;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x74736566696E616DLL;
      break;
    case 20:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242E6709C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E6AFBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E670D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E6A2F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E6710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E6A2F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Display.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA430, &qword_242F40860);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v6 = v1[1];
  v82 = *v1;
  LODWORD(v81) = *(v1 + 16);
  v80 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 9);
  v11 = *(v1 + 13);
  v130 = *(v1 + 11);
  v131 = v11;
  v132 = v1[15];
  v128 = *(v1 + 7);
  v129 = v10;
  v12 = *(v1 + 11);
  v135 = *(v1 + 10);
  v136 = v12;
  v137 = v1[24];
  v13 = *(v1 + 9);
  v133 = *(v1 + 8);
  v134 = v13;
  v14 = *(v1 + 27);
  v15 = *(v1 + 31);
  v140 = *(v1 + 29);
  v141 = v15;
  v142 = v1[33];
  v138 = *(v1 + 25);
  v139 = v14;
  v16 = v1[43];
  v147 = v1[42];
  v17 = *(v1 + 20);
  v145 = *(v1 + 19);
  v146 = v17;
  v18 = *(v1 + 18);
  v143 = *(v1 + 17);
  v144 = v18;
  v19 = v1[45];
  v78 = v1[44];
  v79 = v16;
  v77 = v19;
  v76 = v1[46];
  v75 = *(v1 + 376);
  v20 = v1[48];
  v21 = v1[49];
  v73 = v1[50];
  v74 = v20;
  v22 = v1[51];
  v71 = v1[52];
  v72 = v22;
  v70 = *(v1 + 424);
  v23 = v1[54];
  v68 = v21;
  v69 = v23;
  LODWORD(v22) = *(v1 + 440);
  v66 = *(v1 + 441);
  v67 = v22;
  LODWORD(v22) = *(v1 + 442);
  v64 = *(v1 + 443);
  v65 = v22;
  v24 = v1[56];
  v62 = v1[57];
  v63 = v24;
  v25 = v1[58];
  v58 = v1[59];
  v59 = v25;
  v57 = *(v1 + 480);
  v26 = *(v1 + 67);
  v150 = *(v1 + 65);
  v151 = v26;
  v152 = v1[69];
  v27 = *(v1 + 63);
  v148 = *(v1 + 61);
  v149 = v27;
  v28 = v1[71];
  v60 = v1[70];
  v61 = v28;
  v29 = v1[72];
  v30 = v1[73];
  v31 = a1[3];
  v32 = a1;
  v33 = v5;
  v34 = __swift_project_boxed_opaque_existential_2Tm(v32, v31);
  sub_242E6A2F4(v34, v35, v36);

  sub_242F064C0();
  *&v86 = v82;
  *(&v86 + 1) = v6;
  v37 = v3;
  LOBYTE(v123) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5DD0, &qword_242F2F608);
  sub_242E6A628(&qword_27ECFA440, &protocol conformance descriptor for <> TaggedValue<A, B>);
  v38 = v83;
  sub_242F05F20();
  if (v38)
  {

    return (*(v84 + 8))(v33, v3);
  }

  else
  {
    v41 = v79;
    v40 = v80;
    v82 = v29;
    v83 = v30;
    v42 = v84;

    LOBYTE(v86) = v81;
    LOBYTE(v123) = 1;
    sub_242E6A348(v43, v44, v45);
    sub_242F05F20();
    *&v86 = v40;
    LOBYTE(v123) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA450, &qword_242F40868);
    sub_242E6A6EC(&qword_27ECFA458, &qword_27ECFA460, &protocol conformance descriptor for Layout, MEMORY[0x277D83948]);
    sub_242F05F20();
    *&v86 = v7;
    *(&v86 + 1) = v8;
    LOBYTE(v123) = 3;
    type metadata accessor for CGSize(0);
    sub_242E6A948(&qword_27ECF58C8, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
    v46 = sub_242F05F20();
    *&v86 = v9;
    LOBYTE(v123) = 4;
    sub_242C7DB7C(v46, v47, v48);
    sub_242F05F20();
    v125 = v130;
    v126 = v131;
    v127 = v132;
    v123 = v128;
    v124 = v129;
    v122 = 5;
    v49 = sub_242DD822C(&v128, &v86);
    v81 = sub_242E26DBC(v49, v50, v51);
    sub_242F05F20();
    v120[2] = v125;
    v120[3] = v126;
    v121 = v127;
    v120[0] = v123;
    v120[1] = v124;
    sub_242DD8264(v120);
    v117 = v135;
    v118 = v136;
    v119 = v137;
    v115 = v133;
    v116 = v134;
    v114 = 6;
    sub_242DD822C(&v133, &v86);
    sub_242F05F20();
    v112[2] = v117;
    v112[3] = v118;
    v113 = v119;
    v112[0] = v115;
    v112[1] = v116;
    sub_242DD8264(v112);
    v109 = v140;
    v110 = v141;
    v111 = v142;
    v107 = v138;
    v108 = v139;
    v106 = 7;
    sub_242DD822C(&v138, &v86);
    sub_242F05F20();
    v104[2] = v109;
    v104[3] = v110;
    v105 = v111;
    v104[0] = v107;
    v104[1] = v108;
    sub_242DD8264(v104);
    v101 = v145;
    v102 = v146;
    v103 = v147;
    v99 = v143;
    v100 = v144;
    v98 = 8;
    sub_242DD822C(&v143, &v86);
    sub_242F05F20();
    v96[1] = v100;
    v96[2] = v101;
    v96[3] = v102;
    v97 = v103;
    v96[0] = v99;
    sub_242DD8264(v96);
    *&v86 = v41;
    *(&v86 + 1) = v78;
    *&v87 = v77;
    *(&v87 + 1) = v76;
    LOBYTE(v88) = v75;
    *(&v88 + 1) = v74;
    LOBYTE(v93) = 9;
    v52 = sub_242C7F6C4(v41, v78, v77, v76, v75);
    sub_242C8B8E8(v52, v53, v54);
    sub_242F05F20();
    sub_242C7F724(v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
    *&v86 = v68;
    *(&v86 + 1) = v73;
    *&v87 = v72;
    *(&v87 + 1) = v71;
    LOBYTE(v88) = v70;
    *(&v88 + 1) = v69;
    LOBYTE(v93) = 10;
    sub_242C7F6C4(v68, v73, v72, v71, v70);
    sub_242F05F20();
    sub_242C7F724(v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
    LOBYTE(v86) = v67;
    LOBYTE(v93) = 11;
    sub_242F05F20();
    LOBYTE(v86) = 12;
    sub_242F05ED0();
    LOBYTE(v86) = 13;
    sub_242F05E60();
    LOBYTE(v86) = 14;
    sub_242F05E60();
    *&v86 = v63;
    LOBYTE(v93) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA468, &qword_242F40870);
    sub_242E6A39C();
    sub_242F05EB0();
    *&v86 = v62;
    LOBYTE(v93) = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA480, &qword_242F40878);
    sub_242E6A47C();
    sub_242F05EB0();
    v93 = v59;
    v94 = v58;
    v95 = v57;
    v92 = 17;
    type metadata accessor for CGPoint(0);
    sub_242E6A948(&qword_27ECF5688, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    sub_242F05EB0();
    v86 = v148;
    v87 = v149;
    v88 = v150;
    v89 = v151;
    v90 = v152;
    v91 = v60;
    v85 = 18;
    v55 = byte_27ECF3A00;
    if ((qword_242F41030[byte_27ECF3A00] | v60) != 0xFFFFFFFFFFFFFFFFLL && v86)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95B0, &qword_242F3A4A8);
      sub_242E6A990(&qword_27ECFA498, sub_242E6A55C, MEMORY[0x277D84F40]);
      sub_242F05F20();
      v55 = byte_27ECF3A00;
    }

    *&v86 = v61;
    *(&v86 + 1) = v82;
    v85 = 19;
    if ((qword_242F41030[v55] | v82) != 0xFFFFFFFFFFFFFFFFLL)
    {
      if (v61)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA4A8, &qword_242F40880);
        sub_242E6A5B0(&qword_27ECFA4B0, sub_242DC3CF8, MEMORY[0x277D84F40]);
        sub_242F05F20();
      }
    }

    *&v86 = v83;
    v85 = 20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA4B8, &qword_242F40888);
    sub_242C7E000(&qword_27ECFA4C0, &qword_27ECFA4B8, &qword_242F40888, &protocol conformance descriptor for Overrides<A>);
    sub_242F05EB0();

    return (*(v42 + 8))(v33, v37);
  }
}

void Display.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA4C8, &qword_242F40890);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  v9 = a1[3];
  v133 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E6A2F4(v10, v11, v12);
  sub_242F06480();
  if (!v2)
  {
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5DD0, &qword_242F2F608);
    LOBYTE(v134[0]) = 0;
    sub_242E6A628(&qword_27ECFA4D0, &protocol conformance descriptor for <> TaggedValue<A, B>);
    v14 = sub_242F05E00();
    v132 = *(&v135 + 1);
    v31 = v135;
    LOBYTE(v134[0]) = 1;
    sub_242E6A698(v14, v32, v33);
    sub_242F05E00();
    v34 = v135;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA450, &qword_242F40868);
    LOBYTE(v134[0]) = 2;
    sub_242E6A6EC(&qword_27ECFA4E0, &qword_27ECFA4E8, &protocol conformance descriptor for Layout, MEMORY[0x277D83978]);
    sub_242F05E00();
    v106 = v34;
    v45 = v135;
    type metadata accessor for CGSize(0);
    LOBYTE(v134[0]) = 3;
    sub_242E6A948(&qword_27ECF58D8, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    v46 = sub_242F05E00();
    v80 = v45;
    v47 = v135;
    LOBYTE(v134[0]) = 4;
    sub_242C7DBD0(v46, v48, v49);
    v50 = sub_242F05E00();
    v51 = v135;
    v270 = 5;
    v54 = sub_242E26D64(v50, v52, v53);
    sub_242F05E00();
    v93 = v277;
    v94 = *v278;
    v95 = *&v278[16];
    v90 = v279;
    v96 = v280;
    v97 = v281;
    *v269 = *v282;
    *&v269[3] = *&v282[3];
    v91 = v284;
    v92 = v283;
    v271 = 0u;
    v272 = 0u;
    *&v131[8] = xmmword_242F385A0;
    v273 = xmmword_242F385A0;
    v274 = 0;
    *v275 = v292[0];
    *&v275[3] = *(v292 + 3);
    v276 = xmmword_242F3A470;
    sub_242DD8264(&v271);
    v292[0] = *v269;
    *(v292 + 3) = *&v269[3];
    v259 = 6;
    *v131 = v54;
    sub_242F05E00();
    v119 = v260;
    v122 = v261;
    v124 = v262;
    v84 = v263;
    v125 = v264;
    v126 = v265;
    v253[0] = *v266;
    *(v253 + 3) = *&v266[3];
    v88 = v268;
    v89 = v267;
    memset(v254, 0, sizeof(v254));
    v255 = *&v131[8];
    v256 = 0;
    *v257 = v291[0];
    *&v257[3] = *(v291 + 3);
    v258 = xmmword_242F3A480;
    sub_242DD8264(v254);
    v291[0] = v253[0];
    *(v291 + 3) = *(v253 + 3);
    v242 = 7;
    sub_242F05E00();
    v112 = v243;
    v114 = v244;
    v116 = v245;
    v118 = v246;
    v83 = v247;
    v121 = v248;
    v123 = v249;
    v236[0] = *v250;
    *(v236 + 3) = *&v250[3];
    v86 = v252;
    v87 = v251;
    memset(v237, 0, sizeof(v237));
    v238 = *&v131[8];
    v239 = 0;
    *v240 = v290[0];
    *&v240[3] = *(v290 + 3);
    v241 = xmmword_242F3A490;
    sub_242DD8264(v237);
    v290[0] = v236[0];
    *(v290 + 3) = *(v236 + 3);
    v226 = 8;
    sub_242F05E00();
    v111 = v227;
    v113 = v228;
    v115 = v229;
    v85 = v230;
    v117 = v231;
    v120 = v232;
    v220[0] = *v233;
    *(v220 + 3) = *&v233[3];
    v109 = v235;
    v110 = v234;
    memset(v221, 0, sizeof(v221));
    v222 = *&v131[8];
    v223 = 0;
    *v224 = v289[0];
    *&v224[3] = *(v289 + 3);
    v225 = xmmword_242F40810;
    v55 = sub_242DD8264(v221);
    v289[0] = v220[0];
    *(v289 + 3) = *(v220 + 3);
    LOBYTE(v134[0]) = 9;
    sub_242C8BA70(v55, v56, v57);
    sub_242F05E00();
    v101 = v135;
    v102 = v136;
    v103 = v137;
    v105 = *(&v137 + 1);
    LOBYTE(v134[0]) = 10;
    sub_242F05E00();
    v98 = v135;
    v99 = v136;
    v100 = v137;
    v104 = *(&v137 + 1);
    LOBYTE(v135) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400, &qword_242F503D0);
    sub_242C7E000(&qword_27ECF1408, &qword_27ECF1400, &qword_242F503D0, &protocol conformance descriptor for DecodableDefault<A>);
    sub_242F05D90();
    LODWORD(v79) = LOBYTE(v134[0]);
    LOBYTE(v135) = 12;
    v78 = sub_242F05DB0();
    LOBYTE(v135) = 13;
    v77 = sub_242F05D40();
    LOBYTE(v135) = 14;
    v58 = sub_242F05D40();
    v127 = 0;
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA468, &qword_242F40870);
    LOBYTE(v134[0]) = 15;
    sub_242E6A788();
    v60 = v127;
    sub_242F05D90();
    v127 = v60;
    if (v60)
    {
      (*(v13 + 8))(v8, v5);
      __swift_destroy_boxed_opaque_existential_2Tm(v133);
      v81 = 0;
      v82 = 0;
      v128 = 0uLL;
      v129 = 0uLL;
      v130 = 0uLL;
      *v131 = 0;
      *&v131[8] = 0;
      v107 = 0;
      v108 = 0;
    }

    else
    {
      v108 = v135;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA480, &qword_242F40878);
      LOBYTE(v134[0]) = 16;
      sub_242E6A868();
      v62 = v127;
      sub_242F05D90();
      v127 = v62;
      if (v62)
      {
        (*(v13 + 8))(v8, v5);
        __swift_destroy_boxed_opaque_existential_2Tm(v133);
        v81 = 0;
        v82 = 0;
        v128 = 0uLL;
        v129 = 0uLL;
        v130 = 0uLL;
        *v131 = 0;
        *&v131[8] = 0;
        v107 = 0;
      }

      else
      {
        v107 = v135;
        type metadata accessor for CGPoint(0);
        LOBYTE(v134[0]) = 17;
        sub_242E6A948(&qword_27ECF56C8, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
        v63 = v127;
        sub_242F05D90();
        v127 = v63;
        if (!v63)
        {
          v75 = *(&v135 + 1);
          v76 = v135;
          v286 = v136;
          v219 = 18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95B0, &qword_242F3A4A8);
          sub_242E6A990(&qword_27ECFA510, sub_242E6AA08, MEMORY[0x277D84F58]);
          v64 = v127;
          sub_242F05D90();
          v127 = v64;
          if (v64)
          {
            (*(v13 + 8))(v8, v5);
            LODWORD(v82) = 1;
            LODWORD(v105) = 1;
            v106 = 1;
            __swift_destroy_boxed_opaque_existential_2Tm(v133);

            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v132 = 0;
            *&v131[8] = 0;
            *v131 = 0;
            v130 = 0uLL;
            v129 = 0uLL;
            v128 = 0uLL;
            v133 = 0;
            v104 = 1;
            v20 = v97;
            v18 = v95;
            v19 = v96;
            v17 = *(&v94 + 1);
            v16 = v94;
            v26 = v92;
            v15 = v93;
            v27 = v90;
            v25 = v91;
            v23 = v88;
            v24 = v89;
            v21 = v86;
            v22 = v87;
            v28 = v84;
            v30 = v85;
            v29 = v83;
            if (!v82)
            {
              goto LABEL_4;
            }

            goto LABEL_10;
          }

          *&v128 = v214;
          if (v214 == 1)
          {
            v137 = v216;
            v138 = v217;
            *&v139 = v218;
            v136 = v215;
            v135 = v214;
            sub_242C6D138(&v135, &qword_27ECFA520, &qword_242F40898);
            v128 = 0uLL;
            v129 = 0uLL;
            v130 = 0uLL;
            *v131 = 0;
            *&v131[8] = 0;
            v82 = 0;
          }

          else
          {
            *(&v128 + 1) = *(&v214 + 1);
            v129 = v215;
            v130 = v216;
            *v131 = v217;
            v82 = v218;
          }

          v211 = 0u;
          v210 = 0u;
          v209 = 0u;
          v208 = 0u;
          v212 = 0;
          v213 = 1;
          sub_242C6D138(&v208, &qword_27ECFA428, &qword_242F40828);
          LOBYTE(v134[0]) = 19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA4A8, &qword_242F40880);
          sub_242E6A5B0(&qword_27ECFA528, sub_242E1435C, MEMORY[0x277D84F58]);
          v65 = v127;
          sub_242F05D90();
          v127 = v65;
          if (v65)
          {
            (*(v13 + 8))(v8, v5);
            __swift_destroy_boxed_opaque_existential_2Tm(v133);
            v81 = 0;
          }

          else
          {
            v66 = v135;
            if (v135 == 1)
            {
              v66 = 0;
            }

            v81 = v66;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA4B8, &qword_242F40888);
            v206 = 20;
            sub_242C7E000(&qword_27ECFA530, &qword_27ECFA4B8, &qword_242F40888, &protocol conformance descriptor for Overrides<A>);
            v67 = v127;
            sub_242F05D90();
            v127 = v67;
            if (!v67)
            {
              v74 = v79 & 1;
              v78 &= 1u;
              (*(v13 + 8))(v8, v5);
              v79 = v207;

              *(&v134[11] + 1) = v291[0];
              HIDWORD(v134[15]) = *(v290 + 3);
              *(&v134[15] + 9) = v290[0];
              *(&v134[20] + 1) = v289[0];
              *(&v134[23] + 9) = *v288;
              *(&v134[26] + 9) = *v287;
              *&v134[0] = v31;
              *(&v134[0] + 1) = v132;
              LOBYTE(v134[1]) = v106;
              *(&v134[1] + 1) = v293[0];
              DWORD1(v134[1]) = *(v293 + 3);
              *(&v134[1] + 1) = v80;
              v134[2] = v47;
              *&v134[3] = v51;
              *(&v134[3] + 1) = v93;
              v134[4] = v94;
              *&v134[5] = v95;
              *(&v134[5] + 1) = v90;
              *&v134[6] = v96;
              BYTE8(v134[6]) = v97;
              HIDWORD(v134[6]) = *(v292 + 3);
              *(&v134[6] + 9) = v292[0];
              *&v134[7] = v92;
              *(&v134[7] + 1) = v91;
              *&v134[8] = v119;
              *(&v134[8] + 1) = v122;
              v134[9] = v124;
              *&v134[10] = v84;
              *(&v134[10] + 1) = v125;
              LOBYTE(v134[11]) = v126;
              DWORD1(v134[11]) = *(v291 + 3);
              *(&v134[11] + 1) = v89;
              *&v134[12] = v88;
              *(&v134[12] + 1) = v112;
              *&v134[13] = v114;
              *(&v134[13] + 1) = v116;
              *&v134[14] = v118;
              *(&v134[14] + 1) = v83;
              *&v134[15] = v121;
              BYTE8(v134[15]) = v123;
              *&v134[16] = v87;
              *(&v134[16] + 1) = v86;
              v134[17] = v111;
              *&v134[18] = v113;
              *(&v134[18] + 1) = v115;
              *&v134[19] = v85;
              *(&v134[19] + 1) = v117;
              LOBYTE(v134[20]) = v120;
              DWORD1(v134[20]) = *(v289 + 3);
              v68 = v109;
              *(&v134[20] + 1) = v110;
              *&v134[21] = v109;
              v69 = *(&v101 + 1);
              *(&v134[21] + 8) = v101;
              *(&v134[22] + 8) = v102;
              v70 = v103;
              BYTE8(v134[23]) = v103;
              HIDWORD(v134[23]) = *&v288[3];
              v71 = v105;
              *&v134[24] = v105;
              *(&v134[24] + 8) = v98;
              *(&v134[25] + 8) = v99;
              BYTE8(v134[26]) = v100;
              HIDWORD(v134[26]) = *&v287[3];
              *&v134[27] = v104;
              BYTE8(v134[27]) = v74;
              BYTE9(v134[27]) = v78;
              BYTE10(v134[27]) = v77;
              BYTE11(v134[27]) = v59;
              *&v134[28] = v108;
              *(&v134[28] + 1) = v107;
              *&v134[29] = v76;
              *(&v134[29] + 1) = v75;
              *(&v134[30] + 1) = *v285;
              v73 = v286;
              LOBYTE(v134[30]) = v286;
              DWORD1(v134[30]) = *&v285[3];
              *(&v134[30] + 8) = v128;
              *(&v134[31] + 8) = v129;
              *(&v134[32] + 8) = v130;
              *(&v134[33] + 1) = *v131;
              *&v134[34] = *&v131[8];
              *(&v134[34] + 1) = v82;
              *&v134[35] = 7;
              *(&v134[35] + 1) = v81;
              *&v134[36] = 7;
              *(&v134[36] + 1) = v79;
              memcpy(a2, v134, 0x250uLL);
              sub_242C6CDD4(v134, &v135);
              __swift_destroy_boxed_opaque_existential_2Tm(v133);
              *&v135 = v31;
              *(&v135 + 1) = v132;
              LOBYTE(v136) = v106;
              *(&v136 + 1) = v80;
              *(&v138 + 1) = v93;
              v139 = v94;
              v140 = v95;
              v141 = v90;
              v142 = v96;
              v143 = v97;
              v145 = v92;
              v146 = v91;
              v147 = v119;
              v148 = v122;
              v149 = v124;
              v150 = v84;
              v151 = v125;
              v152 = v126;
              v154 = v89;
              v155 = v88;
              v156 = v112;
              v157 = v114;
              v158 = v116;
              v159 = v118;
              v160 = v83;
              v161 = v121;
              v162 = v123;
              v164 = v87;
              v165 = v86;
              v166 = v111;
              v167 = v113;
              v168 = v115;
              v169 = v85;
              v170 = v117;
              v171 = v120;
              v173 = v110;
              v174 = v68;
              v175 = v101;
              v176 = v69;
              v177 = v102;
              v178 = v70;
              *(&v136 + 1) = v293[0];
              *&v144[3] = *(v292 + 3);
              *v144 = v292[0];
              *&v153[3] = *(v291 + 3);
              *v153 = v291[0];
              *v163 = v290[0];
              *v172 = v289[0];
              *v179 = *v288;
              DWORD1(v136) = *(v293 + 3);
              v137 = v47;
              *&v138 = v51;
              *&v163[3] = *(v290 + 3);
              *&v172[3] = *(v289 + 3);
              *&v179[3] = *&v288[3];
              v180 = v71;
              v181 = v98;
              v182 = v99;
              v183 = v100;
              *v184 = *v287;
              *&v184[3] = *&v287[3];
              v185 = v104;
              v186 = v74;
              v187 = v78;
              v188 = v77;
              v189 = v59;
              v190 = v108;
              v191 = v107;
              v192 = v76;
              v193 = v75;
              v194 = v73;
              *v195 = *v285;
              *&v195[3] = *&v285[3];
              v196 = v128;
              v197 = v129;
              v198 = v130;
              v199 = *v131;
              v200 = *&v131[8];
              v201 = v82;
              v202 = 7;
              v203 = v81;
              v204 = 7;
              v205 = v79;
              sub_242C6CE30(&v135);
              return;
            }

            (*(v13 + 8))(v8, v5);
            __swift_destroy_boxed_opaque_existential_2Tm(v133);
          }

          v61 = 7;
LABEL_14:
          v104 = v61;

          v106 = 1;
          LODWORD(v105) = 1;
          v20 = v97;
          v18 = v95;
          v19 = v96;
          v17 = *(&v94 + 1);
          v16 = v94;
          v26 = v92;
          v15 = v93;
          v27 = v90;
          v25 = v91;
          v23 = v88;
          v24 = v89;
          v21 = v86;
          v22 = v87;
          v28 = v84;
          v30 = v85;
          v35 = v82;
          v29 = v83;
          v42 = *(&v128 + 1);
          v43 = v128;
          v40 = *(&v129 + 1);
          v41 = v129;
          v38 = *(&v130 + 1);
          v39 = v130;
          v37 = *v131;
          v36 = *&v131[8];
          v44 = v81;
LABEL_10:
          v81 = v44;
          v82 = v35;
          *&v131[8] = v36;
          *v131 = v37;
          *(&v130 + 1) = v38;
          *&v130 = v39;
          *&v129 = v41;
          *(&v129 + 1) = v40;
          *&v128 = v43;
          *(&v128 + 1) = v42;
          v90 = v27;
          v91 = v25;
          v92 = v26;
          v93 = v15;
          *&v94 = v16;
          *(&v94 + 1) = v17;
          v95 = v18;
          v96 = v19;
          v97 = v20;

          v27 = v90;
          v25 = v91;
          v26 = v92;
          v15 = v93;
          v17 = *(&v94 + 1);
          v16 = v94;
          v18 = v95;
          v19 = v96;
          LOBYTE(v20) = v97;
          v132 = v82;
          v133 = v81;
          goto LABEL_4;
        }

        (*(v13 + 8))(v8, v5);
        __swift_destroy_boxed_opaque_existential_2Tm(v133);
        v81 = 0;
        v82 = 0;
        v128 = 0uLL;
        v129 = 0uLL;
        v130 = 0uLL;
        *v131 = 0;
        *&v131[8] = 0;
      }
    }

    v61 = 1;
    goto LABEL_14;
  }

  v127 = v2;
  __swift_destroy_boxed_opaque_existential_2Tm(v133);
  v107 = 0;
  v108 = 0;
  v106 = 0;
  LODWORD(v105) = 0;
  v132 = 0;
  *&v131[8] = 0;
  *v131 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 0;
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v122 = 0;
  v124 = 0uLL;
  v125 = 0;
  v126 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v123 = 0;
  v117 = 0;
  v120 = 0;
  v130 = 0uLL;
  v129 = 0uLL;
  v128 = 0uLL;
  v133 = 0;
  v109 = 0xEE006E6F6973756CLL;
  v110 = 0x63634F6C65656877;
  v111 = 0uLL;
  v21 = 0xE800000000000000;
  v22 = 0x726F697265746E69;
  v23 = 0xE90000000000006BLL;
  v24 = 0x73614D6570616873;
  v25 = 0xEA0000000000646ELL;
  v26 = 0x756F72676B636162;
  v104 = 1;
  v27 = 254;
  v28 = 254;
  v29 = 254;
  v30 = 254;
LABEL_4:
  *&v271 = v15;
  *(&v271 + 1) = v16;
  *&v272 = v17;
  *(&v272 + 1) = v18;
  *&v273 = v27;
  *(&v273 + 1) = v19;
  v274 = v20;
  *v275 = v292[0];
  *&v275[3] = *(v292 + 3);
  *&v276 = v26;
  *(&v276 + 1) = v25;
  sub_242DD8264(&v271);
  v277 = v119;
  *v278 = v122;
  *&v278[8] = v124;
  v279 = v28;
  v280 = v125;
  v281 = v126;
  *v282 = v291[0];
  *&v282[3] = *(v291 + 3);
  v283 = v24;
  v284 = v23;
  sub_242DD8264(&v277);
  *&v208 = v112;
  *(&v208 + 1) = v114;
  *&v209 = v116;
  *(&v209 + 1) = v118;
  *&v210 = v29;
  *(&v210 + 1) = v121;
  LOBYTE(v211) = v123;
  *(&v211 + 1) = v290[0];
  DWORD1(v211) = *(v290 + 3);
  *(&v211 + 1) = v22;
  v212 = v21;
  sub_242DD8264(&v208);
  v134[0] = v111;
  *&v134[1] = v113;
  *(&v134[1] + 1) = v115;
  *&v134[2] = v30;
  *(&v134[2] + 1) = v117;
  LOBYTE(v134[3]) = v120;
  *(&v134[3] + 1) = v289[0];
  DWORD1(v134[3]) = *(v289 + 3);
  *(&v134[3] + 1) = v110;
  *&v134[4] = v109;
  sub_242DD8264(v134);
  if (v105)
  {
    sub_242C7F724(v101, *(&v101 + 1), v102, *(&v102 + 1), v103);
  }

  if (v106)
  {
    sub_242C7F724(v98, *(&v98 + 1), v99, *(&v99 + 1), v100);
  }

  v135 = v128;
  v136 = v129;
  v137 = v130;
  v138 = *v131;
  *&v139 = v132;
  *(&v139 + 1) = v104;
  sub_242C6D138(&v135, &qword_27ECFA428, &qword_242F40828);
}

double sub_242E69A34@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 584);

  return result;
}

void sub_242E69A40(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 584) = v2;
}

void sub_242E69A8C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_242C7F6C4(*a1, v4, v5, v6, v7);
  swift_getAtKeyPath();
  sub_242C7F724(v3, v4, v5, v6, v7);
}

void sub_242E69B08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  sub_242C7F6C4(*a1, v7, v8, v9, v10);
  ImageAsset.restore(from:)(a2);
  if (v3)
  {
    sub_242C7F724(v6, v7, v8, v9, v10);
  }

  else
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
    *(a3 + 40) = v11;
    *(a3 + 48) = v12;
  }
}

void *sub_242E69BBC@<X0>(void *__src@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x1F9uLL);
  memcpy(__srca, __src, 0x1F9uLL);
  sub_242C874B8(__dst, v8);
  ImageAsset.restore(from:)(a2);
  if (v3)
  {
    memcpy(v8, __srca, 0x1F9uLL);
    return sub_242C87514(v8);
  }

  else
  {
    ImageAsset.restore(from:)(a2);
    ImageAsset.restore(from:)(a2);
    ImageAsset.restore(from:)(a2);
    if ((~LOBYTE(__srca[56]) & 0xFE) != 0)
    {
      ImageAsset.restore(from:)(a2);
    }

    ImageAsset.restore(from:)(a2);
    ImageAsset.restore(from:)(a2);
    ImageAsset.restore(from:)(a2);
    ImageAsset.restore(from:)(a2);
    return memcpy(a3, __srca, 0x1F9uLL);
  }
}

void Display.layout(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Layout(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 24);
  v12 = *(v11 + 16);
  if (v12)
  {
    v17[0] = a3;
    v13 = 0;
    while (v13 < *(v11 + 16))
    {
      v14 = sub_242E6A22C(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, type metadata accessor for Layout);
      v18[0] = a1;
      v18[1] = a2;
      MEMORY[0x28223BE20](v14);
      v17[-2] = v18;
      if (sub_242E383F8(sub_242C87674, &v17[-4], v15))
      {
        a3 = v17[0];
        sub_242CE35C0(v10, v17[0]);
        v16 = 0;
        goto LABEL_9;
      }

      ++v13;
      sub_242E6A294(v10, type metadata accessor for Layout);
      if (v12 == v13)
      {
        v16 = 1;
        a3 = v17[0];
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 1;
LABEL_9:
    (*(v8 + 56))(a3, v16, 1, v7);
  }
}

uint64_t sub_242E69F28(uint64_t a1, void (*a2)(void *__return_ptr, __int128 *))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v52 = MEMORY[0x277D84F90];
  sub_242E3BCB0(0, v2, 0);
  v3 = v52;
  v5 = v4 + 64;
  result = sub_242F05940();
  v7 = 0;
  v32 = v4 + 72;
  v33 = v2;
  v34 = v4 + 64;
  v35 = v4;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v4 + 32))
  {
    if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v40 = 1 << result;
    v41 = result >> 6;
    v37 = v7;
    v39 = *(v4 + 36);
    v9 = *(v4 + 56) + 56 * result;
    v42 = result;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 40);
    v14 = *(v9 + 48);
    v15 = *(v9 + 32);
    *&v43 = *v9;
    *(&v43 + 1) = v10;
    v44 = v11;
    v45 = v12;
    LOBYTE(v46) = v15;
    v47 = v13;
    v48 = v14;
    sub_242C7F6C4(v43, v10, v11, v12, v15);
    a2(v49, &v43);
    sub_242C7F724(v43, *(&v43 + 1), v44, v45, v46);
    v52 = v3;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_242E3BCB0((v16 > 1), v17 + 1, 1);
      v3 = v52;
    }

    v18 = v49[0];
    v19 = v49[1];
    v20 = v49[2];
    v21 = v49[3];
    v22 = v51;
    v23 = v50;
    v45 = &type metadata for ImageAsset;
    v46 = &protocol witness table for ImageAsset;
    v24 = swift_allocObject();
    *&v43 = v24;
    *(v24 + 16) = v18;
    *(v24 + 24) = v19;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;
    v38 = v3;
    *(v3 + 16) = v17 + 1;
    sub_242C65564(&v43, v3 + 40 * v17 + 32);
    sub_242C7F6C4(v18, v19, v20, v21, v23);
    sub_242C7F724(v18, v19, v20, v21, v23);
    v4 = v35;
    v8 = 1 << *(v35 + 32);
    result = v42;
    if (v42 >= v8)
    {
      goto LABEL_22;
    }

    v5 = v34;
    v25 = *(v34 + 8 * v41);
    if ((v25 & v40) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v42 & 0x3F));
    if (v26)
    {
      v8 = __clz(__rbit64(v26)) | v42 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v41 << 6;
      v28 = v41 + 1;
      v29 = (v32 + 8 * v41);
      while (v28 < (v8 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_242C9E060(v42, v39, 0);
          v8 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      sub_242C9E060(v42, v39, 0);
    }

LABEL_4:
    v3 = v38;
    v7 = v37 + 1;
    result = v8;
    if (v37 + 1 == v33)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_242E6A22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E6A294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E6A2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA438;
  if (!qword_27ECFA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA438);
  }

  return result;
}

unint64_t sub_242E6A348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA448;
  if (!qword_27ECFA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA448);
  }

  return result;
}

unint64_t sub_242E6A39C()
{
  result = qword_27ECFA470;
  if (!qword_27ECFA470)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA468, &qword_242F40870);
    sub_242E6A428(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA470);
  }

  return result;
}

unint64_t sub_242E6A428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA478;
  if (!qword_27ECFA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA478);
  }

  return result;
}

unint64_t sub_242E6A47C()
{
  result = qword_27ECFA488;
  if (!qword_27ECFA488)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA480, &qword_242F40878);
    sub_242E6A508(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA488);
  }

  return result;
}

unint64_t sub_242E6A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA490;
  if (!qword_27ECFA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA490);
  }

  return result;
}

unint64_t sub_242E6A55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA4A0;
  if (!qword_27ECFA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA4A0);
  }

  return result;
}

uint64_t sub_242E6A5B0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA4A8, &qword_242F40880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242E6A628(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5DD0, &qword_242F2F608);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E6A698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA4D8;
  if (!qword_27ECFA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA4D8);
  }

  return result;
}

uint64_t sub_242E6A6EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA450, &qword_242F40868);
    sub_242E6A948(a2, type metadata accessor for Layout, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E6A788()
{
  result = qword_27ECFA4F0;
  if (!qword_27ECFA4F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA468, &qword_242F40870);
    sub_242E6A814(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA4F0);
  }

  return result;
}

unint64_t sub_242E6A814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA4F8;
  if (!qword_27ECFA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA4F8);
  }

  return result;
}

unint64_t sub_242E6A868()
{
  result = qword_27ECFA500;
  if (!qword_27ECFA500)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFA480, &qword_242F40878);
    sub_242E6A8F4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA500);
  }

  return result;
}

unint64_t sub_242E6A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA508;
  if (!qword_27ECFA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA508);
  }

  return result;
}

uint64_t sub_242E6A948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242E6A990(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF95B0, &qword_242F3A4A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E6AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA518;
  if (!qword_27ECFA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA518);
  }

  return result;
}

unint64_t sub_242E6AA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA538;
  if (!qword_27ECFA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA538);
  }

  return result;
}

unint64_t sub_242E6AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA550;
  if (!qword_27ECFA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA550);
  }

  return result;
}

unint64_t sub_242E6AB54()
{
  result = qword_27ECFA558;
  if (!qword_27ECFA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF5DD0, &qword_242F2F608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA558);
  }

  return result;
}

unint64_t sub_242E6ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E3C6AC(a1, a2, a3);
  *(a1 + 16) = v4;
  result = sub_242E3C58C(v4, v5, v6);
  *(a1 + 24) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17VectorFontManagerVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242E6AC20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 592))
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

uint64_t sub_242E6AC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 592) = 1;
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

    *(result + 592) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Display.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Display.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242E6AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA560;
  if (!qword_27ECFA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA560);
  }

  return result;
}

unint64_t sub_242E6AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA568;
  if (!qword_27ECFA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA568);
  }

  return result;
}

unint64_t sub_242E6AF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA570;
  if (!qword_27ECFA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA570);
  }

  return result;
}

uint64_t sub_242E6AFBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374756F79616CLL && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797469736E6564 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73614D6570616873 && a2 == 0xE90000000000006BLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F697265746E69 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x63634F6C65656877 && a2 == 0xEE006E6F6973756CLL || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5CAF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x676F4C656C707061 && a2 == 0xE90000000000006FLL || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F5CB10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5CB30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000242F5CB50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5CB80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5CBA0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73776F64616873 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5CBC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5CBE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEF73656972746E45 || (sub_242F06110() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073)
  {

    return 20;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

unint64_t sub_242E6B640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA578;
  if (!qword_27ECFA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA578);
  }

  return result;
}

uint64_t sub_242E6B694()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFA580 = v16;
  *(&xmmword_27ECFA580 + 1) = v15;
  qword_27ECFA590 = v14;
  unk_27ECFA598 = v7;
  *&xmmword_27ECFA5A0 = v8;
  *(&xmmword_27ECFA5A0 + 1) = v9;
  qword_27ECFA5B0 = v10;
  unk_27ECFA5B8 = v11;
  qword_27ECFA5C0 = result;
  return result;
}

uint64_t static Color.Ticks.blue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFA5B0;
  v8[2] = xmmword_27ECFA5A0;
  v8[3] = *&qword_27ECFA5B0;
  v9 = qword_27ECFA5C0;
  v3 = qword_27ECFA5C0;
  v4 = *&qword_27ECFA590;
  v8[0] = xmmword_27ECFA580;
  v5 = xmmword_27ECFA580;
  v8[1] = *&qword_27ECFA590;
  *(a1 + 32) = xmmword_27ECFA5A0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.blue.setter(uint64_t a1)
{
  if (qword_27ECEF740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFA5A0;
  v5[3] = *&qword_27ECFA5B0;
  v6 = qword_27ECFA5C0;
  v5[0] = xmmword_27ECFA580;
  v5[1] = *&qword_27ECFA590;
  v2 = *(a1 + 48);
  xmmword_27ECFA5A0 = *(a1 + 32);
  *&qword_27ECFA5B0 = v2;
  qword_27ECFA5C0 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFA580 = *a1;
  *&qword_27ECFA590 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.blue.modify(uint64_t a1))()
{
  if (qword_27ECEF740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E6BB68()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFA5C8 = v16;
  *(&xmmword_27ECFA5C8 + 1) = v15;
  qword_27ECFA5D8 = v14;
  unk_27ECFA5E0 = v7;
  *&xmmword_27ECFA5E8 = v8;
  *(&xmmword_27ECFA5E8 + 1) = v9;
  qword_27ECFA5F8 = v10;
  unk_27ECFA600 = v11;
  qword_27ECFA608 = result;
  return result;
}

uint64_t static Color.ProgressBars.blue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECFA5F8;
  v8[2] = xmmword_27ECFA5E8;
  v8[3] = *&qword_27ECFA5F8;
  v9 = qword_27ECFA608;
  v3 = qword_27ECFA608;
  v4 = *&qword_27ECFA5D8;
  v8[0] = xmmword_27ECFA5C8;
  v5 = xmmword_27ECFA5C8;
  v8[1] = *&qword_27ECFA5D8;
  *(a1 + 32) = xmmword_27ECFA5E8;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.blue.setter(uint64_t a1)
{
  if (qword_27ECEF748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECFA5E8;
  v5[3] = *&qword_27ECFA5F8;
  v6 = qword_27ECFA608;
  v5[0] = xmmword_27ECFA5C8;
  v5[1] = *&qword_27ECFA5D8;
  v2 = *(a1 + 48);
  xmmword_27ECFA5E8 = *(a1 + 32);
  *&qword_27ECFA5F8 = v2;
  qword_27ECFA608 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECFA5C8 = *a1;
  *&qword_27ECFA5D8 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.blue.modify(uint64_t a1))()
{
  if (qword_27ECEF748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E6C064()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECFA610 = result;
  return result;
}

uint64_t static Color.Modular.blue.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECFA610;
}

double static Color.Modular.blue.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEF750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECFA610 = v1;

  return result;
}

uint64_t (*static Color.Modular.blue.modify(uint64_t a1))()
{
  if (qword_27ECEF750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E6C2C4()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECFA618 = v14;
  *(&xmmword_27ECFA618 + 1) = v7;
  qword_27ECFA628 = v8;
  unk_27ECFA630 = v9;
  *&xmmword_27ECFA638 = v10;
  *(&xmmword_27ECFA638 + 1) = v11;
  qword_27ECFA648 = result;
  return result;
}

uint64_t static Color.ACC.blue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECFA618 + 1);
  v3 = qword_27ECFA628;
  v4 = unk_27ECFA630;
  v5 = xmmword_27ECFA638;
  v6 = qword_27ECFA648;
  *a1 = xmmword_27ECFA618;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

double static Color.ACC.blue.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEF758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFA618 = v5;
  *&qword_27ECFA628 = v4;
  xmmword_27ECFA638 = v3;
  qword_27ECFA648 = v1;

  return result;
}

uint64_t (*static Color.ACC.blue.modify(uint64_t a1))()
{
  if (qword_27ECEF758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242E6C7B4()
{
  if (qword_27ECEF748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECFA5E8;
  v37 = *&qword_27ECFA5F8;
  v38 = qword_27ECFA608;
  v34 = xmmword_27ECFA5C8;
  v35 = *&qword_27ECFA5D8;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEF740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECFA5A0;
  v42 = *&qword_27ECFA5B0;
  v43 = qword_27ECFA5C0;
  v39 = xmmword_27ECFA580;
  v40 = *&qword_27ECFA590;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEF750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEF758;
  v28 = qword_27ECFA610;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECFA618 + 1);
  v2 = qword_27ECFA628;
  v3 = unk_27ECFA630;
  v4 = xmmword_27ECFA638;
  v5 = qword_27ECFA648;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECFA618;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECFA670 = v36;
  unk_27ECFA680 = v37;
  xmmword_27ECFA650 = v34;
  unk_27ECFA660 = v35;
  unk_27ECFA698 = v39;
  unk_27ECFA6C8 = v42;
  qword_27ECFA690 = v38;
  unk_27ECFA6B8 = v41;
  unk_27ECFA6A8 = v40;
  qword_27ECFA6D8 = v43;
  unk_27ECFA6E0 = v28;
  qword_27ECFA6E8 = v23;
  unk_27ECFA6F0 = v22;
  qword_27ECFA6F8 = v21;
  unk_27ECFA700 = v27;
  qword_27ECFA708 = v26;
  qword_27ECFA710 = v25;
  unk_27ECFA718 = v3;
  xmmword_27ECFA720 = v4;
  qword_27ECFA730 = v24;
  unk_27ECFA738 = v20;
  qword_27ECFA740 = v19;
  qword_27ECFA748 = v11;
  unk_27ECFA750 = v12;
  qword_27ECFA758 = v13;
  unk_27ECFA760 = v14;
  qword_27ECFA768 = v15;
  unk_27ECFA770 = v16;
  xmmword_27ECFA798 = v32;
  unk_27ECFA7A8 = v33;
  xmmword_27ECFA778 = v30;
  unk_27ECFA788 = v31;
  xmmword_27ECFA7B8 = xmmword_27ECF3708;
  qword_27ECFA7C8 = qword_27ECF3718;
  unk_27ECFA7D0 = unk_27ECF3720;
  xmmword_27ECFA7D8 = xmmword_27ECF3728;
  qword_27ECFA7E8 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.blue.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF760 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECFA650, sizeof(__dst));
  memcpy(a1, &xmmword_27ECFA650, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242E6CD2C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECFA7F0 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightBlue.modify(uint64_t a1))()
{
  if (qword_27ECEF768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E6D1DC()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA7F8 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightBlue.modify(uint64_t a1))()
{
  if (qword_27ECEF770 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242E6D2D4()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFA800 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightBlue.modify(uint64_t a1))()
{
  if (qword_27ECEF778 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t NotificationSymbolConfiguration.init(font:containerMinSize:scale:padding:automakerImageMaxSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  v20 = type metadata accessor for NotificationSymbolConfiguration(0);
  v21 = *(v20 + 28);
  v22 = sub_242F04820();
  result = (*(*(v22 - 8) + 32))(a6 + v21, a5, v22);
  v24 = (a6 + *(v20 + 32));
  *v24 = a7;
  v24[1] = a8;
  v24[2] = a9;
  v24[3] = a10;
  *(a6 + 32) = a11;
  *(a6 + 40) = a12;
  return result;
}

uint64_t NotificationTextConfiguration.init(titleFont:bodyFont:titleForegroundStyle:bodyForegroundStyle:leadingPadding:trailingPadding:topPadding:bottomPadding:intertextPadding:lineLimit:leadingAlignment:minimumScaleFactor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  sub_242C65564(a3, a7 + 16);
  result = sub_242C65564(a4, a7 + 56);
  *(a7 + 96) = a8;
  *(a7 + 104) = a9;
  *(a7 + 112) = a10;
  *(a7 + 120) = a11;
  *(a7 + 128) = a12;
  *(a7 + 136) = a5;
  *(a7 + 144) = a6;
  *(a7 + 152) = a13;
  return result;
}

__n128 ActionConfiguration.init(buttonConfiguration:leadingSymbol:platterCornerRadius:symbolConfiguration:verticalSymbolConfiguration:textConfiguration:verticalTextConfiguration:pushToBottom:maxNotificationSize:minNotificationSize:platterBackgroundMaterial:shadowConfiguration:)@<Q0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, __n128 *a17)
{
  v49 = *a17;
  v48 = a17[1].n128_u64[0];
  v24 = type metadata accessor for ActionConfiguration(0);
  v25 = a9 + v24[11];
  v26 = a9 + v24[12];
  v27 = (a9 + v24[15]);
  v27->n128_u64[1] = 0;
  v27[1].n128_u64[0] = 0;
  v27->n128_u64[0] = 0;
  v28 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v28;
  v29 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v29;
  *(a9 + 64) = a2;
  *(a9 + 72) = a10;
  sub_242E6D9B0(a3, a9 + v24[7], type metadata accessor for NotificationSymbolConfiguration);
  sub_242E6D9B0(a4, a9 + v24[8], type metadata accessor for NotificationSymbolConfiguration);
  v30 = (a9 + v24[9]);
  v31 = a5[1];
  *v30 = *a5;
  v30[1] = v31;
  v32 = a5[5];
  v30[4] = a5[4];
  v30[5] = v32;
  v33 = a5[3];
  v30[2] = a5[2];
  v30[3] = v33;
  v34 = a5[9];
  v30[8] = a5[8];
  v30[9] = v34;
  v35 = a5[7];
  v30[6] = a5[6];
  v30[7] = v35;
  v36 = (a9 + v24[10]);
  v37 = a6[7];
  v36[6] = a6[6];
  v36[7] = v37;
  v38 = a6[9];
  v36[8] = a6[8];
  v36[9] = v38;
  v39 = a6[3];
  v36[2] = a6[2];
  v36[3] = v39;
  v40 = a6[5];
  v36[4] = a6[4];
  v36[5] = v40;
  v41 = a6[1];
  *v36 = *a6;
  v36[1] = v41;
  *(a9 + v24[13]) = a7;
  *v25 = a8;
  *(v25 + 8) = a11;
  *(v25 + 16) = a12 & 1;
  *v26 = a13;
  *(v26 + 8) = a14;
  *(v26 + 16) = a15 & 1;
  v42 = v24[14];
  v43 = sub_242F04A30();
  (*(*(v43 - 8) + 32))(a9 + v42, a16, v43);

  result = v49;
  *v27 = v49;
  v27[1].n128_u64[0] = v48;
  return result;
}

__n128 BannerConfiguration.init(buttonConfiguration:platterCornerRadius:symbolConfiguration:verticalSymbolConfiguration:textConfiguration:verticalTextConfiguration:includeCloseButtonAffordance:pushToBottom:maxNotificationSize:minNotificationSize:shadowConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, __n128 *a16)
{
  v42 = *a16;
  v41 = a16[1].n128_u64[0];
  v23 = type metadata accessor for BannerConfiguration(0);
  v24 = a9 + v23[11];
  v25 = a9 + v23[12];
  v26 = (a9 + v23[14]);
  v26->n128_u64[1] = 0;
  v26[1].n128_u64[0] = 0;
  v26->n128_u64[0] = 0;
  sub_242E6D9B0(a1, a9, type metadata accessor for IconNotificationButtonConfiguration);
  *(a9 + v23[5]) = a10;
  sub_242E6D9B0(a2, a9 + v23[7], type metadata accessor for NotificationSymbolConfiguration);
  sub_242E6D9B0(a3, a9 + v23[8], type metadata accessor for NotificationSymbolConfiguration);
  v27 = (a9 + v23[9]);
  v28 = a4[1];
  *v27 = *a4;
  v27[1] = v28;
  v29 = a4[5];
  v27[4] = a4[4];
  v27[5] = v29;
  v30 = a4[3];
  v27[2] = a4[2];
  v27[3] = v30;
  v31 = a4[9];
  v27[8] = a4[8];
  v27[9] = v31;
  v32 = a4[7];
  v27[6] = a4[6];
  v27[7] = v32;
  v33 = (a9 + v23[10]);
  v34 = a5[7];
  v33[6] = a5[6];
  v33[7] = v34;
  v35 = a5[9];
  v33[8] = a5[8];
  v33[9] = v35;
  v36 = a5[3];
  v33[2] = a5[2];
  v33[3] = v36;
  v37 = a5[5];
  v33[4] = a5[4];
  v33[5] = v37;
  v38 = a5[1];
  *v33 = *a5;
  v33[1] = v38;
  *(a9 + v23[6]) = a6;
  *(a9 + v23[13]) = a7;
  *v24 = a8;
  *(v24 + 8) = a11;
  *(v24 + 16) = a12 & 1;
  *v25 = a13;
  *(v25 + 8) = a14;
  *(v25 + 16) = a15 & 1;

  result = v42;
  *v26 = v42;
  v26[1].n128_u64[0] = v41;
  return result;
}

uint64_t sub_242E6D9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 NoticeConfiguration.init(platterCornerRadius:symbolConfiguration:verticalSymbolConfiguration:textConfiguration:verticalTextConfiguration:pushToBottom:maxNotificationSize:minNotificationSize:shadowConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, double *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13, __n128 *a14)
{
  v40 = *a14;
  v39 = a14[1].n128_u64[0];
  v20 = type metadata accessor for NoticeConfiguration(0);
  v21 = a9 + v20[9];
  v22 = a9 + v20[10];
  v23 = (a9 + v20[12]);
  v23->n128_u64[1] = 0;
  v23[1].n128_u64[0] = 0;
  v23->n128_u64[0] = 0;
  *a9 = a10;
  sub_242E6D9B0(a1, a9 + v20[5], type metadata accessor for NotificationSymbolConfiguration);
  sub_242E6D9B0(a2, a9 + v20[6], type metadata accessor for NotificationSymbolConfiguration);
  v24 = (a9 + v20[7]);
  v25 = a3[1];
  *v24 = *a3;
  v24[1] = v25;
  v26 = a3[5];
  v24[4] = a3[4];
  v24[5] = v26;
  v27 = a3[3];
  v24[2] = a3[2];
  v24[3] = v27;
  v28 = a3[9];
  v24[8] = a3[8];
  v24[9] = v28;
  v29 = a3[7];
  v24[6] = a3[6];
  v24[7] = v29;
  v30 = (a9 + v20[8]);
  v31 = a4[7];
  v30[6] = a4[6];
  v30[7] = v31;
  v32 = a4[9];
  v30[8] = a4[8];
  v30[9] = v32;
  v33 = a4[3];
  v30[2] = a4[2];
  v30[3] = v33;
  v34 = a4[5];
  v30[4] = a4[4];
  v30[5] = v34;
  v35 = a4[1];
  *v30 = *a4;
  v30[1] = v35;
  *(a9 + v20[11]) = a5;
  *v21 = a6;
  *(v21 + 1) = a7;
  v21[16] = a8 & 1;
  *v22 = a11;
  *(v22 + 1) = a12;
  v22[16] = a13 & 1;

  result = v40;
  *v23 = v40;
  v23[1].n128_u64[0] = v39;
  return result;
}

uint64_t FancyNotificationConfiguration.FancyButtonConfiguration.init(interButtonPadding:xPadding:height:heightWithSymbol:maxWidth:fill:font:fontWithSymbol:cornerRadius:lineWidth:primarySymbolConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>)
{
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  *a5 = a8;
  *(a5 + 8) = a9;
  *(a5 + 48) = a10;
  *(a5 + 56) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 64) = a11;
  *(a5 + 72) = a12;
  v14 = type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(0);
  return sub_242E6D9B0(a4, a5 + *(v14 + 56), type metadata accessor for NotificationSymbolConfiguration);
}

__n128 FancyNotificationConfiguration.init(buttonConfiguration:platterCornerRadius:symbolConfiguration:trailingButtonConfiguration:textConfiguration:maxNotificationSize:minNotificationSize:platterBackgroundMaterial:shadowConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, uint64_t a13, __n128 *a14)
{
  v38 = *a14;
  v37 = a14[1].n128_u64[0];
  v20 = type metadata accessor for FancyNotificationConfiguration(0);
  v21 = a9 + v20[9];
  v22 = a9 + v20[10];
  v23 = (a9 + v20[12]);
  v23->n128_u64[1] = 0;
  v23[1].n128_u64[0] = 0;
  v23->n128_u64[0] = 0;
  sub_242E6D9B0(a1, a9, type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration);
  *(a9 + v20[5]) = a10;
  sub_242E6D9B0(a2, a9 + v20[6], type metadata accessor for NotificationSymbolConfiguration);
  sub_242E6D9B0(a3, a9 + v20[7], type metadata accessor for IconNotificationButtonConfiguration);
  v24 = (a9 + v20[8]);
  v25 = a4[7];
  v24[6] = a4[6];
  v24[7] = v25;
  v26 = a4[9];
  v24[8] = a4[8];
  v24[9] = v26;
  v27 = a4[3];
  v24[2] = a4[2];
  v24[3] = v27;
  v28 = a4[5];
  v24[4] = a4[4];
  v24[5] = v28;
  v29 = a4[1];
  *v24 = *a4;
  v24[1] = v29;
  *v21 = a5;
  *(v21 + 8) = a6;
  *(v21 + 16) = a7 & 1;
  *v22 = a8;
  *(v22 + 8) = a11;
  *(v22 + 16) = a12 & 1;
  v30 = v20[11];
  v31 = sub_242F04A30();
  (*(*(v31 - 8) + 32))(a9 + v30, a13, v31);

  result = v38;
  *v23 = v38;
  v23[1].n128_u64[0] = v37;
  return result;
}

uint64_t NotificationSymbolConfiguration.containerMinSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t NotificationSymbolConfiguration.scale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationSymbolConfiguration(0) + 28);
  v4 = sub_242F04820();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationSymbolConfiguration.scale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSymbolConfiguration(0) + 28);
  v4 = sub_242F04820();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationSymbolConfiguration.padding.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for NotificationSymbolConfiguration(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t NotificationTextConfiguration.titleForegroundStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_2Tm((v1 + 16));

  return sub_242C65564(a1, v1 + 16);
}

uint64_t NotificationTextConfiguration.bodyForegroundStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_2Tm((v1 + 56));

  return sub_242C65564(a1, v1 + 56);
}

uint64_t ActionConfiguration.buttonConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_242D5A344(v7, &v6);
}

__n128 ActionConfiguration.buttonConfiguration.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_242D92B90(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t ActionConfiguration.pushToBottom.setter(char a1)
{
  result = type metadata accessor for ActionConfiguration(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ActionConfiguration.platterBackgroundMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionConfiguration(0) + 56);
  v4 = sub_242F04A30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionConfiguration.platterBackgroundMaterial.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionConfiguration(0) + 56);
  v4 = sub_242F04A30();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActionConfiguration.shadowConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionConfiguration(0) + 60);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

__n128 ActionConfiguration.shadowConfiguration.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for ActionConfiguration(0) + 60));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_242E6EC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E6EC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t BannerConfiguration.platterCornerRadius.setter(double a1)
{
  result = type metadata accessor for BannerConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t BannerConfiguration.includeCloseButtonAffordance.setter(char a1)
{
  result = type metadata accessor for BannerConfiguration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_242E6F030@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 36);

  return sub_242D575E8(v4, a2);
}

uint64_t sub_242E6F094(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 36);

  return sub_242E6E690(a1, v4);
}

uint64_t sub_242E6F13C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 40);

  return sub_242D575E8(v4, a2);
}

uint64_t sub_242E6F1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 40);

  return sub_242E6E690(a1, v4);
}

uint64_t sub_242E6F294(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 44);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t sub_242E6F390(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 48);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t BannerConfiguration.pushToBottom.setter(char a1)
{
  result = type metadata accessor for BannerConfiguration(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t BannerConfiguration.shadowConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BannerConfiguration(0) + 56);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

__n128 BannerConfiguration.shadowConfiguration.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for BannerConfiguration(0) + 56));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t NoticeConfiguration.textConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NoticeConfiguration(0) + 28);

  return sub_242D575E8(v3, a1);
}

uint64_t NoticeConfiguration.textConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NoticeConfiguration(0) + 28);

  return sub_242E6E690(a1, v3);
}

uint64_t NoticeConfiguration.pushToBottom.setter(char a1)
{
  result = type metadata accessor for NoticeConfiguration(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t FancyNotificationConfiguration.platterCornerRadius.setter(double a1)
{
  result = type metadata accessor for FancyNotificationConfiguration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_242E6FE18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 32);

  return sub_242D575E8(v4, a2);
}

uint64_t sub_242E6FE7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 32);

  return sub_242E6E690(a1, v4);
}

uint64_t sub_242E6FF70(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 36);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t sub_242E7006C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 40);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t FancyNotificationConfiguration.platterBackgroundMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FancyNotificationConfiguration(0) + 44);
  v4 = sub_242F04A30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FancyNotificationConfiguration.platterBackgroundMaterial.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FancyNotificationConfiguration(0) + 44);
  v4 = sub_242F04A30();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_242E7025C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 48);
  v5 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v5;
}

__n128 sub_242E702D0(__n128 *a1, uint64_t (*a2)(void))
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = (v2 + *(a2(0) + 48));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v3;
  return result;
}

uint64_t _s14CarPlayAssetUI19ActionConfigurationV06ButtonF0V05interG7Padding01xI06height8maxWidth4fill15buttonLabelFont12cornerRadius04lineL0AE12CoreGraphics7CGFloatV_A3P05SwiftD05ColorVAQ0P0VA2PtcfC_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  return result;
}

void sub_242E704F0(uint64_t a1)
{
  sub_242E705A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_242F04820();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242E705A4(uint64_t a1)
{
  if (!qword_27ECFA818)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_242F05860();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECFA818);
    }
  }
}

uint64_t sub_242E705FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_242E70644(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_242E706E4(uint64_t a1)
{
  type metadata accessor for NotificationSymbolConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_242E705A4(319);
    if (v2 <= 0x3F)
    {
      sub_242F04A30();
      if (v3 <= 0x3F)
      {
        sub_242E707D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E707D4()
{
  if (!qword_27ECFA830)
  {
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECFA830);
    }
  }
}

void sub_242E7085C(uint64_t a1)
{
  type metadata accessor for IconNotificationButtonConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NotificationSymbolConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_242E705A4(319);
      if (v3 <= 0x3F)
      {
        sub_242E707D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E70964(uint64_t a1)
{
  type metadata accessor for NotificationSymbolConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_242E705A4(319);
    if (v2 <= 0x3F)
    {
      sub_242E707D4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242E70A54(uint64_t a1)
{
  type metadata accessor for FancyNotificationConfiguration.FancyButtonConfiguration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NotificationSymbolConfiguration(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IconNotificationButtonConfiguration(319);
      if (v3 <= 0x3F)
      {
        sub_242E705A4(319);
        if (v4 <= 0x3F)
        {
          sub_242F04A30();
          if (v5 <= 0x3F)
          {
            sub_242E707D4();
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

uint64_t sub_242E70B70(uint64_t a1)
{
  result = type metadata accessor for NotificationSymbolConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E70C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E70C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E70CF4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_242E70D60@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228, &qword_242F0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  swift_beginAccess();
  v6 = *(*(v1 + 16) + 16);

  v7 = sub_242F05F60();
  v9 = v8;
  *(inited + 56) = &type metadata for AnyCodingKey;
  *(inited + 64) = sub_242D0B600(v7, v8, v10);
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  *(v11 + 32) = v6;
  *(v11 + 40) = 0;
  sub_242C819D8(inited);
  v12 = v4;
  v13 = *(v2 + 32);
  v14 = _s20SingleValueContainerCMa();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  *(v15 + 32) = 1;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  swift_beginAccess();
  v16 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_242C82AD0(0, v16[2] + 1, 1, v16);
    *(v2 + 16) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_242C82AD0((v18 > 1), v19 + 1, 1, v16);
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = v15;
  v20[5] = &off_28558D568;
  *(v2 + 16) = v16;
  swift_endAccess();
  a1[3] = v14;
  result = sub_242E7251C(&qword_27ECF5548, 255, _s20SingleValueContainerCMa, &unk_242F36F88);
  a1[4] = result;
  *a1 = v15;
  return result;
}

uint64_t sub_242E70F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242E70D60(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v4);
}

uint64_t sub_242E71020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  _s14KeyedContainerCMa(0, a2, a3, a4);
  v6 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228, &qword_242F0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  swift_beginAccess();
  v8 = *(*(v4 + 16) + 16);

  v9 = sub_242F05F60();
  v11 = v10;
  *(inited + 56) = &type metadata for AnyCodingKey;
  *(inited + 64) = sub_242D0B600(v9, v10, v12);
  v13 = swift_allocObject();
  *(inited + 32) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  *(v13 + 32) = v8;
  *(v13 + 40) = 0;
  sub_242C819D8(inited);
  v14 = v6;
  v15 = *(v5 + 32);

  v16 = sub_242D98B94(v14, v15);
  swift_beginAccess();
  v17 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_242C82AD0(0, v17[2] + 1, 1, v17);
    *(v5 + 16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_242C82AD0((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = v16;
  v21[5] = &off_2855892F8;
  *(v5 + 16) = v17;
  swift_endAccess();
  swift_getWitnessTable();
  return sub_242F05F40();
}

uint64_t sub_242E7123C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228, &qword_242F0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  swift_beginAccess();
  v7 = *(v1[2] + 16);

  v8 = sub_242F05F60();
  v10 = v9;
  *(inited + 56) = &type metadata for AnyCodingKey;
  *(inited + 64) = sub_242D0B600(v8, v9, v11);
  v12 = swift_allocObject();
  *(inited + 32) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v10;
  *(v12 + 32) = v7;
  *(v12 + 40) = 0;
  sub_242C819D8(inited);
  v13 = v2[4];
  v14 = swift_allocObject();
  v14[2] = MEMORY[0x277D84F90];
  v14[3] = v5;
  v14[4] = v13;
  swift_beginAccess();
  v15 = v2[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_242C82AD0(0, v15[2] + 1, 1, v15);
    v2[2] = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_242C82AD0((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  v19 = &v15[2 * v18];
  v19[4] = v14;
  v19[5] = &off_285591A50;
  v2[2] = v15;
  swift_endAccess();
  a1[3] = v4;
  result = sub_242E7251C(&qword_27ECF5540, v20, _s16UnkeyedContainerCMa, &unk_242F41424);
  a1[4] = result;
  *a1 = v14;
  return result;
}

double sub_242E71480@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0228, &qword_242F0A720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 56) = &type metadata for AnyCodingKey;
  *(inited + 64) = sub_242D0B600(inited, v6, v7);
  v8 = swift_allocObject();
  *(inited + 32) = v8;
  *(v8 + 16) = 0x7265707573;
  *(v8 + 24) = 0xE500000000000000;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;

  sub_242C819D8(inited);
  v9 = v4;
  v10 = *(v2 + 32);
  v11 = type metadata accessor for _LuaEncoder();
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = 0;
  a1[3] = v11;
  a1[4] = sub_242E7251C(&qword_27ECF5538, 255, type metadata accessor for _LuaEncoder, &unk_242F30E1C);
  *a1 = v12;

  return result;
}

uint64_t sub_242E715C8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

uint64_t sub_242E7160C()
{
  sub_242E70D60(v1);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  sub_242F061C0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v1);
}

uint64_t sub_242E7167C(char a1)
{
  v3 = a1;
  sub_242E70D60(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

uint64_t sub_242E71704(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = a2;
  sub_242E70D60(v3);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v3);
}

uint64_t sub_242E7178C(double a1)
{
  *&v2[5] = a1;
  sub_242E70D60(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

uint64_t sub_242E71814(float a1)
{
  v3 = a1;
  sub_242E70D60(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v2);
}

uint64_t sub_242E719CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_242E70D60(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v6);
}

uint64_t sub_242E71A84(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_242E70D60(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v6);
}

uint64_t sub_242E71B3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  sub_242E70D60(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v6);
}

uint64_t sub_242E71BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a1;
  sub_242E70D60(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_242F061B0();
  return __swift_destroy_boxed_opaque_existential_2Tm(v6);
}

void sub_242E7204C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];

    sub_242E3BC70(0, v2, 0);
    v3 = *(v1 + 16);
    v4 = (v1 + 40);
    do
    {
      if (!v3)
      {
        __break(1u);
        goto LABEL_20;
      }

      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 8);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      v10 = v9;
      swift_unknownObjectRelease();
      v12 = *(v38 + 16);
      v11 = *(v38 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_242E3BC70((v11 > 1), v12 + 1, 1);
      }

      *(v38 + 16) = v12 + 1;
      v13 = v38 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      --v3;
      v4 += 2;
      --v2;
    }

    while (v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    sub_242CD4ED4();
    v14 = sub_242F04E40();
    v16 = v15;

    sub_242E72428(123, 0xE100000000000000, v14, v16);
    if (v17)
    {
      MEMORY[0x245D26660](v14, v16);

      v18 = 32032;
      v19 = 0xE200000000000000;
LABEL_18:
      MEMORY[0x245D26660](v18, v19);
      return;
    }

    v35 = sub_242F05110();
    v36 = v20;
    v21 = *(v0 + 16);
    v22 = *(v21 + 16);
    if (!v22)
    {
LABEL_17:
      v32 = sub_242F04E40();
      v34 = v33;

      MEMORY[0x245D26660](v32, v34);

      MEMORY[0x245D26660](10, 0xE100000000000000);
      MEMORY[0x245D26660](v35, v36);

      v18 = 125;
      v19 = 0xE100000000000000;
      goto LABEL_18;
    }

    v37 = MEMORY[0x277D84F90];

    sub_242E3BC70(0, v22, 0);
    v23 = *(v21 + 16);
    v24 = (v21 + 40);
    while (v23)
    {
      v25 = *v24;
      v26 = swift_getObjectType();
      v27 = *(v25 + 8);
      swift_unknownObjectRetain();
      v28 = v27(v26, v25);
      MEMORY[0x245D26660](v28);

      MEMORY[0x245D26660](8224, 0xE200000000000000);
      swift_unknownObjectRelease();

      v30 = *(v37 + 16);
      v29 = *(v37 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_242E3BC70((v29 > 1), v30 + 1, 1);
      }

      *(v37 + 16) = v30 + 1;
      v31 = v37 + 16 * v30;
      *(v31 + 32) = v35;
      *(v31 + 40) = v36;
      --v23;
      v24 += 2;
      if (!--v22)
      {

        goto LABEL_17;
      }
    }

LABEL_20:
    __break(1u);
  }
}

unint64_t sub_242E72428(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_242F05120() != a1 || v9 != a2)
  {
    v10 = sub_242F06110();

    if (v10)
    {
      return v8;
    }

    v8 = sub_242F05010();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_242E7251C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 ArcDocument.init(package:editableTheme:extras:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 200) = 0;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = *(a1 + 112);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  v6 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v6;
  result = *a2;
  *(a4 + 120) = *a2;
  *(a4 + 184) = 0;
  *(a4 + 192) = a3;
  return result;
}

uint64_t ArcDocument.save(using:)(void *a1)
{
  v2 = v1[11];
  v11[10] = v1[10];
  v11[11] = v2;
  v11[12] = v1[12];
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v4 = v1[9];
  v11[8] = v1[8];
  v11[9] = v4;
  v5 = v1[3];
  v11[2] = v1[2];
  v11[3] = v5;
  v6 = v1[5];
  v11[4] = v1[4];
  v11[5] = v6;
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v8);
  return (*(v9 + 8))(v11, v8, v9);
}

uint64_t ArcDocument.package.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_242C66114(v11, v10);
}

uint64_t sub_242E726BC(__int128 *a1, __int128 *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v29 = a1[5];
  v30 = v4;
  v31 = *(a1 + 14);
  v5 = a1[1];
  v24 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v3;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[3];
  v32[2] = a2[2];
  v32[3] = v10;
  v32[0] = v8;
  v32[1] = v9;
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v33 = *(a2 + 14);
  v32[5] = v12;
  v32[6] = v13;
  v32[4] = v11;
  sub_242C66114(&v24, v23);
  result = sub_242C66414(v32);
  v15 = v29;
  v16 = v30;
  v17 = v27;
  a2[4] = v28;
  a2[5] = v15;
  a2[6] = v16;
  v18 = v25;
  v19 = v26;
  *a2 = v24;
  a2[1] = v18;
  *(a2 + 14) = v31;
  a2[2] = v19;
  a2[3] = v17;
  v20 = *(a2 + 25);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 25) = v22;
  }

  return result;
}

uint64_t ArcDocument.package.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v13[6] = *(v1 + 96);
  v14 = *(v1 + 112);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  result = sub_242C66414(v13);
  v7 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v7;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  v9 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v9;
  v10 = *(v1 + 200);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 200) = v12;
  }

  return result;
}

double ArcDocument.editableTheme.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;

  return result;
}

void sub_242E72884(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];

  a2[15] = v3;
  a2[16] = v4;
  v5 = a2[25];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a2[25] = v7;
  }
}

void ArcDocument.editableTheme.setter(_OWORD *a1)
{

  *(v1 + 120) = *a1;
  v3 = *(v1 + 200);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 200) = v5;
  }
}

uint64_t sub_242E72970(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + 200);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(*result + 200) = v4;
    }
  }

  return result;
}

double ArcDocument.theme.getter@<D0>(void *a1@<X8>)
{
  v4 = v1[17];
  v3 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[22];
  v9 = v1[23];
  if (v5)
  {
    v15 = &type metadata for ResolvedTheme;
    v16 = &protocol witness table for ResolvedTheme;
    v10 = swift_allocObject();
    *&v14 = v10;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v10[5] = v6;
    v10[6] = v7;
    v10[7] = v8;
    v10[8] = v9;
    sub_242C65564(&v14, a1);
  }

  else
  {
    v11 = v1[15];
    v12 = v1[16];
    a1[3] = &type metadata for EditableTheme;
    a1[4] = &protocol witness table for EditableTheme;
    *a1 = v11;
    a1[1] = v12;
  }

  return sub_242E72A80(v4, v3, v5, v6, v7, v8);
}

double sub_242E72A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

void *ArcDocument.extras.getter()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI13ResolvedThemeVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_242E72BE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_242E72C2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Color.encode(to:)(void *a1, uint64_t a2)
{
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_242F046E0();
  if (!v7 || (v8 = v7, CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v6, kCGRenderingIntentDefault, v7, 0), v8, !CopyByMatchingToColorSpace))
  {
    CopyByMatchingToColorSpace = v6;
LABEL_15:

LABEL_16:
    v20 = sub_242F05B40();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040);
    v22[3] = MEMORY[0x277CE0F78];
    *v22 = a2;
    __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);

    sub_242F06490();
    sub_242F05AF0();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D841A8], v20);
    return swift_willThrow();
  }

  if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) != 4 || (v10 = sub_242F056C0()) == 0)
  {

    goto LABEL_15;
  }

  v11 = v10;
  v23[8] = v2;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064B0();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    while (1)
    {
      v14 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4180, &qword_242F235F8);
      result = swift_allocObject();
      *(result + 16) = xmmword_242F09510;
      v16 = v14 * 255.0;
      if (COERCE__INT64(fabs(v14 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v16 <= -9.22337204e18)
      {
        goto LABEL_19;
      }

      if (v16 >= 9.22337204e18)
      {
        goto LABEL_20;
      }

      *(result + 56) = MEMORY[0x277D83B88];
      *(result + 64) = MEMORY[0x277D83C10];
      *(result + 32) = v16;
      v17 = sub_242F04F60();
      v19 = v18;

      MEMORY[0x245D26660](v17, v19);

      ++v13;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_17:

    MEMORY[0x245D26660](0, 0xE000000000000000);

    __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_242F06180();

    return __swift_destroy_boxed_opaque_existential_2Tm(v23);
  }

  return result;
}

__int128 *Color.init(from:)(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06460();
  if (v1)
  {

    __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
    sub_242F06470();
    __swift_project_boxed_opaque_existential_2Tm(v24, v25);
    v6 = sub_242F06120();
    v8 = v7;
    if ((sub_242F050F0() & 1) != 0 && sub_242F05000() == 9)
    {
      v9 = sub_242F05030();
      v10 = sub_242E2246C(v9, v6, v8);
      MEMORY[0x245D265B0](v10);

      v11 = objc_allocWithZone(MEMORY[0x277CCAC80]);
      v12 = sub_242F04F00();

      v13 = [v11 initWithString_];

      v22 = 0;
      if ([v13 scanHexLongLong_])
      {

        CGColorCreateSRGB(BYTE3(v22) / 255.0, BYTE2(v22) / 255.0, BYTE1(v22) / 255.0, v22 / 255.0);
        p_alpha = sub_242F047C0();
      }

      else
      {
        v18 = sub_242F05B10();
        swift_allocError();
        v21 = v19;
        __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
        sub_242F06450();
        *&alpha = 0;
        *(&alpha + 1) = 0xE000000000000000;
        sub_242F05A80();

        strcpy(&alpha, "invalid color ");
        HIBYTE(alpha) = -18;
        MEMORY[0x245D26660](v6, v8);

        p_alpha = v21;
        sub_242F05AF0();
        (*(*(v18 - 8) + 104))(v21, *MEMORY[0x277D84168], v18);
        swift_willThrow();
      }
    }

    else
    {
      v14 = sub_242F05B10();
      swift_allocError();
      v16 = v15;
      __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
      sub_242F06450();
      sub_242F05A80();

      strcpy(&alpha, "invalid color ");
      HIBYTE(alpha) = -18;
      p_alpha = &alpha;
      MEMORY[0x245D26660](v6, v8);

      sub_242F05AF0();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84168], v14);
      swift_willThrow();
    }
  }

  else
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    sub_242C7DBD0(v3, v4, v5);
    sub_242F05F80();
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    sub_242F05F80();
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    sub_242F05F80();
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    sub_242F05F80();
    CGColorCreateSRGB(*&alpha, *&alpha, *&alpha, *&alpha);
    p_alpha = sub_242F047C0();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v24);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return p_alpha;
}

__int128 *sub_242E73600@<X0>(void *a1@<X0>, __int128 **a2@<X8>)
{
  result = Color.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_242E73648(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x277D84F90];
  sub_242E3BCB0(0, v1, 0);
  v2 = v38;
  v4 = v3 + 64;
  result = sub_242F05940();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v26 = v3 + 72;
  v27 = v1;
  v28 = v8;
  v29 = v3 + 64;
  v30 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v7;
    v11 = *(v3 + 56) + 48 * v6;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 32);
    v32 = *(v11 + 40);
    v33 = *(v11 + 24);
    sub_242C7F6C4(*v11, v13, v14, v33, v15);
    v38 = v2;
    v17 = *(v2 + 16);
    v16 = *(v2 + 24);
    v34 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      sub_242E3BCB0((v16 > 1), v34, 1);
      v2 = v38;
    }

    v36 = &type metadata for ImageAsset;
    v37 = &protocol witness table for ImageAsset;
    v18 = swift_allocObject();
    *&v35 = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 32) = v14;
    *(v18 + 40) = v33;
    *(v18 + 48) = v15;
    *(v18 + 56) = v32;
    *(v2 + 16) = v34;
    result = sub_242C65564(&v35, v2 + 40 * v17 + 32);
    v3 = v30;
    v9 = 1 << *(v30 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v29;
    v19 = *(v29 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v30 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (v26 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_242C9E060(v6, v28, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_242C9E060(v6, v28, 0);
    }

LABEL_4:
    v7 = v31 + 1;
    v6 = v9;
    if (v31 + 1 == v27)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.defaultColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.defaultColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

__n128 Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.init(dataIdentifier:stateColorIDs:defaultColorID:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u8[0] = *a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_242E73A28()
{
  v1 = 0x6C6F436574617473;
  if (*v0 != 1)
  {
    v1 = 0x43746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242E73AA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E77210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E73AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76494(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E73B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76494(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA878, &unk_242F416B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v24 = *(v1 + 2);
  v25 = v9;
  v23 = *(v1 + 3);
  v29 = v1[32];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E76494(v10, v11, v12);
  v13 = sub_242F064C0();
  LOBYTE(v26) = v8;
  v30 = 0;
  sub_242C8AC28(v13, v14, v15);
  sub_242F05F20();
  if (!v2)
  {
    v16 = v29;
    v18 = v23;
    v17 = v24;
    v26 = v25;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_242F05F20();
    v26 = v17;
    v27 = v18;
    v28 = v16;
    v30 = 2;
    v19 = sub_242C7CE5C(v17, v18, v16);
    sub_242C7DEA0(v19, v20, v21);
    sub_242F05F20();
    sub_242C7CEB0(v26, v27, v28);
  }

  return (*(v5 + 8))(v7, v4);
}

double Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(a1, v3);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(v3, v1);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

void Instrument.GaugeStyle.StateSensitiveImage.StatefulSolidColors.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA888, &qword_242F416C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E76494(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v27 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    v27 = 1;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    v16 = sub_242F05E00();
    v17 = v24;
    v27 = 2;
    sub_242C7DFAC(v16, v18, v19);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v20;
    *(a2 + 24) = v21;
    *(a2 + 32) = v22;

    sub_242C7CE5C(v20, v21, v22);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);

    sub_242C7CEB0(v20, v21, v22);
  }
}

double sub_242E74214(uint64_t a1)
{
  v3 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(a1, v3);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E742D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(v4, v2);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

_BYTE *Instrument.GaugeStyle.StateSensitiveImage.StateImages.init(dataIdentifier:images:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void Instrument.GaugeStyle.StateSensitiveImage.StateImages.restoreAssets(from:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v6[2] = a1;
  v4 = sub_242C860DC(sub_242E764E8, v6, v3);
  if (!v2)
  {
    v5 = v4;

    *(v1 + 8) = v5;
  }
}

void sub_242E744C4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  sub_242C7F6C4(*a1, v7, v8, v9, v10);
  ImageAsset.restore(from:)(a2);
  if (v3)
  {
    sub_242C7F724(v6, v7, v8, v9, v10);
  }

  else
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
    *(a3 + 40) = v11;
  }
}

uint64_t sub_242E7456C()
{
  if (*v0)
  {
    return 0x736567616D69;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

void sub_242E745B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

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

uint64_t sub_242E74690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76504(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E746CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76504(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StateImages.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA890, &unk_242F416C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *v1;
  v16[0] = *(v1 + 1);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E76504(v9, v10, v11);
  v12 = sub_242F064C0();
  v19 = v8;
  v18 = 0;
  sub_242C8AC28(v12, v13, v14);
  sub_242F05F20();
  if (!v2)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448, &qword_242F0A900);
    sub_242E2D3D0(&qword_27ECF0450, sub_242C8B8E8, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StateImages.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242C799A8(a1, v3);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StateImages.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(v3, v1);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.StateImages.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA8A0, &unk_242F416D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E76504(v9, v10, v11);
  v12 = sub_242F06480();
  if (!v2)
  {
    v20 = 0;
    sub_242C8AC7C(v12, v13, v14);
    sub_242F05E00();
    v15 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0448, &qword_242F0A900);
    v19 = 1;
    sub_242E2D3D0(&qword_27ECF0470, sub_242C8BA70, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v16 = v18[1];
    *a2 = v15;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

void sub_242E74C44(uint64_t a1)
{
  v3 = *(v1 + 8);
  v6[2] = a1;
  v4 = sub_242C860DC(sub_242E77468, v6, v3);
  if (!v2)
  {
    v5 = v4;

    *(v1 + 8) = v5;
  }
}

uint64_t sub_242E74CDC()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242E74D5C(__int128 *a1)
{
  v3 = *(v1 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242C799A8(a1, v3);
}

uint64_t sub_242E74DD8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(v4, v2);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.defaultImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 32);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  return sub_242C7F6C4(v2, v3, v4, v5, v7);
}

__n128 Instrument.GaugeStyle.StateSensitiveImage.defaultImage.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_242C7F724(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

double Instrument.GaugeStyle.StateSensitiveImage.stateImages.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

void Instrument.GaugeStyle.StateSensitiveImage.stateImages.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

void Instrument.GaugeStyle.StateSensitiveImage.statefulSolidColors.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  sub_242E76558(v2, v3, v4, v5, v6);
}

__n128 Instrument.GaugeStyle.StateSensitiveImage.statefulSolidColors.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242E765B4(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  *(v1 + 96) = v3;
  return result;
}

__n128 Instrument.GaugeStyle.StateSensitiveImage.init(defaultImage:stateImages:statefulSolidColors:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = a2[1];
  v14 = *a3;
  v9 = a3[1].n128_u64[0];
  v10 = a3[1].n128_u64[1];
  v11 = a3[2].n128_u8[0];
  v12 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = v5;
  *(a4 + 40) = v6;

  *(a4 + 48) = v7;
  *(a4 + 56) = v8;
  sub_242E765B4(0, 0, 0, 0, 0);
  result = v14;
  *(a4 + 64) = v14;
  *(a4 + 80) = v9;
  *(a4 + 88) = v10;
  *(a4 + 96) = v11;
  return result;
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.assets.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_242F09510;
  *(v8 + 56) = &type metadata for ImageAsset;
  *(v8 + 64) = &protocol witness table for ImageAsset;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v2;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  sub_242C7F6C4(v1, v2, v3, v4, v5);
  if (v7)
  {
    v10 = sub_242E73648(v7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  sub_242C819FC(v10);
  return v8;
}

void Instrument.GaugeStyle.StateSensitiveImage.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      MEMORY[0x28223BE20](v4);
      v7[2] = a1;
      v6 = sub_242C860DC(sub_242E77468, v7, v5);

      *(v1 + 56) = v6;
    }
  }
}

unint64_t sub_242E75224()
{
  v1 = 0x616D496574617473;
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
    return 0x49746C7561666564;
  }
}

uint64_t sub_242E75294@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E77340(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E752BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76AA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E752F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E76AA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.encode(to:)(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA8A8, &qword_242F416E8);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = &v36 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 40);
  v11 = *(v1 + 56);
  v10 = *(v1 + 64);
  v41 = *(v1 + 48);
  v42 = v11;
  v40 = v10;
  v12 = *(v1 + 72);
  v38 = *(v1 + 80);
  v39 = v12;
  v37 = *(v1 + 88);
  v54 = *(v1 + 96);
  v13 = a1[3];
  v43 = a1[4];
  v44 = v9;
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  v15 = sub_242C7F6C4(v5, v6, v8, v7, v14);
  sub_242E76AA0(v15, v16, v17);
  v18 = v45;
  v19 = sub_242F064C0();
  v48 = v5;
  v49 = v6;
  v50 = v8;
  v51 = v7;
  v20 = v4;
  v52 = v14;
  v53 = v44;
  v55 = 0;
  sub_242C8B8E8(v19, v21, v22);
  v23 = v46;
  sub_242F05F20();
  sub_242C7F724(v48, v49, v50, v51, v52);
  if (v23)
  {
    return (*(v47 + 8))(v4, v18);
  }

  v28 = v54;
  v30 = v37;
  v29 = v38;
  v32 = v39;
  v31 = v40;
  v48 = v41;
  v49 = v42;
  v55 = 1;
  sub_242E76AF4(v24, v25, v26);

  sub_242F05EB0();

  v48 = v31;
  v49 = v32;
  v50 = v29;
  v51 = v30;
  v52 = v28;
  v55 = 2;
  sub_242E76558(v31, v32, v29, v30, v28);
  sub_242E76B48(v33, v34, v35);
  sub_242F05EB0();
  sub_242E765B4(v48, v49, v50, v51, v52);
  return (*(v47 + 8))(v20, v18);
}

double Instrument.GaugeStyle.StateSensitiveImage.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 72);
  if (v6 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v3)
    {
      v11 = v3;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(a1, v4);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v5)
    {
      sub_242F063B0();
      v10 = v5;
      sub_242F05820();

      if (v6)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x245D279D0](v12);
  }

LABEL_13:
  MEMORY[0x245D279A0](v7);
  if (!v8)
  {
    sub_242F063B0();
    if (v9)
    {
      goto LABEL_15;
    }

LABEL_19:
    sub_242F063B0();
    return result;
  }

  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(a1, v8);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(a1, v9);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t Instrument.GaugeStyle.StateSensitiveImage.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 72);
  sub_242F06390();
  if (v4 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v1)
    {
      v9 = v1;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v12, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v3)
    {
      sub_242F063B0();
      v8 = v3;
      sub_242F05820();

      if (v4)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x245D279D0](v10);
  }

LABEL_13:
  MEMORY[0x245D279A0](v5);
  if (!v6)
  {
    sub_242F063B0();
    if (v7)
    {
      goto LABEL_15;
    }

LABEL_17:
    sub_242F063B0();
    return sub_242F063E0();
  }

  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(v12, v6);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(v12, v7);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

void Instrument.GaugeStyle.StateSensitiveImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA8C8, &qword_242F416F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E76AA0(v9, v10, v11);
  v12 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);

    sub_242E765B4(0, 0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_242C8BA70(v12, v13, v14);
    v15 = sub_242F05E00();
    v16 = v45;
    v36 = v46;
    v37 = v47;
    v62 = v48;
    v17 = v49;
    LOBYTE(v38) = 1;
    sub_242E76B9C(v15, v18, v19);
    sub_242F05D90();
    v35 = v17;
    v20 = v46;
    v34 = v45;

    v63 = 2;
    sub_242E76BF0(v21, v22, v23);
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v24 = v57;
    v25 = v58;
    v32 = v57;
    v26 = v59;
    v27 = v60;
    HIDWORD(v31) = v61;
    sub_242E765B4(0, 0, 0, 0, 0);
    v33 = v16;
    *&v38 = v16;
    *(&v38 + 1) = v36;
    v39 = v37;
    LOBYTE(v16) = v62;
    LOBYTE(v40) = v62;
    *(&v40 + 1) = v35;
    *&v41 = v34;
    *(&v41 + 1) = v20;
    *&v42 = v24;
    *(&v42 + 1) = v25;
    *&v43 = v26;
    *(&v43 + 1) = v27;
    LOBYTE(v24) = BYTE4(v31);
    v44 = BYTE4(v31);
    *(a2 + 96) = BYTE4(v31);
    v28 = v43;
    *(a2 + 64) = v42;
    *(a2 + 80) = v28;
    v29 = v39;
    *a2 = v38;
    *(a2 + 16) = v29;
    v30 = v41;
    *(a2 + 32) = v40;
    *(a2 + 48) = v30;
    sub_242E76C44(&v38, &v45);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v45 = v33;
    v46 = v36;
    v47 = v37;
    v48 = v16;
    v49 = v35;
    v50 = v34;
    v51 = v20;
    v52 = v32;
    v53 = v25;
    v54 = v26;
    v55 = v27;
    v56 = v24;
    sub_242E76C7C(&v45);
  }
}

void sub_242E75F08(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      MEMORY[0x28223BE20](v4);
      v7[2] = a1;
      v6 = sub_242C860DC(sub_242E77468, v7, v5);

      *(v1 + 56) = v6;
    }
  }
}

uint64_t sub_242E75FEC(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  sub_242F06390();
  if (v5 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063B0();
    if (v2)
    {
      v10 = v2;
      sub_242F05820();
    }

    sub_242F04DD0();
    sub_242C78CCC(v13, v3);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    sub_242F04DD0();
    if (v4)
    {
      sub_242F063B0();
      v9 = v4;
      sub_242F05820();

      if (v5)
      {
LABEL_4:
        sub_242F063B0();
        goto LABEL_13;
      }
    }

    else
    {
      sub_242F063B0();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    sub_242F063B0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x245D279D0](v11);
  }

LABEL_13:
  MEMORY[0x245D279A0](v6);
  if (!v7)
  {
    sub_242F063B0();
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_17:
    sub_242F063B0();
    return sub_242F063E0();
  }

  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C799A8(v13, v7);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_242F063B0();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242C79508(v13, v8);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

void _s14CarPlayAssetUI10InstrumentV10GaugeStyleO19StateSensitiveImageV0H6ImagesV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_242F06110();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  sub_242C778E4(v2, v3);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO19StateSensitiveImageV19StatefulSolidColorsV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_242F06110();

    if ((v8 & 1) == 0)
    {
LABEL_9:
      v13 = 0;
      return v13 & 1;
    }
  }

  if ((sub_242C75A30(v2, v3) & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = Theme.ColorID.rawValue.getter();
  v11 = v10;
  if (v9 == Theme.ColorID.rawValue.getter() && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_242F06110();
  }

  return v13 & 1;
}

unint64_t sub_242E76494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA880;
  if (!qword_27ECFA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA880);
  }

  return result;
}

unint64_t sub_242E76504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA898;
  if (!qword_27ECFA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA898);
  }

  return result;
}

void sub_242E76558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_242C7CE5C(a3, a4, a5);
  }
}

void sub_242E765B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_242C7CEB0(a3, a4, a5);
  }
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO19StateSensitiveImageV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v52 = *(a1 + 56);
  v49 = *(a1 + 64);
  v47 = *(a1 + 48);
  v48 = *(a1 + 72);
  v43 = *(a1 + 80);
  v44 = *(a1 + 88);
  v45 = *(a1 + 96);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v46 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v42 = *(a2 + 72);
  v50 = *(a2 + 88);
  v51 = *(a2 + 96);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v58 = *a1;
  v59 = v2;
  v60 = v3;
  v61 = v4;
  v62 = v14;
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = v9;
  v57 = v15;
  sub_242C7F6C4(v58, v2, v3, v4, v14);
  sub_242C7F6C4(v6, v7, v8, v9, v15);
  LOBYTE(v6) = _s14CarPlayAssetUI05ImageC0V0E4TypeO2eeoiySbAE_AEtFZ_0(&v58, &v53);
  sub_242C7F724(v53, v54, v55, v56, v57);
  sub_242C7F724(v58, v59, v60, v61, v62);
  result = 0;
  if ((v6 & 1) != 0 && v5 == v10)
  {
    if (v52)
    {
      if (v11)
      {
        v17 = v13;
        v18 = v12;
        LOBYTE(v58) = v47;
        LOBYTE(v53) = v46;
        v19 = InstrumentDataIdentifier.rawValue.getter();
        v21 = v20;
        if (v19 == InstrumentDataIdentifier.rawValue.getter() && v21 == v22)
        {
          swift_bridgeObjectRetain_n();

          v24 = v48;
          v23 = v49;
        }

        else
        {
          v27 = sub_242F06110();
          swift_bridgeObjectRetain_n();

          v24 = v48;
          v23 = v49;
          if ((v27 & 1) == 0)
          {
            swift_bridgeObjectRelease_n();

            return 0;
          }
        }

        sub_242C778E4(v52, v11);
        v29 = v28;
        swift_bridgeObjectRelease_n();

        v25 = v51;
        v26 = v50;
        if (v29)
        {
          if (v24)
          {
LABEL_13:
            v58 = v23;
            v59 = v24;
            v31 = v43;
            v30 = v44;
            v60 = v43;
            v61 = v44;
            v32 = v45;
            v62 = v45;
            v33 = v42;
            if (v42)
            {
              LOBYTE(v53) = v18;
              v54 = v42;
              v55 = v17;
              v56 = v26;
              v57 = v25;
              sub_242E76558(v23, v24, v43, v44, v45);
              sub_242E76558(v18, v42, v17, v26, v25);
              sub_242E76558(v23, v24, v43, v44, v45);
              v34 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO19StateSensitiveImageV19StatefulSolidColorsV2eeoiySbAI_AItFZ_0(&v58, &v53);
              v35 = v23;
              v36 = v55;
              v37 = v56;
              v38 = v57;

              sub_242C7CEB0(v36, v37, v38);
              v39 = v60;
              v40 = v61;
              v41 = v62;

              sub_242C7CEB0(v39, v40, v41);
              sub_242E765B4(v35, v24, v43, v44, v45);
              return (v34 & 1) != 0;
            }

            sub_242E76558(v23, v24, v43, v44, v45);
            sub_242E76558(v18, 0, v17, v26, v25);
            sub_242E76558(v23, v24, v43, v44, v45);

            sub_242C7CEB0(v43, v44, v45);
            goto LABEL_21;
          }

LABEL_17:
          v31 = v43;
          v30 = v44;
          v32 = v45;
          sub_242E76558(v23, 0, v43, v44, v45);
          v33 = v42;
          if (!v42)
          {
            sub_242E76558(v18, 0, v17, v26, v25);
            sub_242E765B4(v23, 0, v43, v44, v45);
            return 1;
          }

          sub_242E76558(v18, v42, v17, v26, v25);
LABEL_21:
          sub_242E765B4(v23, v24, v31, v30, v32);
          sub_242E765B4(v18, v33, v17, v26, v25);
        }

        return 0;
      }
    }

    else
    {
      v25 = v51;
      v26 = v50;
      if (!v11)
      {
        v17 = v13;
        v18 = v12;

        v24 = v48;
        v23 = v49;
        if (v48)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_242E76AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8B0;
  if (!qword_27ECFA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8B0);
  }

  return result;
}

unint64_t sub_242E76AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8B8;
  if (!qword_27ECFA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8B8);
  }

  return result;
}

unint64_t sub_242E76B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8C0;
  if (!qword_27ECFA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8C0);
  }

  return result;
}

unint64_t sub_242E76B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8D0;
  if (!qword_27ECFA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8D0);
  }

  return result;
}

unint64_t sub_242E76BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8D8;
  if (!qword_27ECFA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8D8);
  }

  return result;
}

unint64_t sub_242E76CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFA8E0;
  if (!qword_27ECFA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFA8E0);
  }

  return result;
}