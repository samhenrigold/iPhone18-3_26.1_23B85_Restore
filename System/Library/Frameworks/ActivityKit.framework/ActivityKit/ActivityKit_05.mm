uint64_t sub_1A2CCF0EC(uint64_t a1)
{

  sub_1A2D08174();
}

uint64_t sub_1A2CCF134(uint64_t a1)
{

  sub_1A2D08174();
}

uint64_t sub_1A2CCF184(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2C8ED48;

  return sub_1A2CCBFB8(a1);
}

uint64_t sub_1A2CCF25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_24Tm()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1A2C55840(*(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t dispatch thunk of Activity.update(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 392) + **(*v1 + 392));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A2C8ED44;

  return v6(a1);
}

uint64_t dispatch thunk of Activity.update(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A2C8ED44;

  return v6(a1);
}

uint64_t dispatch thunk of Activity.update(using:alertConfiguration:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 408) + **(*v2 + 408));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A2C8ED44;

  return v8(a1, a2);
}

uint64_t dispatch thunk of Activity.update(_:alertConfiguration:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 424) + **(*v3 + 424));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of Activity.end(using:dismissalPolicy:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 432) + **(*v2 + 432));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A2C8ED48;

  return v8(a1, a2);
}

uint64_t dispatch thunk of Activity.end(_:dismissalPolicy:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 440) + **(*v2 + 440));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A2C8ED44;

  return v8(a1, a2);
}

uint64_t dispatch thunk of Activity.end(_:dismissalPolicy:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 448) + **(*v3 + 448));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of Activity.end(using:)(uint64_t a1)
{
  v6 = (*(*v1 + 480) + **(*v1 + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A2C8ED44;

  return v6(a1);
}

uint64_t dispatch thunk of Activity.end(using:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 488) + **(*v2 + 488));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A2C8ED44;

  return v8(a1, a2);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1A2CD01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A2CD01F4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1A2D08054();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CD02C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A2CD0314(uint64_t a1)
{
  v3[0] = swift_getAssociatedTypeWitness();
  v3[1] = swift_getAssociatedConformanceWitness();
  v3[2] = swift_getAssociatedConformanceWitness();
  v3[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent(255, v3);
  result = sub_1A2D08054();
  if (v2 <= 0x3F)
  {
    v4 = 0;
    v3[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CD0478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2CD04E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1A2CD13F4(319, a4, a5, MEMORY[0x1E69CA960]);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1A2CD068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2CD06E8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v16 = 0;
    v25 = v1;
    v15[0] = swift_getAssociatedTypeWitness();
    v15[1] = swift_getAssociatedConformanceWitness();
    v15[2] = swift_getAssociatedConformanceWitness();
    v15[3] = swift_getAssociatedConformanceWitness();
    v3 = type metadata accessor for ActivityContent(319, v15);
    if (v4 <= 0x3F)
    {
      v17 = 0;
      v26 = v3;
      sub_1A2CD1390(319);
      if (v6 <= 0x3F)
      {
        v18 = 0;
        v27 = v5;
        v28 = v5;
        v19 = 0;
        v29 = &type metadata for ActivityPresentationOptions;
        sub_1A2CD13F4(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
        if (v8 <= 0x3F)
        {
          v30 = v7;
          v31 = MEMORY[0x1E69E6370];
          v20 = 0;
          v32 = MEMORY[0x1E69E6370];
          v33 = MEMORY[0x1E69E6370];
          v21 = 0;
          v34 = MEMORY[0x1E69E6370];
          sub_1A2CD13F4(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v10 <= 0x3F)
          {
            v22 = 0;
            v35 = v9;
            v11 = sub_1A2D07F94();
            if (v12 <= 0x3F)
            {
              v23 = 0;
              v36 = v11;
              sub_1A2CD1444(319);
              if (v14 <= 0x3F)
              {
                v24 = 0;
                v37 = v13;
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A2CD0904(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v59 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v56 = sub_1A2D07F94();
  v8 = *(v56 - 8);
  v62 = v8;
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v57 = v10;
  v58 = v7;
  if (v10 > v7)
  {
    v7 = v10;
  }

  v60 = v5;
  if (v7 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(sub_1A2D07EF4() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v16 - 1;
  if (v12 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v8 + 80);
  v21 = *(v6 + 64);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(v13 + 64);
  v25 = 7;
  if (!v9)
  {
    v25 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(v6 + 80) & 0xF8 | v20 | 7;
  v27 = *(v4 + 64) + v26;
  v28 = v21 + v20;
  v29 = (v21 + v20) & ~v20;
  v30 = v23 | 7;
  v31 = v24 + v23;
  v32 = v24 + 7;
  v33 = ((v25 + v22 + v29) & 0xFFFFFFFFFFFFFFF8) + 8;
  v34 = v20 + 13;
  v35 = (v23 | 7) + v22;
  v36 = a1;
  if (v19 >= a2)
  {
    goto LABEL_46;
  }

  v37 = ((((v32 + (v31 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + ((v35 + ((v34 + ((((((v33 + (v27 & ~v26) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v30) + 10;
  if (v37 <= 3)
  {
    v38 = ((a2 - v19 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v38 = 2;
  }

  if (v38 >= 0x10000)
  {
    v39 = 4;
  }

  else
  {
    v39 = 2;
  }

  if (v38 < 0x100)
  {
    v39 = 1;
  }

  if (v38 >= 2)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40 <= 1)
  {
    if (!v40)
    {
      goto LABEL_46;
    }

    v41 = *(a1 + v37);
    if (!*(a1 + v37))
    {
      goto LABEL_46;
    }

LABEL_42:
    v43 = (v41 - 1) << (8 * v37);
    if (v37 <= 3)
    {
      v44 = *a1;
    }

    else
    {
      v43 = 0;
      v44 = *a1;
    }

    return v19 + (v44 | v43) + 1;
  }

  if (v40 == 2)
  {
    v41 = *(a1 + v37);
    if (*(a1 + v37))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v41 = *(a1 + v37);
    if (v41)
    {
      goto LABEL_42;
    }
  }

LABEL_46:
  if (v60 == v19)
  {
    v45 = v59;
    v46 = *(v4 + 48);
    v47 = v60;
LABEL_48:

    return v46(v36, v47, v45);
  }

  v48 = ~v20;
  v36 = ((a1 + v27) & ~v26);
  if (v7 == v19)
  {
    v47 = v58;
    if (v58 >= v57)
    {
      v46 = *(v6 + 48);
      v45 = AssociatedTypeWitness;
      goto LABEL_48;
    }

    v49 = (*(v62 + 48))((v36 + v28) & v48, v9, v56);
LABEL_54:
    if (v49 >= 2)
    {
      return v49 - 1;
    }

    else
    {
      return 0;
    }
  }

  v50 = (v36 + v33);
  if ((v18 & 0x80000000) != 0)
  {
    v36 = ((v34 + ((((((v50 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v48);
    if (v9 == v19)
    {
      v46 = *(v62 + 48);
      v47 = v9;
      v45 = v56;
      goto LABEL_48;
    }

    v52 = (v36 + v35) & ~v30;
    if (v15 < 0x7FFFFFFE)
    {
      v53 = *(((v32 + ((v31 + v52) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v53 >= 0xFFFFFFFF)
      {
        LODWORD(v53) = -1;
      }

      v54 = v53 - 1;
      if (v54 < 0)
      {
        v54 = -1;
      }

      v49 = v54 + 1;
    }

    else
    {
      v49 = (*(v14 + 48))(v52);
    }

    goto LABEL_54;
  }

  v51 = *v50;
  if (*v50 >= 0xFFFFFFFF)
  {
    LODWORD(v51) = -1;
  }

  return (v51 + 1);
}

void sub_1A2CD0DC8(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v61 = v4;
  v5 = *(v4 + 84);
  v62 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v57 = sub_1A2D07F94();
  v8 = *(v57 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v59 = v7;
  v60 = v10;
  if (v10 > v7)
  {
    v7 = v10;
  }

  v63 = v5;
  if (v7 <= v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = 0;
  v14 = *(sub_1A2D07EF4() - 8);
  v15 = *(v14 + 84);
  v16 = *(v4 + 64);
  v17 = *(v8 + 80);
  v18 = *(v6 + 64);
  v19 = *(v8 + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v15 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v12 <= v22 - 1)
  {
    v23 = v22 - 1;
  }

  else
  {
    v23 = v12;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v6 + 80) & 0xF8 | v17 | 7;
  v26 = v16 + v25;
  v27 = (v16 + v25) & ~v25;
  v28 = v18 + v17;
  v29 = (v18 + v17) & ~v17;
  if (v9)
  {
    v30 = *(v8 + 64);
  }

  else
  {
    v30 = v19 + 1;
  }

  v31 = v20 | 7;
  v32 = v21 + v20;
  v33 = v21 + 7;
  v34 = ((((v21 + 7 + ((v21 + v20) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  v35 = ((v29 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v36 = v17 + 13;
  v37 = (v20 | 7) + v19;
  v38 = ((v37 + ((v17 + 13 + ((((((v35 + v27 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & ~(v20 | 7)) + v34;
  if (v24 < a3)
  {
    if (v38 <= 3)
    {
      v39 = ((a3 - v24 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v39 = 2;
    }

    if (v39 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v39 < 0x100)
    {
      v13 = 1;
    }

    if (v39 < 2)
    {
      v13 = 0;
    }
  }

  if (v24 >= a2)
  {
    v42 = a1;
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *(a1 + v38) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *(a1 + v38) = 0;
    }

    else if (v13)
    {
      *(a1 + v38) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if (v63 == v24)
    {
      v43 = v62;
      v44 = *(v61 + 56);
      v45 = a2;
      v46 = v63;
LABEL_54:

      v44(v42, v45, v46, v43);
      return;
    }

    v47 = ~v17;
    v42 = ((a1 + v26) & ~v25);
    if (v7 == v24)
    {
      v46 = v59;
      if (v59 >= v60)
      {
        v44 = *(v6 + 56);
        v45 = a2;
        v43 = AssociatedTypeWitness;
        goto LABEL_54;
      }

      v48 = ((v42 + v28) & v47);
      if (v60 < a2)
      {
        if (v30 <= 3)
        {
          v49 = ~(-1 << (8 * v30));
        }

        else
        {
          v49 = -1;
        }

        if (!v30)
        {
          return;
        }

        v50 = v49 & (~v60 + a2);
        if (v30 <= 3)
        {
          v51 = v30;
        }

        else
        {
          v51 = 4;
        }

        bzero(((v42 + v28) & v47), v30);
        if (v51 <= 2)
        {
          if (v51 == 1)
          {
            *v48 = v50;
            return;
          }

          goto LABEL_90;
        }

        if (v51 == 3)
        {
          *v48 = v50;
          v48[2] = BYTE2(v50);
          return;
        }

        goto LABEL_93;
      }

      v44 = *(v8 + 56);
      v45 = a2 + 1;
      v42 = ((v42 + v28) & v47);
    }

    else
    {
      v52 = (v42 + v35);
      if ((v23 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v53 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v53 = a2 - 1;
        }

        *v52 = v53;
        return;
      }

      v42 = ((v36 + ((((((v52 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v47);
      if (v9 != v24)
      {
        v48 = ((v42 + v37) & ~v31);
        v50 = a2 - v22;
        if (a2 < v22)
        {
          v54 = a2 + 1;
          if (v15 <= 0x7FFFFFFD)
          {
            v56 = ((v33 + (&v48[v32] & ~v20)) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFD)
            {
              v56[2] = 0;
              v56[3] = 0;
              *v56 = a2 - 2147483646;
              v56[1] = 0;
            }

            else
            {
              v56[1] = v54;
            }
          }

          else
          {
            v55 = *(v14 + 56);

            v55(v48, v54);
          }

          return;
        }

        bzero(((v42 + v37) & ~v31), v34);
        if (v34 <= 3)
        {
LABEL_90:
          *v48 = v50;
          return;
        }

LABEL_93:
        *v48 = v50;
        return;
      }

      v44 = *(v8 + 56);
      v45 = a2;
    }

    v46 = v9;
    v43 = v57;
    goto LABEL_54;
  }

  v40 = ~v24 + a2;
  bzero(a1, v38);
  if (v38 <= 3)
  {
    v41 = HIWORD(v40) + 1;
  }

  else
  {
    v41 = 1;
  }

  if (v38 <= 3)
  {
    *a1 = v40;
    if (v13 > 1)
    {
LABEL_40:
      if (v13 == 2)
      {
        *(a1 + v38) = v41;
      }

      else
      {
        *(a1 + v38) = v41;
      }

      return;
    }
  }

  else
  {
    *a1 = v40;
    if (v13 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v13)
  {
    *(a1 + v38) = v41;
  }
}

void sub_1A2CD1390(uint64_t a1)
{
  if (!qword_1ED709298)
  {
    sub_1A2C5604C();
    v1 = sub_1A2D083C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709298);
    }
  }
}

void sub_1A2CD13F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A2CD1444(uint64_t a1)
{
  if (!qword_1ED709990)
  {
    type metadata accessor for AlertConfiguration(255);
    v1 = sub_1A2D087E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709990);
    }
  }
}

unint64_t sub_1A2CD149C()
{
  result = qword_1EB0A1178;
  if (!qword_1EB0A1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1178);
  }

  return result;
}

uint64_t sub_1A2CD1558(uint64_t a1)
{
  v2 = sub_1A2C74724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1594(uint64_t a1)
{
  v2 = sub_1A2C74724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD15DC(uint64_t a1)
{
  v2 = sub_1A2C746D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1618(uint64_t a1)
{
  v2 = sub_1A2C746D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD1654(uint64_t a1)
{
  v2 = sub_1A2C957C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1690(uint64_t a1)
{
  v2 = sub_1A2C957C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD16CC(uint64_t a1)
{
  v2 = sub_1A2CD1888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1708(uint64_t a1)
{
  v2 = sub_1A2CD1888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD1744(uint64_t a1)
{
  v2 = sub_1A2CD18DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1780(uint64_t a1)
{
  v2 = sub_1A2CD18DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD17BC(uint64_t a1)
{
  v2 = sub_1A2CD1834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD17F8(uint64_t a1)
{
  v2 = sub_1A2CD1834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CD1834()
{
  result = qword_1EB0A11B0;
  if (!qword_1EB0A11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11B0);
  }

  return result;
}

unint64_t sub_1A2CD1888()
{
  result = qword_1EB09F678;
  if (!qword_1EB09F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F678);
  }

  return result;
}

unint64_t sub_1A2CD18DC()
{
  result = qword_1EB0A11B8;
  if (!qword_1EB0A11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11B8);
  }

  return result;
}

uint64_t ActivityState.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CD19A8()
{
  result = qword_1EB0A11F0;
  if (!qword_1EB0A11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11F0);
  }

  return result;
}

unint64_t sub_1A2CD19FC(void *a1)
{
  a1[1] = sub_1A2C78A64();
  a1[2] = sub_1A2C74124();
  result = sub_1A2CD1A34();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CD1A34()
{
  result = qword_1EB0A11F8;
  if (!qword_1EB0A11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11F8);
  }

  return result;
}

uint64_t sub_1A2CD1A88(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C74124();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CD1B44(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v4 = sub_1A2D07F44();
  v6 = v5;
  sub_1A2C78A64();
  sub_1A2D07E64();
  sub_1A2C55840(v4, v6);

  *a2 = v8;
  return result;
}

unint64_t sub_1A2CD1C88()
{
  result = qword_1EB0A1200;
  if (!qword_1EB0A1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1200);
  }

  return result;
}

unint64_t sub_1A2CD1CE0()
{
  result = qword_1ED709028;
  if (!qword_1ED709028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709028);
  }

  return result;
}

unint64_t sub_1A2CD1D38()
{
  result = qword_1ED709030;
  if (!qword_1ED709030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709030);
  }

  return result;
}

unint64_t sub_1A2CD1D90()
{
  result = qword_1ED709218;
  if (!qword_1ED709218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709218);
  }

  return result;
}

unint64_t sub_1A2CD1DE8()
{
  result = qword_1ED709220;
  if (!qword_1ED709220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709220);
  }

  return result;
}

unint64_t sub_1A2CD1E40()
{
  result = qword_1ED709230;
  if (!qword_1ED709230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709230);
  }

  return result;
}

unint64_t sub_1A2CD1E98()
{
  result = qword_1ED709238;
  if (!qword_1ED709238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709238);
  }

  return result;
}

unint64_t sub_1A2CD1EF0()
{
  result = qword_1ED709200;
  if (!qword_1ED709200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709200);
  }

  return result;
}

unint64_t sub_1A2CD1F48()
{
  result = qword_1ED709208;
  if (!qword_1ED709208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709208);
  }

  return result;
}

unint64_t sub_1A2CD1FA0()
{
  result = qword_1ED7090D8;
  if (!qword_1ED7090D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090D8);
  }

  return result;
}

unint64_t sub_1A2CD1FF8()
{
  result = qword_1ED7090E0;
  if (!qword_1ED7090E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090E0);
  }

  return result;
}

unint64_t sub_1A2CD2050()
{
  result = qword_1ED709240;
  if (!qword_1ED709240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709240);
  }

  return result;
}

unint64_t sub_1A2CD20A8()
{
  result = qword_1ED709248;
  if (!qword_1ED709248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709248);
  }

  return result;
}

uint64_t sub_1A2CD20FC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708A38);
  __swift_project_value_buffer(v0, qword_1ED708A38);
  return sub_1A2D08004();
}

uint64_t static ActivityAuthorizationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD220C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD2330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144656C617473 && a2 == 0xE900000000000065 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xEE0065726F635365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A2CD248C(unsigned __int8 a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CD24D4(char a1)
{
  if (!a1)
  {
    return 0x6574617473;
  }

  if (a1 == 1)
  {
    return 0x746144656C617473;
  }

  return 0x636E6176656C6572;
}

uint64_t sub_1A2CD2570(uint64_t a1)
{
  sub_1A2D08C14();
  sub_1A2CD2464(v3, *v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CD25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CD2330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CD2600@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1A2CD4450();
  *a2 = result;
  return result;
}

uint64_t sub_1A2CD2634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A2CD2688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ActivityContent.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  v7 = *(a1 + 16);
  v9 = MEMORY[0x1EEE9AC00](v8);
  strcpy(v24, "State: ");
  v24[1] = 0xE700000000000000;
  (*(v11 + 16))(v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v7, v9);
  v12 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v12);

  v13 = v24[0];
  v14 = v24[1];
  strcpy(v24, "Stale date: ");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  sub_1A2C7214C(v2 + *(a1 + 52), v6);
  v15 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v15);

  v16 = v24[0];
  v17 = v24[1];
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1A2D08864();

  v24[0] = 0xD000000000000011;
  v24[1] = 0x80000001A2D1A560;
  v18 = sub_1A2D08644();
  MEMORY[0x1A58E4150](v18);

  v19 = v24[0];
  v20 = v24[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A2D0FAE0;
  *(v21 + 32) = v13;
  *(v21 + 40) = v14;
  *(v21 + 48) = v16;
  *(v21 + 56) = v17;
  *(v21 + 64) = v19;
  *(v21 + 72) = v20;
  v22 = MEMORY[0x1A58E4220]();

  return v22;
}

uint64_t sub_1A2CD2944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(a1, WitnessTable);
}

uint64_t sub_1A2CD2998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(a1, a2, a3, WitnessTable);
}

BOOL sub_1A2CD2A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1A2CD2A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)(a1, a2, a3);
}

uint64_t ActivityContent.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = v3;
  v10[1] = a2;
  v13[0] = v3;
  v13[1] = v11;
  type metadata accessor for ActivityContent.CodingKeys(255, v13);
  swift_getWitnessTable();
  v4 = sub_1A2D08AF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D08C74();
  LOBYTE(v13[0]) = 0;
  v8 = v14;
  sub_1A2D08AE4();
  if (!v8)
  {
    LOBYTE(v13[0]) = 1;
    sub_1A2D07F94();
    sub_1A2C6D4B0(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A2D08AA4();
    LOBYTE(v13[0]) = 2;
    sub_1A2D08AD4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t OpaqueActivityContent.contentState.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A2C55840(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t OpaqueActivityContent.staleDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OpaqueActivityContent(0) + 20);

  return sub_1A2C6D68C(a1, v3);
}

uint64_t OpaqueActivityContent.init(contentState:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for OpaqueActivityContent(0);
  v11 = *(v10 + 20);
  v12 = sub_1A2D07F94();
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  *a4 = a1;
  *(a4 + 1) = a2;
  result = sub_1A2C6D68C(a3, &a4[v11]);
  *&a4[*(v10 + 24)] = a5;
  return result;
}

uint64_t OpaqueActivityContent.asTypedContentState<A>()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v26 = sub_1A2D087E4();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v23 = *(a1 - 8);
  v13 = *(v23 + 56);
  v13(&v20 - v11, 1, 1, a1, v10);
  sub_1A2D07D54();
  swift_allocObject();
  sub_1A2D07D44();
  v14 = v25;
  sub_1A2D07D34();
  if (v14)
  {
    (*(v4 + 8))(v12, v26);
  }

  else
  {
    v16 = *(v4 + 8);
    v17 = v26;
    v25 = v4 + 8;
    v21 = v16;
    v16(v12, v26);
    (v13)(v8, 0, 1, a1);
    (*(v4 + 32))(v12, v8, v17);
    v18 = v24;
    (*(v4 + 16))(v24, v12, v17);
    v19 = v23;
    result = (*(v23 + 48))(v18, 1, a1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v21(v12, v26);

      return (*(v19 + 32))(v22, v18, a1);
    }
  }

  return result;
}

id OpaqueActivityContent.acActivityContent.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for OpaqueActivityContent(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C6D6FC(v1, v8);
  v9 = *(v6 + 28);
  v10 = *&v8[*(v6 + 32)];
  v11 = sub_1A2D07F24();
  sub_1A2C7214C(&v8[v9], v4);
  v12 = sub_1A2D07F94();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    v14 = sub_1A2D07F54();
    (*(v13 + 8))(v4, v12);
  }

  v15 = [objc_allocWithZone(ACActivityContent) initWithContentData:v11 staleDate:v14 relevanceScore:v10];

  sub_1A2C6FD00(v8);
  return v15;
}

id ACActivityContent.init(opaqueContent:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for OpaqueActivityContent(0);
  sub_1A2C7214C(a1 + *(v8 + 20), v7);
  v9 = *(a1 + *(v8 + 24));
  v10 = sub_1A2D07F24();
  sub_1A2C7214C(v7, v4);
  v11 = sub_1A2D07F94();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v4, 1, v11) != 1)
  {
    v13 = sub_1A2D07F54();
    (*(v12 + 8))(v4, v11);
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentData:v10 staleDate:v13 relevanceScore:v9];

  sub_1A2C54E38(v7, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6FD00(a1);
  return v14;
}

uint64_t sub_1A2CD3A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746144656C617473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x636E6176656C6572;
    v4 = 0xEE0065726F635365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x53746E65746E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746174;
  }

  v7 = 0x746144656C617473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x636E6176656C6572;
    v8 = 0xEE0065726F635365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x53746E65746E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746174;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A2D08B34();
  }

  return v11 & 1;
}

uint64_t sub_1A2CD3B64()
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CD3C20(uint64_t a1)
{
  sub_1A2D08484();
}

uint64_t sub_1A2CD3CC8(uint64_t a1)
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

unint64_t sub_1A2CD3D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A2CD4458(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A2CD3DB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746174;
  v4 = 0xE900000000000065;
  v5 = 0x746144656C617473;
  if (v2 != 1)
  {
    v5 = 0x636E6176656C6572;
    v4 = 0xEE0065726F635365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53746E65746E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1A2CD3E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CD4458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CD3E50(uint64_t a1)
{
  v2 = sub_1A2C6D3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD3E8C(uint64_t a1)
{
  v2 = sub_1A2C6D3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD3ECC(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D4B0(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CD3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C6D4B0(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2C639DC(v7, a2, &unk_1EB0A0AA0, &unk_1A2D10000);
}

uint64_t sub_1A2CD4188(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CD4208(void *a1)
{
  a1[1] = sub_1A2C6D4B0(&qword_1ED709098, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  a1[2] = sub_1A2C6D4B0(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  result = sub_1A2C6D4B0(qword_1EB0A1228, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CD4314()
{
  result = qword_1EB0A12B0;
  if (!qword_1EB0A12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12B0);
  }

  return result;
}

unint64_t sub_1A2CD436C()
{
  result = qword_1ED7090A0;
  if (!qword_1ED7090A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090A0);
  }

  return result;
}

unint64_t sub_1A2CD43C4()
{
  result = qword_1ED7090A8;
  if (!qword_1ED7090A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090A8);
  }

  return result;
}

unint64_t sub_1A2CD4458(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A2D089C4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1A2CD44A4(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1A2CD451C()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09ECA0);
  __swift_project_value_buffer(v0, qword_1EB09ECA0);
  return sub_1A2D08084();
}

uint64_t sub_1A2CD459C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  sub_1A2C56A78(&qword_1EB0A12C8, &qword_1EB0A12C0, &unk_1A2D10010, MEMORY[0x1E695BFB0]);
  return sub_1A2D081F4();
}

id SubscriptionPreferencesObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *SubscriptionPreferencesObservationClient.init()()
{
  v21 = sub_1A2D086E4();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue;
  v6 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v19[0] = "Relevance Score: ";
  v19[1] = v6;
  sub_1A2D082E4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v21);
  *&v0[v20] = sub_1A2D08724();
  v7 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_serverStartupToken] = -1;
  v8 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient__subscriptionTypePublisher;
  aBlock = 0;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  swift_allocObject();
  *&v0[v8] = sub_1A2D081B4();
  v9 = *&v0[v7];
  *&v0[v7] = 0;

  v10 = type metadata accessor for SubscriptionPreferencesObservationClient();
  v28.receiver = v0;
  v28.super_class = v10;
  v11 = objc_msgSendSuper2(&v28, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1A2CD4A98;
  *(v14 + 24) = v13;
  v26 = sub_1A2C56C14;
  v27 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A2C56C44;
  v25 = &block_descriptor_11;
  v15 = _Block_copy(&aBlock);
  v16 = v11;
  v17 = v12;

  dispatch_sync(v17, v15);

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

void sub_1A2CD4AE0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CD60E8();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CD613C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_25_0;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CD54B4();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CD4D8C(void *a1, char *a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v21 = sub_1A2CD44A4;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C577A8;
  v20 = &block_descriptor_28_0;
  v6 = _Block_copy(&v17);
  v7 = &unk_1F1589630;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v21 = sub_1A2CD6144;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_34;
  v13 = _Block_copy(&v17);
  v14 = a2;

  [a1 setActivationHandler_];
  _Block_release(v13);
  v21 = sub_1A2CD521C;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_37_0;
  v15 = _Block_copy(&v17);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v21 = sub_1A2CD5228;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_40;
  v16 = _Block_copy(&v17);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
}

void sub_1A2CD5138()
{
  if (qword_1EB09EC98 != -1)
  {
    swift_once();
  }

  v0 = sub_1A2D08094();
  __swift_project_value_buffer(v0, qword_1EB09ECA0);
  v1 = sub_1A2D08074();
  v2 = sub_1A2D08674();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A2C51000, v1, v2, "Subscription preferences observation: activated", v3, 2u);
    MEMORY[0x1A58E5180](v3, -1, -1);
  }

  sub_1A2CD5A34();
}

void sub_1A2CD5234(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC98 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09ECA0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CD5324()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CD4AE0();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v10);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C599D8(v10);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CD54B4()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CD60E0;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_16;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC98 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09ECA0);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CD56AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CD5A34();
  }
}

uint64_t sub_1A2CD5700()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CD5324();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection);
  if (!v8)
  {
    if (qword_1EB09EC98 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09ECA0);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "SubscriptionPreferencesObservationClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12F8, &qword_1A2D10078);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C599D8(v20);
  }

  if (qword_1EB09EC98 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09ECA0);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "SubscriptionPreferencesObservationClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1A2CD5A34()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v13 = sub_1A2D08094();
    __swift_project_value_buffer(v13, qword_1EB09ECA0);
    v14 = v1;
    v15 = sub_1A2D08074();
    v16 = sub_1A2D08684();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136446210;
      v23[2] = v1;
      v19 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v20 = sub_1A2D08454();
      v22 = sub_1A2C55558(v20, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1A2C51000, v15, v16, "Could not register for push tokens: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1A58E5180](v18, -1, -1);
      MEMORY[0x1A58E5180](v17, -1, -1);
    }

    else
    {
    }

    return;
  }

  v8 = sub_1A2CD5700();
  if (!v8)
  {
    return;
  }

  v24[0] = 0;
  v9 = [v8 registerForSubscriptionPreferencesWithError_];
  swift_unknownObjectRelease();
  v10 = v24[0];
  if (!v9)
  {
    v23[1] = v24[0];
    v12 = v24[0];
    v1 = sub_1A2D07ED4();

    swift_willThrow();
    if (qword_1EB09EC98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v11 = v10;
}

id SubscriptionPreferencesObservationClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionPreferencesObservationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SubscriptionPreferencesObservationClient.subscriptionPreferencesDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1A2D08364();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    sub_1A2D07D54();
    swift_allocObject();
    sub_1A2D07D44();
    sub_1A2CD5FB8();
    sub_1A2D07D34();
    sub_1A2D08174();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A2CD5FB8()
{
  result = qword_1EB0A12E8;
  if (!qword_1EB0A12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12E8);
  }

  return result;
}

unint64_t sub_1A2CD60E8()
{
  result = qword_1EB09ED48;
  if (!qword_1EB09ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED48);
  }

  return result;
}

uint64_t AlertConfiguration.title.setter(uint64_t a1)
{
  v3 = sub_1A2D07EF4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlertConfiguration.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlertConfiguration(0) + 20);
  v4 = sub_1A2D07EF4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void static AlertConfiguration.AlertSound.default.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void AlertConfiguration.sound.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = v1 + *(type metadata accessor for AlertConfiguration(0) + 24);
  v7 = *(v6 + 24);

  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void AlertConfiguration.init(title:body:sound:automaticDismissOption:breaksThroughFocus:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v20 = a3[1];
  v21 = *a3;
  v19 = *(a3 + 16);
  v17 = *a4;
  v18 = a3[3];
  v16 = *(a4 + 8);
  v9 = type metadata accessor for AlertConfiguration(0);
  v10 = a6 + v9[6];
  *(v10 + 24) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a6 + v9[7];
  *v11 = 0x4018000000000000;
  *(v11 + 8) = 0;
  v12 = v9[8];
  v13 = sub_1A2D07EF4();
  v14 = *(*(v13 - 8) + 32);
  v14(a6, a1, v13);
  v14(a6 + v9[5], a2, v13);
  v15 = *(v10 + 24);

  *v10 = v21;
  *(v10 + 8) = v20;
  *(v10 + 16) = v19;
  *(v10 + 24) = v18;
  *v11 = v17;
  *(v11 + 8) = v16;
  *(a6 + v12) = a5;
}

uint64_t AlertConfiguration.automaticDismissOption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AlertConfiguration(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t AlertConfiguration.breaksThroughFocus.setter(char a1)
{
  result = type metadata accessor for AlertConfiguration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t static AlertConfiguration.AutomaticDismissOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A2CD6624(uint64_t a1)
{
  v2 = sub_1A2C871E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6660(uint64_t a1)
{
  v2 = sub_1A2C871E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD669C(uint64_t a1)
{
  v2 = sub_1A2C8704C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD66D8(uint64_t a1)
{
  v2 = sub_1A2C8704C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD6714(uint64_t a1)
{
  v2 = sub_1A2CD6858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6750(uint64_t a1)
{
  v2 = sub_1A2CD6858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD678C(uint64_t a1)
{
  v2 = sub_1A2CD6804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD67C8(uint64_t a1)
{
  v2 = sub_1A2CD6804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CD6804()
{
  result = qword_1ED708A60;
  if (!qword_1ED708A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A60);
  }

  return result;
}

unint64_t sub_1A2CD6858()
{
  result = qword_1EB0A1320;
  if (!qword_1EB0A1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1320);
  }

  return result;
}

uint64_t sub_1A2CD68AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t AlertConfiguration.AlertSound.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AlertConfiguration.AlertSound.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id static AlertConfiguration.AlertSound.withToneLibraryConfig(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = a1;
  *(a2 + 16) = 0;
  return a1;
}

void static AlertConfiguration.AlertSound.silent.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *AlertConfiguration.AlertSound.toneLibraryConfig.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1A2CD6A60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CD74D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CD6A88(uint64_t a1)
{
  v2 = sub_1A2C8641C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6AC4(uint64_t a1)
{
  v2 = sub_1A2C8641C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD6B00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CD7688(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CD6B28(uint64_t a1)
{
  v2 = sub_1A2C86904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6B64(uint64_t a1)
{
  v2 = sub_1A2C86904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s11ActivityKit18AlertConfigurationV0C5SoundV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v6)
    {
      if (v4 != v7)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v10 = sub_1A2D08B34();
    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v6)
    {
      return result;
    }
  }

  if (((v4 ^ v7) & 1) == 0)
  {
LABEL_13:
    if (v5)
    {
      if (v8)
      {
        sub_1A2C569A0(0, &qword_1EB0A1360, 0x1E69DA8E8);
        v12 = v8;
        v13 = v5;
        v14 = sub_1A2D087C4();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11ActivityKit18AlertConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1A58E3BA0]())
  {
    v4 = type metadata accessor for AlertConfiguration(0);
    if (MEMORY[0x1A58E3BA0](a1 + v4[5], a2 + v4[5]))
    {
      v5 = a1 + v4[6];
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      v29[0] = *v5;
      v29[1] = v6;
      v30 = v7;
      v31 = v8;
      v9 = (a2 + v4[6]);
      v10 = *v9;
      v11 = v9[1];
      v12 = *(v9 + 16);
      v13 = v9[3];
      v26[0] = v10;
      v26[1] = v11;
      v27 = v12;
      v28 = v13;
      v14 = v13;

      v15 = v8;

      LOBYTE(v6) = _s11ActivityKit18AlertConfigurationV0C5SoundV2eeoiySbAE_AEtFZ_0(v29, v26);
      v16 = v28;

      v17 = v31;

      if (v6)
      {
        v18 = v4[7];
        v19 = *(a1 + v18);
        v20 = *(a1 + v18 + 8);
        v21 = a2 + v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        if (v20 == 1)
        {
          if (v19 == 0.0)
          {
            if (v22 != 0.0)
            {
              LOBYTE(v23) = 0;
            }

            if ((v23 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          else
          {
            if (v22 == 0.0)
            {
              v23 = 0;
            }

            if (v23 != 1)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v19 != v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
            goto LABEL_9;
          }
        }

        v24 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
        return v24 & 1;
      }
    }
  }

LABEL_9:
  v24 = 0;
  return v24 & 1;
}

uint64_t getEnumTagSinglePayload for AlertConfiguration.AutomaticDismissOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CD6E14(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A2CD6E40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1A2CD6E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CD6F54()
{
  result = qword_1EB0A1370;
  if (!qword_1EB0A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1370);
  }

  return result;
}

unint64_t sub_1A2CD6FAC()
{
  result = qword_1EB0A1378;
  if (!qword_1EB0A1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1378);
  }

  return result;
}

unint64_t sub_1A2CD7004()
{
  result = qword_1EB0A1380;
  if (!qword_1EB0A1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1380);
  }

  return result;
}

unint64_t sub_1A2CD705C()
{
  result = qword_1EB0A1388;
  if (!qword_1EB0A1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1388);
  }

  return result;
}

unint64_t sub_1A2CD70B4()
{
  result = qword_1ED708C50;
  if (!qword_1ED708C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C50);
  }

  return result;
}

unint64_t sub_1A2CD710C()
{
  result = qword_1ED708C58;
  if (!qword_1ED708C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C58);
  }

  return result;
}

unint64_t sub_1A2CD7164()
{
  result = qword_1ED708C30;
  if (!qword_1ED708C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C30);
  }

  return result;
}

unint64_t sub_1A2CD71BC()
{
  result = qword_1ED708C38;
  if (!qword_1ED708C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C38);
  }

  return result;
}

unint64_t sub_1A2CD7214()
{
  result = qword_1ED708BF8;
  if (!qword_1ED708BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BF8);
  }

  return result;
}

unint64_t sub_1A2CD726C()
{
  result = qword_1ED708C00;
  if (!qword_1ED708C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C00);
  }

  return result;
}

unint64_t sub_1A2CD72C4()
{
  result = qword_1ED708BE8;
  if (!qword_1ED708BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BE8);
  }

  return result;
}

unint64_t sub_1A2CD731C()
{
  result = qword_1ED708BF0;
  if (!qword_1ED708BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BF0);
  }

  return result;
}

unint64_t sub_1A2CD7374()
{
  result = qword_1ED708C08;
  if (!qword_1ED708C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C08);
  }

  return result;
}

unint64_t sub_1A2CD73CC()
{
  result = qword_1ED708C10;
  if (!qword_1ED708C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C10);
  }

  return result;
}

unint64_t sub_1A2CD7424()
{
  result = qword_1ED708C18;
  if (!qword_1ED708C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C18);
  }

  return result;
}

unint64_t sub_1A2CD747C()
{
  result = qword_1ED708C20;
  if (!qword_1ED708C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C20);
  }

  return result;
}

uint64_t sub_1A2CD74D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A2D1A660 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A2D1A470 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A2CD7688(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1A680 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656C69537369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A2CD7814(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_1A2D07F94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityUIDismissalPolicy(0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  a3();
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t static ActivityUIDismissalPolicy.after(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1A2CD797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CD7A04(uint64_t a1)
{
  v2 = sub_1A2C92338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD7A40(uint64_t a1)
{
  v2 = sub_1A2C92338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityUIDismissalPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1390, &qword_1A2D108D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92338();
  sub_1A2D08C74();
  sub_1A2D07F94();
  sub_1A2C6D4F8(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1A2D08AE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A2CD7BF4(void *a1)
{
  a1[1] = sub_1A2C6D4F8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  a1[2] = sub_1A2C6D4F8(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  result = sub_1A2C6D4F8(&qword_1EB0A13A0, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CD7CA0(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D4F8(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CD7D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2C6D4F8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy, &protocol conformance descriptor for ActivityUIDismissalPolicy);
  sub_1A2D07E64();
  sub_1A2CD80E8(a2);
  sub_1A2C55840(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1A2CD8150(v7, a2);
}

uint64_t sub_1A2CD7F64(uint64_t a1)
{
  result = sub_1A2D07F94();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A2CD7FE4()
{
  result = qword_1EB0A13A8;
  if (!qword_1EB0A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13A8);
  }

  return result;
}

unint64_t sub_1A2CD803C()
{
  result = qword_1ED708DB8;
  if (!qword_1ED708DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DB8);
  }

  return result;
}

unint64_t sub_1A2CD8094()
{
  result = qword_1ED708DC0;
  if (!qword_1ED708DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DC0);
  }

  return result;
}

uint64_t sub_1A2CD80E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2CD8150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CD81C0()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F328);
  __swift_project_value_buffer(v0, qword_1EB09F328);
  return sub_1A2D08004();
}

uint64_t static ActivityPresentationObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F320 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD82D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F320 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD83A4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0A13B0);
  __swift_project_value_buffer(v0, qword_1EB0A13B0);
  return sub_1A2D08084();
}

id StateCaptureClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *StateCaptureClient.init()()
{
  v19 = sub_1A2D086E4();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection] = 0;
  v18 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue;
  v17[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D08304();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v19);
  *&v0[v18] = sub_1A2D08724();
  v7 = *&v0[v6];
  *&v0[v6] = 0;

  v8 = type metadata accessor for StateCaptureClient();
  v21.receiver = v0;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A2CD8814;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  dispatch_sync(v15, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

void *sub_1A2CD885C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CD9654();
    v10 = v0;
    result = sub_1A2D08784();
    if (result)
    {
      v11 = *&v0[v9];
      *&v0[v9] = result;
      v12 = result;

      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CD96A8;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_16_0;
      v15 = _Block_copy(aBlock);
      v16 = v10;

      [v12 configureConnection_];

      _Block_release(v15);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_1A2CD8AFC(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CD8DF4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_19;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CD8E00;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_22;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CD8E0C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_25_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CD8E18(uint64_t a1, const char *a2)
{
  if (qword_1EB09F728 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB0A13B0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CD8F08()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CD885C();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v10);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C599D8(v10);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CD9098()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CD8F08();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection);
  if (!v8)
  {
    if (qword_1EB09F728 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB0A13B0);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "StateCaptureClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A13E0, qword_1A2D10BE8);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C599D8(v20);
  }

  if (qword_1EB09F728 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB0A13B0);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "StateCaptureClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

id StateCaptureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *StateCaptureClient.state(identifier:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A13D8, qword_1A2D10BA8);
  result = sub_1A2D08704();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void sub_1A2CD94DC(void *a2@<X2>, unint64_t *a3@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A2CD9098();
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      a2 = sub_1A2D08434();
    }

    v12[0] = 0;
    v7 = [v6 stateForIdentifier:a2 error:v12];
    swift_unknownObjectRelease();

    v8 = v12[0];
    if (v7)
    {
      v9 = sub_1A2D08394();
      v10 = v8;

      *a3 = v9;
    }

    else
    {
      v11 = v12[0];
      sub_1A2D07ED4();

      swift_willThrow();
    }
  }

  else
  {
    *a3 = sub_1A2CAAF40(MEMORY[0x1E69E7CC0]);
  }
}

unint64_t sub_1A2CD9654()
{
  result = qword_1EB0A13F0;
  if (!qword_1EB0A13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13F0);
  }

  return result;
}

uint64_t sub_1A2CD96CC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708858);
  __swift_project_value_buffer(v0, qword_1ED708858);
  return sub_1A2D08004();
}

uint64_t static ActivityProminenceObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708850 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD97DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708850 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

ActivityKit::ActivityCategory_optional __swiftcall ActivityCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A2D08B54();

  v5 = 0;
  v6 = 22;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
      goto LABEL_35;
    case 21:
      v5 = 21;
LABEL_35:
      v6 = v5;
      break;
    case 22:
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    default:
      v6 = 40;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ActivityCategory.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 2:
      result = 6910049;
      break;
    case 3:
      result = 0x7A69726F68747561;
      break;
    case 5:
      result = 0x726573624F736F71;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x7472656C61;
      break;
    case 8:
      result = 0x7061436574617473;
      break;
    case 9:
      result = 0x6573616261746164;
      break;
    case 0xB:
    case 0x23:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xE:
    case 0x25:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x5274736575716572;
      break;
    case 0x10:
      result = 0x6F69747265737361;
      break;
    case 0x11:
      result = 1701536119;
      break;
    case 0x12:
      result = 0x76696C417065656BLL;
      break;
    case 0x13:
      result = 1953460066;
      break;
    case 0x14:
      result = 0x737365636F7270;
      break;
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0xD000000000000017;
      break;
    case 0x17:
      result = 0x70757472617473;
      break;
    case 0x18:
      result = 6516856;
      break;
    case 0x19:
      result = 0x7672655368737570;
      break;
    case 0x1A:
      result = 0x656B6F5468737570;
      break;
    case 0x1B:
      result = 0xD000000000000014;
      break;
    case 0x1C:
      result = 0x6C4374757074756FLL;
      break;
    case 0x1D:
      result = 0x7574706143677562;
      break;
    case 0x1E:
      result = 0x676F646863746177;
      break;
    case 0x1F:
      result = 0xD000000000000010;
      break;
    case 0x20:
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 0x21:
      result = 0x69676E45636E7973;
      break;
    case 0x22:
      result = 0x696C436E776F6E6BLL;
      break;
    case 0x24:
      result = 0x7069726373627573;
      break;
    case 0x26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A2CD9EDC()
{
  v0 = ActivityCategory.rawValue.getter();
  v2 = v1;
  if (v0 == ActivityCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A2D08B34();
  }

  return v5 & 1;
}

uint64_t sub_1A2CD9F78()
{
  sub_1A2D08C14();
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CD9FE0(uint64_t a1)
{
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();
}

uint64_t sub_1A2CDA044(uint64_t a1)
{
  sub_1A2D08C14();
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

unint64_t sub_1A2CDA0B4@<X0>(unint64_t *a1@<X8>)
{
  result = ActivityCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A2CDA0F4(uint64_t a1, uint64_t (*a2)(unint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = ActivityCategory.rawValue.getter();

  return a2(0xD000000000000015, 0x80000001A2D18EF0, v3, v2);
}

unint64_t sub_1A2CDA178()
{
  result = qword_1EB0A13F8;
  if (!qword_1EB0A13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2CDA31C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator(0);
  v4 = sub_1A2C5F40C(&qword_1EB0A1450, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator, &protocol conformance descriptor for ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1A2CDA40C;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t sub_1A2CDA40C()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDA5B8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDA59C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A2CDA5B8()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CDA660(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator(0);
  v4 = sub_1A2C5F40C(&qword_1EB0A1458, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator, &protocol conformance descriptor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1A2CDA750;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t sub_1A2CDA750()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDD92C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDD930;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t ActivityAuthorizationInfo.ActivityEnablementUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1400, &qword_1A2D10DF0);

  return sub_1A2D08104();
}

uint64_t ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v1 = v0;
  v1[1] = sub_1A2CDA9D8;

  return MEMORY[0x1EEDB5C50](v0 + 24, v2);
}

uint64_t sub_1A2CDA9D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CDAAD4, 0, 0);
}

uint64_t sub_1A2CDAAEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v2 = v1;
  v2[1] = sub_1A2CDABA0;

  return MEMORY[0x1EEDB5C50](v1 + 32, v3);
}

uint64_t sub_1A2CDABA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CDAC9C, 0, 0);
}

uint64_t sub_1A2CDACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A2CDAD7C;

  return sub_1A2CDA31C(a2, a3);
}

uint64_t sub_1A2CDAD7C(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v1 = v0;
  v1[1] = sub_1A2CDAF78;

  return MEMORY[0x1EEDB5C50](v0 + 24, v2);
}

uint64_t sub_1A2CDAF78()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CDD934, 0, 0);
}

uint64_t sub_1A2CDB074(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v2 = v1;
  v2[1] = sub_1A2CDB128;

  return MEMORY[0x1EEDB5C50](v1 + 32, v3);
}

uint64_t sub_1A2CDB128()
{

  return MEMORY[0x1EEE6DFA0](sub_1A2CDD938, 0, 0);
}

uint64_t sub_1A2CDB224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A2CDD91C;

  return sub_1A2CDA660(a2, a3);
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1410, &qword_1A2D10E10);

  return sub_1A2D08104();
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1418, &qword_1A2D10E20);
  *v3 = v1;
  v3[1] = sub_1A2C8ED48;

  return MEMORY[0x1EEDB5C50](a1, v4);
}

uint64_t sub_1A2CDB494(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1418, &qword_1A2D10E20);
  *v3 = v1;
  v3[1] = sub_1A2CCC06C;

  return MEMORY[0x1EEDB5C50](a1, v4);
}

uint64_t sub_1A2CDB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1A2CDB608;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1A2CDB608()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDA5B8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A2D08614();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A2CDB798;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A2CDB7D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1A2D08104();
  return sub_1A2CDD270(v5, a5);
}

uint64_t sub_1A2CDB828()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v2 = *(*&v1[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v3 = v1;
  os_unfair_lock_lock(v2);
  v4 = &v3[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 104))(ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v2);

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivityAuthorizationInfo.areActivitiesEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v2 = *(*&v1[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v3 = v1;
  os_unfair_lock_lock(v2);
  v4 = &v3[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 32))(ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v2);

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CDBA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

ActivityKit::ActivityAuthorizationInfo::ActivityAuthorizationStatus __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.activityAuthorizationStatus(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = *(v2 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v7 = *(*&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v8 = v6;
  os_unfair_lock_lock(v7);
  v9 = &v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(&v15, countAndFlagsBits, object, ObjectType, v11);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);

    if (v15)
    {
      v13 = 2 * (v15 == 1);
    }

    else
    {
      v13 = 1;
    }

    *v5 = v13;
  }

  else
  {
    __break(1u);
  }

  return Strong;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.subscribeToActivityAuthorizationStatusUpdates(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v5 = *(*&v4[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v6 = v4;
  os_unfair_lock_lock(v5);
  v7 = &v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(countAndFlagsBits, object, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.unsubscribeToActivityAuthorizationStatusUpdates(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v5 = *(*&v4[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v6 = v4;
  os_unfair_lock_lock(v5);
  v7 = &v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 80))(countAndFlagsBits, object, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivityAuthorizationInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  ActivityAuthorizationInfo.init()();
  return v0;
}

uint64_t ActivityAuthorizationInfo.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1420, &unk_1A2D10E28);
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v85 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v85 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1428, &unk_1A2D10E38);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v85 - v11;
  v12 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v100 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdatesPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A30, &unk_1A2D0D220);
  swift_allocObject();
  *(v0 + v18) = sub_1A2D08144();
  v19 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdatesPublisher;
  swift_allocObject();
  v20 = sub_1A2D08144();
  v96 = v19;
  *(v0 + v19) = v20;
  v21 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdatesPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1430, &qword_1A2D10E48);
  swift_allocObject();
  v22 = sub_1A2D08144();
  v97 = v21;
  *(v0 + v21) = v22;
  v92 = v7;
  v93 = v6;
  v91 = v8;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A2D08924())
  {
    v23 = sub_1A2CDCFDC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_cancellableSet) = v23;
  *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization) = [objc_allocWithZone(type metadata accessor for ActivityAuthorization()) init];
  v102 = *(v0 + v18);
  v95 = MEMORY[0x1E695BF88];
  sub_1A2C56A78(&unk_1EB09F2A8, &unk_1EB0A0A30, &unk_1A2D0D220, MEMORY[0x1E695BF88]);
  v102 = sub_1A2D081F4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1438, &qword_1A2D10E50);
  v25 = MEMORY[0x1E695BED8];
  v26 = sub_1A2C56A78(&qword_1EB09F2D8, &qword_1EB0A1438, &qword_1A2D10E50, MEMORY[0x1E695BED8]);
  v27 = v100;
  MEMORY[0x1A58E3F50](v24, v26);

  sub_1A2CDCAD0(v27, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates);
  v102 = *(v0 + v96);
  v28 = sub_1A2D081F4();
  v101 = v24;
  v102 = v28;
  v29 = v98;
  v100 = v26;
  MEMORY[0x1A58E3F50](v24, v26);

  sub_1A2CDCAD0(v29, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates);
  v102 = *(v0 + v97);
  sub_1A2C56A78(&qword_1EB09F2C0, &qword_1EB0A1430, &qword_1A2D10E48, v95);
  v102 = sub_1A2D081F4();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1440, &qword_1A2D10E58);
  v31 = sub_1A2C56A78(&qword_1EB09F2E8, &qword_1EB0A1440, &qword_1A2D10E58, v25);
  v32 = v99;
  MEMORY[0x1A58E3F50](v30, v31);

  sub_1A2CDCAD0(v32, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates);
  v33 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization;
  v34 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v35 = *(*&v34[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v36 = v34;
  os_unfair_lock_lock(v35);
  v37 = &v36[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v39 = *(v37 + 1);
  ObjectType = swift_getObjectType();
  LOBYTE(v39) = (*(v39 + 32))(ObjectType, v39);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v35);

  LOBYTE(v102) = v39 & 1;
  sub_1A2D08124();
  v41 = *(v0 + v33);
  v42 = *(*&v41[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v43 = v41;
  os_unfair_lock_lock(v42);
  v44 = &v43[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v45 = *(v44 + 1);
  v46 = swift_getObjectType();
  LOBYTE(v45) = (*(v45 + 104))(v46, v45);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v42);

  LOBYTE(v102) = v45 & 1;
  sub_1A2D08124();
  v99 = v33;
  v47 = *(v0 + v33);
  v48 = &v47[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v49 = *(v48 + 1);
  v50 = swift_getObjectType();
  v51 = *(v49 + 8);
  v52 = v47;
  v53 = v51(v50, v49);

  swift_unknownObjectRelease();
  v102 = v53;
  v54 = sub_1A2C5D300();
  v55 = sub_1A2D086F4();
  v103 = v55;
  v56 = sub_1A2D086D4();
  v57 = *(v56 - 8);
  v58 = v93;
  v95 = *(v57 + 56);
  v96 = v56;
  v94 = v57 + 56;
  v95(v93, 1, 1);
  v59 = sub_1A2C5F40C(&qword_1ED709120, sub_1A2C5D300, MEMORY[0x1E69E8028]);
  v60 = v90;
  v97 = v59;
  v98 = v54;
  sub_1A2D08264();
  sub_1A2CDCB38(v58);

  swift_allocObject();
  swift_weakInit();
  v61 = sub_1A2C56A78(&qword_1EB09F2F0, &qword_1EB0A1428, &unk_1A2D10E38, MEMORY[0x1E695BE98]);

  v62 = v92;
  v85 = v61;
  sub_1A2D08284();

  v90 = *(v91 + 8);
  (v90)(v60, v62);
  v63 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_cancellableSet;
  swift_beginAccess();
  v91 = v63;
  sub_1A2D080C4();
  swift_endAccess();

  v64 = *&v99[v1];
  v65 = &v64[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v66 = *(v65 + 1);
  v67 = swift_getObjectType();
  v68 = *(v66 + 16);
  v69 = v64;
  v70 = v68(v67, v66);

  swift_unknownObjectRelease();
  v102 = v70;
  v71 = sub_1A2D086F4();
  v103 = v71;
  (v95)(v58, 1, 1, v96);
  v72 = v89;
  sub_1A2D08264();
  sub_1A2CDCB38(v58);

  swift_allocObject();
  swift_weakInit();
  sub_1A2D08284();

  (v90)(v72, v62);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();

  v73 = *&v99[v1];
  v74 = &v73[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v75 = *(v74 + 1);
    v76 = swift_getObjectType();
    v77 = *(v75 + 24);
    v78 = v73;
    v79 = v77(v76, v75);

    swift_unknownObjectRelease();
    v102 = v79;
    v80 = sub_1A2D086F4();
    v103 = v80;
    (v95)(v58, 1, 1, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1448, qword_1A2D10E60);
    sub_1A2C56A78(&qword_1EB09F2E0, &qword_1EB0A1448, qword_1A2D10E60, MEMORY[0x1E695BED8]);
    v81 = v86;
    sub_1A2D08264();
    sub_1A2CDCB38(v58);

    v82 = swift_allocObject();
    swift_weakInit();

    v83 = swift_allocObject();
    *(v83 + 16) = sub_1A2CDCD0C;
    *(v83 + 24) = v82;
    sub_1A2C56A78(&unk_1EB09F2F8, &qword_1EB0A1420, &unk_1A2D10E28, MEMORY[0x1E695BE98]);
    v84 = v88;
    sub_1A2D08284();

    (*(v87 + 8))(v81, v84);
    swift_beginAccess();
    sub_1A2D080C4();
    swift_endAccess();

    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A2CDCAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CDCB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2CDCBC4(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A2D08124();
  }

  return result;
}

uint64_t sub_1A2CDCC60(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1A2D08124();
  }

  return result;
}

uint64_t ActivityAuthorizationInfo.deinit()
{
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates);
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates);
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates);

  return v0;
}

uint64_t ActivityAuthorizationInfo.__deallocating_deinit()
{
  ActivityAuthorizationInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A2CDCE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
    v3 = sub_1A2D08844();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1A2D08C14();

      sub_1A2D08484();
      result = sub_1A2D08C54();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1A2D08B34();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1A2CDCFDC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1A2D08924();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1498, &unk_1A2D111A8);
      result = sub_1A2D08844();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1A2D08924();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1A58E4540](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1A2D080E4();
    sub_1A2C5F40C(&qword_1EB0A14A0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    result = sub_1A2D083F4();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1A2C5F40C(&qword_1EB0A14A8, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        result = sub_1A2D08424();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A2CDD270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A2CDD3A4()
{
  result = qword_1EB0A1460;
  if (!qword_1EB0A1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1460);
  }

  return result;
}

void sub_1A2CDD488(uint64_t a1)
{
  sub_1A2CDD630(319, &qword_1EB09F2C8, MEMORY[0x1E695BF40]);
  if (v1 <= 0x3F)
  {
    sub_1A2CDD86C(319, &qword_1EB09F2D0, MEMORY[0x1E695BF40]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A2CDD630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1438, &qword_1A2D10E50);
    v7 = sub_1A2C56A78(&qword_1EB09F2D8, &qword_1EB0A1438, &qword_1A2D10E50, MEMORY[0x1E695BED8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A2CDD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = a6(319, a4, a5);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A2CDD86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1440, &qword_1A2D10E58);
    v7 = sub_1A2C56A78(&qword_1EB09F2E8, &qword_1EB0A1440, &qword_1A2D10E58, MEMORY[0x1E695BED8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double OpaqueActivityManager.Request.attributesType.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t OpaqueActivityManager.Request.attributesData.getter()
{
  v1 = *(v0 + 16);
  sub_1A2C5E63C(v1, *(v0 + 24));
  return v1;
}

uint64_t type metadata accessor for OpaqueActivityManager.Request(uint64_t a1)
{
  result = qword_1EB0A14B0;
  if (!qword_1EB0A14B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double OpaqueActivityManager.Request.sceneTargets.getter()
{
  type metadata accessor for OpaqueActivityManager.Request(0);

  return result;
}

double OpaqueActivityManager.Request.alertSceneTargets.getter()
{
  type metadata accessor for OpaqueActivityManager.Request(0);

  return result;
}

uint64_t OpaqueActivityManager.Request.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpaqueActivityManager.Request(0) + 36));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

double OpaqueActivityManager.Request.contentSourceRequests.getter()
{
  type metadata accessor for OpaqueActivityManager.Request(0);

  return result;
}

uint64_t OpaqueActivityManager.Request.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpaqueActivityManager.Request(0) + 64);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpaqueActivityManager.Request.assetProviderBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpaqueActivityManager.Request(0) + 68));

  return v1;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14)
{
  v19 = a1[1];
  *a9 = *a1;
  a9[1] = v19;
  a9[2] = a2;
  a9[3] = a3;
  v20 = type metadata accessor for OpaqueActivityManager.Request(0);
  sub_1A2C69728(a4, a9 + v20[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v20[7]) = a5;
  v21 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
  sub_1A2C6E16C(a4, type metadata accessor for OpaqueActivityContent);
  *(a9 + v20[8]) = v21;
  v22 = a9 + v20[9];
  *v22 = *a6;
  *(v22 + 2) = *(a6 + 16);
  *(a9 + v20[10]) = a7;
  *(a9 + v20[11]) = a8;
  *(a9 + v20[12]) = a10;
  *(a9 + v20[13]) = a11;
  *(a9 + v20[14]) = a12;
  *(a9 + v20[15]) = a13;
  v23 = v20[16];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a14, v24);
  v26 = (a9 + v20[17]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  v20 = a1[1];
  *a9 = *a1;
  a9[1] = v20;
  a9[2] = a2;
  a9[3] = a3;
  v21 = type metadata accessor for OpaqueActivityManager.Request(0);
  sub_1A2C67178(a4, a9 + v21[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v21[7]) = a5;
  *(a9 + v21[8]) = a6;
  v22 = a9 + v21[9];
  *v22 = *a7;
  *(v22 + 2) = *(a7 + 16);
  *(a9 + v21[10]) = a8;
  *(a9 + v21[11]) = a10;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = a12;
  *(a9 + v21[14]) = a13;
  *(a9 + v21[15]) = a14;
  v23 = v21[16];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a15, v24);
  v26 = (a9 + v21[17]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:assetProviderBundleId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a1[1];
  *a9 = *a1;
  a9[1] = v22;
  a9[2] = a2;
  a9[3] = a3;
  v23 = type metadata accessor for OpaqueActivityManager.Request(0);
  sub_1A2C67178(a4, a9 + v23[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v23[7]) = a5;
  *(a9 + v23[8]) = a6;
  v24 = a9 + v23[9];
  *v24 = *a7;
  *(v24 + 2) = *(a7 + 16);
  *(a9 + v23[10]) = a8;
  *(a9 + v23[11]) = a10;
  *(a9 + v23[12]) = a11;
  *(a9 + v23[13]) = a12;
  *(a9 + v23[14]) = a13;
  *(a9 + v23[15]) = a14;
  v25 = v23[16];
  v26 = sub_1A2D07F94();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a15, v26);
  v28 = (a9 + v23[17]);
  *v28 = a16;
  v28[1] = a17;
  return result;
}

double OpaqueActivityManager.Request.activityRequest.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[1];
  v24 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = type metadata accessor for OpaqueActivityManager.Request(0);
  v7 = v6[6];
  v8 = type metadata accessor for ActivityRequest(0);
  sub_1A2C69728(v1 + v7, a1 + v8[7], type metadata accessor for OpaqueActivityContent);
  v9 = *(v1 + v6[7]);
  v10 = *(v1 + v6[8]);
  v11 = v6[10];
  v12 = v1 + v6[9];
  v26 = *v12;
  v13 = *(v1 + v11);
  v21 = *(v1 + v6[11]);
  v22 = *(v1 + v6[12]);
  v19 = *(v1 + v6[13]);
  v20 = *(v1 + v6[14]);
  v27 = *(v12 + 2);
  v14 = (v1 + v6[17]);
  v15 = v14[1];
  v23 = *v14;

  sub_1A2C5E63C(v4, v5);

  sub_1A2C66F58(&v26, v25);

  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  a1[2] = v24;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  *(a1 + v8[8]) = v9;
  *(a1 + v8[9]) = v10;
  v16 = a1 + v8[10];
  result = *&v26;
  *v16 = v26;
  *(v16 + 2) = v27;
  *(a1 + v8[11]) = v13;
  *(a1 + v8[12]) = v21;
  *(a1 + v8[13]) = v22;
  *(a1 + v8[14]) = v19;
  *(a1 + v8[15]) = v20;
  *a1 = 0;
  a1[1] = 0;
  *(a1 + v8[16]) = 4;
  v18 = (a1 + v8[18]);
  *v18 = v23;
  v18[1] = v15;
  return result;
}

uint64_t OpaqueActivityManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for ActivityInputClient()) init];
  return v0;
}

uint64_t sub_1A2CDE31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v5 = type metadata accessor for ActivityRequest(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 16);
  v10 = a1[1];
  v38 = *a1;
  v39 = v9;
  v12 = a1[2];
  v11 = a1[3];
  v13 = type metadata accessor for OpaqueActivityManager.Request(0);
  sub_1A2C69728(a1 + v13[6], v8 + v6[9], type metadata accessor for OpaqueActivityContent);
  v14 = *(a1 + v13[7]);
  v15 = *(a1 + v13[8]);
  v16 = v13[10];
  v17 = a1 + v13[9];
  v46 = *v17;
  v18 = *(v17 + 2);
  v19 = *(a1 + v16);
  v31 = v15;
  v32 = v19;
  LODWORD(v19) = *(a1 + v13[12]);
  v35 = *(a1 + v13[11]);
  v36 = v19;
  LODWORD(v19) = *(a1 + v13[14]);
  v33 = *(a1 + v13[13]);
  v34 = v19;
  v47 = v18;
  v20 = (a1 + v13[17]);
  v21 = v20[1];
  v37 = *v20;
  v30 = v6[19];

  sub_1A2C5E63C(v12, v11);
  v22 = v14;

  v23 = v31;

  sub_1A2C66F58(&v46, v45);

  v24 = v32;

  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  v8[2] = v38;
  v8[3] = v10;
  v8[4] = v12;
  v8[5] = v11;
  *(v8 + v6[10]) = v22;
  *(v8 + v6[11]) = v23;
  v25 = v8 + v6[12];
  *v25 = v46;
  *(v25 + 2) = v47;
  *(v8 + v6[13]) = v24;
  v26 = v36;
  *(v8 + v6[14]) = v35;
  *(v8 + v6[15]) = v26;
  v27 = v34;
  *(v8 + v6[16]) = v33;
  *(v8 + v6[17]) = v27;
  *v8 = 0;
  v8[1] = 0;
  *(v8 + v6[18]) = 4;
  v28 = (v8 + v6[20]);
  *v28 = v37;
  v28[1] = v21;
  v42 = v39;
  v43 = v8;
  v44 = v40;
  type metadata accessor for ActivityDescriptor(0);
  sub_1A2D08704();
  return sub_1A2C6E16C(v8, type metadata accessor for ActivityRequest);
}

uint64_t sub_1A2CDE5CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ActivityEndingOptions(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  sub_1A2CDE84C(a4, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A2C92BC4(v10);
    if (qword_1EB09F340 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for ActivityUIDismissalPolicy(0);
    v19 = __swift_project_value_buffer(v18, qword_1EB09F348);
    sub_1A2C69728(v19, v14, type metadata accessor for ActivityUIDismissalPolicy);
  }

  else
  {
    sub_1A2C67178(v10, v17, type metadata accessor for ActivityEndingOptions);
    v14 = v17;
  }

  sub_1A2C90C5C(a1, a2, a3, v14);
  return sub_1A2C6E16C(v14, type metadata accessor for ActivityEndingOptions);
}

uint64_t OpaqueActivityManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1A2CDE84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A2CDE9B4(uint64_t a1)
{
  type metadata accessor for OpaqueActivityContent(319);
  if (v1 <= 0x3F)
  {
    sub_1A2CD1390(319);
    if (v2 <= 0x3F)
    {
      sub_1A2CDEB0C(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1A2D07F94();
        if (v4 <= 0x3F)
        {
          sub_1A2CDEB0C(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2CDEB0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 ActivityPredicate.init(attributesType:owner:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a1;
  v4 = *(a2 + 4);

  sub_1A2C5E574(0, 0, 0, 0, 0);
  result = v7;
  *a3 = v8;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v4;
  return result;
}

double static ActivityPredicate.allAuthorizedForRequester.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED7092D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *(&xmmword_1ED708D00 + 1);
  v2 = xmmword_1ED708D10;
  v3 = xmmword_1ED708D20;
  v4 = qword_1ED708D30;
  *a1 = xmmword_1ED708D00;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;

  return sub_1A2CA0190(v2, *(&v2 + 1), v3, *(&v3 + 1), v4);
}

double ActivityPredicate.attributesType.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t ActivityPredicate.attributesType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

double ActivityPredicate.owner.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1A2CA0190(v2, v3, v4, v5, v6);
}

__n128 ActivityPredicate.owner.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1A2C5E574(v1[2], v1[3], v1[4], v1[5], v1[6]);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v5;
  v1[6] = v3;
  return result;
}

uint64_t sub_1A2CDED68()
{
  if (*v0)
  {
    return 0x72656E776FLL;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1A2CDEDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEE00657079547365;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CDEE8C(uint64_t a1)
{
  v2 = sub_1A2CDFAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CDEEC8(uint64_t a1)
{
  v2 = sub_1A2CDFAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPredicate.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  if (v1[1])
  {
    sub_1A2D08C34();
    sub_1A2D08484();
    if (v4)
    {
LABEL_3:
      *&v9 = v3;
      *(&v9 + 1) = v4;
      *&v10 = v5;
      *(&v10 + 1) = v6;
      sub_1A2D08C34();
      v11[0] = v3;
      v11[1] = v4;
      v11[2] = v5;
      v11[3] = v6;
      v11[4] = v7;
      sub_1A2C73320(v11, v12);
      ProcessDescriptor.hash(into:)(a1);
      v12[0] = v9;
      v12[1] = v10;
      v13 = v7;
      return sub_1A2C7337C(v12);
    }
  }

  else
  {
    sub_1A2D08C34();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return sub_1A2D08C34();
}

uint64_t ActivityPredicate.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v2 = *(v0 + 48);
  sub_1A2D08C14();
  sub_1A2D08C34();
  if (v1)
  {
    sub_1A2D08484();
  }

  if (*(&v5 + 1))
  {
    v6[0] = v5;
    v6[1] = v4;
    v7 = v2;
    sub_1A2D08C34();
    sub_1A2C73320(v6, v8);
    ProcessDescriptor.hash(into:)(v10);
    v8[0] = v5;
    v8[1] = v4;
    v9 = v2;
    sub_1A2C7337C(v8);
  }

  else
  {
    sub_1A2D08C34();
  }

  return sub_1A2D08C54();
}

uint64_t sub_1A2CDF0E8()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1A2D08C14();
  ActivityPredicate.hash(into:)(v4);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CDF148(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_1A2D08C14();
  ActivityPredicate.hash(into:)(v5);
  return sub_1A2D08C54();
}

uint64_t ActivityPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A14C0, &qword_1A2D11278);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v17 = v1[3];
  v18 = v9;
  v10 = v1[4];
  v15 = v1[5];
  v16 = v10;
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CDFAAC();

  sub_1A2D08C74();
  v20 = v7;
  v21 = v8;
  v25 = 0;
  sub_1A2C6ABA0();
  v11 = v19;
  sub_1A2D08AA4();

  if (!v11)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = 1;
    sub_1A2CA0190(v18, v17, v16, v15, v14);
    sub_1A2C72F38();
    sub_1A2D08AA4();
    sub_1A2C5E574(v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v6, v3);
}

void ActivityPredicate.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A14D0, &qword_1A2D11280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CDFAAC();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v27 = 0;
    sub_1A2C6CDD0();
    sub_1A2D08A14();
    v10 = v22;
    v9 = v23;

    v27 = 1;
    sub_1A2C7774C();
    sub_1A2D08A14();
    (*(v6 + 8))(v8, v5);
    v11 = v22;
    v12 = v23;
    v21 = v10;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    sub_1A2C5E574(0, 0, 0, 0, 0);
    *a2 = v21;
    a2[1] = v9;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = v13;
    a2[5] = v14;
    a2[6] = v15;

    sub_1A2CA0190(v11, v12, v13, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
  }

  sub_1A2C5E574(v16, v17, v18, v19, v20);
}

uint64_t sub_1A2CDF634(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CDFB90();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CDF70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0218, &qword_1A2D0A8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s11ActivityKit0A9PredicateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (!v2)
  {
    if (!v8)
    {
      v19 = a2[6];

      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_12:

    return 0;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v19 = a2[6];
  if (*a1 == *a2 && v2 == v8 || (v13 = sub_1A2D08B34(), result = 0, (v13 & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      if (v11)
      {
        if (v3 == v9 && v5 == v11)
        {
          sub_1A2CA0190(v3, v5, v4, v7, v6);
          sub_1A2CA0190(v3, v5, v10, v12, v19);
          sub_1A2CA0190(v3, v5, v4, v7, v6);
          sub_1A2C5E574(v3, v5, v10, v12, v19);

          v15 = v3;
          v16 = v5;
LABEL_22:
          sub_1A2C5E574(v15, v16, v4, v7, v6);
          return 1;
        }

        v18 = sub_1A2D08B34();
        sub_1A2CA0190(v3, v5, v4, v7, v6);
        sub_1A2CA0190(v9, v11, v10, v12, v19);
        sub_1A2CA0190(v3, v5, v4, v7, v6);
        sub_1A2C5E574(v9, v11, v10, v12, v19);

        sub_1A2C5E574(v3, v5, v4, v7, v6);
        return (v18 & 1) != 0;
      }

      sub_1A2CA0190(v3, v5, v4, v7, v6);
      v17 = v19;
      sub_1A2CA0190(v9, 0, v10, v12, v19);
      sub_1A2CA0190(v3, v5, v4, v7, v6);

LABEL_17:
      sub_1A2C5E574(v3, v5, v4, v7, v6);
      sub_1A2C5E574(v9, v11, v10, v12, v17);
      return 0;
    }

LABEL_14:
    sub_1A2CA0190(v3, 0, v4, v7, v6);
    if (!v11)
    {
      sub_1A2CA0190(v9, 0, v10, v12, v19);
      v15 = v3;
      v16 = 0;
      goto LABEL_22;
    }

    v17 = v19;
    sub_1A2CA0190(v9, v11, v10, v12, v19);
    goto LABEL_17;
  }

  return result;
}

unint64_t sub_1A2CDFAAC()
{
  result = qword_1EB0A14C8;
  if (!qword_1EB0A14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14C8);
  }

  return result;
}

unint64_t sub_1A2CDFB04()
{
  result = qword_1EB0A14D8;
  if (!qword_1EB0A14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14D8);
  }

  return result;
}

unint64_t sub_1A2CDFB58(void *a1)
{
  a1[1] = sub_1A2CBBB98();
  a1[2] = sub_1A2CDFB90();
  result = sub_1A2CDFBE4();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CDFB90()
{
  result = qword_1EB0A14E0;
  if (!qword_1EB0A14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14E0);
  }

  return result;
}

unint64_t sub_1A2CDFBE4()
{
  result = qword_1EB0A14E8;
  if (!qword_1EB0A14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14E8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A2CDFC54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1A2CDFCB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CDFD34()
{
  result = qword_1EB0A14F0;
  if (!qword_1EB0A14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14F0);
  }

  return result;
}

unint64_t sub_1A2CDFD8C()
{
  result = qword_1EB0A14F8;
  if (!qword_1EB0A14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14F8);
  }

  return result;
}

unint64_t sub_1A2CDFDE4()
{
  result = qword_1EB0A1500;
  if (!qword_1EB0A1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1500);
  }

  return result;
}

uint64_t sub_1A2CDFE38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  sub_1A2CDFEA4();
  return sub_1A2D081F4();
}

unint64_t sub_1A2CDFEA4()
{
  result = qword_1EB0A12C8;
  if (!qword_1EB0A12C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A12C0, &unk_1A2D10010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12C8);
  }

  return result;
}

id ActivityRemoteSubscriptionPreferencesListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityRemoteSubscriptionPreferencesListener.init()()
{
  *&v0[OBJC_IVAR____TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener_client] = [objc_allocWithZone(type metadata accessor for SubscriptionPreferencesObservationClient()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRemoteSubscriptionPreferencesListener();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ActivityRemoteSubscriptionPreferencesListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRemoteSubscriptionPreferencesListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CE00C8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) > 0xB)
  {
    *a2 = 12;
  }

  else
  {
    *a2 = byte_1A2D1171E[result - 1];
  }

  return result;
}

uint64_t ActivityAuthorizationError.failureReason.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000037;
    v7 = 0xD000000000000029;
    if (v1 != 10)
    {
      v7 = 0xD000000000000039;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000002BLL;
    if (v1 == 7)
    {
      v8 = 0xD00000000000001CLL;
    }

    if (v1 == 6)
    {
      v8 = 0xD000000000000018;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x100000000000004BLL;
    v3 = 0xD000000000000036;
    if (v1 != 4)
    {
      v3 = 0xD00000000000003ALL;
    }

    if (v1 == 3)
    {
      v3 = 0xD00000000000003ELL;
    }

    v4 = 0xD00000000000003ALL;
    if (v1 != 1)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (*v0)
    {
      v2 = v4;
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
}

unint64_t ActivityAuthorizationError.recoverySuggestion.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD00000000000002BLL;
    if (v1 != 10)
    {
      v5 = 0;
    }

    if (v1 == 7)
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v1 == 5)
    {
      return 0xD00000000000004BLL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000020;
    if (v1 != 4)
    {
      v3 = 0;
    }

    if (v1 != 3)
    {
      v2 = v3;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000002ELL;
    }
  }
}

uint64_t ActivityAuthorizationError.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CE03E4()
{
  result = qword_1EB0A1510;
  if (!qword_1EB0A1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1510);
  }

  return result;
}

uint64_t sub_1A2CE0470(uint64_t a1)
{
  v2 = sub_1A2CE0638();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CE04AC(uint64_t a1)
{
  v2 = sub_1A2CE0638();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t getEnumTagSinglePayload for ActivityAuthorizationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityAuthorizationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A2CE0638()
{
  result = qword_1EB0A1518;
  if (!qword_1EB0A1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1518);
  }

  return result;
}

uint64_t sub_1A2CE0690()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F018);
  __swift_project_value_buffer(v0, qword_1EB09F018);
  return sub_1A2D08004();
}

uint64_t static ActivityRemoteSubscriptionPreferencesObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F010 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CE07A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F010 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double ActivityContentSource.target.getter@<D0>(void *a1@<X8>)
{
  if (*(v1 + 56) && *(v1 + 56) == 1)
  {
    v3 = v1[3];
    v2 = v1[4];
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1;
    *a1 = *v1;
    a1[1] = v5;
    a1[2] = v4;
    a1[3] = v3;
    a1[4] = v2;
    v9[0] = v6;
    v9[1] = v5;
    v9[2] = v4;
    v9[3] = v3;
    v9[4] = v2;
    v10 = *(v1 + 5);
    v11 = 1;
    sub_1A2CDF70C(v9, v8);
  }

  else
  {
    a1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

double static ActivityContentSource.pushRequest(using:target:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  sub_1A2C66A98(v7, v6);

  return sub_1A2C66A98(a2, a3);
}

double static ActivityContentSource.processRequest(using:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return sub_1A2C66A98(a1, a2);
}

uint64_t sub_1A2CE0968()
{
  if (*v0)
  {
    return 0x737365636F7270;
  }

  else
  {
    return 1752397168;
  }
}

uint64_t sub_1A2CE099C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752397168 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CE0A78(uint64_t a1)
{
  v2 = sub_1A2CE4888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0AB4(uint64_t a1)
{
  v2 = sub_1A2CE4888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE0AF0(uint64_t a1)
{
  v2 = sub_1A2CE48DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0B2C(uint64_t a1)
{
  v2 = sub_1A2CE48DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE0B68()
{
  if (*v0)
  {
    return 0x746567726174;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1A2CE0BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CE0C78(uint64_t a1)
{
  v2 = sub_1A2CE4930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0CB4(uint64_t a1)
{
  v2 = sub_1A2CE4930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityContentSource.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1520, &qword_1A2D11838);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1528, &qword_1A2D11840);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1530, &qword_1A2D11848);
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v20 - v10;
  v12 = v1[1];
  v26 = *v1;
  v27 = v12;
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4888();
  sub_1A2D08C74();
  if (v14)
  {
    LOBYTE(v30) = 1;
    sub_1A2CE48DC();
    v15 = v29;
    sub_1A2D08A84();
    v30 = v26;
    v31 = v27;
    sub_1A2C6D630();
    v16 = v23;
    sub_1A2D08AE4();
    (*(v22 + 8))(v5, v16);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1A2CE4930();
    v15 = v29;
    sub_1A2D08A84();
    v30 = v26;
    v31 = v27;
    v32 = 0;
    sub_1A2CE4984();
    v17 = v25;
    v18 = v28;
    sub_1A2D08AE4();
    if (v18)
    {
      (*(v24 + 8))(v8, v17);
      return (*(v9 + 8))(v11, v15);
    }

    v30 = v21;
    v31 = v20;
    v32 = 1;
    sub_1A2C6D630();
    sub_1A2D08AE4();
    (*(v24 + 8))(v8, v17);
  }

  return (*(v9 + 8))(v11, v15);
}

uint64_t ActivityContentSource.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1538, &qword_1A2D11850);
  v4 = *(v3 - 8);
  v33 = v3;
  *&v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1540, &qword_1A2D11858);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1548, &unk_1A2D11860);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A2CE4888();
  v15 = v37;
  sub_1A2D08C64();
  if (!v15)
  {
    v16 = v36;
    v37 = v11;
    v17 = sub_1A2D08A64();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_1A2C6D870();
    if (v19 == 2 || v43 != v44 >> 1)
    {
      v25 = sub_1A2D088A4();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v27 = &type metadata for ActivityContentSource.Request;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v37 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v19;
      if (v19)
      {
        LOBYTE(v40) = 1;
        sub_1A2CE48DC();
        v20 = v6;
        sub_1A2D089D4();
        v21 = v16;
        sub_1A2C6D8A8();
        v22 = v33;
        sub_1A2D08A54();
        (*(v34 + 8))(v20, v22);
        (*(v37 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v23 = v40;
        v24 = 0uLL;
      }

      else
      {
        LOBYTE(v40) = 0;
        sub_1A2CE4930();
        sub_1A2D089D4();
        v21 = v16;
        v29 = v13;
        LOBYTE(v39) = 0;
        sub_1A2CE49D8();
        v30 = v7;
        sub_1A2D08A54();
        v31 = v37;
        v34 = v40;
        v46 = 1;
        sub_1A2C6D8A8();
        sub_1A2D08A54();
        (*(v35 + 8))(v9, v30);
        (*(v31 + 8))(v29, v10);
        swift_unknownObjectRelease();
        v24 = v39;
        v23 = v34;
      }

      *v21 = v23;
      *(v21 + 16) = v24;
      *(v21 + 32) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

BOOL ActivityContentSource.isSyncSource.getter()
{
  v1 = vorrq_s8(*v0, v0[1]);
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[2].i64[0] | v0[2].i64[1] | v0[3].i64[0];
  return v0[3].i8[8] == 2 && v2 == 0;
}

void ActivityContentSource.castToPushSource.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v7 = *(v1 + 32);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_1A2CC3668(*v1, v4, v5, v6, *(v1 + 32));
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
}

uint64_t sub_1A2CE17A8(uint64_t a1)
{
  v2 = sub_1A2C739AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE17E4(uint64_t a1)
{
  v2 = sub_1A2C739AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE18A4(uint64_t a1)
{
  v2 = sub_1A2C73A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE18E0(uint64_t a1)
{
  v2 = sub_1A2C73A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE191C(uint64_t a1)
{
  v2 = sub_1A2CE4A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1958(uint64_t a1)
{
  v2 = sub_1A2CE4A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1994(uint64_t a1)
{
  v2 = sub_1A2C73ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE19D0(uint64_t a1)
{
  v2 = sub_1A2C73ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double static PushActivityContentSource.externalRequest.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1A2D0EBF0;
  return result;
}

double static PushActivityContentSource.broadcastPushRequest(channel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_1A2CE1A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE1ACC(uint64_t a1)
{
  v2 = sub_1A2CE4C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1B08(uint64_t a1)
{
  v2 = sub_1A2CE4C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1B44()
{
  v1 = 1752397168;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73616364616F7262;
  }
}

uint64_t sub_1A2CE1BA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CE6224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CE1BCC(uint64_t a1)
{
  v2 = sub_1A2CE4B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1C08(uint64_t a1)
{
  v2 = sub_1A2CE4B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1C44(uint64_t a1)
{
  v2 = sub_1A2CE4B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1C80(uint64_t a1)
{
  v2 = sub_1A2CE4B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1CBC(uint64_t a1)
{
  v2 = sub_1A2CE4BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1CF8(uint64_t a1)
{
  v2 = sub_1A2CE4BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.Request.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1590, &qword_1A2D118B0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1598, &qword_1A2D118B8);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15A0, &qword_1A2D118C0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15A8, &qword_1A2D118C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v16 = *v2;
  v17 = v2[1];
  v21[1] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4B28();
  sub_1A2D08C74();
  if (!v17)
  {
    v30 = 1;
    sub_1A2CE4BD0();
    sub_1A2D08A84();
    (*(v24 + 8))(v8, v25);
    return (*(v13 + 8))(v15, v12);
  }

  if (v17 == 1)
  {
    v31 = 2;
    sub_1A2CE4B7C();
    v18 = v26;
    sub_1A2D08A84();
    (*(v27 + 8))(v18, v28);
    return (*(v13 + 8))(v15, v12);
  }

  v29 = 0;
  sub_1A2CE4C24();
  sub_1A2D08A84();
  v20 = v23;
  sub_1A2D08AB4();
  (*(v22 + 8))(v11, v20);
  return (*(v13 + 8))(v15, v12);
}

uint64_t PushActivityContentSource.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15C0, &qword_1A2D118D0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15C8, &qword_1A2D118D8);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15D0, &qword_1A2D118E0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15D8, &qword_1A2D118E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A2CE4B28();
  v14 = v42;
  sub_1A2D08C64();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v34 = 0;
  v42 = v10;
  v15 = v40;
  v16 = v41;
  v17 = sub_1A2D08A64();
  v18 = (2 * *(v17 + 16)) | 1;
  v44 = v17;
  v45 = v17 + 32;
  v46 = 0;
  v47 = v18;
  v19 = sub_1A2C6D930();
  if (v19 == 3 || v46 != v47 >> 1)
  {
    v22 = sub_1A2D088A4();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v24 = &type metadata for PushActivityContentSource.Request;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v42 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v48 = 1;
      sub_1A2CE4BD0();
      v20 = v34;
      sub_1A2D089D4();
      v21 = v42;
      if (v20)
      {
        goto LABEL_14;
      }

      (*(v36 + 8))(v5, v39);
      (*(v21 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v31 = 0;
      v33 = 0;
    }

    else
    {
      v48 = 2;
      sub_1A2CE4B7C();
      v29 = v34;
      sub_1A2D089D4();
      v30 = v42;
      if (v29)
      {
LABEL_14:
        (*(v42 + 8))(v12, v9);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v43);
      }

      (*(v35 + 8))(v15, v38);
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v31 = 0;
      v33 = 1;
    }

    v27 = v16;
  }

  else
  {
    v48 = 0;
    sub_1A2CE4C24();
    v26 = v34;
    sub_1A2D089D4();
    if (v26)
    {
      goto LABEL_14;
    }

    v27 = v16;
    v28 = v6;
    v31 = sub_1A2D08A24();
    v33 = v32;
    (*(v37 + 8))(v8, v28);
    (*(v42 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  *v27 = v31;
  v27[1] = v33;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1A2CE275C()
{
  if (*v0)
  {
    return 0x6C656E6E616863;
  }

  else
  {
    return 0x6D6E6F7269766E65;
  }
}

uint64_t sub_1A2CE27A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CE2880(uint64_t a1)
{
  v2 = sub_1A2CE4D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE28BC(uint64_t a1)
{
  v2 = sub_1A2CE4D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE28F8()
{
  v1 = 0x6E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1A2CE2950@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CE6344(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CE2978(uint64_t a1)
{
  v2 = sub_1A2CE4C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE29B4(uint64_t a1)
{
  v2 = sub_1A2CE4C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE29F0(uint64_t a1)
{
  v2 = sub_1A2CE4CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE2A2C(uint64_t a1)
{
  v2 = sub_1A2CE4CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE2B14(uint64_t a1)
{
  v2 = sub_1A2CE4D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE2B50(uint64_t a1)
{
  v2 = sub_1A2CE4D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.PushType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15E0, &qword_1A2D118F0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15E8, &qword_1A2D118F8);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v23 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15F0, &qword_1A2D11900);
  v24 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15F8, &qword_1A2D11908);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *v1;
  v32 = v1[1];
  v33 = v11;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4C78();
  sub_1A2D08C74();
  if (v12)
  {
    if (v12 == 1)
    {
      v40 = 1;
      sub_1A2CE4D20();
      v13 = v25;
      v14 = v35;
      sub_1A2D08A84();
      v15 = v28;
      sub_1A2D08AB4();
      (*(v26 + 8))(v13, v15);
      return (*(v34 + 8))(v10, v14);
    }

    else
    {
      v41 = 2;
      sub_1A2CE4CCC();
      v21 = v27;
      v22 = v35;
      sub_1A2D08A84();
      (*(v30 + 8))(v21, v31);
      return (*(v34 + 8))(v10, v22);
    }
  }

  else
  {
    v17 = v24;
    v39 = 0;
    sub_1A2CE4D74();
    v18 = v35;
    sub_1A2D08A84();
    v38 = 0;
    v19 = v29;
    v20 = v36;
    sub_1A2D08AB4();
    if (!v20)
    {
      v37 = 1;
      sub_1A2D08AB4();
    }

    (*(v17 + 8))(v7, v19);
    return (*(v34 + 8))(v10, v18);
  }
}

uint64_t PushActivityContentSource.PushType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1610, &qword_1A2D11910);
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v43 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1618, &qword_1A2D11918);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1620, &qword_1A2D11920);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1628, &qword_1A2D11928);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A2CE4C78();
  v14 = v51;
  sub_1A2D08C64();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = 0;
  v15 = sub_1A2D08A64();
  v16 = (2 * *(v15 + 16)) | 1;
  v53 = v15;
  v54 = v15 + 32;
  v55 = 0;
  v56 = v16;
  v17 = sub_1A2C6D930();
  v18 = v12;
  if (v17 == 3 || v55 != v56 >> 1)
  {
    v23 = sub_1A2D088A4();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v25 = &type metadata for PushActivityContentSource.PushType;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v10 + 8))(v12, v9);
    goto LABEL_9;
  }

  v19 = v9;
  v20 = v10;
  v57 = v17;
  if (!v17)
  {
    v58 = 0;
    sub_1A2CE4D74();
    v27 = v8;
    v28 = v51;
    sub_1A2D089D4();
    if (!v28)
    {
      v58 = 0;
      v33 = sub_1A2D08A24();
      v35 = v38;
      v49 = v33;
      v58 = 1;
      v39 = sub_1A2D08A24();
      v51 = (v20 + 8);
      v40 = v39;
      v42 = v41;
      (*(v44 + 8))(v27, v6);
      (*v51)(v12, v19);
      swift_unknownObjectRelease();
      v37 = v49;
      v22 = v50;
      goto LABEL_19;
    }

    (*(v10 + 8))(v12, v19);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v21 = v51;
  if (v17 == 1)
  {
    v58 = 1;
    sub_1A2CE4D20();
    sub_1A2D089D4();
    v22 = v50;
    if (v21)
    {
LABEL_7:
      (*(v10 + 8))(v18, v19);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v30 = v18;
    v31 = v45;
    v32 = sub_1A2D08A24();
    v35 = v34;
    v36 = v32;
    (*(v47 + 8))(v5, v31);
    (*(v20 + 8))(v30, v19);
    swift_unknownObjectRelease();
    v37 = v36;
  }

  else
  {
    v58 = 2;
    sub_1A2CE4CCC();
    v29 = v49;
    sub_1A2D089D4();
    v22 = v50;
    if (v21)
    {
      goto LABEL_7;
    }

    (*(v48 + 8))(v29, v46);
    (*(v10 + 8))(v18, v19);
    swift_unknownObjectRelease();
    v37 = 0;
    v35 = 0;
  }

  v40 = 0;
  v42 = 0;
LABEL_19:
  *v22 = v37;
  *(v22 + 8) = v35;
  *(v22 + 16) = v40;
  *(v22 + 24) = v42;
  *(v22 + 32) = v57;
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

double PushActivityContentSource.pushType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1A2CC3668(v2, v3, v4, v5, v6);
}

__n128 PushActivityContentSource.pushType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1A2CE4DC8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t PushActivityContentSource.topic.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PushActivityContentSource.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 PushActivityContentSource.init(topic:pushType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v6;
  *(a4 + 32) = v4;
  return result;
}

uint64_t sub_1A2CE38A0()
{
  if (*v0)
  {
    return 0x6369706F74;
  }

  else
  {
    return 0x6570795468737570;
  }
}

uint64_t sub_1A2CE38D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570795468737570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CE39B0(uint64_t a1)
{
  v2 = sub_1A2CE4E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE39EC(uint64_t a1)
{
  v2 = sub_1A2CE4E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1630, &qword_1A2D11930);
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = v15 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v15[1] = *(v1 + 48);
  v15[2] = v9;
  v10 = a1[3];
  v15[3] = a1[4];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1A2CC3668(v5, v6, v7, v8, v11);
  sub_1A2CE4E2C();
  sub_1A2D08C74();
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v11;
  v12 = v16;
  v24 = 0;
  sub_1A2CE4E80();
  v13 = v17;
  sub_1A2D08AE4();
  sub_1A2CE4DC8(v19, v20, v21, v22, v23);
  if (!v13)
  {
    LOBYTE(v19) = 1;
    sub_1A2D08AB4();
  }

  return (*(v18 + 8))(v4, v12);
}

uint64_t PushActivityContentSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1638, &qword_1A2D11938);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4E2C();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  sub_1A2CE4ED4();
  sub_1A2D08A54();
  v9 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v28 = v27;
  LOBYTE(v23) = 1;
  v10 = sub_1A2D08A24();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  v13 = v9;
  v14 = v20;
  v15 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v15;
  v16 = v22;
  *(a2 + 24) = v22;
  v17 = v28;
  *(a2 + 32) = v28;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  v18 = v13;
  sub_1A2CC3668(v13, v14, v15, v16, v17);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1A2CE4DC8(v18, v14, v15, v16, v17);
}

double static ActivityContentSource.broadcastPush(environmentName:topic:channel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  *(a7 + 32) = 0;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = 0;

  return result;
}

double static ActivityContentSource.push(environmentName:topic:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 56) = 0;

  return result;
}

double static ActivityContentSource.external(topic:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 2;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0;

  return result;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV0C4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (sub_1A2D08B34() & 1) != 0)
      {
        if (v5 != v10 || v4 != v9)
        {
          v14 = sub_1A2D08B34();
          sub_1A2CC3668(v8, v7, v10, v9, 0);
          sub_1A2CC3668(v3, v2, v5, v4, 0);
          sub_1A2CE4DC8(v3, v2, v5, v4, 0);
          v15 = v8;
          v16 = v7;
          v17 = v10;
          v18 = v9;
          v19 = 0;
          goto LABEL_20;
        }

        sub_1A2CC3668(v8, v7, v5, v4, 0);
        sub_1A2CC3668(v3, v2, v5, v4, 0);
        sub_1A2CE4DC8(v3, v2, v5, v4, 0);
        v29 = v8;
        v30 = v7;
        v31 = v5;
        v32 = v4;
        v33 = 0;
        goto LABEL_30;
      }

      sub_1A2CC3668(v8, v7, v10, v9, 0);
      sub_1A2CC3668(v3, v2, v5, v4, 0);
      sub_1A2CE4DC8(v3, v2, v5, v4, 0);
      v24 = v8;
      v25 = v7;
      v26 = v10;
      v27 = v9;
      v28 = 0;
LABEL_26:
      sub_1A2CE4DC8(v24, v25, v26, v27, v28);
      return 0;
    }

    goto LABEL_25;
  }

  if (v6 == 1)
  {
    if (v11 == 1)
    {
      v12 = *a1;
      if (v3 != v8 || v2 != v7)
      {
        v14 = sub_1A2D08B34();
        sub_1A2CC3668(v8, v7, v10, v9, 1);
        sub_1A2CC3668(v3, v2, v5, v4, 1);
        sub_1A2CE4DC8(v3, v2, v5, v4, 1);
        v15 = v8;
        v16 = v7;
        v17 = v10;
        v18 = v9;
        v19 = 1;
LABEL_20:
        sub_1A2CE4DC8(v15, v16, v17, v18, v19);
        return v14 & 1;
      }

      sub_1A2CC3668(v12, v2, v10, v9, 1);
      sub_1A2CC3668(v3, v2, v5, v4, 1);
      sub_1A2CE4DC8(v3, v2, v5, v4, 1);
      v29 = v3;
      v30 = v2;
      v31 = v10;
      v32 = v9;
      v33 = 1;
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v11 != 2 || (v7 | v8 | v10 | v9) != 0)
  {
LABEL_25:
    sub_1A2CC3668(*a2, *(a2 + 8), v10, v9, v11);
    sub_1A2CC3668(v3, v2, v5, v4, v6);
    sub_1A2CE4DC8(v3, v2, v5, v4, v6);
    v24 = v8;
    v25 = v7;
    v26 = v10;
    v27 = v9;
    v28 = v11;
    goto LABEL_26;
  }

  sub_1A2CE4DC8(*a1, v2, v5, v4, 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 2;
LABEL_30:
  sub_1A2CE4DC8(v29, v30, v31, v32, v33);
  return 1;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV7RequestO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1A2C6AE84();
LABEL_15:
    sub_1A2C6AE84();
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v7 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v9 = sub_1A2D08B34();
      sub_1A2C66A98(v4, v5);
      sub_1A2C66A98(v2, v3);
      sub_1A2C6AE84();
      sub_1A2C6AE84();
      return v9 & 1;
    }

    sub_1A2C66A98(v7, v3);
    sub_1A2C66A98(v2, v3);
    sub_1A2C6AE84();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1A2C66A98(*a2, *(a2 + 8));
    sub_1A2C66A98(v2, v3);
    sub_1A2C6AE84();
    sub_1A2C6AE84();
    return 0;
  }

  v6 = 1;
  sub_1A2C6AE84();
  sub_1A2C6AE84();
  return v6;
}

uint64_t _s11ActivityKit04PushA13ContentSourceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  v21 = *a1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v14;
  sub_1A2CC3668(v21, v2, v3, v4, v13);
  sub_1A2CC3668(v7, v8, v9, v10, v14);
  LOBYTE(v7) = _s11ActivityKit04PushA13ContentSourceV0C4TypeO2eeoiySbAE_AEtFZ_0(&v21, &v16);
  sub_1A2CE4DC8(v16, v17, v18, v19, v20);
  sub_1A2CE4DC8(v21, v22, v23, v24, v25);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v5 == v11 && v6 == v12)
  {
    return 1;
  }

  return sub_1A2D08B34();
}

uint64_t _s11ActivityKit0A13ContentSourceO7RequestO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v13 = *(a1 + 32);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = *(a2 + 32);
  v37[0] = v9;
  v37[1] = v10;
  v37[2] = v12;
  v37[3] = v11;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  if (v13)
  {
    if (v18)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          if (v15 == 1)
          {
            v19 = 1;
            sub_1A2CE6458(v14, 1uLL, v16, v17, 1);
            v20 = v9;
            v21 = 1;
LABEL_33:
            sub_1A2CE6458(v20, v21, v12, v11, 1);
            sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
            return v19;
          }

          v10 = 1;
        }

        else if (v15 >= 2)
        {
          if (v9 == v14 && v10 == v15)
          {
            v19 = 1;
            sub_1A2CE6458(v9, v10, v16, v17, 1);
            v20 = v9;
            v21 = v10;
            goto LABEL_33;
          }

          v29 = v14;
          v30 = v15;
          v31 = v16;
          v32 = v17;
          v33 = sub_1A2D08B34();
          v19 = 1;
          sub_1A2CE6458(v29, v30, v31, v32, 1);
          sub_1A2CE6458(v9, v10, v12, v11, 1);
          sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
          if (v33)
          {
            return v19;
          }

          return 0;
        }
      }

      else
      {
        if (!v15)
        {
          v19 = 1;
          sub_1A2CE6458(v14, 0, v16, v17, 1);
          v20 = v9;
          v21 = 0;
          goto LABEL_33;
        }

        v10 = 0;
      }

      sub_1A2CE6458(v14, v15, v16, v17, 1);
      v22 = v9;
      v23 = v10;
      v24 = v12;
      v25 = v11;
      v26 = 1;
      goto LABEL_22;
    }

LABEL_8:
    sub_1A2CE6458(v14, v15, v16, v17, v18);
    v22 = v9;
    v23 = v10;
    v24 = v12;
    v25 = v11;
    v26 = v13;
LABEL_22:
    sub_1A2CE6458(v22, v23, v24, v25, v26);
    goto LABEL_23;
  }

  if (v18)
  {
    goto LABEL_8;
  }

  v36[0] = v9;
  v36[1] = v10;
  v35[0] = v14;
  v35[1] = v15;
  v27 = v16;
  v19 = v17;
  sub_1A2CE6458(v14, v15, v16, v17, 0);
  sub_1A2CE6458(v9, v10, v12, v11, 0);
  if ((_s11ActivityKit04PushA13ContentSourceV7RequestO2eeoiySbAE_AEtFZ_0(v36, v35) & 1) == 0)
  {
LABEL_23:
    sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return 0;
  }

  if (!v11)
  {
    sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return !v19;
  }

  if (v11 == 1)
  {
    sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
    if (v19 == 1)
    {
      return v19;
    }

    return 0;
  }

  if (v19 < 2)
  {
    goto LABEL_23;
  }

  if (v12 == v27 && v11 == v19)
  {
    sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
    return 1;
  }

  v34 = sub_1A2D08B34();
  sub_1A2C54E38(v37, &qword_1EB0A16A0, &unk_1A2D12EC0);
  return (v34 & 1) != 0;
}

unint64_t sub_1A2CE4888()
{
  result = qword_1ED708950;
  if (!qword_1ED708950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708950);
  }

  return result;
}

unint64_t sub_1A2CE48DC()
{
  result = qword_1ED708908;
  if (!qword_1ED708908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708908);
  }

  return result;
}

unint64_t sub_1A2CE4930()
{
  result = qword_1EB09F0E0[0];
  if (!qword_1EB09F0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB09F0E0);
  }

  return result;
}

unint64_t sub_1A2CE4984()
{
  result = qword_1EB09F1F8;
  if (!qword_1EB09F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F1F8);
  }

  return result;
}

unint64_t sub_1A2CE49D8()
{
  result = qword_1EB09EE60;
  if (!qword_1EB09EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE60);
  }

  return result;
}

unint64_t sub_1A2CE4A2C()
{
  result = qword_1ED708AD0;
  if (!qword_1ED708AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AD0);
  }

  return result;
}

unint64_t sub_1A2CE4A80()
{
  result = qword_1EB09F660;
  if (!qword_1EB09F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F660);
  }

  return result;
}

unint64_t sub_1A2CE4AD4()
{
  result = qword_1EB09F680;
  if (!qword_1EB09F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F680);
  }

  return result;
}

unint64_t sub_1A2CE4B28()
{
  result = qword_1EB09F220;
  if (!qword_1EB09F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F220);
  }

  return result;
}

unint64_t sub_1A2CE4B7C()
{
  result = qword_1EB0A15B0;
  if (!qword_1EB0A15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A15B0);
  }

  return result;
}

unint64_t sub_1A2CE4BD0()
{
  result = qword_1EB09F238;
  if (!qword_1EB09F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F238);
  }

  return result;
}

unint64_t sub_1A2CE4C24()
{
  result = qword_1EB0A15B8;
  if (!qword_1EB0A15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A15B8);
  }

  return result;
}

unint64_t sub_1A2CE4C78()
{
  result = qword_1ED708B40;
  if (!qword_1ED708B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B40);
  }

  return result;
}

unint64_t sub_1A2CE4CCC()
{
  result = qword_1EB0A1600;
  if (!qword_1EB0A1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1600);
  }

  return result;
}

unint64_t sub_1A2CE4D20()
{
  result = qword_1ED708B28;
  if (!qword_1ED708B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B28);
  }

  return result;
}

unint64_t sub_1A2CE4D74()
{
  result = qword_1EB0A1608;
  if (!qword_1EB0A1608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1608);
  }

  return result;
}

void sub_1A2CE4DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return;
    }
  }
}

unint64_t sub_1A2CE4E2C()
{
  result = qword_1ED708AF0;
  if (!qword_1ED708AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AF0);
  }

  return result;
}

unint64_t sub_1A2CE4E80()
{
  result = qword_1EB09F668;
  if (!qword_1EB09F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F668);
  }

  return result;
}

unint64_t sub_1A2CE4ED4()
{
  result = qword_1EB09F688;
  if (!qword_1EB09F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F688);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit04PushA13ContentSourceV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1A2CE4F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A2CE4FAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1A2CE4FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1A2CE5068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CE50BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1A2CE5118(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A2CE5148(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A2CE5190(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A2CE51D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1A2CE5308()
{
  result = qword_1EB0A1640;
  if (!qword_1EB0A1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1640);
  }

  return result;
}

unint64_t sub_1A2CE5360()
{
  result = qword_1EB0A1648;
  if (!qword_1EB0A1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1648);
  }

  return result;
}

unint64_t sub_1A2CE53B8()
{
  result = qword_1EB0A1650;
  if (!qword_1EB0A1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1650);
  }

  return result;
}

unint64_t sub_1A2CE5410()
{
  result = qword_1EB0A1658;
  if (!qword_1EB0A1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1658);
  }

  return result;
}

unint64_t sub_1A2CE5468()
{
  result = qword_1EB0A1660;
  if (!qword_1EB0A1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1660);
  }

  return result;
}

unint64_t sub_1A2CE54C0()
{
  result = qword_1EB0A1668;
  if (!qword_1EB0A1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1668);
  }

  return result;
}

unint64_t sub_1A2CE5518()
{
  result = qword_1EB0A1670;
  if (!qword_1EB0A1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1670);
  }

  return result;
}

unint64_t sub_1A2CE5570()
{
  result = qword_1EB0A1678;
  if (!qword_1EB0A1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1678);
  }

  return result;
}

unint64_t sub_1A2CE55C8()
{
  result = qword_1EB0A1680;
  if (!qword_1EB0A1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1680);
  }

  return result;
}

unint64_t sub_1A2CE5620()
{
  result = qword_1EB0A1688;
  if (!qword_1EB0A1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1688);
  }

  return result;
}

unint64_t sub_1A2CE5678()
{
  result = qword_1EB0A1690;
  if (!qword_1EB0A1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1690);
  }

  return result;
}

unint64_t sub_1A2CE56D0()
{
  result = qword_1EB0A1698;
  if (!qword_1EB0A1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1698);
  }

  return result;
}

unint64_t sub_1A2CE5728()
{
  result = qword_1ED708AE0;
  if (!qword_1ED708AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AE0);
  }

  return result;
}

unint64_t sub_1A2CE5780()
{
  result = qword_1ED708AE8;
  if (!qword_1ED708AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AE8);
  }

  return result;
}

unint64_t sub_1A2CE57D8()
{
  result = qword_1ED708B08;
  if (!qword_1ED708B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B08);
  }

  return result;
}

unint64_t sub_1A2CE5830()
{
  result = qword_1ED708B10;
  if (!qword_1ED708B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B10);
  }

  return result;
}

unint64_t sub_1A2CE5888()
{
  result = qword_1ED708B18;
  if (!qword_1ED708B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B18);
  }

  return result;
}

unint64_t sub_1A2CE58E0()
{
  result = qword_1ED708B20;
  if (!qword_1ED708B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B20);
  }

  return result;
}

unint64_t sub_1A2CE5938()
{
  result = qword_1ED708AF8;
  if (!qword_1ED708AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708AF8);
  }

  return result;
}

unint64_t sub_1A2CE5990()
{
  result = qword_1ED708B00;
  if (!qword_1ED708B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B00);
  }

  return result;
}

unint64_t sub_1A2CE59E8()
{
  result = qword_1ED708B30;
  if (!qword_1ED708B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B30);
  }

  return result;
}

unint64_t sub_1A2CE5A40()
{
  result = qword_1ED708B38;
  if (!qword_1ED708B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B38);
  }

  return result;
}

unint64_t sub_1A2CE5A98()
{
  result = qword_1EB09F240;
  if (!qword_1EB09F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F240);
  }

  return result;
}

unint64_t sub_1A2CE5AF0()
{
  result = qword_1EB09F248;
  if (!qword_1EB09F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F248);
  }

  return result;
}

unint64_t sub_1A2CE5B48()
{
  result = qword_1EB09F228;
  if (!qword_1EB09F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F228);
  }

  return result;
}

unint64_t sub_1A2CE5BA0()
{
  result = qword_1EB09F230;
  if (!qword_1EB09F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F230);
  }

  return result;
}

unint64_t sub_1A2CE5BF8()
{
  result = qword_1EB09F200;
  if (!qword_1EB09F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F200);
  }

  return result;
}

unint64_t sub_1A2CE5C50()
{
  result = qword_1EB09F208;
  if (!qword_1EB09F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F208);
  }

  return result;
}

unint64_t sub_1A2CE5CA8()
{
  result = qword_1EB09F210;
  if (!qword_1EB09F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F210);
  }

  return result;
}

unint64_t sub_1A2CE5D00()
{
  result = qword_1EB09F218;
  if (!qword_1EB09F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F218);
  }

  return result;
}

unint64_t sub_1A2CE5D58()
{
  result = qword_1ED709788;
  if (!qword_1ED709788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709788);
  }

  return result;
}

unint64_t sub_1A2CE5DB0()
{
  result = qword_1ED709790;
  if (!qword_1ED709790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709790);
  }

  return result;
}

unint64_t sub_1A2CE5E08()
{
  result = qword_1ED709758;
  if (!qword_1ED709758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709758);
  }

  return result;
}

unint64_t sub_1A2CE5E60()
{
  result = qword_1ED709760;
  if (!qword_1ED709760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709760);
  }

  return result;
}

unint64_t sub_1A2CE5EB8()
{
  result = qword_1ED709770;
  if (!qword_1ED709770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709770);
  }

  return result;
}

unint64_t sub_1A2CE5F10()
{
  result = qword_1ED709778;
  if (!qword_1ED709778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709778);
  }

  return result;
}